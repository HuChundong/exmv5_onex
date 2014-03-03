.class public abstract Lcom/android/camera/HTCCamera;
.super Landroid/app/Activity;
.source "HTCCamera.java"

# interfaces
.implements Lcom/android/camera/component/IComponentOwner;
.implements Lcom/android/camera/ISettingsOwner;
.implements Lcom/android/camera/property/PropertyChangedCallback;
.implements Lcom/android/camera/IAsyncOperationExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/HTCCamera$30;,
        Lcom/android/camera/HTCCamera$TVDisplayListener;,
        Lcom/android/camera/HTCCamera$MainHandler;,
        Lcom/android/camera/HTCCamera$ScaleListener;
    }
.end annotation


# static fields
.field public static final CAMERA_THREAD_RUNNING:I = 0x2776

.field public static final DEVICE_ORIENTATION_UNKNOWN:I = -0x1

.field public static final ENABLE_GARBAGE_COLLECTION:I = 0x38

.field public static final ENABLE_SENSOR_FOCUS:I = 0x1e

.field public static final FOCUSING_NO_ACTION:I = 0x1

.field public static final FOCUSING_PRESS_CAPTURE:I = 0x3

.field public static final FOCUSING_PRESS_RECORD:I = 0x4

.field public static final FOCUSING_TAP_CAPTURE:I = 0x2

.field public static final HTC_CAM_SWITCH_CHANGE:I = 0xe

.field public static final HW_3D_BUTTON_SWITCH:I = 0x48

.field public static final INTENT_ACTION_ALBUM:Ljava/lang/String; = "FROM_CAMERA"

.field private static final INTENT_KEY_JPEG_DATA:Ljava/lang/String; = "jpeg_data"

.field private static final INTENT_KEY_LAST_FILE_MIME:Ljava/lang/String; = "camera_last_file_mime"

.field private static final INTENT_KEY_LAST_FILE_PATH:Ljava/lang/String; = "camera_last_file_path"

.field private static final INTENT_KEY_ORIENTATION:Ljava/lang/String; = "camera_orientation"

.field public static final INTENT_MODE_CAMCORDER:Ljava/lang/String; = "comcorder"

.field public static final INTENT_MODE_CAMERA:Ljava/lang/String; = "camera"

.field public static final INTENT_MODE_KEY:Ljava/lang/String; = "capture_mode"

.field public static final INTENT_PREVIEW_CAPTURE:Ljava/lang/String; = "capture"

.field public static final INTENT_PREVIEW_FILMSTRIP:Ljava/lang/String; = "filmstrip"

.field public static final INTENT_PREVIEW_KEY:Ljava/lang/String; = "preview_mode"

.field public static final LONG_PRESS_AREA:I = 0xf

.field public static final LONG_PRESS_PERIOD:J = 0x190L

.field private static final MAX_STARTING_PREVIEW_FAILURE_COUNT:I = 0xa

.field public static final MENU_3D_CAMERA_SWITCH:I = 0x4f

.field private static final MSG_COMPLETE_CAPTURE:I = 0x277a

.field private static final MSG_COUNT_DOWN_SELFTIMER:I = 0x6

.field private static final MSG_INVOKE:I = 0x27d8

.field private static final MSG_LEAVE_QUICK_LAUNCH_STATE:I = 0x277b

.field private static final MSG_TOUCH_FOCUS:I = 0x283c

.field public static final NO_FOCUSING:I = 0x0

.field public static final PANEL_FADEOUT_TIMEOUT:I = 0x1f40

#the value of this static final field might be set in the static constructor
.field private static final SCREEN_DIAGONAL_LENGTH:D = 0.0

.field public static final SCREEN_SAVE:I = 0x24

.field public static final SHOW_3D_HINT:I = 0x50

.field public static final SHOW_FOCUS_END:I = 0x53

.field public static final SWITCH_3D_PREVIEW_READY:I = 0x49

.field private static final TAG:Ljava/lang/String; = "HTCCamera"

.field private static final TIMEOUT_QUICK_LAUNCH_STATE:I = 0x1f4

.field private static final TOUCH_FOCUS_DELAY_THRESHOLD:I = 0x78

.field public static bFocusFromPress:Z

.field public static bHoldFocusKey:Z

.field private static mInitialPreferenceValues:[Ljava/util/AbstractMap$SimpleEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/AbstractMap$SimpleEntry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsSelfPortraitTask:Z


# instance fields
.field public Display_Orientation:I

.field public SCREEN_DELAY:I

.field private final TOUCH_CAPTURE_CANCEL_MOVEMENT_RATIO:D

.field public final accelerometerValues:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<[F>;"
        }
    .end annotation
.end field

.field public final actionScreenCloseReason:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/actionscreen/ActionScreenCloseReason;",
            ">;"
        }
    .end annotation
.end field

.field public final actionScreenState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/UIState;",
            ">;"
        }
    .end annotation
.end field

.field public final activatedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final autoDetectedScene:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/AutoDetectedScene;",
            ">;"
        }
    .end annotation
.end field

.field public final autoFocusCanceledEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final autoFocusCancelingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final cameraClosedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final cameraMode:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/CameraMode;",
            ">;"
        }
    .end annotation
.end field

.field public final cameraType:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/CameraType;",
            ">;"
        }
    .end annotation
.end field

.field public final captureButtonCanceledEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final captureButtonClickedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final captureButtonLongPressedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final captureButtonPressedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final captureButtonReleasedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final closingMenuItemClickedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final currentEffect:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field public final currentScene:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field public final deactivatedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final deviceOrientation:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final effectPanelState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/UIState;",
            ">;"
        }
    .end annotation
.end field

.field public final elapsedRecordingSeconds:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final externalCommendReceivedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/ExternalCommandEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final flashButtonClickedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final flashMode:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/FlashMode;",
            ">;"
        }
    .end annotation
.end field

.field public final focusMode:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/AutoFocusMode;",
            ">;"
        }
    .end annotation
.end field

.field public final focusPointUpdateEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Landroid/graphics/Point;",
            ">;>;"
        }
    .end annotation
.end field

.field public final hasDialog:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final hasFlash:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final hasPopupBubble:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isAccelerometerStarted:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isActivityPaused:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isActivityPausing:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isAnswerPhoneCall:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isAutoFocusing:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isCameraThreadRunning:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isCaptureUIBlocked:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isCaptureUIOpen:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isFlashDisabled:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isFocusUIShowing:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isLowBatteryTemperature:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isLowPower:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isMirrorMode:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isPhotoCaptureButtonPressed:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isPreviewStarted:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isPreviewStarting:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isQuickLaunchState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isRemainingCounterVisible:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isResettingToDefault:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isRotationLocked:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isSelfTimerDisabled:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isSelfTimerStarted:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isSwitchingCamera:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isVideoCaptureButtonPressed:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isZoomLocked:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isoButtonClickedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final keyDownEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/input/KeyEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final keyUpEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/input/KeyEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final lastTakingPictureTriggerSource:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mActionPerformedOnPreviewSurfaceCreated:Z

.field private mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

.field private mActionScreenDisableCounter:I

.field private mActivityOnPause:Z

.field private mAudioManager:Lcom/android/camera/IAudioManager;

.field private mAutoFocusController:Lcom/android/camera/IAutoFocusController;

.field private mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

.field public mAutoUploader:Lcom/android/camera/AutoUploader;

.field private mBaseZoom:I

.field private mBlockPowerWarning:Z

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraThread:Lcom/android/camera/CameraThread;

.field private mCanGSensorEnabled:Z

.field private mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

.field private mCaptureUiContainer:Landroid/view/ViewGroup;

.field private mChangingModeHandle:Lcom/android/camera/Handle;

.field private final mCloseActionScreenRunnable:Ljava/lang/Runnable;

.field private mCloseTouchEvent:Z

.field private mComponentFactory:Lcom/android/camera/component/UIComponentFactory;

.field private mComponentManager:Lcom/android/camera/component/UIComponentManager;

.field private mCountDownEndSoundHandle:Lcom/android/camera/Handle;

.field private mCountDownSoundHandle:Lcom/android/camera/Handle;

.field private mCurrentFocusHandle:Lcom/android/camera/Handle;

.field private mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

.field private mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

.field private mEffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

.field private mEffectManager:Lcom/android/camera/effect/IEffectManager;

.field private mEnableSensorFocus:Z

.field private mFlashDisableCounter:I

.field private mFocusingSoundHandle:Lcom/android/camera/Handle;

.field public mFocusingState:I

.field private final mGSensorListener:Landroid/hardware/SensorEventListener;

.field private mGSensorUsageCounter:I

.field private mIdle:Z

.field private mInitSpan:F

.field private mIntentManager:Lcom/android/camera/IntentManager;

.field private mIsBackQuit:Z

.field private mIsCaptureUiInitialized:Z

.field private mIsLaunching:Z

.field private mIsOnResumeCompleted:Z

.field private mIsPinchZoomed:Z

.field private mIsPowerWarning:Z

.field private mIsSipExist:Z

.field private mIsStorageSlotLocked:Z

.field private volatile mIsSurfaceAvailable:Z

.field private mIsTouchScreen:Z

.field private mIsUIReady:Z

.field private mIsUpdatingStorageSlotSetting:Z

.field private final mLastTouchFocusPoint:Landroid/graphics/Point;

.field private mMainThread:Ljava/lang/Thread;

.field private mNeed_doOnResume:Z

.field private mNeed_unregisterReceiver:Z

.field private mObjectTracker:Lcom/android/camera/IObjectTracker;

.field private final mPartitonReceiver:Landroid/content/BroadcastReceiver;

.field private mPendingTakingPictureStartTime:Ljava/lang/Long;

.field private mPopupBubbleCount:I

.field private mPreparedActionScreenSessionHandle:Lcom/android/camera/SessionHandle;

.field private final mPropertyOwnerKey:Ljava/lang/Object;

.field private mRecordingBlockHandle:Lcom/android/camera/Handle;

.field private mRecordingLockHandle:Lcom/android/camera/Handle;

.field private mRotateDialogManager:Lcom/android/camera/IRotateDialogManager;

.field private mRotationManager:Lcom/android/camera/IUIRotationManager;

.field private final mSIPReceiver:Landroid/content/BroadcastReceiver;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScreensave:Landroid/view/View;

.field private mScreensaveText:Landroid/widget/TextView;

.field private mScreensaveTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mSelfTimerDisableCounter:I

.field private mSelfTimerStartTime:J

.field private mSensorFocusDisabledCounter:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSessionHandle:Lcom/android/camera/SessionHandle;

.field private mSettings:Lcom/android/camera/CameraSettings;

.field private mSharedBackgroundWorker:Lcom/android/camera/ISharedBackgroundWorker;

.field private final mStartAccelerometerRunnable:Ljava/lang/Runnable;

.field private mStartCountTime:J

.field private mStartMode:Lcom/android/camera/CameraStartMode;

.field private mStartingPreviewBlockHandle:Lcom/android/camera/Handle;

.field private mStartingPreviewFailureCount:I

.field private mStartingPreviewHandle:Lcom/android/camera/Handle;

.field private final mStopAccelerometerRunnable:Ljava/lang/Runnable;

.field private volatile mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private final mSurfaceStateSyncRoot:Ljava/lang/Object;

.field private mSwitchingModeBlockHandle:Lcom/android/camera/Handle;

.field private mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

.field private mTVDisplayListener:Lcom/android/camera/HTCCamera$TVDisplayListener;

.field private mTakingPictureBlockHandle:Lcom/android/camera/Handle;

.field private mTakingPictureLockHandle:Lcom/android/camera/Handle;

.field private mThreadMonitor:Lcom/android/camera/debug/ThreadMonitor;

.field private mTouchFocusDisabledCounter:I

.field private mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

.field private mUpdateCountDuration:J

.field private final mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

.field private mViewFinder:Lcom/android/camera/IViewFinder;

.field private mZoomLockCounter:I

.field private m_AecLockHandle:Lcom/android/camera/Handle;

.field private m_AwbLockHandle:Lcom/android/camera/Handle;

.field m_CancelFocusFromTouch:Z

.field private m_FocusLockHandle:Lcom/android/camera/Handle;

.field m_IsToastShownEnd:Z

.field private m_NeedTapCapture:Z

.field m_NeedTriggerRecord:Z

.field private m_TouchCaptureFingerDownPoint:Landroid/graphics/PointF;

.field public final mediaDeletedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaSaveFailedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/io/MediaSaveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaSavedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/io/MediaSaveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaScannerFinishedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaScannerStartedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final newIntentEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation
.end field

.field public final pausingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final popupOpeningEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final popupOutsideTouchEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/input/MotionEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final previewSize:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/imaging/Size;",
            ">;"
        }
    .end annotation
.end field

.field public final previewStartingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final queryConfirmDeletingMediaMessageEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/QueryEventArgs",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final queryMediaToSetAsEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/QueryEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/MediaInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final queryMediaToShareEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/QueryEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/MediaInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final recordingState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/RecordingState;",
            ">;"
        }
    .end annotation
.end field

.field public final resolutionSelectedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;>;"
        }
    .end annotation
.end field

.field public final restartingCameraEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final resumingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final reviewAnimationCompletedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final rotation:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/rotate/UIRotation;",
            ">;"
        }
    .end annotation
.end field

.field public final selfFinishingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final selfTimerCountDownEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final selfTimerInterval:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/Duration;",
            ">;"
        }
    .end annotation
.end field

.field public final settingsMenuState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/UIState;",
            ">;"
        }
    .end annotation
.end field

.field public final showFocusEndEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final showFocusFailEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final showFocusSucessEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final showFocusingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final stoppingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final storageEjectedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/io/StorageSlot;",
            ">;>;"
        }
    .end annotation
.end field

.field public final storageMountedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/io/StorageSlot;",
            ">;>;"
        }
    .end annotation
.end field

.field public final storageState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/io/StorageState;",
            ">;"
        }
    .end annotation
.end field

.field public final storageUnmountedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/io/StorageSlot;",
            ">;>;"
        }
    .end annotation
.end field

.field public final takingPictureState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/TakingPictureState;",
            ">;"
        }
    .end annotation
.end field

.field public final thumbnailButtonClickedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/ThumbnailButtonEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final touchPreviewEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/input/MotionEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final wbButtonClickedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final zoomRange:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final zoomValue:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    sget v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    mul-int/2addr v0, v1

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/HTCCamera;->SCREEN_DIAGONAL_LENGTH:D

    sput-boolean v5, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    sput-boolean v5, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    sput-boolean v5, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/AbstractMap$SimpleEntry;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-string v2, "pref_camera_self_portrait"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    const-string v3, "pref_camera_self_timer_main"

    const-string v4, "0s"

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    const-string v3, "pref_smile_capture"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    const-string v3, "pref_camera_face_number"

    const-string v4, "none"

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/HTCCamera;->mInitialPreferenceValues:[Ljava/util/AbstractMap$SimpleEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    const/4 v3, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const v0, 0x1d4c0

    iput v0, p0, Lcom/android/camera/HTCCamera;->SCREEN_DELAY:I

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mStartCountTime:J

    iput-object v9, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->mIsLaunching:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceStateSyncRoot:Ljava/lang/Object;

    iput-object v9, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    new-instance v0, Lcom/android/camera/SessionHandle;

    invoke-direct {v0}, Lcom/android/camera/SessionHandle;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSessionHandle:Lcom/android/camera/SessionHandle;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    new-instance v0, Lcom/android/camera/HTCCamera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$1;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mCloseActionScreenRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/camera/HTCCamera$2;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$2;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStartAccelerometerRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/camera/HTCCamera$3;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$3;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStopAccelerometerRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/camera/HTCCamera$4;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$4;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

    const-wide v0, 0x3fb1eb851eb851ecL

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->TOUCH_CAPTURE_CANCEL_MOVEMENT_RATIO:D

    iput-object v9, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    iput-object v9, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    iput-object v9, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mIsPinchZoomed:Z

    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z

    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    iput v11, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mIsTouchScreen:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mLastTouchFocusPoint:Landroid/graphics/Point;

    iput-object v9, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iput-object v9, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mBlockPowerWarning:Z

    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mIsPowerWarning:Z

    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->m_CancelFocusFromTouch:Z

    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    iput-object v9, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    iput-object v9, p0, Lcom/android/camera/HTCCamera;->mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    iput-object v9, p0, Lcom/android/camera/HTCCamera;->mTVDisplayListener:Lcom/android/camera/HTCCamera$TVDisplayListener;

    new-instance v0, Lcom/android/camera/HTCCamera$5;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$5;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mGSensorListener:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/android/camera/HTCCamera$14;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$14;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mPartitonReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/camera/HTCCamera$15;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$15;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSIPReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "HTCCamera"

    const-string v1, "Constructor() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HTCCamera"

    const-string v1, "Disable GC"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Lcom/htc/wrap/dalvik/system/HtcWrapVMRuntime;->disableGcForExternalAlloc(Z)V

    new-instance v0, Lcom/android/camera/debug/ThreadMonitor;

    invoke-direct {v0}, Lcom/android/camera/debug/ThreadMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mThreadMonitor:Lcom/android/camera/debug/ThreadMonitor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v0, Lcom/android/camera/HTCCamera$6;

    const-string v2, "HTCCamera.AccelerometerValues"

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    new-array v5, v3, [F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/HTCCamera$6;-><init>(Lcom/android/camera/HTCCamera;Ljava/lang/String;ILjava/lang/Object;[F)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->accelerometerValues:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.ActionScreenCloseReason"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->Unknown:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->actionScreenCloseReason:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.ActionScreenState"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.AutoDetectedScene"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/AutoDetectedScene;->None:Lcom/android/camera/AutoDetectedScene;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.CameraMode"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v0, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    iget-boolean v0, v0, Lcom/android/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_0

    const-string v0, "HTCCamera.CameraType"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    :goto_0
    const-string v0, "HTCCamera.CurrentEffect"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v11, v1, v9}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->currentEffect:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.CurrentScene"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v11, v1, v9}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.DeviceOrientation"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->deviceOrientation:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.EffectPanelState"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.ElapsedRecordingSeconds"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.FlashMode"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/FlashMode;->Auto:Lcom/android/camera/FlashMode;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.AutoFocusMode"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.HasDialog"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->hasDialog:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.HasFlash"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->hasFlash:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.HasPopupBubble"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.IsAccelerometerStarted"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isAccelerometerStarted:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.IsActivityPaused"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1, v11}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.IsActivityPausing"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.IsAutoFocusing"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.IsCameraThreadRunning"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isCameraThreadRunning:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.IsCaptureUIBlocked"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.IsCaptureUIOpen"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.IsFlashDisabled"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isFlashDisabled:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.IsFocusUIShowing"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isFocusUIShowing:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.IsLowBatteryTemperature"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isLowBatteryTemperature:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.IsLowPower"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isLowPower:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.IsMirrorMode"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isMirrorMode:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.IsPhotoCaptureButtonPressed"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isPhotoCaptureButtonPressed:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.IsPreviewStarted"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.IsPreviewStarting"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.IsQuickLaunchState"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1, v11}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isQuickLaunchState:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.IsRemainingCounterVisible"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isRemainingCounterVisible:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.IsResettingToDefault"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isResettingToDefault:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.IsRotationLocked"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isRotationLocked:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.IsSelfTimerDisabled"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerDisabled:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.IsSelfTimerStarted"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.IsSwitchingCamera"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isSwitchingCamera:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.IsVideoCaptureButtonPressed"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isVideoCaptureButtonPressed:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.IsZoomLocked"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isZoomLocked:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.LastTakingPictureTriggerSource"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v11, v1, v9}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->lastTakingPictureTriggerSource:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.PreviewSize"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v11, v1, v9}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->previewSize:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.RecordingState"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.Rotation"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.SelfTimerInterval"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/Duration;->fromSeconds(J)Lcom/android/camera/Duration;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.SettingsMenuState"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->settingsMenuState:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.StorageState"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->storageState:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.TakingPictureState"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.ZoomRange"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v11, v1, v9}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->zoomRange:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.ZoomValue"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->zoomValue:Lcom/android/camera/property/Property;

    const-string v0, "HTCCamera.isAnswerPhoneCall"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1, v8}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isAnswerPhoneCall:Lcom/android/camera/property/Property;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v6, v0, v6

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor() - Create properties : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v0, "HTCCamera.Activated"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->activatedEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.AutoFocusCanceled"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->autoFocusCanceledEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.AutoFocusCanceling"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->autoFocusCancelingEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.CameraClosed"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->cameraClosedEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.CaptureButtonCanceled"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->captureButtonCanceledEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.CaptureButtonClicked"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->captureButtonClickedEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.CaptureButtonLongPressed"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->captureButtonLongPressedEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.CaptureButtonPressed"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->captureButtonPressedEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.CaptureButtonReleased"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->captureButtonReleasedEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.ClosingMenuItemClicked"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->closingMenuItemClickedEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.Deactivated"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.ExternalCommentReceived"

    sget-object v1, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->externalCommendReceivedEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.FlashButtonClicked"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->flashButtonClickedEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.IsoButtonClicked"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->isoButtonClickedEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.WbButtonClicked"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->wbButtonClickedEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.KeyDown"

    sget-object v1, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->keyDownEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.KeyUp"

    sget-object v1, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->keyUpEvent:Lcom/android/camera/event/Event;

    new-instance v0, Lcom/android/camera/event/Event;

    const-string v1, "HTCCamera.MediaDeleted"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mediaDeletedEvent:Lcom/android/camera/event/Event;

    new-instance v0, Lcom/android/camera/event/Event;

    const-string v1, "HTCCamera.MediaSaved"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mediaSavedEvent:Lcom/android/camera/event/Event;

    new-instance v0, Lcom/android/camera/event/Event;

    const-string v1, "HTCCamera.MediaSaveFailed"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.MediaScannerFinished"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mediaScannerFinishedEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.MediaScannerStarted"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mediaScannerStartedEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.NewIntent"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->newIntentEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.Pausing"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->pausingEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.PopupOpening"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->popupOpeningEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.PopupOutsideTouched"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->popupOutsideTouchEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.PreviewStarting"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->previewStartingEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.QueryConfirmDeletingMediaMessage"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->queryConfirmDeletingMediaMessageEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.QueryMediaToSetAs"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->queryMediaToSetAsEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.QueryMediaToShare"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->queryMediaToShareEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.ResolutionSelected"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->resolutionSelectedEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.RestartingCamera"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->restartingCameraEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.Resuming"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->resumingEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.ReviewAnimationCompleted"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->reviewAnimationCompletedEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.SelfFinishing"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->selfFinishingEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.SelfTimerCountDown"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->selfTimerCountDownEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.Stopping"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->stoppingEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.StorageEjected"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->storageEjectedEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.StorageMounted"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->storageMountedEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.StorageUnmounted"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->storageUnmountedEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.ThumbnailButtonClicked"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->thumbnailButtonClickedEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.TouchPreview"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->touchPreviewEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.FocusPointUpdate"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->focusPointUpdateEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.ShowFocusing"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->showFocusingEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.ShowFocusSucess"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->showFocusSucessEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.ShowFocusFail"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->showFocusFailEvent:Lcom/android/camera/event/Event;

    const-string v0, "HTCCamera.ShowFocusEnd"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->showFocusEndEvent:Lcom/android/camera/event/Event;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v6, v0, v6

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor() - Create events : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v10}, Lcom/android/camera/property/Property;->enableLogs(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v10}, Lcom/android/camera/property/Property;->enableLogs(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v10}, Lcom/android/camera/property/Property;->enableLogs(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v10}, Lcom/android/camera/property/Property;->enableLogs(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isLowBatteryTemperature:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v10}, Lcom/android/camera/property/Property;->enableLogs(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isLowPower:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v10}, Lcom/android/camera/property/Property;->enableLogs(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isMirrorMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v10}, Lcom/android/camera/property/Property;->enableLogs(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v10}, Lcom/android/camera/property/Property;->enableLogs(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v10}, Lcom/android/camera/property/Property;->enableLogs(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v10}, Lcom/android/camera/property/Property;->enableLogs(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v10}, Lcom/android/camera/property/Property;->enableLogs(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v10}, Lcom/android/camera/property/Property;->enableLogs(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->touchPreviewEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v0, v3}, Lcom/android/camera/event/Event;->disableLogs(I)V

    const-string v0, "HTCCamera"

    const-string v1, "Constructor() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "HTCCamera.CameraType"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    goto/16 :goto_0
.end method

.method private QueryToggleStorage()V
    .locals 5

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsStorageSlotLocked:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, ""

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v2}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0a01e6

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a01e4

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x2040151

    new-instance v4, Lcom/android/camera/HTCCamera$18;

    invoke-direct {v4, p0}, Lcom/android/camera/HTCCamera$18;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x2040152

    new-instance v4, Lcom/android/camera/HTCCamera$17;

    invoke-direct {v4, p0}, Lcom/android/camera/HTCCamera$17;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateDialogManager:Lcom/android/camera/IRotateDialogManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateDialogManager:Lcom/android/camera/IRotateDialogManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;)Lcom/android/camera/Handle;

    goto :goto_0

    :cond_2
    const v2, 0x7f0a01e5

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/camera/HTCCamera;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/HTCCamera;)Landroid/hardware/SensorEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mGSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/HTCCamera;Lcom/android/camera/CaptureHandle;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/HTCCamera;->completeCapture(Lcom/android/camera/CaptureHandle;J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->leaveQuickLaunchState()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->showFocusEnd()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/HTCCamera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/HTCCamera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mGSensorUsageCounter:I

    return v0
.end method

.method static synthetic access$1404(Lcom/android/camera/HTCCamera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mGSensorUsageCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mGSensorUsageCounter:I

    return v0
.end method

.method static synthetic access$1406(Lcom/android/camera/HTCCamera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mGSensorUsageCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mGSensorUsageCounter:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->startAccelerometer()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopAccelerometer()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/HTCCamera;)Lcom/android/camera/IViewFinder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mViewFinder:Lcom/android/camera/IViewFinder;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/HTCCamera;Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onPreviewSurfaceCreated(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/HTCCamera;Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onPreviewSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/HTCCamera;Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onAutoFocusCanceled(Lcom/android/camera/AutoFocusEventArgs;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/HTCCamera;Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onAutoFocusFinished(Lcom/android/camera/AutoFocusEventArgs;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/HTCCamera;Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onAutoFocusStarting(Lcom/android/camera/AutoFocusEventArgs;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/HTCCamera;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->doOnDestory()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/CameraSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->linkToCameraThread()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/HTCCamera;Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/HTCCamera;->onCameraThreadEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/HTCCamera;Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->onCameraThreadPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/camera/HTCCamera;Lcom/android/camera/RecordingLimitState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onRecordingLimitStateChanged(Lcom/android/camera/RecordingLimitState;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mIsPinchZoomed:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/camera/HTCCamera;Lcom/android/camera/imaging/Size;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onPreviewSizeChanged(Lcom/android/camera/imaging/Size;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/HTCCamera;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onZoomValueChanged(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/HTCCamera;Lcom/android/camera/ExternalCommandEventArgs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onExternalCommandReceived(Lcom/android/camera/ExternalCommandEventArgs;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/HTCCamera;Lcom/android/camera/io/StorageSlot;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onStorageEjected(Lcom/android/camera/io/StorageSlot;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/HTCCamera;Lcom/android/camera/io/StorageSlot;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onStorageMounted(Lcom/android/camera/io/StorageSlot;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/HTCCamera;Lcom/android/camera/io/StorageSlot;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onStorageUnmounted(Lcom/android/camera/io/StorageSlot;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThreadBlockReason;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onCameraThreadBlocked(Lcom/android/camera/CameraThreadBlockReason;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/HTCCamera;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mInitSpan:F

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/HTCCamera;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/HTCCamera;->mInitSpan:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/HTCCamera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mBaseZoom:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/HTCCamera;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/HTCCamera;->mBaseZoom:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/HTCCamera;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/HTCCamera;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->countDownSelfTimer(II)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onCameraThreadRunning()V

    return-void
.end method

.method private final autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p2}, Lcom/android/camera/HTCCamera;->autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 15

    if-nez p1, :cond_0

    const-string v10, "focusMode"

    invoke-static {v10}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    if-nez p2, :cond_1

    const-string v10, "focusPoints"

    invoke-static {v10}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    const-string v10, "meteringPoints"

    invoke-static {v10}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v10, :cond_3

    const-string v10, "HTCCamera"

    const-string v11, "autoFocus() - No camera thread"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v10}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_4

    iget-boolean v10, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v10, :cond_5

    :cond_4
    const-string v10, "HTCCamera"

    const-string v11, "autoFocus() - Activity is paused or idle"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    goto :goto_0

    :cond_5
    iget v10, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eqz v10, :cond_6

    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    :cond_6
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v10, v10, Lcom/android/camera/CameraSettings;->canAutoFocus:Lcom/android/camera/property/Property;

    invoke-virtual {v10}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_8

    sget-object v10, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    move-object/from16 v0, p1

    if-ne v0, v10, :cond_8

    const-string v10, "HTCCamera"

    const-string v11, "autoFocus() - Focus mode is sensor, but canAutoFocus is false"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    goto :goto_0

    :cond_7
    const-string v10, "HTCCamera"

    const-string v11, "autoFocus() - Cannot cancel auto-focus"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "HTCCamera"

    const-string v11, "autoFocus() - Cannot trigger focus"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    goto :goto_0

    :cond_9
    const-string v10, "HTCCamera"

    const-string v11, "autoFocus() - Block capture UI"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v11, "Auto focusing"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    const-string v10, "HTCCamera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "autoFocus() - Focus mode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    instance-of v10, v0, [Landroid/graphics/PointF;

    if-eqz v10, :cond_a

    move-object/from16 v10, p2

    check-cast v10, [Landroid/graphics/PointF;

    move-object v3, v10

    check-cast v3, [Landroid/graphics/PointF;

    array-length v10, v3

    const/4 v11, 0x1

    if-ne v10, v11, :cond_c

    const-string v10, "HTCCamera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "autoFocus() - Focus point = ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v3, v12

    iget v12, v12, Landroid/graphics/PointF;->x:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v3, v12

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_1
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    iget-object v11, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v10, v11, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    iget-object v11, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget v10, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-nez v10, :cond_b

    const/4 v10, 0x1

    iput v10, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    instance-of v10, v0, [Landroid/graphics/PointF;

    if-eqz v10, :cond_f

    check-cast p2, [Landroid/graphics/PointF;

    move-object/from16 v7, p2

    check-cast v7, [Landroid/graphics/PointF;

    const/4 v4, 0x0

    :goto_2
    array-length v10, v7

    if-ge v4, v10, :cond_10

    aget-object v6, v7, v4

    new-instance v8, Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    const/high16 v11, 0x3e00

    sub-float/2addr v10, v11

    iget v11, v6, Landroid/graphics/PointF;->y:F

    const/high16 v12, 0x3e00

    sub-float/2addr v11, v12

    iget v12, v6, Landroid/graphics/PointF;->x:F

    const/high16 v13, 0x3e00

    add-float/2addr v12, v13

    iget v13, v6, Landroid/graphics/PointF;->y:F

    const/high16 v14, 0x3e00

    add-float/2addr v13, v14

    invoke-direct {v8, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_c
    sget-boolean v10, Lcom/android/camera/LOG;->DEBUG:Z

    if-eqz v10, :cond_a

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "autoFocus() - Focus point = {"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    :goto_3
    array-length v10, v3

    if-ge v4, v10, :cond_e

    if-eqz v4, :cond_d

    const/16 v10, 0x2c

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v3, v4

    iget v11, v11, Landroid/graphics/PointF;->x:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v3, v4

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_e
    const-string v10, "}"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "HTCCamera"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p2

    instance-of v10, v0, [Landroid/graphics/RectF;

    if-eqz v10, :cond_10

    check-cast p2, [Landroid/graphics/RectF;

    move-object/from16 v9, p2

    check-cast v9, [Landroid/graphics/RectF;

    const/4 v4, 0x0

    :goto_4
    array-length v10, v9

    if-ge v4, v10, :cond_10

    aget-object v10, v9, v4

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_10
    move-object/from16 v0, p3

    instance-of v10, v0, [Landroid/graphics/PointF;

    if-eqz v10, :cond_11

    check-cast p3, [Landroid/graphics/PointF;

    move-object/from16 v7, p3

    check-cast v7, [Landroid/graphics/PointF;

    const/4 v4, 0x0

    :goto_5
    array-length v10, v7

    if-ge v4, v10, :cond_12

    aget-object v6, v7, v4

    new-instance v8, Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    const/high16 v11, 0x3e00

    sub-float/2addr v10, v11

    iget v11, v6, Landroid/graphics/PointF;->y:F

    const/high16 v12, 0x3e00

    sub-float/2addr v11, v12

    iget v12, v6, Landroid/graphics/PointF;->x:F

    const/high16 v13, 0x3e00

    add-float/2addr v12, v13

    iget v13, v6, Landroid/graphics/PointF;->y:F

    const/high16 v14, 0x3e00

    add-float/2addr v13, v14

    invoke-direct {v8, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_11
    move-object/from16 v0, p3

    instance-of v10, v0, [Landroid/graphics/RectF;

    if-eqz v10, :cond_12

    check-cast p3, [Landroid/graphics/RectF;

    move-object/from16 v9, p3

    check-cast v9, [Landroid/graphics/RectF;

    const/4 v4, 0x0

    :goto_6
    array-length v10, v9

    if-ge v4, v10, :cond_12

    aget-object v10, v9, v4

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_12
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v2, v5}, Lcom/android/camera/IAutoFocusController;->autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/util/List;Ljava/util/List;)Lcom/android/camera/Handle;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    if-eqz v10, :cond_13

    const-string v10, "HTCCamera"

    const-string v11, "autoFocus() - Handle : \'"

    iget-object v12, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    iget-object v12, v12, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v13, "\'"

    invoke-static {v10, v11, v12, v13}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_7
    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_13
    const-string v10, "HTCCamera"

    const-string v11, "autoFocus() - No focus handle"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_14
    const-string v10, "HTCCamera"

    const-string v11, "autoFocus() - No IAutoFocusController interface"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v11, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v10, v11}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    iget-object v10, p0, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    iget-object v11, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method private broadcastStopFM()V
    .locals 0

    return-void
.end method

.method private broadcastStopMusic()V
    .locals 0

    return-void
.end method

.method private broadcastStopVoiceRecording()V
    .locals 3

    const-string v1, "HTCCamera"

    const-string v2, "!!!! @@@@ broadcastStopVoiceRecording() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.soundrecorder.recordingservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "stoprecord"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "HTCCamera"

    const-string v2, "!!!! @@@@ broadcastStopVoiceRecording() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private changetoCameraMode(Z)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change mode to Camera, isUiOnly = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "Change mode to Camera - but current mode is Camera !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->changeMode(Lcom/android/camera/CameraMode;)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mChangingModeHandle:Lcom/android/camera/Handle;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mChangingModeHandle:Lcom/android/camera/Handle;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    const-string v0, "HTCCamera"

    const-string v1, "changetoCameraMode() - Handle : "

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mChangingModeHandle:Lcom/android/camera/Handle;

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "changetoCameraMode() - set mWaitResetSettings to true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->startPreview(Lcom/android/camera/CameraType;)Z

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v0}, Lcom/android/camera/IAudioManager;->abandonAudioFocus()V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FlashMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setFlashMode(Lcom/android/camera/FlashMode;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v1, "Starting preview"

    invoke-interface {v0, v1, v3}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/android/camera/Handle;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private changetoVideoMode(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change mode to Video, isUiOnly = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_1

    const-string v0, "HTCCamera"

    const-string v1, "Change mode to Video - but current mode is Video !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopFM()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopMusic()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopNotesRecording()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isAudioFocusEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v0, v4}, Lcom/android/camera/IAudioManager;->requestAudioFocus(I)V

    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->changeMode(Lcom/android/camera/CameraMode;)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mChangingModeHandle:Lcom/android/camera/Handle;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mChangingModeHandle:Lcom/android/camera/Handle;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    const-string v0, "HTCCamera"

    const-string v1, "changetoVideoMode() - Handle : "

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mChangingModeHandle:Lcom/android/camera/Handle;

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    const-string v0, "HTCCamera"

    const-string v1, "changetoVideoMode() - set mWaitResetSettings to true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->startPreview(Lcom/android/camera/CameraType;)Z

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/FlashMode;->Auto:Lcom/android/camera/FlashMode;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    if-ne v0, v1, :cond_7

    :cond_5
    sget-object v0, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setFlashMode(Lcom/android/camera/FlashMode;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v1, "Starting preview"

    invoke-interface {v0, v1, v3}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/android/camera/Handle;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/FlashMode;->On:Lcom/android/camera/FlashMode;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/camera/FlashMode;->Torch:Lcom/android/camera/FlashMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setFlashMode(Lcom/android/camera/FlashMode;)V

    goto/16 :goto_0
.end method

.method private checkFlash()V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->hasFlash:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkStartMode(Landroid/content/Intent;)V
    .locals 4

    instance-of v1, p0, Lcom/android/camera/CameraServiceEntry;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/camera/CameraStartMode;->GenericServiceCamera:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    :goto_0
    const-string v1, "RequestedFrom"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "album"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/camera/CameraStartMode;->Album:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    :cond_0
    :goto_1
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkStartMode() - Start mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    instance-of v1, p0, Lcom/android/camera/VideoServiceEntry;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/camera/CameraStartMode;->GenericServiceCamcorder:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/camera/CameraStartMode;->Generic:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    goto :goto_0

    :cond_3
    const-string v1, "captureSquare"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/camera/CameraStartMode;->SquarePhoto:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    goto :goto_1

    :cond_4
    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/camera/CameraStartMode;->ContactsPhoto:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    goto :goto_1

    :cond_5
    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    sget-object v2, Lcom/android/camera/CameraStartMode;->GenericServiceCamera:Lcom/android/camera/CameraStartMode;

    if-ne v1, v2, :cond_6

    sget-object v1, Lcom/android/camera/CameraStartMode;->MmsPhoto:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/android/camera/CameraStartMode;->MmsVideo:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    goto :goto_1

    :cond_7
    const-string v1, "notes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    sget-object v2, Lcom/android/camera/CameraStartMode;->GenericServiceCamera:Lcom/android/camera/CameraStartMode;

    if-ne v1, v2, :cond_8

    sget-object v1, Lcom/android/camera/CameraStartMode;->NotesPhoto:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    goto :goto_1

    :cond_8
    sget-object v1, Lcom/android/camera/CameraStartMode;->NotesVideo:Lcom/android/camera/CameraStartMode;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    goto :goto_1

    :cond_9
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkStartMode() - Unknown service requester : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private closeCaptureUI()V
    .locals 3

    const-string v0, "HTCCamera"

    const-string v1, "closeCaptureUI()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method private completeCapture(Lcom/android/camera/CaptureHandle;J)V
    .locals 12

    const/16 v1, 0x277a

    const/4 v11, 0x2

    const/4 v3, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "completeCapture() - Null capture handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "HTCCamera"

    const-string v4, "completeCapture() - Handle : "

    const-string v5, ", camera mode : "

    iget-object v6, p1, Lcom/android/camera/CaptureHandle;->cameraMode:Lcom/android/camera/CameraMode;

    invoke-static {v0, v4, p1, v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-ne v0, v4, :cond_a

    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraMode:[I

    iget-object v4, p1, Lcom/android/camera/CaptureHandle;->cameraMode:Lcom/android/camera/CameraMode;

    invoke-virtual {v4}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x320

    cmp-long v0, v4, v8

    if-gtz v0, :cond_4

    move v7, v3

    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    iget-object v4, p1, Lcom/android/camera/CaptureHandle;->cameraMode:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v4}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v7, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPreparedActionScreenSessionHandle:Lcom/android/camera/SessionHandle;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSessionHandle:Lcom/android/camera/SessionHandle;

    if-eq v0, v4, :cond_5

    :cond_2
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraMode:[I

    iget-object v1, p1, Lcom/android/camera/CaptureHandle;->cameraMode:Lcom/android/camera/CameraMode;

    invoke-virtual {v1}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    :goto_2
    if-nez v7, :cond_3

    iput-object v10, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onActionScreenClosed(Lcom/android/camera/CaptureHandle;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eq v0, p1, :cond_1

    const-string v0, "HTCCamera"

    const-string v1, "completeCapture() - Invalid photo capture handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completeCapture() - Current photo capture handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eq v0, p1, :cond_1

    const-string v0, "HTCCamera"

    const-string v1, "completeCapture() - Invalid video capture handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completeCapture() - Current video capture handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v7, v2

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    iput-object v10, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    iput-object v10, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    goto :goto_2

    :cond_5
    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-gtz v0, :cond_9

    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraMode:[I

    iget-object v1, p1, Lcom/android/camera/CaptureHandle;->cameraMode:Lcom/android/camera/CameraMode;

    invoke-virtual {v1}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    :goto_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Reviewing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v0}, Lcom/android/camera/actionscreen/ActionScreen;->open()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    iput-object v10, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    goto :goto_3

    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    iput-object v10, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingState;->Reviewing:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    const-string v0, "HTCCamera"

    const-string v1, "completeCapture() - No action screen to open"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onActionScreenClosed(Lcom/android/camera/CaptureHandle;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    new-array v4, v11, [Ljava/lang/Object;

    aput-object p1, v4, v2

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    move v3, v2

    move-wide v5, p2

    invoke-static/range {v0 .. v6}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    if-eqz v0, :cond_b

    const-string v0, "HTCCamera"

    const-string v4, "completeCapture() - Called from another thread"

    invoke-static {v0, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    new-array v4, v11, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0, v1, v2, v2, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "HTCCamera"

    const-string v1, "completeCapture() - Cannot show action screen because there is no handler"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private countDownSelfTimer(II)V
    .locals 11

    const-string v0, "HTCCamera"

    const-string v1, "countDownSelfTimer("

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "/"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ")"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-lez p2, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/HTCCamera;->mSelfTimerStartTime:J

    sub-long v7, v0, v2

    sub-int v0, p1, p2

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sub-long v9, v7, v0

    const-wide/16 v0, 0x3e8

    sub-long v5, v0, v9

    const-wide/16 v0, 0x384

    cmp-long v0, v5, v0

    if-gez v0, :cond_3

    const-wide/16 v5, 0x384

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/4 v1, 0x6

    add-int/lit8 v3, p2, -0x1

    const/4 v4, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    if-ne p2, p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v0}, Lcom/android/camera/IAudioManager;->requestAudioFocus()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->selfTimerCountDownEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/OneValueEventArgs;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCountDownSoundHandle:Lcom/android/camera/Handle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-wide/16 v0, 0x44c

    cmp-long v0, v5, v0

    if-lez v0, :cond_0

    const-wide/16 v5, 0x44c

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v1, "Taking picture"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCountDownEndSoundHandle:Lcom/android/camera/Handle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v0}, Lcom/android/camera/IAudioManager;->abandonAudioFocus()V

    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    const-string v1, "Taking picture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/IUIRotationManager;->lockRotation(Ljava/lang/String;Lcom/android/camera/rotate/UIRotation;)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/android/camera/Handle;

    :cond_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->TakingPicture:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string v0, "HTCCamera"

    const-string v1, "countDownSelfTimer() - Take picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->takePicture(Z)Lcom/android/camera/CaptureHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    goto :goto_1
.end method

.method private doOnDestory()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "HTCCamera"

    const-string v1, "doOnDestroy() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    invoke-virtual {v0}, Lcom/android/camera/component/UIComponentManager;->removeComponents()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    invoke-virtual {v0}, Lcom/android/camera/component/UIComponentManager;->release()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->exit()V

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCameraThreadRunning:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v0}, Lcom/android/camera/IntentManager;->releaseIntentManager()V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->releaseCameraThread()V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    const-string v1, "CAMCORDER_MODE=OFF"

    invoke-interface {v0, v1}, Lcom/android/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v0}, Lcom/android/camera/AutoUploader;->releaseResource()V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    :cond_3
    const-string v0, "HTCCamera"

    const-string v1, "Destroy events"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/camera/event/Event;->destroyAllEvents(Ljava/lang/Object;)V

    const-string v0, "HTCCamera"

    const-string v1, "Destroy properties"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->release()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera$MainHandler;->release()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mThreadMonitor:Lcom/android/camera/debug/ThreadMonitor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mThreadMonitor:Lcom/android/camera/debug/ThreadMonitor;

    invoke-virtual {v0}, Lcom/android/camera/debug/ThreadMonitor;->abort()V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mThreadMonitor:Lcom/android/camera/debug/ThreadMonitor;

    :cond_4
    const-string v0, "HTCCamera"

    const-string v1, "doOnDestroy() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doOnResume_after_preview()V
    .locals 7

    const/4 v6, 0x0

    const-string v4, "HTCCamera"

    const-string v5, "doOnResume_after_preview() - start"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    if-nez v4, :cond_0

    const-string v4, "HTCCamera"

    const-string v5, "doOnResume_after_preview() - not need to do"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v4}, Lcom/android/camera/IntentManager;->resetLaunchedby()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "HTC_IME_CURRENT_STATE"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPartitonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSIPReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isStorageSlotLocked()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/CameraStorageLocationSettings;->readFromDatabase(Landroid/content/ContentResolver;)Lcom/android/camera/io/StorageSlot;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v5, v4}, Lcom/android/camera/CameraThread;->changeStorageSlot(Lcom/android/camera/io/StorageSlot;)V

    :cond_1
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraThread;->checkStorageState(Z)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v4, p0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    sget-object v4, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v4}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v4}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    const-string v5, "pref_sdcard_state"

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v4}, Lcom/android/camera/io/StorageSlot;->getState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->QueryToggleStorage()V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->saveSDCardState()V

    const-string v4, "HTCCamera"

    const-string v5, "doOnResume_after_preview() - end"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v4, "HTCCamera"

    const-string v5, "registerReceiver failed!!"

    invoke-static {v4, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method private initializeCaptureUI()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsCaptureUiInitialized:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsCaptureUiInitialized:Z

    const-string v1, "HTCCamera"

    const-string v2, "initializeCaptureUI() - Start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f08002c

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mCaptureUiContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mComponentFactory:Lcom/android/camera/component/UIComponentFactory;

    sget-object v2, Lcom/android/camera/component/ComponentCategory;->Normal:Lcom/android/camera/component/ComponentCategory;

    invoke-virtual {v1, v2}, Lcom/android/camera/component/UIComponentFactory;->createComponents(Lcom/android/camera/component/ComponentCategory;)I

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    invoke-virtual {v1, v3}, Lcom/android/camera/component/UIComponentManager;->enableAutoInitialization(Z)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->linkToOptionalServiceComponents()V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    const-string v1, "HTCCamera"

    const-string v2, "initializeCaptureUI() - End"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isTapCaptureEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isTapCaptureEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isTapCaptureFrontEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private leaveQuickLaunchState()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "HTCCamera"

    const-string v1, "leaveQuickLaunchState()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isQuickLaunchState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraThread;->setFirstFrameCacheState(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isQuickLaunchState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private linkToCameraThread()V
    .locals 10

    const-string v8, "HTCCamera"

    const-string v9, "linkToCameraThread() - Start"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v1, :cond_0

    const-string v8, "HTCCamera"

    const-string v9, "linkToCameraThread() - No camera thread"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/android/camera/HTCCamera$21;

    invoke-direct {v2, p0}, Lcom/android/camera/HTCCamera$21;-><init>(Lcom/android/camera/HTCCamera;)V

    iget-object v8, v1, Lcom/android/camera/CameraThread;->cameraClosedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v8, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v8, v1, Lcom/android/camera/CameraThread;->captureFailedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v8, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v8, v1, Lcom/android/camera/CameraThread;->captureStartedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v8, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v8, v1, Lcom/android/camera/CameraThread;->captureStoppedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v8, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v8, v1, Lcom/android/camera/CameraThread;->mediaDeletedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v8, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v8, v1, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v8, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v8, v1, Lcom/android/camera/CameraThread;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v8, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v8, v1, Lcom/android/camera/CameraThread;->modeChangedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v8, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v8, v1, Lcom/android/camera/CameraThread;->modeChangeFailedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v8, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v8, v1, Lcom/android/camera/CameraThread;->previewStartedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v8, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v8, v1, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v8, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v8, v1, Lcom/android/camera/CameraThread;->previewStartingEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v8, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    new-instance v0, Lcom/android/camera/HTCCamera$22;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$22;-><init>(Lcom/android/camera/HTCCamera;)V

    new-instance v4, Lcom/android/camera/HTCCamera$23;

    invoke-direct {v4, p0}, Lcom/android/camera/HTCCamera$23;-><init>(Lcom/android/camera/HTCCamera;)V

    iget-object v8, v1, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    invoke-virtual {v8, v0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v8, v1, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v8, v0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v8, v1, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v8, v0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v8, v1, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    invoke-virtual {v8, v0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v8, v1, Lcom/android/camera/CameraThread;->zoomRange:Lcom/android/camera/property/Property;

    invoke-virtual {v8, v0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v8

    const-class v9, Lcom/android/camera/IRecordingLimitController;

    invoke-virtual {v8, v9}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/IRecordingLimitController;

    if-eqz v5, :cond_1

    iget-object v8, v5, Lcom/android/camera/IRecordingLimitController;->recordingLimitState:Lcom/android/camera/property/Property;

    invoke-virtual {v8, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    :goto_1
    iget-object v8, v1, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/imaging/Size;

    iget-object v8, v1, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    iget-object v8, v1, Lcom/android/camera/CameraThread;->zoomRange:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/Range;

    new-instance v8, Lcom/android/camera/HTCCamera$24;

    invoke-direct {v8, p0, v3, v7, v6}, Lcom/android/camera/HTCCamera$24;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/imaging/Size;Ljava/lang/Integer;Lcom/android/camera/Range;)V

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    const-string v8, "HTCCamera"

    const-string v9, "linkToCameraThread() - End"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v8, "HTCCamera"

    const-string v9, "linkToCameraThread() - No IRecordingLimitController interface"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private linkToOptionalServiceComponents()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v1, Lcom/android/camera/IAudioManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IAudioManager;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IAudioManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v1, Lcom/android/camera/IAutoFocusController;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IAutoFocusController;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    iget-object v0, v0, Lcom/android/camera/IAutoFocusController;->autoFocusCanceledEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/HTCCamera$8;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$8;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    iget-object v0, v0, Lcom/android/camera/IAutoFocusController;->autoFocusFinishedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/HTCCamera$9;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$9;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    iget-object v0, v0, Lcom/android/camera/IAutoFocusController;->autoFocusStartingEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/HTCCamera$10;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$10;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v1, Lcom/android/camera/effect/IEffectControlUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/IEffectControlUI;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    if-nez v0, :cond_1

    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IEffectControlUI interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v1, Lcom/android/camera/effect/IEffectManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/IEffectManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->currentEffect:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/android/camera/effect/IEffectManager;->currentEffect:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->bind(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->bind(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v1, Lcom/android/camera/IRotateDialogManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IRotateDialogManager;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateDialogManager:Lcom/android/camera/IRotateDialogManager;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateDialogManager:Lcom/android/camera/IRotateDialogManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->hasDialog:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotateDialogManager:Lcom/android/camera/IRotateDialogManager;

    iget-object v1, v1, Lcom/android/camera/IRotateDialogManager;->hasDialog:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->bind(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    :goto_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mObjectTracker:Lcom/android/camera/IObjectTracker;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v1, Lcom/android/camera/IObjectTracker;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IObjectTracker;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mObjectTracker:Lcom/android/camera/IObjectTracker;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mObjectTracker:Lcom/android/camera/IObjectTracker;

    if-nez v0, :cond_2

    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IObjectTracker interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v1, Lcom/android/camera/IUIRotationManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IUIRotationManager;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/android/camera/IUIRotationManager;->rotation:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/HTCCamera$11;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$11;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->deviceOrientation:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v1, v1, Lcom/android/camera/IUIRotationManager;->deviceOrientation:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->bind(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isRotationLocked:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v1, v1, Lcom/android/camera/IUIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->bind(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v1, v1, Lcom/android/camera/IUIRotationManager;->rotation:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->bind(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    :goto_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v1, Lcom/android/camera/ISharedBackgroundWorker;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ISharedBackgroundWorker;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSharedBackgroundWorker:Lcom/android/camera/ISharedBackgroundWorker;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSharedBackgroundWorker:Lcom/android/camera/ISharedBackgroundWorker;

    if-nez v0, :cond_3

    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find ISharedBackgroundWorker interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IAutoFocusController interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IEffectManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IRotateDialogManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IUIRotationManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private linkToRequiredServiceComponents()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v2, Lcom/android/camera/ICaptureUIBlockManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ICaptureUIBlockManager;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v2, "linkToRequiredServiceComponents() - No ICaptureUIBlockManager interface"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v2, Lcom/android/camera/IViewFinder;

    invoke-virtual {v0, v2}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IViewFinder;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mViewFinder:Lcom/android/camera/IViewFinder;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mViewFinder:Lcom/android/camera/IViewFinder;

    if-nez v0, :cond_1

    const-string v0, "HTCCamera"

    const-string v2, "linkToRequiredServiceComponents() - No IViewFinder interface"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mViewFinder:Lcom/android/camera/IViewFinder;

    iget-object v0, v0, Lcom/android/camera/IViewFinder;->isPreviewSurfaceCreated:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/HTCCamera$7;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$7;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onActionScreenClosed(Lcom/android/camera/CaptureHandle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Capture handle : \'"

    iget-object v2, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\'"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Camera mode : "

    iget-object v2, p1, Lcom/android/camera/CaptureHandle;->cameraMode:Lcom/android/camera/CameraMode;

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActionScreenClosed() - Current mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraMode:[I

    iget-object v1, p1, Lcom/android/camera/CaptureHandle;->cameraMode:Lcom/android/camera/CameraMode;

    invoke-virtual {v1}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/camera/CaptureHandle;->cameraMode:Lcom/android/camera/CameraMode;

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_3

    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Complete video snapshot"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Complete video recording"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->completeRecording(Lcom/android/camera/CaptureHandle;)V

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/android/camera/IUIRotationManager;->unlockRotation(Lcom/android/camera/Handle;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/android/camera/Handle;

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRecordingLockHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/android/camera/IUIRotationManager;->unlockRotation(Lcom/android/camera/Handle;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mRecordingLockHandle:Lcom/android/camera/Handle;

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Power warning"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Activity is paused"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/camera/CaptureHandle;->cameraMode:Lcom/android/camera/CameraMode;

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {p0, v4, v0}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)Z

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_a

    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Take picture immediately"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->lastTakingPictureTriggerSource:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Cannot take picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPreparedActionScreenSessionHandle:Lcom/android/camera/SessionHandle;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPreparedActionScreenSessionHandle:Lcom/android/camera/SessionHandle;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSessionHandle:Lcom/android/camera/SessionHandle;

    if-ne v0, v1, :cond_b

    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->startPreview()Z

    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - End"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-direct {p0, v5, v0}, Lcom/android/camera/HTCCamera;->startPreview(ZLcom/android/camera/CameraType;)Z

    goto :goto_2

    :cond_c
    sget-object v0, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {p0, v4, v0}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)Z

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onActionScreenOpening()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    return-void
.end method

.method private onAutoFocusCanceled(Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v0, "HTCCamera"

    const-string v1, "onAutoFocusCanceled() - Handle : \'"

    iget-object v2, p1, Lcom/android/camera/AutoFocusEventArgs;->handle:Lcom/android/camera/Handle;

    iget-object v2, v2, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\'"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    iget-object v1, p1, Lcom/android/camera/AutoFocusEventArgs;->handle:Lcom/android/camera/Handle;

    if-eq v0, v1, :cond_1

    const-string v0, "HTCCamera"

    const-string v1, "onAutoFocusCanceled() - Invalid handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HTCCamera"

    const-string v2, "onAutoFocusCanceled() - Current handle : \'"

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    iget-object v0, v0, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_0
    const-string v3, "\'"

    invoke-static {v1, v2, v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "null"

    goto :goto_0

    :cond_1
    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    iput v4, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->autoFocusCanceledEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_1
.end method

.method private onAutoFocusFinished(Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 4

    const-string v0, "HTCCamera"

    const-string v1, "onAutoFocusFinished() - Handle : \'"

    iget-object v2, p1, Lcom/android/camera/AutoFocusEventArgs;->handle:Lcom/android/camera/Handle;

    iget-object v2, v2, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\'"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    iget-object v1, p1, Lcom/android/camera/AutoFocusEventArgs;->handle:Lcom/android/camera/Handle;

    if-eq v0, v1, :cond_1

    const-string v0, "HTCCamera"

    const-string v1, "onAutoFocusFinished() - Invalid handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HTCCamera"

    const-string v2, "onAutoFocusFinished() - Current handle : \'"

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    iget-object v0, v0, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_0
    const-string v3, "\'"

    invoke-static {v1, v2, v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "null"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Face:Lcom/android/camera/AutoFocusMode;

    if-eq v0, v1, :cond_2

    iget-boolean v0, p1, Lcom/android/camera/AutoFocusEventArgs;->isSuccessful:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->showFocusSucessEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->performActionsAfterAutoFocus()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/16 v1, 0x53

    const-wide/16 v2, 0xc8

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->showFocusFailEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_2
.end method

.method private onAutoFocusStarting(Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    iget-object v1, p1, Lcom/android/camera/AutoFocusEventArgs;->handle:Lcom/android/camera/Handle;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/camera/AutoFocusEventArgs;->focusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->BeforeCapture:Lcom/android/camera/AutoFocusMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFocusingSoundHandle:Lcom/android/camera/Handle;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v1, 0x7f060007

    invoke-interface {v0, v1}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mFocusingSoundHandle:Lcom/android/camera/Handle;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    if-eq v0, v1, :cond_3

    sget-boolean v0, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    if-eqz v0, :cond_6

    :cond_3
    const-string v0, "HTCCamera"

    const-string v1, "Play Focusing Sound"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFocusingSoundHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1, v2, v2}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportRAWChip()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->showFocusingEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "HTCCamera"

    const-string v1, "Play Focusing Sound"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFocusingSoundHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1, v2, v2}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    goto :goto_1
.end method

.method private onCameraModeChangeFailed(Lcom/android/camera/CameraModeChangeEventArgs;)V
    .locals 5

    const/4 v4, 0x1

    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to switing mode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/camera/CameraModeChangeEventArgs;->targetMode:Lcom/android/camera/CameraMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/camera/CameraModeChangeEventArgs;->targetMode:Lcom/android/camera/CameraMode;

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    :goto_0
    sget-object v1, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraMode:[I

    invoke-virtual {v0}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    iget-object v1, p1, Lcom/android/camera/CameraModeChangeEventArgs;->targetMode:Lcom/android/camera/CameraMode;

    sget-object v2, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HTCCamera"

    const-string v2, "onCameraModeChangeFailed() - Cancel video recording"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/HTCCamera;->onPreviewStarted(Lcom/android/camera/CameraPreviewEventArgs;)V

    return-void

    :cond_1
    sget-object v0, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v4}, Lcom/android/camera/HTCCamera;->changetoCameraMode(Z)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v4}, Lcom/android/camera/HTCCamera;->changetoVideoMode(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onCameraModeChanged(Lcom/android/camera/CameraModeChangeEventArgs;)V
    .locals 3

    const-string v0, "HTCCamera"

    const-string v1, "onCameraModeChanged() - Handle : "

    iget-object v2, p1, Lcom/android/camera/CameraModeChangeEventArgs;->handle:Lcom/android/camera/Handle;

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mChangingModeHandle:Lcom/android/camera/Handle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mChangingModeHandle:Lcom/android/camera/Handle;

    iget-object v1, p1, Lcom/android/camera/CameraModeChangeEventArgs;->handle:Lcom/android/camera/Handle;

    if-eq v0, v1, :cond_0

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraModeChanged() - Invalid handle, current handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mChangingModeHandle:Lcom/android/camera/Handle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mChangingModeHandle:Lcom/android/camera/Handle;

    goto :goto_0
.end method

.method private onCameraThreadBlocked(Lcom/android/camera/CameraThreadBlockReason;)V
    .locals 3

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraThreadBlocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->selfFinishingEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    return-void
.end method

.method private onCameraThreadEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->cameraClosedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraClosedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v0, p0, p3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->captureFailedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_3

    check-cast p3, Lcom/android/camera/CaptureEventArgs;

    invoke-direct {p0, p3}, Lcom/android/camera/HTCCamera;->onCaptureFailed(Lcom/android/camera/CaptureEventArgs;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->captureStartedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_4

    check-cast p3, Lcom/android/camera/CaptureEventArgs;

    invoke-direct {p0, p3}, Lcom/android/camera/HTCCamera;->onCaptureStarted(Lcom/android/camera/CaptureEventArgs;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->captureStoppedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_5

    check-cast p3, Lcom/android/camera/CaptureEventArgs;

    invoke-direct {p0, p3}, Lcom/android/camera/HTCCamera;->onCaptureStopped(Lcom/android/camera/CaptureEventArgs;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mediaDeletedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mediaDeletedEvent:Lcom/android/camera/event/Event;

    check-cast p3, Lcom/android/camera/MediaEventArgs;

    invoke-virtual {v0, p0, p3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_7

    check-cast p3, Lcom/android/camera/io/MediaSaveEventArgs;

    invoke-virtual {p0, p3}, Lcom/android/camera/HTCCamera;->onMediaSaved(Lcom/android/camera/io/MediaSaveEventArgs;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    check-cast p3, Lcom/android/camera/io/MediaSaveEventArgs;

    invoke-virtual {v0, p0, p3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->modeChangedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_9

    check-cast p3, Lcom/android/camera/CameraModeChangeEventArgs;

    invoke-direct {p0, p3}, Lcom/android/camera/HTCCamera;->onCameraModeChanged(Lcom/android/camera/CameraModeChangeEventArgs;)V

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->modeChangeFailedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_a

    check-cast p3, Lcom/android/camera/CameraModeChangeEventArgs;

    invoke-direct {p0, p3}, Lcom/android/camera/HTCCamera;->onCameraModeChangeFailed(Lcom/android/camera/CameraModeChangeEventArgs;)V

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->previewStartedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_b

    check-cast p3, Lcom/android/camera/CameraPreviewEventArgs;

    invoke-direct {p0, p3}, Lcom/android/camera/HTCCamera;->onPreviewStarted(Lcom/android/camera/CameraPreviewEventArgs;)V

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_c

    check-cast p3, Lcom/android/camera/CameraPreviewEventArgs;

    invoke-direct {p0, p3}, Lcom/android/camera/HTCCamera;->onPreviewStartFailed(Lcom/android/camera/CameraPreviewEventArgs;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->previewStartingEvent:Lcom/android/camera/event/Event;

    if-ne p1, v0, :cond_0

    check-cast p3, Lcom/android/camera/CameraPreviewEventArgs;

    invoke-direct {p0, p3}, Lcom/android/camera/HTCCamera;->onPreviewStarting(Lcom/android/camera/CameraPreviewEventArgs;)V

    goto/16 :goto_0
.end method

.method private onCameraThreadPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    if-ne p1, v0, :cond_2

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/imaging/Size;

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->onPreviewSizeChanged(Lcom/android/camera/imaging/Size;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/io/StorageSlot;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/HTCCamera;->onStorageSlotChanged(Lcom/android/camera/io/StorageSlot;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    if-ne p1, v0, :cond_4

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/io/StorageState;

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->onStorageStateChanged(Lcom/android/camera/io/StorageState;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    if-ne p1, v0, :cond_5

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->onZoomValueChanged(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->zoomRange:Lcom/android/camera/property/Property;

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->zoomRange:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/Range;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onCameraThreadRunning()V
    .locals 3

    const-string v0, "HTCCamera"

    const-string v1, "onCameraThreadRunning() - Start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "onCameraThreadRunning() - No camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FlashMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setFlashMode(Lcom/android/camera/FlashMode;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    new-instance v1, Lcom/android/camera/HTCCamera$20;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$20;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HTCCamera"

    const-string v1, "onCameraThreadRunning() - Cannot link to camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCameraThreadRunning:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsSurfaceAvailable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "HTCCamera"

    const-string v1, "onCameraThreadRunning() - Start preview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/HTCCamera;->startPreview(ZLcom/android/camera/CameraType;)Z

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->performActionsOnPreviewSurfaceCreated()V

    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "onCameraThreadRunning() - End"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onCaptureFailed(Lcom/android/camera/CaptureEventArgs;)V
    .locals 2

    iget-object v0, p1, Lcom/android/camera/CaptureEventArgs;->cameraMode:Lcom/android/camera/CameraMode;

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onTakingPictureFailed(Lcom/android/camera/CaptureEventArgs;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onRecordingFailed(Lcom/android/camera/CaptureEventArgs;)V

    goto :goto_0
.end method

.method private onCaptureStarted(Lcom/android/camera/CaptureEventArgs;)V
    .locals 5

    const-string v1, "HTCCamera"

    const-string v2, "onCaptureStarted() - Capture handle : \'"

    iget-object v3, p1, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v3, v3, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v4, "\'"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "HTCCamera"

    const-string v2, "onCaptureStarted() - Camera mode : "

    iget-object v3, p1, Lcom/android/camera/CaptureEventArgs;->cameraMode:Lcom/android/camera/CameraMode;

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/camera/CaptureEventArgs;->cameraMode:Lcom/android/camera/CameraMode;

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_5

    iget-object v1, p1, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eq v1, v2, :cond_2

    const-string v1, "HTCCamera"

    const-string v2, "onCaptureStarted() - Invalid handle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureStarted() - Current capture handle : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v1, v1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v1, "null"

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "HTCCamera"

    const-string v2, "onCaptureStarted() - Video snapshot"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_4

    iget-object v1, p1, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->prepareActionScreen(Lcom/android/camera/CaptureHandle;)V

    :cond_4
    iget-object v1, p1, Lcom/android/camera/CaptureEventArgs;->cameraMode:Lcom/android/camera/CameraMode;

    sget-object v2, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    invoke-direct {p0, v1}, Lcom/android/camera/HTCCamera;->onRecordingStarted(Lcom/android/camera/CaptureHandle;)V

    goto :goto_1

    :cond_5
    iget-object v1, p1, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eq v1, v2, :cond_3

    const-string v1, "HTCCamera"

    const-string v2, "onCaptureStarted() - Invalid handle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureStarted() - Current capture handle : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v1, v1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v1, "null"

    goto :goto_2
.end method

.method private onCaptureStopped(Lcom/android/camera/CaptureEventArgs;)V
    .locals 2

    iget-object v0, p1, Lcom/android/camera/CaptureEventArgs;->cameraMode:Lcom/android/camera/CameraMode;

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->onRecordingStopped(Lcom/android/camera/CaptureHandle;)V

    :cond_0
    return-void
.end method

.method private onEffectPanelStateChanged(Lcom/android/camera/UIState;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$UIState:[I

    invoke-virtual {p1}, Lcom/android/camera/UIState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "HTCCamera"

    const-string v1, "Effect Panel is opening"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const-string v0, "HTCCamera"

    const-string v1, "onEffectPanelOpening when focusing, cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    const-string v0, "HTCCamera"

    const-string v1, "UnBlock Capture UI - onEffectPanelOpening and cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "onPanelMove when focusing, but device can\'t cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onExternalCommandReceived(Lcom/android/camera/ExternalCommandEventArgs;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v1, p1, Lcom/android/camera/ExternalCommandEventArgs;->command:Ljava/lang/String;

    const-string v3, "activate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->activate()V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/ExternalCommandEventArgs;->setHandled()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v3, "deactivate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->deactivate()V

    goto :goto_0

    :cond_3
    const-string v3, "help"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "HTCCamera"

    const-string v4, "activate"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "HTCCamera"

    const-string v4, "deactivate"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "HTCCamera"

    const-string v4, "switch_camera CAMERA_TYPE(Main/Main3D/Front/Front3D)"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "HTCCamera"

    const-string v4, "take_picture"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v3, "switch_camera"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/android/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_5

    :try_start_0
    const-class v3, Lcom/android/camera/CameraType;

    iget-object v4, p1, Lcom/android/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot switch camera to \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown camera \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v3, "HTCCamera"

    const-string v4, "No camera specified"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "take_picture"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "External Command"

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "HTCCamera"

    const-string v4, "Take one picture"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v3, "HTCCamera"

    const-string v4, "Cannot take picture"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onPopupBubbleShown()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    :cond_0
    return-void
.end method

.method private onPreviewSizeChanged(Lcom/android/camera/imaging/Size;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->previewSize:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private onPreviewStartFailed(Lcom/android/camera/CameraPreviewEventArgs;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const-string v3, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreviewStartFailed() - Result : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p1, Lcom/android/camera/CameraPreviewEventArgs;->startResult:Lcom/android/camera/CameraPreviewStartResult;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/camera/CameraPreviewEventArgs;->startResult:Lcom/android/camera/CameraPreviewStartResult;

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v1, :cond_1

    const-string v1, "HTCCamera"

    const-string v2, "onPreviewStartFailed() - No camera thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    move-object v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "HTCCamera"

    const-string v2, "onPreviewStartFailed() - Activity is pausing"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "HTCCamera"

    const-string v2, "onPreviewStartFailed() - Activity is paused"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    iget-object v3, p1, Lcom/android/camera/CameraPreviewEventArgs;->handle:Lcom/android/camera/Handle;

    if-eq v1, v3, :cond_4

    const-string v1, "HTCCamera"

    const-string v2, "onPreviewStartFailed() - Invalid handle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HTCCamera"

    const-string v2, "onPreviewStartFailed() - Handle : "

    iget-object v3, p1, Lcom/android/camera/CameraPreviewEventArgs;->handle:Lcom/android/camera/Handle;

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "HTCCamera"

    const-string v2, "onPreviewStartFailed() - Current handle : "

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lcom/android/camera/CameraPreviewEventArgs;->startResult:Lcom/android/camera/CameraPreviewStartResult;

    sget-object v3, Lcom/android/camera/CameraPreviewStartResult;->NoCameraToken:Lcom/android/camera/CameraPreviewStartResult;

    if-ne v1, v3, :cond_5

    const-string v1, "HTCCamera"

    const-string v3, "onPreviewStartFailed() - No camera token, start preview again"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread;->startPreview(Lcom/android/camera/CameraType;)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewFailureCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewFailureCount:I

    const-string v1, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreviewStartFailed() - FailureCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewFailureCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewFailureCount:I

    const/16 v3, 0xa

    if-ge v1, v3, :cond_6

    const-string v1, "HTCCamera"

    const-string v3, "onPreviewStartFailed() - Start preview again"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread;->startPreview(Lcom/android/camera/CameraType;)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    goto/16 :goto_1

    :cond_6
    sget-object v1, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraPreviewStartResult:[I

    iget-object v2, p1, Lcom/android/camera/CameraPreviewEventArgs;->startResult:Lcom/android/camera/CameraPreviewStartResult;

    invoke-virtual {v2}, Lcom/android/camera/CameraPreviewStartResult;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_7
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->cancelStartingPreview()V

    :cond_8
    const-string v1, "HTCCamera"

    const-string v2, "onPreviewStartFailed() - Finish activity"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->selfFinishingEvent:Lcom/android/camera/event/Event;

    sget-object v2, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_1

    :pswitch_0
    const v0, 0x7f0a005f

    goto :goto_2

    :pswitch_1
    const v0, 0x7f0a024c

    goto :goto_2

    :pswitch_2
    const v0, 0x7f0a005d

    goto :goto_2

    :pswitch_3
    const v0, 0x7f0a0058

    goto :goto_2

    :pswitch_4
    const v0, 0x7f0a0059

    goto :goto_2

    :pswitch_5
    const v0, 0x7f0a005a

    goto :goto_2

    :pswitch_6
    const v0, 0x7f0a005c

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private onPreviewStarted(Lcom/android/camera/CameraPreviewEventArgs;)V
    .locals 9

    const/16 v8, 0x277b

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v2, "HTCCamera"

    const-string v3, "onPreviewStarted() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v2, "HTCCamera"

    const-string v3, "onPreviewStarted() - Handle : "

    iget-object v4, p1, Lcom/android/camera/CameraPreviewEventArgs;->handle:Lcom/android/camera/Handle;

    invoke-static {v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    iget-object v3, p1, Lcom/android/camera/CameraPreviewEventArgs;->handle:Lcom/android/camera/Handle;

    if-eq v2, v3, :cond_1

    const-string v2, "HTCCamera"

    const-string v3, "onPreviewStarted() - Invalid handle"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "HTCCamera"

    const-string v3, "onPreviewStarted() - Current handle : "

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    invoke-static {v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    const-string v2, "HTCCamera"

    const-string v3, "onPreviewStarted() - No preview starting information"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iput-object v6, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    iput v7, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewFailureCount:I

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "HTCCamera"

    const-string v3, "onPreviewStarted() - isActivityPaused = true"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v2, v3}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    iput-object v6, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/android/camera/Handle;

    const-string v2, "HTCCamera"

    const-string v3, "onPreviewStarted() - UnBlock Capture UI - after start preview"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isSwitchingCamera:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v1, "SWITCH_TO_MAIN_CAMERA"

    :goto_2
    invoke-static {v1}, Lcom/android/camera/LOG;->printPerformanceFinishLog(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->checkFlash()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->initializeCaptureUI()V

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->doOnResume_after_preview()V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->zoomValue:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v4, v4, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-nez v2, :cond_6

    new-instance v2, Landroid/view/ScaleGestureDetector;

    new-instance v3, Lcom/android/camera/HTCCamera$ScaleListener;

    invoke-direct {v3, p0, v6}, Lcom/android/camera/HTCCamera$ScaleListener;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/HTCCamera$1;)V

    invoke-direct {v2, p0, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    :cond_6
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_7
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mCanGSensorEnabled:Z

    iget v2, p0, Lcom/android/camera/HTCCamera;->mGSensorUsageCounter:I

    if-lez v2, :cond_8

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->startAccelerometer()V

    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    sput-boolean v7, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    const-string v2, "HTCCamera"

    const-string v3, "onPreviewStarted() - mIsUIReady = true"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_9
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_a
    const-string v2, "HTCCamera"

    const-string v3, "onPreviewStarted() - Unblock UI to prevent unexpected behavior"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v2, v3}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    iput-object v6, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/android/camera/Handle;

    invoke-virtual {v2, v3}, Lcom/android/camera/IUIRotationManager;->unlockRotation(Lcom/android/camera/Handle;)V

    :cond_b
    iput-object v6, p0, Lcom/android/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/android/camera/Handle;

    :cond_c
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v2, v3}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    iput-object v6, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mRecordingLockHandle:Lcom/android/camera/Handle;

    invoke-virtual {v2, v3}, Lcom/android/camera/IUIRotationManager;->unlockRotation(Lcom/android/camera/Handle;)V

    :cond_d
    iput-object v6, p0, Lcom/android/camera/HTCCamera;->mRecordingLockHandle:Lcom/android/camera/Handle;

    :cond_e
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "HTCCamera"

    const-string v3, "onPreviewStarted() - Start recording"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    :cond_f
    :goto_3
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isQuickLaunchState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    invoke-virtual {v2, v8}, Lcom/android/camera/HTCCamera$MainHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v8, v3, v4}, Lcom/android/camera/HTCCamera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_10
    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsLaunching:Z

    if-eqz v2, :cond_11

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->printDataReadyPerformanceLog()V

    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mIsLaunching:Z

    :cond_11
    const-string v2, "HTCCamera"

    const-string v3, "onPreviewStarted() - end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    const-string v1, "SWITCH_TO_FRONT_CAMERA"

    goto/16 :goto_2

    :cond_13
    const-string v2, "HTCCamera"

    const-string v3, "onPreviewStarted() - Switch back to photo mode"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraMode;)Z

    goto :goto_3

    :cond_14
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    if-eqz v2, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gtz v2, :cond_15

    const-string v2, "HTCCamera"

    const-string v3, "onPreviewStarted() - Take picture immediately"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->lastTakingPictureTriggerSource:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    goto :goto_3

    :cond_15
    iput-object v6, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    goto :goto_3
.end method

.method private onPreviewStarting(Lcom/android/camera/CameraPreviewEventArgs;)V
    .locals 3

    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarting() - Handle : "

    iget-object v2, p1, Lcom/android/camera/CameraPreviewEventArgs;->handle:Lcom/android/camera/Handle;

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarting() - Activity is paused"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_1

    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarting() - Screen-save mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    iget-object v1, p1, Lcom/android/camera/CameraPreviewEventArgs;->handle:Lcom/android/camera/Handle;

    if-eq v0, v1, :cond_2

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewStarting() - Invalid handle, current handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->previewStartingEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarting() - End"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPreviewStopped()V
    .locals 3

    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStopped() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mCanGSensorEnabled:Z

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopAccelerometer()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStopped() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onPreviewSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewSurfaceCreated() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HTCCamera"

    const-string v1, "onPreviewSurfaceCreated() - Activity is paused"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceStateSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsSurfaceAvailable:Z

    if-eqz v0, :cond_2

    const-string v0, "HTCCamera"

    const-string v2, "onPreviewSurfaceCreated() - Surface is already created"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsSurfaceAvailable:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsOnResumeCompleted:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isQuickLaunchState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraThread;->setFirstFrameCacheState(Z)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCameraThreadRunning:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "HTCCamera"

    const-string v1, "onPreviewSurfaceCreated() - Start preview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->startPreview(Lcom/android/camera/CameraType;)Z

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCameraThreadRunning:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->performActionsOnPreviewSurfaceCreated()V

    goto :goto_0

    :cond_4
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewSurfaceCreated() - Camera thread is not running, start preview later"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewSurfaceCreated() - Start preview later, taking picture state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", recording state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsLaunching:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->printDataReadyPerformanceLog()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsLaunching:Z

    goto :goto_1

    :cond_6
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewSurfaceCreated() - SurfaceCreated before onResume, set mIdle = true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    goto :goto_1
.end method

.method private onPreviewSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceStateSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "HTCCamera"

    const-string v2, "onPreviewSurfaceDestroyed()"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsSurfaceAvailable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActionPerformedOnPreviewSurfaceCreated:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onRecordingFailed(Lcom/android/camera/CaptureEventArgs;)V
    .locals 6

    const/4 v5, 0x0

    const-string v1, "HTCCamera"

    const-string v2, "onRecordingFailed() - Start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRecordingFailed() - Handle : \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p1, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v1, v1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRecordingFailed() - Reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/camera/CaptureEventArgs;->failedReason:Lcom/android/camera/CaptureFailedReason;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v2, p1, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    if-eq v1, v2, :cond_2

    const-string v1, "HTCCamera"

    const-string v2, "onRecordingFailed() - Invalid handle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRecordingFailed() - Current handle : \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v1, v1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_0
    const-string v1, "null"

    goto :goto_0

    :cond_1
    const-string v1, "null"

    goto :goto_1

    :cond_2
    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "HTCCamera"

    const-string v2, "onRecordingFailed() - isActivityPaused = true"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CaptureFailedReason:[I

    iget-object v2, p1, Lcom/android/camera/CaptureEventArgs;->failedReason:Lcom/android/camera/CaptureFailedReason;

    invoke-virtual {v2}, Lcom/android/camera/CaptureFailedReason;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v1, v2}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRecordingLockHandle:Lcom/android/camera/Handle;

    invoke-virtual {v1, v2}, Lcom/android/camera/IUIRotationManager;->unlockRotation(Lcom/android/camera/Handle;)V

    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mRecordingLockHandle:Lcom/android/camera/Handle;

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "HTCCamera"

    const-string v2, "onRecordingFailed() - Switch back to photo mode"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {p0, v5, v1}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)Z

    :cond_5
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/HTCCamera;->setFingerGestureEnable(Z)V

    const-string v1, "HTCCamera"

    const-string v2, "onRecordingFailed() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->showStorageToast()V

    goto :goto_3

    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v2, Lcom/android/camera/IToastManager;

    invoke-virtual {v1, v2}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IToastManager;

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "low_internal_storage_view_text"

    const-string v3, "string"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/IToastManager;->showToast(I)Lcom/android/camera/Handle;

    goto :goto_3

    :cond_6
    const-string v1, "HTCCamera"

    const-string v2, "onRecordingFailed() - No IToastManager interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onRecordingLimitStateChanged(Lcom/android/camera/RecordingLimitState;)V
    .locals 5

    const-string v2, "HTCCamera"

    const-string v3, "onRecordingLimitStateChanged("

    const-string v4, ")"

    invoke-static {v2, v3, p1, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingLimitState:[I

    invoke-virtual {p1}, Lcom/android/camera/RecordingLimitState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const v1, 0x7f0a0045

    :goto_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v3, Lcom/android/camera/IToastManager;

    invoke-virtual {v2, v3}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IToastManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/camera/IToastManager;->showToast(I)Lcom/android/camera/Handle;

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0a003a

    goto :goto_1

    :cond_0
    const-string v2, "HTCCamera"

    const-string v3, "onRecordingLimitStateChanged() - No IToastManager interface"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onRecordingStarted(Lcom/android/camera/CaptureHandle;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v4, "HTCCamera"

    const-string v5, "onRecordingStarted() - Start"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "HTCCamera"

    const-string v5, "onRecordingStarted() - Capture handle : \'"

    iget-object v6, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v7, "\'"

    invoke-static {v4, v5, v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eq v4, p1, :cond_1

    const-string v5, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRecordingStarted() - Invalid handle, current handle : \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v4, v4, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string v4, "null"

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    if-eq v4, v5, :cond_2

    const-string v4, "HTCCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRecordingStarted() - current state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v6, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/HTCCamera;->mStartCountTime:J

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->updateRecordingTime()V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isSlowMotionMode()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v4

    const-class v5, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {v4, v5}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ICaptureResolutionManager;

    if-eqz v2, :cond_5

    iget-object v4, v2, Lcom/android/camera/ICaptureResolutionManager;->videoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Resolution;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/camera/Resolution;->isMmsVideo()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v5, Lcom/android/camera/IToastManager;

    invoke-virtual {v4, v5}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/IToastManager;

    if-eqz v3, :cond_4

    const-string v5, "%d %s"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v4, v2, Lcom/android/camera/ICaptureResolutionManager;->maxVideoFileSize:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x400

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v11

    const v4, 0x7f0a01d4

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f0a01d5

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v12, [Ljava/lang/Object;

    aput-object v0, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/camera/IToastManager;->showToast(Ljava/lang/String;)Lcom/android/camera/Handle;

    :cond_3
    :goto_2
    const-string v4, "HTCCamera"

    const-string v5, "onRecordingStarted() - End"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string v4, "HTCCamera"

    const-string v5, "onRecordingStarted() - No IToastManager interface"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v4, "HTCCamera"

    const-string v5, "onRecordingStarted() - No ICaptureResolutionManager interface"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onRecordingStopped(Lcom/android/camera/CaptureHandle;)V
    .locals 4

    const-string v0, "HTCCamera"

    const-string v1, "onRecordingStopped() - Start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HTCCamera"

    const-string v1, "onRecordingStopped() - Capture handle : \'"

    iget-object v2, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\'"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eq v0, p1, :cond_1

    const-string v1, "HTCCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingStopped() - Invalid handle, current handle : \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v0, v0, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "null"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    sget-object v1, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/RecordingState;

    invoke-virtual {v0}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :goto_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setFlashMode(Lcom/android/camera/FlashMode;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    sget-object v1, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    const-string v0, "HTCCamera"

    const-string v1, "onRecordingStopped() - Waiting for video snapshot"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/camera/HTCCamera;->completeRecording(Lcom/android/camera/CaptureHandle;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->setFingerGestureEnable(Z)V

    const-string v0, "HTCCamera"

    const-string v1, "onRecordingStopped() - End"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V
    .locals 0

    return-void
.end method

.method private onStorageEjected(Lcom/android/camera/io/StorageSlot;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->saveSDCardState()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/RecordingState;

    invoke-virtual {v0}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->checkStorageState(Z)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0, p1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "HTCCamera"

    const-string v1, "storage eject, Camera app finished on recording"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->selfFinishingEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onStorageMounted(Lcom/android/camera/io/StorageSlot;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->saveSDCardState()V

    sget-object v0, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasInternalMemorySlot()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->QueryToggleStorage()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->checkStorageState(Z)V

    goto :goto_0
.end method

.method private onStorageSlotChanged(Lcom/android/camera/io/StorageSlot;Z)V
    .locals 6

    const-string v0, "HTCCamera"

    const-string v1, "onStorageSlotChanged("

    const-string v3, ", "

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, ")"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-nez v0, :cond_1

    const-string v0, "HTCCamera"

    const-string v1, "onStorageSlotChanged() - No settings"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isStorageSlotLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "HTCCamera"

    const-string v1, "onStorageSlotChanged() - Storage slot settings is locked, ignore change"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStorageSlotChanged() - Storage slot has been changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsUpdatingStorageSlotSetting:Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsUpdatingStorageSlotSetting:Z

    :cond_3
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraThread;->changeStorageSlot(Lcom/android/camera/io/StorageSlot;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->checkStorageState()V

    goto :goto_0
.end method

.method private onStorageStateChanged(Lcom/android/camera/io/StorageState;)V
    .locals 3

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStorageStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->storageState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$io$StorageState:[I

    invoke-virtual {p1}, Lcom/android/camera/io/StorageState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->showStorageToast()V

    sget-object v0, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    sget-object v1, Lcom/android/camera/CameraStartMode;->ContactsPhoto:Lcom/android/camera/CameraStartMode;

    if-eq v0, v1, :cond_0

    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "onStorageStateChanged() - Close self-timer"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    goto :goto_0

    :pswitch_0
    const-string v0, "HTCCamera"

    const-string v1, "onStorageStateChanged() - Close action screen"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onStorageUnmounted(Lcom/android/camera/io/StorageSlot;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->saveSDCardState()V

    sget-object v1, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/RecordingState;

    invoke-virtual {v0}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->checkStorageState(Z)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0, p1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "HTCCamera"

    const-string v1, "storage unmounted, Camera app finished on recording"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->selfFinishingEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onTakingPictureFailed(Lcom/android/camera/CaptureEventArgs;)V
    .locals 10

    const/4 v9, 0x0

    const-string v5, "HTCCamera"

    const-string v6, "onTakingPictureFailed() - Start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "HTCCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onTakingPictureFailed() - Handle : \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p1, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v5, :cond_1

    iget-object v5, p1, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v5, v5, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "HTCCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onTakingPictureFailed() - Reason : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/camera/CaptureEventArgs;->failedReason:Lcom/android/camera/CaptureFailedReason;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v6, p1, Lcom/android/camera/CaptureEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    if-eq v5, v6, :cond_3

    const-string v5, "HTCCamera"

    const-string v6, "onTakingPictureFailed() - Invalid handle"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "HTCCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onTakingPictureFailed() - Current handle : \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v5, v5, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const-string v5, "null"

    goto :goto_0

    :cond_2
    const-string v5, "null"

    goto :goto_1

    :cond_3
    iput-object v9, p0, Lcom/android/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "HTCCamera"

    const-string v6, "onTakingPictureFailed() - isActivityPaused = true"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v7, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {p0, v5}, Lcom/android/camera/HTCCamera;->completeRecording(Lcom/android/camera/CaptureHandle;)V

    goto :goto_2

    :cond_4
    sget-object v6, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/RecordingState;

    invoke-virtual {v5}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_3
    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->restartPreview()Z

    move-result v1

    :goto_4
    if-eqz v1, :cond_a

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v7, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v7, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_5
    sget-object v5, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CaptureFailedReason:[I

    iget-object v6, p1, Lcom/android/camera/CaptureEventArgs;->failedReason:Lcom/android/camera/CaptureFailedReason;

    invoke-virtual {v6}, Lcom/android/camera/CaptureFailedReason;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_5

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v6, Lcom/android/camera/IToastManager;

    invoke-virtual {v5, v6}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/IToastManager;

    if-eqz v3, :cond_b

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/camera/IToastManager;->showToast(I)Lcom/android/camera/Handle;

    :cond_5
    :goto_7
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v5, v6}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    iput-object v9, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/android/camera/Handle;

    invoke-virtual {v5, v6}, Lcom/android/camera/IUIRotationManager;->unlockRotation(Lcom/android/camera/Handle;)V

    iput-object v9, p0, Lcom/android/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/android/camera/Handle;

    :cond_6
    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    :cond_7
    if-eqz v0, :cond_8

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {p0, v5}, Lcom/android/camera/HTCCamera;->completeRecording(Lcom/android/camera/CaptureHandle;)V

    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    const-string v5, "HTCCamera"

    const-string v6, "onTakingPictureFailed() - End"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_0
    const/4 v2, 0x1

    const/4 v0, 0x0

    goto :goto_3

    :pswitch_1
    const/4 v2, 0x1

    const/4 v0, 0x1

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    goto :goto_4

    :cond_a
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v7, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_2
    const v5, 0x7f0a0051

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_6

    :pswitch_3
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->showStorageToast()V

    goto :goto_6

    :pswitch_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "low_internal_storage_view_text"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_6

    :cond_b
    const-string v5, "HTCCamera"

    const-string v6, "onTakingPictureFailed() - No IToastManager interface"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private onTakingPictureStateChanged(Lcom/android/camera/TakingPictureState;)V
    .locals 2

    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$TakingPictureState:[I

    invoke-virtual {p1}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onZoomValueChanged(Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method private overrideSystemRotateAnimation()V
    .locals 1

    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->overrideSystemRotateAnimation(I)V

    return-void
.end method

.method private overrideSystemRotateAnimation(I)V
    .locals 3

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overrideSystemRotateAnimation, type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/htc/wrap/android/app/HtcWrapActivity;->overrideRotateAnimation(Landroid/app/Activity;I)V

    return-void
.end method

.method private performActionsAfterAutoFocus()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - mIsUIReady = false"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-nez v0, :cond_1

    const-string v0, "HTCCamera"

    const-string v1, "Enter this state only when interrupt focus !!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - mFocusingState = NO_FOCUSING"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - unknown focus state !!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-string v0, "HTCCamera"

    const-string v1, "Finish Focus - mFocusingState = NO_FOCUSING"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    sput-boolean v3, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - UnBlock Capture UI - take focus end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_2

    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - take focus end, and then take picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - Freeze UI - take focus end, and then take picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->lastTakingPictureTriggerSource:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    goto :goto_1

    :pswitch_2
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - UnBlock Capture UI - record after focusing"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    goto :goto_1

    :pswitch_3
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - UnBlock Capture UI - take picture after focusing"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->lastTakingPictureTriggerSource:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private performActionsOnPreviewSurfaceCreated()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActionPerformedOnPreviewSurfaceCreated:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActionPerformedOnPreviewSurfaceCreated:Z

    const-string v0, "HTCCamera"

    const-string v1, "performActionsOnPreviewSurfaceCreated() - Start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->initializeCaptureUI()V

    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "Enable GC"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/wrap/dalvik/system/HtcWrapVMRuntime;->disableGcForExternalAlloc(Z)V

    const-string v0, "HTCCamera"

    const-string v1, "performActionsOnPreviewSurfaceCreated() - End"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private printDataReadyPerformanceLog()V
    .locals 4

    const/16 v0, 0x130

    const-string v1, "LAUNCH_TIME"

    const-string v2, "LAUNCH"

    const-string v3, "DATA_READY"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->printPerformanceLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private saveAndFinish(Landroid/net/Uri;[B)V
    .locals 5

    if-eqz p1, :cond_2

    const-string v2, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAndFinish() - contentUri = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    const-string v2, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() file - Check directory path"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/io/FileUtility;->createDirectories(Ljava/lang/String;)Z

    :cond_0
    :try_start_0
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - Opening file"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - Writing data"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - Writing completed"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - Closing file"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - File closed"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->selfFinishingEvent:Lcom/android/camera/event/Event;

    sget-object v3, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAndFinish() - Cannot save data to \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - Closing file"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - File closed"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    const-string v3, "HTCCamera"

    const-string v4, "saveAndFinish() - Closing file"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    const-string v3, "HTCCamera"

    const-string v4, "saveAndFinish() - File closed"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - data = NULL"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - contentUri = NULL"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final saveSDCardState()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    const-string v1, "pref_sdcard_state"

    sget-object v2, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v2}, Lcom/android/camera/io/StorageSlot;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private setFingerGestureEnable(Z)V
    .locals 4

    :try_start_0
    const-string v2, "wireless_display"

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/WirelessDisplayManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/htc/service/WirelessDisplayManager;->setFingerGestureEnable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "HTCCamera"

    const-string v3, "setFingerGestureEnable - not work"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMaxBrightness()V
    .locals 0

    return-void
.end method

.method private setOldBrightness()V
    .locals 0

    return-void
.end method

.method private setupEventHandlers()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->externalCommendReceivedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/HTCCamera$25;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$25;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->storageEjectedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/HTCCamera$26;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$26;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->storageMountedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/HTCCamera$27;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$27;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->storageUnmountedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/HTCCamera$28;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$28;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    return-void
.end method

.method private showFocusEnd()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->showFocusEndEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    return-void
.end method

.method private showStorageToast()V
    .locals 5

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    sget-object v3, Lcom/android/camera/CameraStartMode;->ContactsPhoto:Lcom/android/camera/CameraStartMode;

    if-eq v2, v3, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v3, Lcom/android/camera/IToastManager;

    invoke-virtual {v2, v3}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IToastManager;

    if-nez v1, :cond_3

    const-string v2, "HTCCamera"

    const-string v3, "showStorageToast() - No IToastManager interface"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$io$StorageState:[I

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/io/StorageState;

    invoke-virtual {v2}, Lcom/android/camera/io/StorageState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    :pswitch_1
    const-string v2, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown storage state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    sget-object v2, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v2}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, 0x20400a0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/IToastManager;->showToast(I)Lcom/android/camera/Handle;

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v2}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v3, :cond_4

    const v0, 0x7f0a003c

    goto :goto_1

    :cond_4
    const v0, 0x7f0a003d

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v3, :cond_6

    const v0, 0x7f0a003e

    goto :goto_1

    :cond_6
    const v0, 0x7f0a003f

    goto :goto_1

    :pswitch_4
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v2}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v2

    if-nez v2, :cond_7

    const v0, 0x7f0a003a

    goto :goto_1

    :cond_7
    const v0, 0x7f0a003b

    goto :goto_1

    :pswitch_5
    const v0, 0x7f0a0039

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private startAccelerometer()V
    .locals 3

    const-string v0, "HTCCamera"

    const-string v1, "startAccelerometer() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mCanGSensorEnabled:Z

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "startAccelerometer() - CanGSensorEnabled = false"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isAccelerometerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HTCCamera"

    const-string v1, "startAccelerometer() - isAccelerometerStarted = true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSharedBackgroundWorker:Lcom/android/camera/ISharedBackgroundWorker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSharedBackgroundWorker:Lcom/android/camera/ISharedBackgroundWorker;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mStartAccelerometerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ISharedBackgroundWorker;->enqueueTask(Ljava/lang/Runnable;)Lcom/android/camera/Handle;

    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isAccelerometerStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string v0, "HTCCamera"

    const-string v1, "startAccelerometer() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mStartAccelerometerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private startPreview(ZLcom/android/camera/CameraType;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "HTCCamera"

    const-string v1, "startPreview("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ", "

    const-string v5, ")"

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "startPreview() - Preview is already starting"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "startPreview()"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printStackTrace(Ljava/lang/String;)V

    move v0, v6

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HTCCamera"

    const-string v1, "startPreview() - Activity is pausing"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "HTCCamera"

    const-string v1, "startPreview() - Activity is paused"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_3

    const-string v0, "HTCCamera"

    const-string v1, "startPreview() - Camera is deactivated"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_4

    const-string v0, "HTCCamera"

    const-string v1, "startPreview() - No camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    goto :goto_0

    :cond_4
    iput v6, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewFailureCount:I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v1, "Starting preview"

    invoke-interface {v0, v1, v6}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/android/camera/Handle;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->startPreviewDirectly()Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    :goto_1
    const-string v0, "HTCCamera"

    const-string v1, "startPreview() - Handle : "

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v7

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, p2}, Lcom/android/camera/CameraThread;->startPreview(Lcom/android/camera/CameraType;)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    goto :goto_1
.end method

.method private stopAccelerometer()V
    .locals 3

    const-string v0, "HTCCamera"

    const-string v1, "stopAccelerometer() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isAccelerometerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "stopAccelerometer() - isAccelerometerStarted = false"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSharedBackgroundWorker:Lcom/android/camera/ISharedBackgroundWorker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSharedBackgroundWorker:Lcom/android/camera/ISharedBackgroundWorker;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mStopAccelerometerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ISharedBackgroundWorker;->enqueueTask(Ljava/lang/Runnable;)Lcom/android/camera/Handle;

    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isAccelerometerStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->accelerometerValues:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [F

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string v0, "HTCCamera"

    const-string v1, "stopAccelerometer() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mStopAccelerometerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private stopNotesRecording()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.notes.notesrecordingstopped"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "stoprecord"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private stopRecordingIndicator()V
    .locals 2

    const-string v0, "HTCCamera"

    const-string v1, "stopRecordingIndicator()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private threadAccessCheck()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private unlock3A()V
    .locals 5

    const/4 v4, 0x0

    const-string v2, "HTCCamera"

    const-string v3, "unlock3A()"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v2

    const-class v3, Lcom/android/camera/IAutoFocusController;

    invoke-virtual {v2, v3}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IAutoFocusController;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->m_FocusLockHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v2}, Lcom/android/camera/IAutoFocusController;->unlockAutoFocus(Lcom/android/camera/Handle;)V

    :cond_0
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->m_FocusLockHandle:Lcom/android/camera/Handle;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v2

    const-class v3, Lcom/android/camera/IImageSettingsController;

    invoke-virtual {v2, v3}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IImageSettingsController;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->m_AecLockHandle:Lcom/android/camera/Handle;

    invoke-virtual {v1, v2}, Lcom/android/camera/IImageSettingsController;->unlockAutoExposure(Lcom/android/camera/Handle;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->m_AwbLockHandle:Lcom/android/camera/Handle;

    invoke-virtual {v1, v2}, Lcom/android/camera/IImageSettingsController;->unlockAutoWhiteBalance(Lcom/android/camera/Handle;)V

    :cond_1
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->m_AecLockHandle:Lcom/android/camera/Handle;

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->m_AwbLockHandle:Lcom/android/camera/Handle;

    return-void
.end method

.method private updateRecordingTime()V
    .locals 12

    const-string v8, "HTCCamera"

    const-string v9, "updateRecordingTime() - start"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    if-nez v8, :cond_0

    const-string v8, "HTCCamera"

    const-string v9, "updateRecordingTime() - mIsUIReady = false"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-eq v8, v9, :cond_1

    const-string v8, "HTCCamera"

    const-string v9, "updateRecordingTime() - isRecording = false"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    add-long v6, v8, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/camera/HTCCamera;->mStartCountTime:J

    sub-long v0, v8, v10

    const-wide/16 v8, 0x3e8

    iput-wide v8, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    iget-wide v8, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v6

    sub-long v10, v0, v10

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    iget-wide v8, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    const-wide/16 v10, 0x320

    cmp-long v8, v8, v10

    if-gez v8, :cond_5

    const-wide/16 v8, 0x320

    iput-wide v8, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    :cond_2
    :goto_1
    const-wide/16 v8, 0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_3

    const-string v8, "HTCCamera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UnBlock Capture UI - start recorder, unblock time = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v8, v9}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    :cond_3
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/android/camera/property/Property;

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/16 v9, 0x24

    invoke-static {v8, v9}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v8

    const-class v9, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {v8, v9}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ICaptureResolutionManager;

    if-eqz v5, :cond_6

    iget-object v8, v5, Lcom/android/camera/ICaptureResolutionManager;->maxVideoDuration:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/Duration;

    move-object v2, v8

    :goto_2
    invoke-virtual {v2}, Lcom/android/camera/Duration;->isInfinite()Z

    move-result v8

    if-eqz v8, :cond_7

    const-wide v3, 0x7fffffffffffffffL

    :goto_3
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-lez v8, :cond_8

    :cond_4
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

    iget-wide v9, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;J)Z

    :goto_4
    const-string v8, "HTCCamera"

    const-string v9, "updateRecordingTime() - end"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-wide v8, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    const-wide/16 v10, 0x3e8

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    const-wide/16 v8, 0x3e8

    iput-wide v8, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    goto/16 :goto_1

    :cond_6
    sget-object v2, Lcom/android/camera/Duration;->INFINITE:Lcom/android/camera/Duration;

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v8

    sub-long v3, v8, v6

    goto :goto_3

    :cond_8
    const-string v8, "HTCCamera"

    const-string v9, "updateRecordingTime() - Timeout"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private updateSelfTimerInterval()V
    .locals 3

    iget v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->mainSelfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->frontSelfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public RequestVideoQualityLevel()I
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-nez v1, :cond_1

    const-string v1, "HTCCamera"

    const-string v2, "isRequestHighQualityVideo() - mIntentManager == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v1, v1, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Notes:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/IntentManager$RequestName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v1, v1, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/IntentManager$RequestName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-static {}, Lcom/android/camera/IntentManager;->IsHighVideoQuality()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public activate()V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "HTCCamera"

    const-string v2, "activate!!!!"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "HTCCamera"

    const-string v2, "activate - mCameraThread = null or mCameraHandler = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    if-nez v1, :cond_2

    const-string v1, "HTCCamera"

    const-string v2, "activate - mUIHandler = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v1, :cond_3

    const-string v1, "HTCCamera"

    const-string v2, "activate in mIdle == false"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "HTCCamera"

    const-string v2, "activate() - Activity is pausing"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "HTCCamera"

    const-string v2, "activate() - Activity is paused"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    const-string v1, "HTCCamera"

    const-string v2, "activate() - Block Capture UI - activate!!!!"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isQuickLaunchState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraThread;->setFirstFrameCacheState(Z)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isCameraThreadRunning:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->startPreview(Lcom/android/camera/CameraType;)Z

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_7

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsLaunching:Z

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->printDataReadyPerformanceLog()V

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsLaunching:Z

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setMaxBrightness()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->activatedEvent:Lcom/android/camera/event/Event;

    sget-object v2, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activate() - Current taking picture state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", recording state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Start preview later"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string v1, "HTCCamera"

    const-string v2, "activate() - Camera thread is not running, start preview later"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final autoFocus(Lcom/android/camera/AutoFocusMode;Landroid/graphics/PointF;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string v1, "focusPoint"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/PointF;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/HTCCamera;->autoFocus(Lcom/android/camera/AutoFocusMode;[Landroid/graphics/PointF;)Z

    move-result v0

    goto :goto_0
.end method

.method public final autoFocus(Lcom/android/camera/AutoFocusMode;[Landroid/graphics/PointF;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final autoFocus(Lcom/android/camera/AutoFocusMode;[Landroid/graphics/RectF;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final autoFocus(Lcom/android/camera/AutoFocusMode;[Landroid/graphics/RectF;[Landroid/graphics/RectF;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/HTCCamera;->autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<*>;",
            "Lcom/android/camera/property/Property",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    if-nez p1, :cond_0

    const-string v0, "source"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "target"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/android/camera/property/Property;->checkOwnerKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "HTCCamera"

    const-string v1, "bindProperty() - Cannot bind from HTCCamera\'s property"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/android/camera/property/Property;->checkOwnerKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "HTCCamera"

    const-string v1, "bindProperty() - Can only bind to HTCCamera\'s property"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_3
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bind ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/property/Property;->bind(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method

.method public canFaceFocus()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canSensorFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canSensorFocus()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mSensorFocusDisabledCounter:I

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->canAutoFocus:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsTouchScreen:Z

    if-ne v0, v2, :cond_6

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method public canTriggerFocus()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasAutoFocus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->hasDialog:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    if-nez v0, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public cancelAutoFocus()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "HTCCamera"

    const-string v3, "cancelAutoFocus() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-nez v2, :cond_0

    const-string v1, "HTCCamera"

    const-string v2, "cancelAutoFocus() - No focusing"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "HTCCamera"

    const-string v2, "cancelAutoFocus() return - DisplayDevice.canCancelFocus() = false"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eq v2, v0, :cond_2

    const-string v0, "HTCCamera"

    const-string v2, "cancelAutoFocus() return - mFocusingState != FOCUSING_NO_ACTION"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->autoFocusCancelingEvent:Lcom/android/camera/event/Event;

    sget-object v3, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    sput-boolean v1, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    invoke-virtual {v2, v3}, Lcom/android/camera/IAutoFocusController;->cancelAutoFocus(Lcom/android/camera/Handle;)V

    :cond_3
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    iput v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v1, v2}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/android/camera/Handle;

    const-string v1, "HTCCamera"

    const-string v2, "cancelAutoFocus() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final changeZoom(I)V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isZoomLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HTCCamera"

    const-string v2, "changeZoom() - Zoom is locked"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v1, :cond_1

    const-string v1, "HTCCamera"

    const-string v2, "changeZoom() - There is no camera thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->zoomRange:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Range;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge p1, v1, :cond_3

    iget-object v1, v0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->zoomValue:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1, p1}, Lcom/android/camera/CameraThread;->changeZoom(I)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le p1, v1, :cond_2

    iget-object v1, v0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_4
    const-string v1, "HTCCamera"

    const-string v2, "changeZoom() - zoomRange is null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final closeActionScreen()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "No action screen to close"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/actionscreen/ActionScreen;->close(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCloseActionScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "Cannot close action screen because there is no handler"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final closeSelfTimer()V
    .locals 3

    const-string v0, "HTCCamera"

    const-string v1, "closeSelfTimer() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "Self timer is not started"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/TakingPictureState;->Starting:Lcom/android/camera/TakingPictureState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v0}, Lcom/android/camera/IAudioManager;->abandonAudioFocus()V

    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "UnBlock Capture UI - close self timer"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    const-string v0, "HTCCamera"

    const-string v1, "closeSelfTimer() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final completeRecording(Lcom/android/camera/CaptureHandle;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/HTCCamera;->completeCapture(Lcom/android/camera/CaptureHandle;J)V

    return-void
.end method

.method public final completeTakingPicture(Lcom/android/camera/CaptureHandle;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/HTCCamera;->completeCapture(Lcom/android/camera/CaptureHandle;J)V

    return-void
.end method

.method public final completeTakingPicture(Lcom/android/camera/CaptureHandle;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/HTCCamera;->completeCapture(Lcom/android/camera/CaptureHandle;J)V

    return-void
.end method

.method public deactivate()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v1, "HTCCamera"

    const-string v2, "deactivate!!!!"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "HTCCamera"

    const-string v2, "deactivate - mCameraThread = null or mCameraHandler = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    if-nez v1, :cond_2

    const-string v1, "HTCCamera"

    const-string v2, "deactivate - mUIHandler = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-ne v1, v3, :cond_3

    const-string v1, "HTCCamera"

    const-string v2, "deactivate in mIdle = true"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "HTCCamera"

    const-string v2, "deactivate() - Activity is pausing"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "HTCCamera"

    const-string v2, "deactivate() - Activity is paused"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->m_NeedTapCapture:Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-nez v1, :cond_6

    const v1, 0x7f08002e

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    new-instance v2, Lcom/android/camera/HTCCamera$16;

    invoke-direct {v2, p0}, Lcom/android/camera/HTCCamera$16;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    const v2, 0x7f0800ef

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v2, 0x7f0800f0

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    :cond_6
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_8

    sget-object v1, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v2, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    const v2, 0x7f0a01d3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScreensaveTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v2, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->cancelStartingPreview()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->cancelOpeningCamera()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->closeCamera()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setOldBrightness()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->leaveQuickLaunchState()V

    new-instance v1, Lcom/android/camera/SessionHandle;

    invoke-direct {v1}, Lcom/android/camera/SessionHandle;-><init>()V

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mSessionHandle:Lcom/android/camera/SessionHandle;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    sget-object v2, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    const v2, 0x7f0a01d0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_8
    sget-object v1, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v2, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    const v2, 0x7f0a01d2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    const v2, 0x7f0a01cf

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public final disableActionScreen()V
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mActionScreenDisableCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mActionScreenDisableCounter:I

    return-void
.end method

.method public final disableFlash()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isFlashDisabled:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    sget-object v1, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->setFlashMode(Lcom/android/camera/FlashMode;)V

    :cond_0
    return-void
.end method

.method public final disableSelfTimer()V
    .locals 4

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    iget v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    iget v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerDisabled:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcom/android/camera/Duration;->fromSeconds(J)Lcom/android/camera/Duration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final disableSensorFocus()V
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mSensorFocusDisabledCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mSensorFocusDisabledCounter:I

    return-void
.end method

.method public final disableTouchFocus()V
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x50

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsTouchScreen:Z

    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->touchPreviewEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/input/MotionEventArgs;

    invoke-direct {v1, p1}, Lcom/android/camera/input/MotionEventArgs;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsTouchScreen:Z

    goto :goto_0
.end method

.method public doOnPause()V
    .locals 3

    const-string v1, "HTCCamera"

    const-string v2, "doOnPause() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/HTCCamera;->mCanGSensorEnabled:Z

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopAccelerometer()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    :cond_0
    const-string v1, "HTCCamera"

    const-string v2, "OnPause - hide UI, set mMainLayout invisible"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPartitonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSIPReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/io/StorageSlot;

    invoke-static {v2, v1}, Lcom/android/camera/CameraStorageLocationSettings;->writeToDatabase(Landroid/content/ContentResolver;Lcom/android/camera/io/StorageSlot;)V

    const-string v1, "HTCCamera"

    const-string v2, "doOnPause() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "HTCCamera"

    const-string v2, "unregisterReceiver failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final enableActionScreen()V
    .locals 2

    iget v0, p0, Lcom/android/camera/HTCCamera;->mActionScreenDisableCounter:I

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "Try to enable action screen, but counter is 0"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "enableActionScreen()"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printStackTrace(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/HTCCamera;->mActionScreenDisableCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mActionScreenDisableCounter:I

    goto :goto_0
.end method

.method public final enableFlash()V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isFlashDisabled:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FlashMode;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraThread;->setFlashMode(Lcom/android/camera/FlashMode;)V

    goto :goto_0
.end method

.method public final enableSelfTimer()V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    iget v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    iget v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerDisabled:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->updateSelfTimerInterval()V

    goto :goto_0
.end method

.method public final enableSensorFocus()V
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mSensorFocusDisabledCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mSensorFocusDisabledCounter:I

    return-void
.end method

.method public final enableTouchFocus(Z)V
    .locals 4

    iget v2, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    iget v2, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    if-gtz v2, :cond_0

    if-eqz p1, :cond_0

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    if-ne v2, v3, :cond_1

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v2, 0x2

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v1, v2, 0x2

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/HTCCamera;->takeFocus(II)V

    :cond_0
    return-void

    :cond_1
    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v0, v2, 0x2

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v1, v2, 0x2

    goto :goto_0
.end method

.method public final getCameraThread()Lcom/android/camera/CameraThread;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    return-object v0
.end method

.method public final getCaptureUiContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUiContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getComponentFactory()Lcom/android/camera/component/ComponentFactory;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getComponentFactory()Lcom/android/camera/component/UIComponentFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getComponentFactory()Lcom/android/camera/component/UIComponentFactory;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentFactory:Lcom/android/camera/component/UIComponentFactory;

    return-object v0
.end method

.method public bridge synthetic getComponentManager()Lcom/android/camera/component/ComponentManager;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    return-object v0
.end method

.method public final getComponentManager()Lcom/android/camera/component/UIComponentManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    return-object v0
.end method

.method public getFocusingState()I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    return v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    return-object v0
.end method

.method public final getMainThread()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public final getPreviewSurfaceHitRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mViewFinder:Lcom/android/camera/IViewFinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mViewFinder:Lcom/android/camera/IViewFinder;

    iget-object v0, v0, Lcom/android/camera/IViewFinder;->previewSurfaceBounds:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method

.method public final getRequestedUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v0}, Lcom/android/camera/IntentManager;->getSaveUri()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSettings()Lcom/android/camera/CameraSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    return-object v0
.end method

.method public bridge synthetic getSettings()Lcom/android/camera/Settings;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    return-object v0
.end method

.method public final getStartMode()Lcom/android/camera/CameraStartMode;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    return-object v0
.end method

.method public final getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public final getSurfaceStateSyncRoot()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceStateSyncRoot:Ljava/lang/Object;

    return-object v0
.end method

.method public final getThreadMonitor()Lcom/android/camera/debug/ThreadMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mThreadMonitor:Lcom/android/camera/debug/ThreadMonitor;

    return-object v0
.end method

.method public handleSensorFocus()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->handleSensorFocus(Z)Z

    move-result v0

    return v0
.end method

.method public handleSensorFocus(Z)Z
    .locals 9

    const/high16 v2, 0x3f00

    const-string v0, "HTCCamera"

    const-string v1, "handleSensorFocus() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mObjectTracker:Lcom/android/camera/IObjectTracker;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v1, Lcom/android/camera/IObjectTracker;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IObjectTracker;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mObjectTracker:Lcom/android/camera/IObjectTracker;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mObjectTracker:Lcom/android/camera/IObjectTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mObjectTracker:Lcom/android/camera/IObjectTracker;

    iget-object v0, v0, Lcom/android/camera/IObjectTracker;->numberOfDetectedFaces:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "HTCCamera"

    const-string v1, "handleSensorFocus() - there is face on screen. return."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    iget-object v0, v0, Lcom/android/camera/effect/IEffectControlUI;->effectCenter:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    move-object v6, v0

    :goto_1
    if-nez v6, :cond_2

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/camera/HTCCamera;->normalizedPointToScreenPoint(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v8

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusPointUpdateEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/OneValueEventArgs;

    invoke-direct {v1, v8}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    :cond_3
    sget-object v0, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {p0, v0, v6}, Lcom/android/camera/HTCCamera;->autoFocus(Lcom/android/camera/AutoFocusMode;Landroid/graphics/PointF;)Z

    move-result v7

    const-string v0, "HTCCamera"

    const-string v1, "handleSensorFocus("

    iget v2, v8, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ","

    iget v4, v8, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ") - end"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public final handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/16 v1, 0x283c

    const/4 v2, 0x0

    const/4 v12, 0x1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v0, v12, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v12, p0, Lcom/android/camera/HTCCamera;->m_CancelFocusFromTouch:Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->m_CancelFocusFromTouch:Z

    const-string v0, "HTCCamera"

    const-string v3, "UnBlock Capture UI - touch down and cancel focus"

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->m_NeedTapCapture:Z

    if-nez v0, :cond_1

    const-string v0, "HTCCamera"

    const-string v1, "onTouchEvent - UI Block !!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v12

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    if-ne v0, v12, :cond_2

    const-string v0, "HTCCamera"

    const-string v1, "onTouchEvent - SIP is shown, UI Block !!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v12

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-eq v0, v12, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->hasMessages(Landroid/os/Handler;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "HTCCamera"

    const-string v3, "Remove MSG_TOUCH_FOCUS"

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "HTCCamera"

    const-string v3, "set mInitSpan to 0 "

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/HTCCamera;->mInitSpan:F

    iput v2, p0, Lcom/android/camera/HTCCamera;->mBaseZoom:I

    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_6
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    const-string v0, "HTCCamera"

    const-string v3, "handleTouchEvent() : ACTION_DOWN"

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HTCCamera"

    const-string v3, "handleTouchEvent() : ACTION_DOWN - send MSG_TOUCH_FOCUS"

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v12

    const-wide/16 v5, 0x78

    move v3, v2

    invoke-static/range {v0 .. v6}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->isTapCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isAutoFocusing()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->hasMessages(Landroid/os/Handler;I)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "HTCCamera"

    const-string v1, "handleTouchEvent() : ACTION_DOWN - isAutoFocusing() is false."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->m_NeedTapCapture:Z

    if-eqz v0, :cond_8

    const-string v0, "HTCCamera"

    const-string v1, "handleTouchEvent() : ACTION_DOWN - m_NeedTapCapture is already set to true."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v0, "HTCCamera"

    const-string v1, "handleTouchEvent() : ACTION_DOWN - set m_NeedTapCapture to true."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v12, p0, Lcom/android/camera/HTCCamera;->m_NeedTapCapture:Z

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->m_TouchCaptureFingerDownPoint:Landroid/graphics/PointF;

    goto/16 :goto_1

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    if-ne v0, v12, :cond_6

    goto/16 :goto_1

    :pswitch_2
    const-string v0, "HTCCamera"

    const-string v3, "handleTouchEvent() : ACTION_UP"

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    if-eq v0, v12, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->hasMessages(Landroid/os/Handler;I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "HTCCamera"

    const-string v3, "handleTouchEvent() : ACTION_UP - There is pending touch focus, trigger it now"

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget v0, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    if-gtz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/HTCCamera;->takeFocus(II)V

    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->isTapCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_TouchCaptureFingerDownPoint:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0, v1}, Lcom/android/camera/Util;->distanceBetweenP2P(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v7

    sget-wide v0, Lcom/android/camera/HTCCamera;->SCREEN_DIAGONAL_LENGTH:D

    div-double v10, v7, v0

    const-wide v0, 0x3fb1eb851eb851ecL

    cmpl-double v0, v10, v0

    if-ltz v0, :cond_e

    move v9, v12

    :goto_3
    if-nez v9, :cond_f

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsPinchZoomed:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->m_NeedTapCapture:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    if-nez v9, :cond_b

    const-string v0, "HTCCamera"

    const-string v1, "handleTouchEvent() : ACTION_UP - m_NeedTapCapture is true || isSelfTimerStarted, take picture."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Tap Capture"

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    :cond_b
    :goto_4
    const-string v0, "HTCCamera"

    const-string v1, "handleTouchEvent() : ACTION_UP - set m_NeedTapCapture to false."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->m_NeedTapCapture:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->m_TouchCaptureFingerDownPoint:Landroid/graphics/PointF;

    :cond_c
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsPinchZoomed:Z

    goto/16 :goto_1

    :cond_d
    const-string v0, "HTCCamera"

    const-string v1, "handleTouchEvent() : ACTION_DOWN - Will not take focus due to Touch Focus is disabled."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    move v9, v2

    goto :goto_3

    :cond_f
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent() : ACTION_UP - isFingerMoved is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ,isPinchZoomed is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsPinchZoomed:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleTouchFocus(II)Z
    .locals 5

    const/4 v1, 0x0

    const-string v2, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTouchFocus - X: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Y: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mLastTouchFocusPoint:Landroid/graphics/Point;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Point;->set(II)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->focusPointUpdateEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/OneValueEventArgs;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v3, v4}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/camera/HTCCamera;->screenPointToNormalizedPoint(IIZ)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/HTCCamera;->autoFocus(Lcom/android/camera/AutoFocusMode;Landroid/graphics/PointF;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v2, "HTCCamera"

    const-string v3, "handleTouchFocus - touch point not in mSurfaceView"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final hasFlash()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final invokeAsync(Ljava/lang/Runnable;)Z
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public final invokeAsync(Ljava/lang/Runnable;J)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/16 v4, 0x27d8

    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-gtz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    invoke-virtual {v3, v0}, Lcom/android/camera/HTCCamera$MainHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    invoke-virtual {v3, v0, p2, p3}, Lcom/android/camera/HTCCamera$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    const-string v1, "HTCCamera"

    const-string v3, "invokeAsync() - Fail to post to UI thread handler"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_3
    const-string v1, "HTCCamera"

    const-string v3, "invokeAsync() - No UI thread handler"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0
.end method

.method public final is3DCameraActivated()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final isActionScreenEnabled()Z
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mActionScreenDisableCounter:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isActionScreenOpen()Z
    .locals 2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/UIState;

    sget-object v1, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/camera/UIState;->Opening:Lcom/android/camera/UIState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isAnswerPhoneCall()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isAnswerPhoneCall:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isAutoCaptureTask()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    return v0
.end method

.method public final isAutoFocusing()Z
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBlockPowerWarning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mBlockPowerWarning:Z

    return v0
.end method

.method public final isFastShotToShotMode()Z
    .locals 7

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return v2

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v1, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Duration;

    invoke-virtual {v1}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/effect/SmartSceneDetectorScene;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/AutoDetectedScene;->ContinuousBurst:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v1, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    sget-object v3, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$AutoDetectedScene:[I

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v1}, Lcom/android/camera/AutoDetectedScene;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/IEffectManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    move-object v0, v1

    :goto_1
    instance-of v1, v0, Lcom/android/camera/effect/BurstScene;

    if-nez v1, :cond_4

    instance-of v1, v0, Lcom/android/camera/effect/SmartShotScene;

    if-nez v1, :cond_4

    instance-of v1, v0, Lcom/android/camera/effect/PanoramaScene;

    if-nez v1, :cond_4

    instance-of v1, v0, Lcom/android/camera/effect/HdrScene;

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final isIdle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    return v0
.end method

.method public final isIdleOrPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInMirrorMode()Z
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isSupportMirrorMode()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    :try_start_0
    const-string v3, "wireless_display"

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/WirelessDisplayManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "HTCCamera"

    const-string v4, "isInMirrorMode() - Error while getting mirror display status"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isPowerWarning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsPowerWarning:Z

    return v0
.end method

.method public final isSelfPortraitTask()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    return v0
.end method

.method public final isServiceMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    iget-boolean v0, v0, Lcom/android/camera/CameraStartMode;->isServiceMode:Z

    return v0
.end method

.method public final isSlowMotionMode()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v0, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    iget-boolean v0, v0, Lcom/android/camera/CameraStartMode;->isServiceMode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    iget-boolean v0, v0, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final isStorageSlotLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsStorageSlotLocked:Z

    return v0
.end method

.method public final isSurfaceAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsSurfaceAvailable:Z

    return v0
.end method

.method public final lockZoom()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "HTCCamera"

    const-string v1, "lockZoom() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    iget v0, p0, Lcom/android/camera/HTCCamera;->mZoomLockCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mZoomLockCounter:I

    iget v0, p0, Lcom/android/camera/HTCCamera;->mZoomLockCounter:I

    if-le v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraThread;->resetZoom(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isZoomLocked:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->zoomValue:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->zoomRange:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->isNull()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string v0, "HTCCamera"

    const-string v1, "lockZoom() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "lockZoom() - There is no camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->zoomRange:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Range;

    iget-object v0, v0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2
.end method

.method public final needsActionScreen()Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-nez v3, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v3

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/camera/HTCCamera;->mActionScreenDisableCounter:I

    if-lez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v3, v3, Lcom/android/camera/CameraSettings;->reviewDuration:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Duration;

    invoke-virtual {v0}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public final normalizedPointToScreenPoint(Landroid/graphics/PointF;)Landroid/graphics/Point;
    .locals 7

    if-nez p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getPreviewSurfaceHitRect()Landroid/graphics/Rect;

    move-result-object v0

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v3}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f80

    iget v6, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v1, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v2, v3

    :goto_1
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    :cond_1
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v1, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v2, v3

    goto :goto_1
.end method

.method public final notifyCameraThreadBlocked(Lcom/android/camera/CameraThreadBlockReason;)V
    .locals 3

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraThreadBlocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onCameraThreadBlocked(Lcom/android/camera/CameraThreadBlockReason;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/camera/HTCCamera$29;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/HTCCamera$29;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThreadBlockReason;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "notifyCameraThreadBlocked() - Cannot notify UI thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final notifyPopupBubbleClosed()V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    iget v0, p0, Lcom/android/camera/HTCCamera;->mPopupBubbleCount:I

    if-nez v0, :cond_1

    const-string v0, "HTCCamera"

    const-string v1, "notifyPopupBubbleClosed() - Counter is 0"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "notifyPopupBubbleClosed()"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printStackTrace(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mPopupBubbleCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mPopupBubbleCount:I

    iget v0, p0, Lcom/android/camera/HTCCamera;->mPopupBubbleCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final notifyPopupBubbleOpened()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    iget v0, p0, Lcom/android/camera/HTCCamera;->mPopupBubbleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mPopupBubbleCount:I

    iget v0, p0, Lcom/android/camera/HTCCamera;->mPopupBubbleCount:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final notifyProcessingTakenPictures()V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/TakingPictureState;->TakingPicture:Lcom/android/camera/TakingPictureState;

    if-eq v0, v1, :cond_0

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyProcessingTakenPictures() - current state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Processing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$Global$REQUEST_CODE:[I

    invoke-static {}, Lcom/android/camera/Global$REQUEST_CODE;->values()[Lcom/android/camera/Global$REQUEST_CODE;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/camera/Global$REQUEST_CODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult Unsupported REQUEST_CODE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/Global$REQUEST_CODE;->values()[Lcom/android/camera/Global$REQUEST_CODE;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v3, p3}, Lcom/android/camera/HTCCamera;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v0, p3}, Lcom/android/camera/AutoUploader;->handleAutoUploadSettingResult(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% onConfigurationChanged LANDSCAPE"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    const-string v0, "HTCCamera"

    const-string v1, "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% onConfigurationChanged PORTRAIT"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    goto :goto_0

    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% onConfigurationChanged Other"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v4, "[press_widget]launch"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "HTCCamera"

    const-string v4, "onCreate()"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isInMirrorMode()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v2, "HTCCamera"

    const-string v4, "Initial remote screen orientation"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/htc/wrap/android/view/HtcWrapSurface;->setRemoteScreenOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v2, Lcom/android/camera/HTCCamera$TVDisplayListener;

    invoke-direct {v2, p0, v6}, Lcom/android/camera/HTCCamera$TVDisplayListener;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/HTCCamera$1;)V

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mTVDisplayListener:Lcom/android/camera/HTCCamera$TVDisplayListener;

    new-instance v2, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mTVDisplayListener:Lcom/android/camera/HTCCamera$TVDisplayListener;

    invoke-direct {v2, v4, v5}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;-><init>(Landroid/content/Context;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    new-instance v2, Lcom/android/camera/HTCCamera$MainHandler;

    invoke-direct {v2, p0}, Lcom/android/camera/HTCCamera$MainHandler;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    new-instance v2, Lcom/android/camera/IntentManager;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-direct {v2, p0, v4}, Lcom/android/camera/IntentManager;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/camera/IntentManager;->initManager(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->checkStartMode(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v2}, Lcom/android/camera/IntentManager;->getSaveUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    iget-boolean v2, v2, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsStorageSlotLocked:Z

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSensorManager:Landroid/hardware/SensorManager;

    new-instance v2, Lcom/android/camera/CameraSettings;

    invoke-direct {v2, p0}, Lcom/android/camera/CameraSettings;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v2, p0}, Lcom/android/camera/CameraSettings;->bindPreferences(Lcom/android/camera/HTCCamera;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/camera/CameraThread;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraMode;

    invoke-direct {v3, p0, v4, v2}, Lcom/android/camera/CameraThread;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/android/camera/CameraMode;)V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->start()V

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->requestWindowFeature(I)Z

    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->setContentView(I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mThreadMonitor:Lcom/android/camera/debug/ThreadMonitor;

    invoke-virtual {v2}, Lcom/android/camera/debug/ThreadMonitor;->startMonitorCurrentThread()V

    new-instance v2, Lcom/android/camera/AutoUploader;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/camera/AutoUploader;-><init>(Lcom/android/camera/HTCCamera;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    sget-object v3, Lcom/android/camera/HTCCamera;->mInitialPreferenceValues:[Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraSettings;->set([Ljava/util/AbstractMap$SimpleEntry;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->frontSelfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v2, p0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->mainSelfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v2, p0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->updateSelfTimerInterval()V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v2, "HTCCamera"

    const-string v3, "addFlags FLAG_SHOW_WHEN_LOCKED & FLAG_DISMISS_KEYGUARD onCreate"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/camera/component/UIComponentFactory;

    invoke-direct {v2, p0}, Lcom/android/camera/component/UIComponentFactory;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mComponentFactory:Lcom/android/camera/component/UIComponentFactory;

    new-instance v2, Lcom/android/camera/component/UIComponentManager;

    invoke-direct {v2, p0}, Lcom/android/camera/component/UIComponentManager;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mComponentFactory:Lcom/android/camera/component/UIComponentFactory;

    sget-object v3, Lcom/android/camera/component/ComponentCategory;->Realtime:Lcom/android/camera/component/ComponentCategory;

    invoke-virtual {v2, v3}, Lcom/android/camera/component/UIComponentFactory;->createComponents(Lcom/android/camera/component/ComponentCategory;)I

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->linkToRequiredServiceComponents()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "HTCCamera"

    const-string v3, "onCreate() - [Fatal] Some required interface is missing"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    invoke-virtual {v2, p0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    invoke-virtual {v2, p0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v2, p0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v2, p0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v2, p0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setupEventHandlers()V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/16 v3, 0x38

    const-wide/16 v4, 0x1388

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "HTCCamera"

    const-string v4, "Rotate remote Camera layout may not support"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move v2, v3

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "HTCCamera"

    const-string v1, "onDestroy() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[ANALYTIC_com.android.camera]"

    const-string v1, "[press_back]close"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/camera/HTCCamera$13;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$13;-><init>(Lcom/android/camera/HTCCamera;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;J)Z

    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->release()V

    :cond_0
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mTVDisplayListener:Lcom/android/camera/HTCCamera$TVDisplayListener;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "HTCCamera"

    const-string v1, "onDestroy() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[ANALYTIC_com.android.camera]"

    const-string v1, "[close_camera]complete"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->doOnDestory()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    const/16 v6, 0x19

    const/16 v5, 0x18

    const/4 v4, 0x3

    const/4 v2, 0x1

    new-instance v0, Lcom/android/camera/input/KeyEventArgs;

    invoke-direct {v0, p2}, Lcom/android/camera/input/KeyEventArgs;-><init>(Landroid/view/KeyEvent;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->keyDownEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    invoke-virtual {v0}, Lcom/android/camera/input/KeyEventArgs;->isHandled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v3, 0x1b

    if-eq v1, v3, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v3, 0x83

    if-ne v1, v3, :cond_2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v1, v2, :cond_3

    sparse-switch p1, :sswitch_data_0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    if-ne v1, v3, :cond_c

    :cond_4
    if-eq v6, p1, :cond_5

    if-ne v5, p1, :cond_c

    :cond_5
    move v1, v2

    goto :goto_0

    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-ne v1, v4, :cond_3

    sput-boolean v2, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    goto :goto_1

    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_6

    move v1, v2

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-ne v1, v3, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    const-string v1, "HTCCamera"

    const-string v3, "UnBlock Capture UI - stop recorder and cancel focus"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v3, :cond_9

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    goto :goto_0

    :cond_8
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraMode;)Z

    :goto_2
    move v1, v2

    goto/16 :goto_0

    :cond_9
    const-string v1, "HTCCamera"

    const-string v3, "Press Record when focusing - mFocusingState = FOCUSING_PRESS_CAPTURE"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    goto :goto_2

    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_a

    move v1, v2

    goto/16 :goto_0

    :cond_a
    :sswitch_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-ne v1, v3, :cond_b

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    const-string v1, "HTCCamera"

    const-string v3, "UnBlock Capture UI - stop recorder and cancel focus"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const-string v1, "HTCCamera"

    const-string v3, "Press Capture when focusing - mFocusingState = FOCUSING_PRESS_CAPTURE"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    move v1, v2

    goto/16 :goto_0

    :sswitch_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-ge v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    const-string v1, "HTCCamera"

    const-string v3, "UnBlock Capture UI - press back key and cancel focus"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_5
    sget-object v1, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v3, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v1, v3, :cond_3

    move v1, v2

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f

    if-eq v6, p1, :cond_d

    if-ne v5, p1, :cond_e

    :cond_d
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    :cond_e
    const-string v1, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown - UI Block !!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_0

    :cond_f
    sparse-switch p1, :sswitch_data_1

    :cond_10
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-ne v1, v4, :cond_10

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v1

    if-ne v1, v2, :cond_10

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->startFocusFromLongPressKey()V

    sput-boolean v2, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    goto :goto_3

    :sswitch_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_11

    move v1, v2

    goto/16 :goto_0

    :cond_11
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-ne v1, v2, :cond_14

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v3, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v1, v3, :cond_12

    sget-object v1, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v3, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v1, v3, :cond_13

    :cond_12
    const-string v1, "HTCCamera"

    const-string v3, "screen save mode -- action key pressed so activate camera"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->activate()V

    :cond_13
    const-string v1, "HTCCamera"

    const-string v3, "save screen - block camcorder key"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_0

    :cond_14
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v2

    goto/16 :goto_0

    :cond_15
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    if-ne v1, v2, :cond_16

    const-string v1, "HTCCamera"

    const-string v3, "SIP is shown, not handle center button"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_0

    :cond_16
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v3, :cond_18

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v2

    goto/16 :goto_0

    :cond_17
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraMode;)Z

    :goto_4
    move v1, v2

    goto/16 :goto_0

    :cond_18
    const-string v1, "HTCCamera"

    const-string v3, "Press camcorder button to start video recording"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    goto :goto_4

    :sswitch_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_19

    move v1, v2

    goto/16 :goto_0

    :cond_19
    :sswitch_9
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-ne v1, v2, :cond_1c

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1b

    sget-object v1, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v3, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v1, v3, :cond_1a

    sget-object v1, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v3, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v1, v3, :cond_1b

    :cond_1a
    const-string v1, "HTCCamera"

    const-string v3, "screen save mode -- action key pressed so activate camera"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->activate()V

    :cond_1b
    const-string v1, "HTCCamera"

    const-string v3, "save screen - block capture key"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_0

    :cond_1c
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    move v1, v2

    goto/16 :goto_0

    :cond_1d
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    if-ne v1, v2, :cond_1e

    const-string v1, "HTCCamera"

    const-string v3, "SIP is shown, not handle center button"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_0

    :cond_1e
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v3, :cond_1f

    const-string v1, "HTCCamera"

    const-string v3, "Press center button to take picture"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    move v1, v2

    goto/16 :goto_0

    :cond_1f
    const-string v1, "HTCCamera"

    const-string v3, "Press center button to start video recording"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    goto :goto_5

    :sswitch_a
    sget-object v1, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v3, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v1, v3, :cond_20

    move v1, v2

    goto/16 :goto_0

    :cond_20
    :sswitch_b
    sget-object v1, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v3, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v1, v3, :cond_21

    move v1, v2

    goto/16 :goto_0

    :cond_21
    :sswitch_c
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-ne v1, v3, :cond_22

    const-string v1, "HTCCamera"

    const-string v3, "Press back key to stop video recording"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    move v1, v2

    goto/16 :goto_0

    :cond_22
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    move v1, v2

    goto/16 :goto_0

    :cond_23
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-ge v1, v2, :cond_10

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_10

    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    goto/16 :goto_3

    :sswitch_d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_24

    move v1, v2

    goto/16 :goto_0

    :cond_24
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v1, :cond_25

    const-string v1, "HTCCamera"

    const-string v3, "!! Menu Key block !! - mCameraThread = null"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_0

    :cond_25
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    if-ne v1, v3, :cond_26

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v1, :cond_26

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v1

    if-eqz v1, :cond_27

    :cond_26
    const-string v1, "HTCCamera"

    const-string v3, "!! Menu Key block !!"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_0

    :cond_27
    move v1, v2

    goto/16 :goto_0

    :sswitch_e
    move v1, v2

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x13 -> :sswitch_5
        0x14 -> :sswitch_5
        0x17 -> :sswitch_3
        0x1b -> :sswitch_2
        0x42 -> :sswitch_3
        0x50 -> :sswitch_0
        0x83 -> :sswitch_2
        0xe4 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_c
        0x13 -> :sswitch_b
        0x14 -> :sswitch_a
        0x17 -> :sswitch_9
        0x1b -> :sswitch_8
        0x42 -> :sswitch_9
        0x50 -> :sswitch_6
        0x52 -> :sswitch_d
        0x54 -> :sswitch_e
        0x83 -> :sswitch_8
        0xe4 -> :sswitch_7
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/16 v5, 0x19

    const/16 v4, 0x18

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/android/camera/input/KeyEventArgs;

    invoke-direct {v0, p2}, Lcom/android/camera/input/KeyEventArgs;-><init>(Landroid/view/KeyEvent;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->keyUpEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    invoke-virtual {v0}, Lcom/android/camera/input/KeyEventArgs;->isHandled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HTCCamera"

    const-string v3, "KeyUp event is handled by event handler"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-ge v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->selfFinishingEvent:Lcom/android/camera/event/Event;

    sget-object v2, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    if-ne v1, v3, :cond_5

    :cond_3
    if-eq v5, p1, :cond_4

    if-ne v4, p1, :cond_5

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eq v5, p1, :cond_6

    if-ne v4, p1, :cond_7

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_7
    const-string v1, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyUp - UI Block !!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_8
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :pswitch_0
    move v1, v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public onMediaSaved(Lcom/android/camera/io/MediaSaveEventArgs;)V
    .locals 2

    const-string v0, "HTCCamera"

    const-string v1, "onMediaSaved() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mediaSavedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v0}, Lcom/android/camera/AutoUploader;->setSaveDone()V

    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "onMediaSaved() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsLaunching:Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/IntentManager;->initManager(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraMode;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraThread;->changeMode(Lcom/android/camera/CameraMode;)Lcom/android/camera/Handle;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraThread;->resetZoom(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    iget-boolean v0, v0, Lcom/android/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    sget-object v1, Lcom/android/camera/HTCCamera;->mInitialPreferenceValues:[Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->set([Ljava/util/AbstractMap$SimpleEntry;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->updateSelfTimerInterval()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraThread;->openCamera(Lcom/android/camera/CameraType;)Lcom/android/camera/Handle;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FlashMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setFlashMode(Lcom/android/camera/FlashMode;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->newIntentEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/OneValueEventArgs;

    invoke-direct {v1, p1}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onPause()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "HTCCamera"

    const-string v4, "onPause() - start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "HTCCamera"

    const-string v4, "onPause() - Stop recording"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/camera/CameraThread;->stopVideoRecording(Lcom/android/camera/CaptureHandle;ZZ)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v3, v4}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0, v6, v6}, Lcom/android/camera/HTCCamera;->overridePendingTransition(II)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    sget-object v4, Lcom/android/camera/CameraStartMode;->Album:Lcom/android/camera/CameraStartMode;

    if-ne v3, v4, :cond_1

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->overrideSystemRotateAnimation()V

    :cond_1
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->pausingEvent:Lcom/android/camera/event/Event;

    sget-object v4, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v3}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isQuickLaunchState:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isResettingToDefault:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/16 v4, 0x277b

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera$MainHandler;->removeMessages(I)V

    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mIsOnResumeCompleted:Z

    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mChangingModeHandle:Lcom/android/camera/Handle;

    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->m_NeedTapCapture:Z

    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mIsPinchZoomed:Z

    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mIsLaunching:Z

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isSwitchingCamera:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    iput v6, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewFailureCount:I

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "HTCCamera"

    const-string v4, "onPause() - Clear focus state"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iput v6, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mCurrentFocusHandle:Lcom/android/camera/Handle;

    :cond_2
    const-string v3, "HTCCamera"

    const-string v4, "onPause() - mIsUIReady = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setOldBrightness()V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v3}, Lcom/android/camera/IAudioManager;->restoreAudioStreamVolume()V

    :cond_3
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/16 v4, 0x1e

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    sput-boolean v6, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    const-string v3, "HTCCamera"

    const-string v4, "onPause() - mFocusingState = NO_FOCUSING"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput v6, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    sget-object v4, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/RecordingState;

    invoke-virtual {v3}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_1

    :goto_1
    iget-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v3, :cond_8

    const-string v3, "HTCCamera"

    const-string v4, "onPause mIdle is false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/16 v4, 0x24

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-boolean v3, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_5
    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    :goto_3
    const-string v3, "HTCCamera"

    const-string v4, "OnPause - Freeze UI !!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.eas.intent.resumeSync"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.htc.eas.extra.tag"

    const-string v4, "com.android.camera.HTCCamera"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/16 v4, 0x48

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->doOnPause()V

    invoke-direct {p0, v7}, Lcom/android/camera/HTCCamera;->setFingerGestureEnable(Z)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSurfaceStateSyncRoot:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string v3, "HTCCamera"

    const-string v5, "onPause() - mIsSurfaceAvailable = false"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsSurfaceAvailable:Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_a

    :try_start_1
    const-string v3, "HTCCamera"

    const-string v4, "onPause +++stopPreview()"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    const-string v3, "HTCCamera"

    const-string v4, "onPause ---stopPreview()"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->cancelTakingPicture()V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->cancelStartingPreview()V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->cancelOpeningCamera()V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->closeCamera()V

    :cond_7
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    new-instance v3, Lcom/android/camera/SessionHandle;

    invoke-direct {v3}, Lcom/android/camera/SessionHandle;-><init>()V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mSessionHandle:Lcom/android/camera/SessionHandle;

    const-string v3, "HTCCamera"

    const-string v4, "onPause() - end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    const-string v3, "HTCCamera"

    const-string v4, "onPause mIdle is true"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    goto/16 :goto_3

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :catch_0
    move-exception v1

    const-string v3, "HTCCamera"

    const-string v4, "onPause() - Cannot stop preview"

    invoke-static {v3, v4, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    const-string v3, "HTCCamera"

    const-string v4, "onPause() - No open camera, no need to stop preview"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    if-ne p1, v1, :cond_5

    sget-object v2, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$UIState:[I

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/UIState;

    invoke-virtual {v1}, Lcom/android/camera/UIState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->frontSelfTimerInterval:Lcom/android/camera/property/Property;

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->mainSelfTimerInterval:Lcom/android/camera/property/Property;

    if-ne p1, v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->updateSelfTimerInterval()V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    if-ne p1, v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsUpdatingStorageSlotSetting:Z

    if-nez v1, :cond_3

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/io/StorageSlot;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/camera/HTCCamera;->onStorageSlotChanged(Lcom/android/camera/io/StorageSlot;Z)V

    :cond_3
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onActionScreenOpening()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v1}, Lcom/android/camera/actionscreen/ActionScreen;->getTargetCaptureHandle()Lcom/android/camera/CaptureHandle;

    move-result-object v1

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/camera/HTCCamera;->onActionScreenClosed(Lcom/android/camera/CaptureHandle;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    if-ne p1, v1, :cond_6

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/UIState;

    invoke-direct {p0, v1}, Lcom/android/camera/HTCCamera;->onEffectPanelStateChanged(Lcom/android/camera/UIState;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    if-ne p1, v1, :cond_7

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onPopupBubbleShown()V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    if-ne p1, v1, :cond_8

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onPreviewStopped()V

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    if-ne p1, v1, :cond_9

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/TakingPictureState;

    invoke-direct {p0, v1}, Lcom/android/camera/HTCCamera;->onTakingPictureStateChanged(Lcom/android/camera/TakingPictureState;)V

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestart()V
    .locals 2

    const-string v0, "HTCCamera"

    const-string v1, "onRestart() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    const-string v0, "HTCCamera"

    const-string v1, "onRestart() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v7, "HTCCamera"

    const-string v8, "onResume() - start"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mSurfaceStateSyncRoot:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mIsSurfaceAvailable:Z

    :cond_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v10, v10}, Lcom/android/camera/HTCCamera;->overridePendingTransition(II)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isInMirrorMode()Z

    move-result v7

    if-eqz v7, :cond_1

    :try_start_1
    const-string v7, "HTCCamera"

    const-string v8, "Initial remote screen orientation"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x3

    invoke-static {v7}, Lcom/htc/wrap/android/view/HtcWrapSurface;->setRemoteScreenOrientation(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    const/4 v3, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.htc.eas.intent.pauseSync"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "com.htc.eas.extra.tag"

    const-string v8, "com.android.camera.HTCCamera"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopVoiceRecording()V

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v7}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v7, v8, :cond_3

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopFM()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopMusic()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopNotesRecording()V

    :cond_2
    :goto_1
    const-string v7, "window"

    invoke-virtual {p0, v7}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v7

    iput v7, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    const-string v7, "HTCCamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Initial Display Orientation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "HTCCamera"

    const-string v8, "OnResume - reset UI, immediately set mMainLayout invisible"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    goto :goto_2

    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    :catch_0
    move-exception v2

    const-string v7, "HTCCamera"

    const-string v8, "Rotate remote Camera layout may not support"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isHalfPCB()Z

    move-result v7

    if-ne v7, v11, :cond_2

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopFM()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setMaxBrightness()V

    invoke-static {p0}, Lcom/android/camera/component/PowerWarningController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-string v8, "PowerWarning UI"

    invoke-virtual {v7, v8}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/component/Component;->initialize()V

    :cond_5
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    const-string v7, "HTCCamera"

    const-string v8, "onResume() - mFocusingState = NO_FOCUSING"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput v10, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->resumingEvent:Lcom/android/camera/event/Event;

    sget-object v8, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v7, p0, v8}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isSupportMirrorMode()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "HTCCamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isInMirrorMode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isInMirrorMode()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->isMirrorMode:Lcom/android/camera/property/Property;

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isInMirrorMode()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_6
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    monitor-enter p0

    :try_start_3
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/camera/AutoUploader;->mAutoUploadUri:Landroid/net/Uri;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v7, "HTCCamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onResume() - mIdle = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v7, :cond_9

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    :goto_3
    iget-boolean v7, p0, Lcom/android/camera/HTCCamera;->mIsSurfaceAvailable:Z

    if-eqz v7, :cond_7

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->performActionsOnPreviewSurfaceCreated()V

    :cond_7
    invoke-static {}, Lcom/android/camera/DisplayDevice;->DisablePen()Z

    move-result v7

    if-ne v7, v11, :cond_8

    invoke-static {p0}, Lcom/android/camera/Util;->disableSketcher(Landroid/app/Activity;)V

    :cond_8
    iput-boolean v10, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    const-string v7, "device_policy"

    invoke-virtual {p0, v7}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v12}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "HTCCamera"

    const-string v8, "Camera is disabled by DevicePolicyManager"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const v7, 0x7f0a005c

    invoke-static {p0, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    new-instance v7, Lcom/android/camera/HTCCamera$12;

    invoke-direct {v7, p0}, Lcom/android/camera/HTCCamera$12;-><init>(Lcom/android/camera/HTCCamera;)V

    const-wide/16 v8, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;J)Z

    :goto_4
    return-void

    :catchall_1
    move-exception v7

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7

    :cond_9
    const-string v7, "HTCCamera"

    const-string v8, "Start viewfinder directly, activate"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->activate()V

    goto :goto_3

    :cond_a
    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->mIsOnResumeCompleted:Z

    const-string v7, "HTCCamera"

    const-string v8, "onResume() - end"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "HTCCamera"

    const-string v1, "onStart() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isAudioFocusEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/IAudioManager;->requestAudioFocus(I)V

    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "onStart() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 3

    const-string v1, "HTCCamera"

    const-string v2, "onStop() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->stoppingEvent:Lcom/android/camera/event/Event;

    sget-object v2, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v1}, Lcom/android/camera/IAudioManager;->abandonAudioFocus()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isInMirrorMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    const-string v1, "HTCCamera"

    const-string v2, "Reset remote screen orientation"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/wrap/android/view/HtcWrapSurface;->resetRemoteScreenOrientation()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const-string v1, "HTCCamera"

    const-string v2, "onStop() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "HTCCamera"

    const-string v2, "Rotate remote Camera layout may not support"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/HTCCamera;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public openCaptureUI()V
    .locals 3

    const-string v0, "HTCCamera"

    const-string v1, "openCaptureUI()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public powerWarningOn(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "deactivate - mCameraThread = null or mCameraHandler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    if-nez v0, :cond_2

    const-string v0, "HTCCamera"

    const-string v1, "deactivate - mUIHandler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setPowerWarning(Z)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->cancelStartingPreview()V

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->closeCamera()V

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setOldBrightness()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mCanGSensorEnabled:Z

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopAccelerometer()V

    goto :goto_0
.end method

.method public final prepareActionScreen(Lcom/android/camera/CaptureHandle;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSessionHandle:Lcom/android/camera/SessionHandle;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mPreparedActionScreenSessionHandle:Lcom/android/camera/SessionHandle;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "prepareActionScreen() - Action screen is not needed"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "HTCCamera"

    const-string v1, "prepareActionScreen() - Activity is paused"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v1, Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/actionscreen/ActionScreen;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v0, p1}, Lcom/android/camera/actionscreen/ActionScreen;->prepare(Lcom/android/camera/CaptureHandle;)V

    goto :goto_0

    :cond_4
    const-string v0, "HTCCamera"

    const-string v1, "No available action screen"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/camera/HTCCamera$19;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/HTCCamera$19;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CaptureHandle;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_6
    const-string v0, "HTCCamera"

    const-string v1, "Cannot prepare action screen because there is no handler"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final prepareRecording()Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HTCCamera"

    const-string v3, "prepareRecording() - Activity is pausing"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "HTCCamera"

    const-string v3, "prepareRecording() - Activity is paused"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    const-string v1, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareRecording() - Taking picture state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :pswitch_0
    sget-object v4, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/RecordingState;

    invoke-virtual {v1}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_1

    :pswitch_1
    const-string v1, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareRecording() - Recording state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    iget-boolean v1, v1, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    if-nez v1, :cond_2

    const-string v1, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareRecording() - Cannot record video in current start mode ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isInMirrorMode()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "HTCCamera"

    const-string v3, "Check MirrorMode :true"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/UIComponentManager;

    const-class v3, Lcom/android/camera/IToastManager;

    invoke-virtual {v1, v3}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IToastManager;

    if-eqz v0, :cond_3

    const v1, 0x7f0a005b

    invoke-virtual {v0, v1}, Lcom/android/camera/IToastManager;->showToast(I)Lcom/android/camera/Handle;

    :goto_1
    move v1, v2

    goto/16 :goto_0

    :cond_3
    const-string v1, "HTCCamera"

    const-string v3, "prepareRecording() - No IToastManager interface"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "HTCCamera"

    const-string v4, "Check MirrorMode :false"

    invoke-static {v1, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v1, v3, :cond_5

    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-ne v1, v4, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    const-string v1, "HTCCamera"

    const-string v2, "UnBlock Capture UI - stop recorder and cancel focus"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move v1, v3

    goto/16 :goto_0

    :cond_6
    const-string v1, "HTCCamera"

    const-string v3, "Press Capture when focusing - mFocusingState = FOCUSING_PRESS_RECORD"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v1, v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resetAutoCaptureTask()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    return-void
.end method

.method public resetFocusMode()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final resetScreenSaveTimer()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Lcom/android/camera/HTCCamera$MainHandler;

    const/16 v1, 0x24

    iget v2, p0, Lcom/android/camera/HTCCamera;->SCREEN_DELAY:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/MessageHandler;->sendUniqueEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_0
    return-void
.end method

.method public final resetToDefault()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "HTCCamera"

    const-string v1, "resetToDefault() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "resetToDefault() - No camera settings"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isResettingToDefault:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    iget-boolean v0, v0, Lcom/android/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    sget-object v0, Lcom/android/camera/FlashMode;->Auto:Lcom/android/camera/FlashMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setFlashMode(Lcom/android/camera/FlashMode;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->resetToDefault()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->updateSelfTimerInterval()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isStorageSlotLocked()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraThread;->changeStorageSlot(Lcom/android/camera/io/StorageSlot;)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraThread;->checkStorageState(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isResettingToDefault:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->restartCamera()V

    const-string v0, "HTCCamera"

    const-string v1, "resetToDefault() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    iget-boolean v0, v0, Lcom/android/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final restartCamera()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->restartingCameraEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    const-string v0, "HTCCamera"

    const-string v1, "Block Capture UI - restartCamera()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetFocusMode()V

    const-string v0, "HTCCamera"

    const-string v1, "restartCamera() - set mWaitResetSettings to true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->closeCamera()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->resetZoom(Z)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->startPreview(Lcom/android/camera/CameraType;)Z

    :cond_0
    return-void
.end method

.method public final restartPreview()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "HTCCamera"

    const-string v3, "restartPreview()"

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v2, "restartPreview() - Preview is already starting"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HTCCamera"

    const-string v2, "restartPreview() - Activity is pausing"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "HTCCamera"

    const-string v2, "restartPreview() - Activity is paused"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_3

    const-string v0, "HTCCamera"

    const-string v2, "restartPreview() - Camera is deactivated"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_4

    const-string v0, "HTCCamera"

    const-string v2, "restartPreview() - No camera thread"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_4
    iput v1, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewFailureCount:I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v3, "Starting preview"

    invoke-interface {v0, v3, v1}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/android/camera/Handle;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isPreviewStarting:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraThread;->restartPreview(Lcom/android/camera/CameraType;)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    const-string v0, "HTCCamera"

    const-string v1, "restartPreview() - Handle : "

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mStartingPreviewHandle:Lcom/android/camera/Handle;

    invoke-static {v0, v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v2

    goto :goto_0
.end method

.method public restoreBackgrounddataSetting()V
    .locals 0

    return-void
.end method

.method public final returnRequestedMedia()V
    .locals 15

    const/4 v14, -0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "HTCCamera"

    const-string v11, "Returning media from non-service mode"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v10}, Lcom/android/camera/IntentManager;->getSaveUri()Landroid/net/Uri;

    move-result-object v9

    :goto_1
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v10}, Lcom/android/camera/IntentManager;->getCropValue()Ljava/lang/String;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_7

    const-string v10, "HTCCamera"

    const-string v11, "Has Crop Extras , pass to CropImage Activity"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_2

    if-eqz v9, :cond_6

    const-string v10, "output"

    invoke-virtual {v6, v10, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    :goto_3
    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.android.camera.action.CROP"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "image/*"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v10}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz v6, :cond_3

    invoke-virtual {v2, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3
    sget-object v10, Lcom/android/camera/Global$REQUEST_CODE;->REQUEST_CODE_CROP_MSG:Lcom/android/camera/Global$REQUEST_CODE;

    invoke-virtual {v10}, Lcom/android/camera/Global$REQUEST_CODE;->ordinal()I

    move-result v10

    invoke-virtual {p0, v2, v10}, Lcom/android/camera/HTCCamera;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_4
    move-object v9, v11

    goto :goto_1

    :cond_5
    move-object v3, v11

    goto :goto_2

    :cond_6
    const-string v10, "return-data"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v10}, Lcom/android/camera/CameraThread;->getJpegData()[B

    move-result-object v5

    :cond_8
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    sget-object v10, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraStartMode:[I

    iget-object v12, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    invoke-virtual {v12}, Lcom/android/camera/CameraStartMode;->ordinal()I

    move-result v12

    aget v10, v10, v12

    packed-switch v10, :pswitch_data_0

    if-eqz v9, :cond_16

    invoke-virtual {p0, v14}, Lcom/android/camera/HTCCamera;->setResult(I)V

    invoke-direct {p0, v9, v5}, Lcom/android/camera/HTCCamera;->saveAndFinish(Landroid/net/Uri;[B)V

    goto/16 :goto_0

    :pswitch_0
    if-nez v5, :cond_b

    const-string v10, "HTCCamera"

    const-string v11, "contacts - jpeg data is null !!"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_4
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v10}, Lcom/android/camera/CameraThread;->resetJpegData()V

    :cond_a
    invoke-virtual {p0, v14, v4}, Lcom/android/camera/HTCCamera;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v10

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v10}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v10

    const-class v12, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {v10, v12}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ICaptureResolutionManager;

    if-eqz v8, :cond_c

    iget-object v10, v8, Lcom/android/camera/ICaptureResolutionManager;->photoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v10}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/Resolution;

    move-object v7, v10

    :goto_5
    if-eqz v8, :cond_d

    iget-object v10, v8, Lcom/android/camera/ICaptureResolutionManager;->contactPhotoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v10}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/Resolution;

    move-object v1, v10

    :goto_6
    if-eqz v7, :cond_e

    if-eqz v1, :cond_e

    invoke-virtual {v7}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v10

    invoke-virtual {v7}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v11

    invoke-virtual {v7}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v12

    invoke-virtual {v7}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v1}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v5, v10, v11, v12}, Lcom/android/camera/Util;->cropSquareImg([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_7
    if-eqz v0, :cond_f

    const-string v10, "inline-data"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "data"

    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_4

    :cond_c
    move-object v7, v11

    goto :goto_5

    :cond_d
    move-object v1, v11

    goto :goto_6

    :cond_e
    const-string v10, "HTCCamera"

    const-string v11, "returnRequestedMedia() - Cannot get photo resolution"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_7

    :cond_f
    const-string v10, "HTCCamera"

    const-string v11, "return jpeg decode error!!"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_10
    const-string v10, "jpeg_data"

    invoke-virtual {v4, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto/16 :goto_4

    :pswitch_1
    if-nez v5, :cond_11

    const-string v10, "HTCCamera"

    const-string v11, "square - jpeg data is null !!"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_11
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v10

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v10}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v10

    const-class v12, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {v10, v12}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ICaptureResolutionManager;

    if-eqz v8, :cond_12

    iget-object v10, v8, Lcom/android/camera/ICaptureResolutionManager;->photoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v10}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/Resolution;

    move-object v7, v10

    :goto_8
    if-eqz v7, :cond_13

    invoke-virtual {v7}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v10

    invoke-virtual {v7}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v11

    sget v12, Lcom/android/camera/DisplayDevice;->CAMERA_PIC_SIZE_FOR_SQUARE:I

    invoke-static {v5, v10, v11, v12}, Lcom/android/camera/Util;->cropSquareImg([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_9
    if-eqz v0, :cond_14

    const-string v10, "inline-data"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "data"

    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_4

    :cond_12
    move-object v7, v11

    goto :goto_8

    :cond_13
    const-string v10, "HTCCamera"

    const-string v11, "returnRequestedMedia() - Cannot get photo resolution"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_9

    :cond_14
    const-string v10, "HTCCamera"

    const-string v11, "return jpeg decode error!!"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_15
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v10}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v10, "HTCCamera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "return request:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v12}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_16
    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v10}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v10, "HTCCamera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "return request:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v12}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    sget-object v11, Lcom/android/camera/CameraStartMode;->GenericServiceCamera:Lcom/android/camera/CameraStartMode;

    if-ne v10, v11, :cond_9

    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v10}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v10, v11, :cond_9

    if-eqz v5, :cond_18

    const v10, 0x19000

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v14, v10, v11}, Lcom/android/camera/Util;->makeBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string v10, "inline-data"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "data"

    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_4

    :cond_17
    const-string v10, "HTCCamera"

    const-string v11, "return jpeg decode error!!"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_18
    const-string v10, "HTCCamera"

    const-string v11, "inline-data - jpeg data is null !!"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final screenPointToNormalizedPoint(IIZ)Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/HTCCamera;->screenPointToNormalizedPoint(IIZLandroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final screenPointToNormalizedPoint(IIZLandroid/graphics/PointF;)Z
    .locals 5

    const/4 v3, 0x0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getPreviewSurfaceHitRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ge p1, v3, :cond_4

    iget p1, v2, Landroid/graphics/Rect;->left:I

    :cond_2
    :goto_1
    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ge p2, v3, :cond_5

    iget p2, v2, Landroid/graphics/Rect;->top:I

    :cond_3
    :goto_2
    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v3

    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v3

    int-to-float v3, p1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    int-to-float v3, p2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v3}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_6

    const/high16 v3, 0x3f80

    sub-float/2addr v3, v0

    invoke-virtual {p4, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    :goto_3
    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-le p1, v3, :cond_2

    iget p1, v2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_5
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-le p2, v3, :cond_3

    iget p2, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_6
    invoke-virtual {p4, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3
.end method

.method public setBackgroundDataSetting(Z)V
    .locals 0

    return-void
.end method

.method public setBlockPowerWarning(Z)V
    .locals 3

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBlockPowerWarning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mBlockPowerWarning:Z

    return-void
.end method

.method public final setFlashMode(Lcom/android/camera/FlashMode;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    const-string v0, "HTCCamera"

    const-string v1, "setFlashMode("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HTCCamera"

    const-string v1, "setFlashMode() - Change to same mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "setFlashMode() - No camera thread or settings"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isFlashDisabled:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "HTCCamera"

    const-string v1, "setFlashMode() - Flash is disabled"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraThread;->setFlashMode(Lcom/android/camera/FlashMode;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/camera/FlashMode;->Torch:Lcom/android/camera/FlashMode;

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/FlashMode;->On:Lcom/android/camera/FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setPowerWarning(Z)V
    .locals 3

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPowerWarning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mIsPowerWarning:Z

    return-void
.end method

.method public final startAlbum(Landroid/content/Intent;Lcom/android/camera/MediaInfo;)Z
    .locals 12

    goto :goto_modify

    if-nez p1, :cond_0

    const-string v8, "HTCCamera"

    const-string v9, "startAlbum() - No intent specified"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v9, "Starting album"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    sget-object v9, Lcom/android/camera/CameraStartMode;->Album:Lcom/android/camera/CameraStartMode;

    if-ne v8, v9, :cond_3

    const/4 v5, 0x1

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    :cond_1
    if-eqz v5, :cond_4

    const-string v0, "FROM_CAMERA"

    :goto_2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    if-nez v5, :cond_2

    sget-object v9, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraMode:[I

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/CameraMode;

    invoke-virtual {v8}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v8

    aget v8, v9, v8

    packed-switch v8, :pswitch_data_0

    :cond_2
    :goto_4
    const-string v8, "preview_mode"

    const-string v9, "filmstrip"

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "camera_orientation"

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/rotate/UIRotation;

    iget v8, v8, Lcom/android/camera/rotate/UIRotation;->deviceOrientation:I

    invoke-virtual {p1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_7

    iget-object v8, p2, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    iget-object v9, p2, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "HTCCamera"

    const-string v9, "startAlbum() - File path = \'"

    iget-object v10, p2, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    const-string v11, "\'"

    invoke-static {v8, v9, v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v8, "camera_last_file_path"

    invoke-virtual {p2}, Lcom/android/camera/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "HTCCamera"

    const-string v9, "startAlbum() - MIME type = \'"

    iget-object v10, p2, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    const-string v11, "\'"

    invoke-static {v8, v9, v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v8, "camera_last_file_mime"

    iget-object v9, p2, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_5
    if-eqz v5, :cond_8

    const-string v8, "HTCCamera"

    const-string v9, "startAlbum() - Returning to album"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, -0x1

    invoke-virtual {p0, v8, p1}, Lcom/android/camera/HTCCamera;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->selfFinishingEvent:Lcom/android/camera/event/Event;

    sget-object v9, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v8, p0, v9}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    :goto_6
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->overrideSystemRotateAnimation()V

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_4
    const-string v0, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    goto/16 :goto_2

    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_3

    :pswitch_0
    const-string v8, "capture_mode"

    const-string v9, "camera"

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    const-string v8, "HTCCamera"

    const-string v9, "startAlbum() - Cannot start album"

    invoke-static {v8, v9, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    invoke-interface {v8, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    :goto_modify
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.android.camera.action.REVIEW"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    if-eqz p2, :cond_6

    #new-instance v6, Ljava/io/File;

    #invoke-virtual {p2}, Lcom/android/camera/MediaInfo;->getFullPath()Ljava/lang/String;

    #move-result-object v8

    #invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    invoke-direct {p0, p2}, Lcom/android/camera/HTCCamera;->contentUriFromMediaInfo(Lcom/android/camera/MediaInfo;)Landroid/net/Uri;

    move-result-object v7

    :cond_6
    if-nez p2, :cond_9

    sget-object v8, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    iget-object v8, v8, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    :goto_7
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_8
    const/4 v8, 0x0

    goto/16 :goto_0

    :pswitch_1
    :try_start_2
    const-string v8, "capture_mode"

    const-string v9, "comcorder"

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_4

    :cond_7
    const-string v8, "HTCCamera"

    const-string v9, "startAlbum() - No media information"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    sget-object v9, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    iget-object v9, v9, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_5

    :cond_8
    const-string v8, "HTCCamera"

    const-string v9, "startAlbum() - Going to album"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :cond_9
    iget-object v8, p2, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    goto :goto_7

    :catch_1
    move-exception v3

    const-string v8, "HTCCamera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot start other album app: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final startAlbum(Lcom/android/camera/MediaInfo;)Z
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/HTCCamera;->startAlbum(Landroid/content/Intent;Lcom/android/camera/MediaInfo;)Z

    move-result v0

    return v0
.end method

.method public startFocusFromLongPressKey()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLastTouchFocusPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mLastTouchFocusPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/HTCCamera;->handleTouchFocus(II)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->handleSensorFocus()Z

    goto :goto_0
.end method

.method public final startPreview()Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/HTCCamera;->startPreview(ZLcom/android/camera/CameraType;)Z

    move-result v0

    return v0
.end method

.method public final startPreview(Lcom/android/camera/CameraType;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/camera/HTCCamera;->startPreview(ZLcom/android/camera/CameraType;)Z

    move-result v0

    return v0
.end method

.method public final switchMode(Lcom/android/camera/CameraMode;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final switchMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v3, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v3, v4, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "HTCCamera"

    const-string v6, "change camera mode when focusing, cancel focus"

    invoke-static {v3, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    const-string v3, "HTCCamera"

    const-string v6, "UnBlock Capture UI - change camera mode and cancel focus"

    invoke-static {v3, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v3, :cond_2

    :goto_0
    return v5

    :cond_1
    const-string v3, "HTCCamera"

    const-string v4, "change camera mode when focusing, but device can\'t cancel focus"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v3}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v3

    aget v3, v6, v3

    packed-switch v3, :pswitch_data_0

    const-string v3, "HTCCamera"

    const-string v4, "switchMode() - Taking picture"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    sget-object v6, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/RecordingState;

    invoke-virtual {v3}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v3

    aget v3, v6, v3

    packed-switch v3, :pswitch_data_1

    :cond_3
    const-string v3, "HTCCamera"

    const-string v4, "switchMode() - Recording"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget v3, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_3

    :pswitch_2
    if-nez p1, :cond_4

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/CameraType;

    const/4 v0, 0x0

    :goto_1
    if-nez p2, :cond_7

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/CameraMode;

    const/4 v1, 0x0

    :goto_2
    if-nez v0, :cond_9

    if-nez v1, :cond_9

    move v5, v4

    goto :goto_0

    :cond_4
    iget-boolean v3, p1, Lcom/android/camera/CameraType;->isSupported:Z

    if-nez v3, :cond_5

    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switchMode() - Camera \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' is not supported"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_6

    move v0, v4

    :goto_3
    goto :goto_1

    :cond_6
    move v0, v5

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eq p2, v3, :cond_8

    move v1, v4

    :goto_4
    goto :goto_2

    :cond_8
    move v1, v5

    goto :goto_4

    :cond_9
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "HTCCamera"

    const-string v4, "switchMode() - Capture UI is blocked"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v6, "Switching camera mode"

    invoke-interface {v3, v6, v5}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mSwitchingModeBlockHandle:Lcom/android/camera/Handle;

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->leaveQuickLaunchState()V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetFocusMode()V

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v2, "SWITCH_TO_MAIN_CAMERA"

    :goto_5
    invoke-static {v2}, Lcom/android/camera/LOG;->printPerformanceStartLog(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isSwitchingCamera:Lcom/android/camera/property/Property;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->closeCamera()V

    :cond_b
    if-eqz v1, :cond_e

    sget-object v3, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraMode:[I

    invoke-virtual {p2}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_2

    const-string v3, "HTCCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Try switching to unknown mode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/camera/HTCCamera;->startPreview(Lcom/android/camera/CameraType;)Z

    :cond_c
    :goto_6
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v3, v5, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->updateSelfTimerInterval()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->checkFlash()V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mSwitchingModeBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v3, v5}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mSwitchingModeBlockHandle:Lcom/android/camera/Handle;

    move v5, v4

    goto/16 :goto_0

    :cond_d
    const-string v2, "SWITCH_TO_FRONT_CAMERA"

    goto :goto_5

    :pswitch_3
    invoke-direct {p0, v5}, Lcom/android/camera/HTCCamera;->changetoCameraMode(Z)V

    goto :goto_6

    :pswitch_4
    invoke-direct {p0, v5}, Lcom/android/camera/HTCCamera;->changetoVideoMode(Z)V

    goto :goto_6

    :cond_e
    if-eqz v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/camera/HTCCamera;->startPreview(Lcom/android/camera/CameraType;)Z

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final takeFocus(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/HTCCamera;->handleTouchFocus(II)Z

    :cond_0
    return-void
.end method

.method public final takePicture(Ljava/lang/String;)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "HTCCamera"

    const-string v7, "takePicture(\'"

    const-string v8, "\')"

    invoke-static {v4, v7, p1, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v4, :cond_0

    const-string v4, "HTCCamera"

    const-string v6, "takePicture() - No camera thread"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    :goto_0
    return v4

    :cond_0
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "HTCCamera"

    const-string v6, "takePicture() - Activity is pausing"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "HTCCamera"

    const-string v6, "takePicture() - Activity is paused"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    :cond_2
    iget-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v4, :cond_3

    const-string v4, "HTCCamera"

    const-string v6, "takePicture() - Screen-save mode"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v7, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v4, v7, :cond_a

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportVideoSnapshot()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v4, v7}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v4, v7}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    const-string v4, "HTCCamera"

    const-string v6, "takePicture() - Cannot take picture in video mode"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "HTCCamera"

    const-string v6, "takePicture() - Cannot take picture in slow motion mode"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v4

    const-class v7, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {v4, v7}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ICaptureResolutionManager;

    if-nez v1, :cond_7

    const-string v4, "HTCCamera"

    const-string v6, "takePicture() - No ICaptureResolutionManager interface"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto/16 :goto_0

    :cond_7
    iget-object v4, v1, Lcom/android/camera/ICaptureResolutionManager;->videoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/Resolution;

    sget-object v4, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v4, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    sget-object v4, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v4, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    const-string v4, "HTCCamera"

    const-string v6, "takePicture() - Cannot take picture in MMS video recording"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto/16 :goto_0

    :cond_9
    const-string v4, "HTCCamera"

    const-string v7, "takePicture() - Take picture during video recording"

    invoke-static {v4, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    iget-boolean v4, v4, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-nez v4, :cond_b

    const-string v4, "HTCCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "takePicture() - Cannot take picture in current start mode ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto/16 :goto_0

    :cond_b
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->hasDialog:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "HTCCamera"

    const-string v6, "takePicture() - There is still a visible dialog"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto/16 :goto_0

    :cond_c
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "HTCCamera"

    const-string v6, "takePicture() - There is still a visible pop-up bubble"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto/16 :goto_0

    :cond_d
    iget v4, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v4, v6, :cond_f

    const-string v4, "HTCCamera"

    const-string v5, "takePicture() - Taking picture when focusing - mFocusingState = FOCUSING_PRESS_CAPTURE"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput v9, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v5, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v4, v5}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    :cond_e
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->lastTakingPictureTriggerSource:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v4, v5, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v7, Lcom/android/camera/TakingPictureState;->Starting:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v4, v5, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v4, v6

    goto/16 :goto_0

    :cond_f
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    move v4, v5

    goto/16 :goto_0

    :cond_10
    sget-object v7, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v4}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v4

    aget v4, v7, v4

    packed-switch v4, :pswitch_data_0

    :cond_11
    const-string v4, "HTCCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "takePicture() - Cannot take picture due to current taking picture state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v7}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto/16 :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v4, v7}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "HTCCamera"

    const-string v5, "takePicture() - Take picture immediately after previous picture is completed"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    if-eqz v4, :cond_12

    const-string v4, "HTCCamera"

    const-string v5, "takePicture() - Cancel previous pending taking picture"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->lastTakingPictureTriggerSource:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v4, v5, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v4, v6

    goto/16 :goto_0

    :cond_13
    const-string v4, "HTCCamera"

    const-string v6, "takePicture() - Cannot take picture immediately after previous picture is completed"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto/16 :goto_0

    :pswitch_1
    iget v4, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eq v4, v9, :cond_14

    iget v4, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_11

    :cond_14
    :pswitch_2
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, "HTCCamera"

    const-string v6, "takePicture() - Captutre UI is blocked"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto/16 :goto_0

    :cond_15
    iput-object v10, p0, Lcom/android/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    sget-object v7, Lcom/android/camera/CameraStartMode;->ContactsPhoto:Lcom/android/camera/CameraStartMode;

    if-eq v4, v7, :cond_17

    :cond_16
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v7, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v4, v7, :cond_17

    new-instance v4, Lcom/android/camera/CaptureEventArgs;

    sget-object v6, Lcom/android/camera/CaptureFailedReason;->StorageError:Lcom/android/camera/CaptureFailedReason;

    invoke-direct {v4, v10, v6}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    invoke-direct {p0, v4}, Lcom/android/camera/HTCCamera;->onTakingPictureFailed(Lcom/android/camera/CaptureEventArgs;)V

    move v4, v5

    goto/16 :goto_0

    :cond_17
    const-string v4, "HTCCamera"

    const-string v7, "takePicture() - Block Capture UI"

    invoke-static {v4, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v7, "Taking picture"

    invoke-interface {v4, v7, v6}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/android/camera/Handle;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v4, v7}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget v4, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eq v4, v9, :cond_18

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v4

    if-nez v4, :cond_18

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    :cond_18
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->lastTakingPictureTriggerSource:Lcom/android/camera/property/Property;

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v4, v7, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v8, Lcom/android/camera/TakingPictureState;->Starting:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v4, v7, v8}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v0, :cond_1b

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/Duration;

    invoke-virtual {v4}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v7

    long-to-int v2, v7

    :goto_1
    if-gtz v2, :cond_1c

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    const-string v7, "Taking picture"

    invoke-virtual {v4, v7, v10}, Lcom/android/camera/IUIRotationManager;->lockRotation(Ljava/lang/String;Lcom/android/camera/rotate/UIRotation;)Lcom/android/camera/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/android/camera/Handle;

    :cond_19
    if-eqz v0, :cond_1a

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1a
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v7, Lcom/android/camera/TakingPictureState;->TakingPicture:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v4, v5, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string v4, "HTCCamera"

    const-string v5, "takePicture() - Take picture"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4, v6}, Lcom/android/camera/CameraThread;->takePicture(Z)Lcom/android/camera/CaptureHandle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    :goto_2
    move v4, v6

    goto/16 :goto_0

    :cond_1b
    move v2, v5

    goto :goto_1

    :cond_1c
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v4, :cond_1d

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCountDownSoundHandle:Lcom/android/camera/Handle;

    if-nez v4, :cond_1d

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v5, 0x7f060008

    invoke-interface {v4, v5}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mCountDownSoundHandle:Lcom/android/camera/Handle;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v5, 0x7f060009

    invoke-interface {v4, v5}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mCountDownEndSoundHandle:Lcom/android/camera/Handle;

    :cond_1d
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4, v6}, Lcom/android/camera/CameraThread;->checkStorageState(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/HTCCamera;->mSelfTimerStartTime:J

    invoke-direct {p0, v2, v2}, Lcom/android/camera/HTCCamera;->countDownSelfTimer(II)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final triggerRecord()V
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const-string v3, "HTCCamera"

    const-string v5, "triggerRecord() - start"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "HTCCamera"

    const-string v4, "triggerRecord() - end, UI Block !!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "HTCCamera"

    const-string v4, "triggerRecord() - end, action screen open !!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/RecordingState;

    invoke-virtual {v3}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v3

    aget v3, v5, v3

    packed-switch v3, :pswitch_data_0

    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "triggerRecord() - current state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-string v3, "HTCCamera"

    const-string v4, "triggerRecord() - end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mRecordingLockHandle:Lcom/android/camera/Handle;

    if-nez v3, :cond_3

    const-string v3, "HTCCamera"

    const-string v5, "triggerRecord() - Lock rotation"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v3

    const-class v5, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {v3, v5}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ICaptureResolutionManager;

    if-eqz v2, :cond_4

    iget-object v3, v2, Lcom/android/camera/ICaptureResolutionManager;->videoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/Resolution;

    move-object v1, v3

    :goto_2
    if-nez v2, :cond_5

    sget-object v0, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    :goto_3
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mRotationManager:Lcom/android/camera/IUIRotationManager;

    const-string v5, "Recording"

    invoke-virtual {v3, v5, v0}, Lcom/android/camera/IUIRotationManager;->lockRotation(Ljava/lang/String;Lcom/android/camera/rotate/UIRotation;)Lcom/android/camera/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mRecordingLockHandle:Lcom/android/camera/Handle;

    :cond_3
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v5, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v3, v5}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "HTCCamera"

    const-string v5, "triggerRecord() - Switch to video mode"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraMode;)Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v3, Lcom/android/camera/CaptureEventArgs;

    sget-object v5, Lcom/android/camera/CaptureFailedReason;->Unknown:Lcom/android/camera/CaptureFailedReason;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->onRecordingFailed(Lcom/android/camera/CaptureEventArgs;)V

    goto/16 :goto_0

    :cond_4
    move-object v1, v4

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportIconRotate()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    sget-object v0, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mStartMode:Lcom/android/camera/CameraStartMode;

    sget-object v5, Lcom/android/camera/CameraStartMode;->MmsVideo:Lcom/android/camera/CameraStartMode;

    if-ne v3, v5, :cond_8

    sget-object v0, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isSlowMotionMode()Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/android/camera/Resolution;->isMmsVideo()Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v0, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    const-string v3, "[ANALYTIC_com.android.camera]"

    const-string v5, "[press_jogball]recording"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->hasDialog:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    new-instance v3, Lcom/android/camera/CaptureEventArgs;

    sget-object v5, Lcom/android/camera/CaptureFailedReason;->HasPopupOrDialog:Lcom/android/camera/CaptureFailedReason;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->onRecordingFailed(Lcom/android/camera/CaptureEventArgs;)V

    goto/16 :goto_0

    :cond_d
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v3, v5, :cond_e

    new-instance v3, Lcom/android/camera/CaptureEventArgs;

    sget-object v5, Lcom/android/camera/CaptureFailedReason;->StorageError:Lcom/android/camera/CaptureFailedReason;

    invoke-direct {v3, v4, v5}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->onRecordingFailed(Lcom/android/camera/CaptureEventArgs;)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "HTCCamera"

    const-string v4, "triggerRecord() - end, PowerWarning !!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0, v6}, Lcom/android/camera/HTCCamera;->setBlockPowerWarning(Z)V

    const-string v3, "HTCCamera"

    const-string v4, "Block Capture UI - Start Recorder"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v4, "Start recording"

    invoke-interface {v3, v4, v6}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->startVideoRecording()Lcom/android/camera/CaptureHandle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mCanGSensorEnabled:Z

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopAccelerometer()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isSupportMirrorMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v7}, Lcom/android/camera/HTCCamera;->setFingerGestureEnable(Z)V

    goto/16 :goto_1

    :pswitch_1
    const-string v3, "[ANALYTIC_com.android.camera]"

    const-string v4, "[press_jogball]stop_record"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string v3, "HTCCamera"

    const-string v4, "Block Capture UI - Stop Recorder"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/android/camera/ICaptureUIBlockManager;

    const-string v4, "Stop recording"

    invoke-interface {v3, v4, v6}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mRecordingBlockHandle:Lcom/android/camera/Handle;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/camera/CameraThread;->stopVideoRecording(Lcom/android/camera/CaptureHandle;ZZ)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopRecordingIndicator()V

    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mCanGSensorEnabled:Z

    iget v3, p0, Lcom/android/camera/HTCCamera;->mGSensorUsageCounter:I

    if-lez v3, :cond_2

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->startAccelerometer()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final unlockZoom()V
    .locals 3

    const-string v0, "HTCCamera"

    const-string v1, "unlockZoom() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    iget v0, p0, Lcom/android/camera/HTCCamera;->mZoomLockCounter:I

    if-nez v0, :cond_1

    const-string v0, "HTCCamera"

    const-string v1, "unlockZoom() - Counter is 0"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "unlockZoom()"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printStackTrace(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mZoomLockCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mZoomLockCounter:I

    iget v0, p0, Lcom/android/camera/HTCCamera;->mZoomLockCounter:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->isZoomLocked:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string v0, "HTCCamera"

    const-string v1, "unlockZoom() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private contentUriFromMediaInfo(Lcom/android/camera/MediaInfo;)Landroid/net/Uri;
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/android/camera/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/android/camera/MediaInfo;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "_data=? "

    new-array v4, v4, [Ljava/lang/String;

    aput-object v6, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :cond_1
    return-object v5
.end method
