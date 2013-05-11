.class public Lcom/android/camera/CameraThread;
.super Ljava/lang/Thread;
.source "CameraThread.java"

# interfaces
.implements Lcom/android/camera/component/IComponentOwner;
.implements Lcom/android/camera/ISettingsOwner;
.implements Lcom/android/camera/event/EventHandler;
.implements Lcom/android/camera/IAsyncOperationExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraThread$28;,
        Lcom/android/camera/CameraThread$ErrorListener;,
        Lcom/android/camera/CameraThread$InfoListener;,
        Lcom/android/camera/CameraThread$ErrorCallback;,
        Lcom/android/camera/CameraThread$MainHandler;,
        Lcom/android/camera/CameraThread$ModeChangeHandle;
    }
.end annotation


# static fields
.field public static final CHECK_RECORD_SIZE_LIMIT:I = 0x2726

.field public static final DEFAULT_SHUTTER_SOUND:I = 0x7f060004

.field private static final MIN_VIDEO_RECORDING_DURATION:I = 0x4b0

.field private static final MSG_CHANGE_ZOOM:I = 0x2756

.field private static final MSG_CLOSE_CAMERA:I = 0x2713

.field private static final MSG_EXIT:I = 0x2718

.field private static final MSG_INVOKE:I = 0x2774

.field private static final MSG_OPEN_CAMERA:I = 0x2710

.field private static final MSG_RESET_ZOOM_VALUE:I = 0x2740

.field private static final MSG_SET_FLASH_MODE:I = 0x2725

.field private static final MSG_START_PREVIEW:I = 0x2711

.field private static final MSG_START_PREVIEW_DIRECTLY:I = 0x2712

.field private static final MSG_START_VIDEO_RECORDING:I = 0x273d

.field private static final MSG_STOP_VIDEO_RECORDING:I = 0x273e

.field private static final START_RECORDING_DELAY_TIME:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "CameraThread"

.field private static final TIMEOUT_CLOSE_CAMERA:I = 0x1388

.field private static final TIMEOUT_STANDARD:I = 0x1388

.field private static final TIMEOUT_START_RECORDING:I = 0x1388

.field private static final TIMEOUT_STOP_RECORDING:I = 0xea60

.field private static mExifDateTimeFormat:Ljava/text/DateFormat;

.field private static final mVideoDcfInfo:Lcom/android/camera/io/DCFInfo;


# instance fields
.field public HtcCallbackReceivedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/HtcCallbackEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final MINIMUN_CAMERA_REMAIN_SPACE:J

.field public autoFocusCanceledEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public autoFocusFinishedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/AutoFocusEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public autoFocusStartedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/AutoFocusEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public autoFocusStartingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/AutoFocusEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public cameraClosedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public cameraClosingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public cameraOpenEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CameraDeviceEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public cameraOpenFailedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CameraDeviceEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public cameraType:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/CameraType;",
            ">;"
        }
    .end annotation
.end field

.field public captureCanceledEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public captureFailedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public captureRotation:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/rotate/UIRotation;",
            ">;"
        }
    .end annotation
.end field

.field public captureStartedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public captureStartingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public captureStoppedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public deletingLatestMediaEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public exitingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public flashMode:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/FlashMode;",
            ">;"
        }
    .end annotation
.end field

.field public hasEnoughInternalDataSpace:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public hasMovingObjects:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isEyeBlinked:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isHdrSuggested:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isLowlight:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isPreviewStarted:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isRecording:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isTakingPicture:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public m3DButtonStatus:I

.field private m3DFileFormat:Lcom/android/camera/io/FileFormat;

.field public m3DPreviewStatus:I

.field private mAudioManager:Lcom/android/camera/IAudioManager;

.field private mAutoFocusController:Lcom/android/camera/IAutoFocusController;

.field private mAutoSceneController:Lcom/android/camera/IAutoSceneController;

.field private mCamController:Lcom/android/camera/CameraController;

.field private mCameraActivity:Lcom/android/camera/HTCCamera;

.field private mCameraDevice:Landroid/hardware/Camera;

.field private final mCameraDriverTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

.field private mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

.field private mCameraToken:Ljava/lang/Object;

.field private mCanSetPreviewCallback:Z

.field private mCanStartPreview:Z

.field private volatile mCaptureDuration:J

.field private volatile mCaptureStartTime:J

.field private mComponentFactory:Lcom/android/camera/component/CameraThreadComponentFactory;

.field private mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

.field private volatile mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

.field private volatile mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

.field private mErrorCallback:Lcom/android/camera/CameraThread$ErrorCallback;

.field private mErrorListener:Lcom/android/camera/CameraThread$ErrorListener;

.field private mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

.field private mInfoListener:Lcom/android/camera/CameraThread$InfoListener;

.field private final mInitialMode:Lcom/android/camera/CameraMode;

.field private mIsFirstFrameCached:Z

.field private mIsFirstTimeToStartPreview:Z

.field private mIsParamsPrepared:Z

.field private volatile mIsRunning:Z

.field private mIsShutterCallbackReceived:Z

.field private mJPEGQualityKey:Ljava/lang/String;

.field private final mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private final mJpegCallbackTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

.field private mJpegCallbackTimerHandle:Lcom/android/camera/Handle;

.field private mJpegData:[B

.field private mLastCameraOpenFailedReason:Lcom/android/camera/CameraOpenFailedReason;

.field private mLastMediaInfo:Lcom/android/camera/MediaInfo;

.field public mLocation:Landroid/location/Location;

.field private mLocationManager:Lcom/android/camera/location/ILocationManager;

.field private mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

.field private final mMediaRecorderTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

.field private mPendingCloseCamera:Z

.field private mPendingExit:Z

.field private mPendingModeChangeHandle:Lcom/android/camera/CameraThread$ModeChangeHandle;

.field private volatile mPhotoCaptureHandler:Lcom/android/camera/IPhotoCaptureHandler;

.field private mPlaySoundFromCameraService:Z

.field private final mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

.field private final mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewCallbackDisableCounter:I

.field private mProcessingDialogHandle:Lcom/android/camera/Handle;

.field private final mPropertyOwnerKey:Ljava/lang/Object;

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mRecordingLimitController:Lcom/android/camera/IRecordingLimitController;

.field private mRecordingStartSoundHandle:Lcom/android/camera/Handle;

.field private mRecordingStartTime:J

.field private mRecordingStopSoundHandle:Lcom/android/camera/Handle;

.field private mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

.field private mRecordingVideoFilePath:Lcom/android/camera/io/Path;

.field private mRequestedFilePath:Lcom/android/camera/io/Path;

.field private mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

.field private mSettings:Lcom/android/camera/CameraSettings;

.field private final mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mShutterSoundHandle:Lcom/android/camera/Handle;

.field public mSyncObject:Ljava/lang/Object;

.field private mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

.field mUIHandler:Landroid/os/Handler;

.field private m_LatestFocusAreas:[Landroid/graphics/RectF;

.field private final m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

.field public mediaDeletedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public mediaRecorderInfoCallbackEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/MediaRecorderInfoEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public mediaSaveFailedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/io/MediaSaveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public mediaSavedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/io/MediaSaveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public mode:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/CameraMode;",
            ">;"
        }
    .end annotation
.end field

.field public modeChangeFailedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CameraModeChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public modeChangedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CameraModeChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public postviewImageRetrievedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/imaging/RawImageEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public preparingParamsAfterPreviewStartEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CameraParamsSetupEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public preparingParamsBeforePreviewStartEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CameraParamsSetupEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public preparingParamsBeforeTakingPictureEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CameraParamsSetupEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public previewFrameRetrievedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/imaging/RawImageEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public previewSize:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/imaging/Size;",
            ">;"
        }
    .end annotation
.end field

.field public previewStartFailedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CameraPreviewEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public previewStartedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CameraPreviewEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public previewStartingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CameraPreviewEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public previewStoppedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public previewStoppingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public recordingFailedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/RecordingFailedReason;",
            ">;>;"
        }
    .end annotation
.end field

.field public recordingState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/RecordingState;",
            ">;"
        }
    .end annotation
.end field

.field public requestCloseCameraEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CloseCameraRequestEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public requestDeleteLatestMediaEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/SingleHandlerEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public requestOpenCameraEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OpenCameraRequestEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public savingImageEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public storageSlot:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/io/StorageSlot;",
            ">;"
        }
    .end annotation
.end field

.field public storageState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/io/StorageState;",
            ">;"
        }
    .end annotation
.end field

.field public takingPictureFailedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/TakingPictureFailedReason;",
            ">;>;"
        }
    .end annotation
.end field

.field public takingPictureState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/TakingPictureState;",
            ">;"
        }
    .end annotation
.end field

.field public videoThumbnailCreatedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/imaging/ThumbnailEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public zoomRange:Lcom/android/camera/property/Property;
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

.field public zoomValue:Lcom/android/camera/property/Property;
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
    .locals 7

    new-instance v0, Lcom/android/camera/io/DCFInfo;

    const-string v1, "MEDIA"

    const-string v2, "VIDEO"

    const/4 v3, 0x0

    const-string v4, "counter_video"

    const/16 v5, 0x64

    const v6, 0x7fffffff

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/io/DCFInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/CameraThread;->mVideoDcfInfo:Lcom/android/camera/io/DCFInfo;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/CameraThread;->mExifDateTimeFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/android/camera/CameraMode;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "Camera Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mIsRunning:Z

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mIsFirstTimeToStartPreview:Z

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mIsFirstFrameCached:Z

    iput-object v2, p0, Lcom/android/camera/CameraThread;->m_LatestFocusAreas:[Landroid/graphics/RectF;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    const-string v0, "_super"

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    new-instance v0, Lcom/android/camera/MediaInfo;

    invoke-direct {v0}, Lcom/android/camera/MediaInfo;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->m3DFileFormat:Lcom/android/camera/io/FileFormat;

    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/android/camera/CameraThread;->MINIMUN_CAMERA_REMAIN_SPACE:J

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    iput v3, p0, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    iput v3, p0, Lcom/android/camera/CameraThread;->m3DPreviewStatus:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z

    new-instance v0, Lcom/android/camera/CameraThread$1;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$1;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDriverTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    new-instance v0, Lcom/android/camera/CameraThread$2;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$2;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mJpegCallbackTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    new-instance v0, Lcom/android/camera/CameraThread$3;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$3;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mMediaRecorderTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    new-instance v0, Lcom/android/camera/CameraThread$6;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$6;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    new-instance v0, Lcom/android/camera/CameraThread$7;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$7;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    new-instance v0, Lcom/android/camera/CameraThread$8;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$8;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mSyncObject:Ljava/lang/Object;

    new-instance v0, Lcom/android/camera/CameraThread$ErrorCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$ErrorCallback;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mErrorCallback:Lcom/android/camera/CameraThread$ErrorCallback;

    new-instance v0, Lcom/android/camera/CameraThread$InfoListener;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$InfoListener;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mInfoListener:Lcom/android/camera/CameraThread$InfoListener;

    new-instance v0, Lcom/android/camera/CameraThread$ErrorListener;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$ErrorListener;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mErrorListener:Lcom/android/camera/CameraThread$ErrorListener;

    new-instance v0, Lcom/android/camera/CameraThread$17;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$17;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    check-cast p1, Lcom/android/camera/HTCCamera;

    iput-object p1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iput-object p2, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    if-eqz p3, :cond_0

    :goto_0
    iput-object p3, p0, Lcom/android/camera/CameraThread;->mInitialMode:Lcom/android/camera/CameraMode;

    return-void

    :cond_0
    sget-object p3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    goto :goto_0
.end method

.method private NeedToApplyAMR_NB()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    iget-object v2, v2, Lcom/android/camera/ICaptureResolutionManager;->videoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Resolution;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraStartMode;->MmsVideo:Lcom/android/camera/CameraStartMode;

    if-eq v2, v3, :cond_2

    sget-object v2, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    sget-object v2, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v3, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/Handle;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mProcessingDialogHandle:Lcom/android/camera/Handle;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/CameraThread;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread;->mProcessingDialogHandle:Lcom/android/camera/Handle;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/CameraThread;Lcom/android/camera/FlashMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setFlashModeInternal(Lcom/android/camera/FlashMode;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/CameraThread;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->resetZoomInternal(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/CameraThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->setupPreviewCallback()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/CameraThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->clearPreviewCallback()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/CameraThread;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraThread$MainHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/CameraThread;Lcom/android/camera/io/StorageState;ZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/CameraThread;->checkStorageStateInternal(Lcom/android/camera/io/StorageState;ZJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/debug/IOperationTimeoutController;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/CameraThread;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->onPreviewFrameRetrieved([B)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/CameraThread;Lcom/android/camera/io/StorageSlot;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->changeStorageSlotInternal(Lcom/android/camera/io/StorageSlot;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$ModeChangeHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->changeModeInternal(Lcom/android/camera/CameraThread$ModeChangeHandle;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/CameraThread;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setFirstFrameCacheStateInternal(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/CameraThread;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setCaptureRotationInternal(Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/CameraThread;Lcom/android/camera/RecordingLimitState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->onRecordingLimitStateChanged(Lcom/android/camera/RecordingLimitState;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/CameraThread;Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->onAutoFocusCanceled(Lcom/android/camera/AutoFocusEventArgs;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/CameraThread;Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->onAutoFocusFinished(Lcom/android/camera/AutoFocusEventArgs;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/CameraThread;->takePictureInternal(Lcom/android/camera/CaptureHandle;ZZ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/CameraThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->cancelTakingPictureInternal()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/CameraThread;)Lcom/android/camera/Handle;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/android/camera/Handle;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/CameraThread;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/android/camera/Handle;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/CameraThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mIsShutterCallbackReceived:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/CameraThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mIsShutterCallbackReceived:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/CameraThread;Lcom/android/camera/Handle;Lcom/android/camera/CameraType;)Lcom/android/camera/CameraPreviewStartResult;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraThread;->startPreviewInternal(Lcom/android/camera/Handle;Lcom/android/camera/CameraType;)Lcom/android/camera/CameraPreviewStartResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/CameraThread;Lcom/android/camera/Handle;)Lcom/android/camera/CameraPreviewStartResult;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->startPreviewDirectlyInternal(Lcom/android/camera/Handle;)Lcom/android/camera/CameraPreviewStartResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/CameraThread;Lcom/android/camera/Handle;Lcom/android/camera/CameraType;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraThread;->openCameraInternal(Lcom/android/camera/Handle;Lcom/android/camera/CameraType;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraThread;->startVideoRecordingInternal(Lcom/android/camera/CaptureHandle;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/CameraThread;->stopVideoRecordingInternal(Lcom/android/camera/CaptureHandle;ZZ)V

    return-void
.end method

.method private cancelTakingPictureInternal()V
    .locals 5

    const/4 v4, 0x0

    const-string v2, "CameraThread"

    const-string v3, "cancelTakingPictureInternal() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-nez v2, :cond_0

    const-string v2, "CameraThread"

    const-string v3, "cancelTakingPictureInternal() - mCurrentPhotoCaptureHandle is null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPhotoCaptureHandler:Lcom/android/camera/IPhotoCaptureHandler;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {v0, v2, v3, v4}, Lcom/android/camera/IPhotoCaptureHandler;->cancelTakingPicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CameraThread"

    const-string v3, "cancelTakingPictureInternal() - cancel success"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v2, "CameraThread"

    const-string v3, "cancelTakingPictureInternal() - end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v2, "CameraThread"

    const-string v3, "cancelTakingPictureInternal() - without cancel"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "CameraThread"

    const-string v3, "cancelTakingPictureInternal() - Cannot cancel taking picture"

    invoke-static {v2, v3, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "CameraThread"

    const-string v3, "cancelTakingPictureInternal() - Taking picture canceling is only supported on NV platform"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "CameraThread"

    const-string v3, "cancelTakingPictureInternal() - CameraThread stop timer"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/android/camera/Handle;

    invoke-virtual {v2, v3}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    iput-object v4, p0, Lcom/android/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/android/camera/Handle;

    :cond_4
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v3, 0x1

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/camera/CameraThread;->handleCommonJpegCallback([BLandroid/hardware/Camera;Z)V

    goto :goto_1
.end method

.method private changeModeInternal(Lcom/android/camera/CameraThread$ModeChangeHandle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v0, "CameraThread"

    const-string v1, "changeModeInternal("

    iget-object v2, p1, Lcom/android/camera/CameraThread$ModeChangeHandle;->targetMode:Lcom/android/camera/CameraMode;

    const-string v3, ") - start"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "CameraThread"

    const-string v1, "changeModeInternal() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/android/camera/CameraThread;->mPendingModeChangeHandle:Lcom/android/camera/CameraThread$ModeChangeHandle;

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    iget-object v1, p1, Lcom/android/camera/CameraThread$ModeChangeHandle;->targetMode:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CameraThread"

    const-string v1, "changeModeInternal() - Change to same mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->modeChangedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/CameraModeChangeEventArgs;

    iget-object v2, p1, Lcom/android/camera/CameraThread$ModeChangeHandle;->targetMode:Lcom/android/camera/CameraMode;

    invoke-direct {v1, p1, v2}, Lcom/android/camera/CameraModeChangeEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraMode;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraMode:[I

    iget-object v1, p1, Lcom/android/camera/CameraThread$ModeChangeHandle;->targetMode:Lcom/android/camera/CameraMode;

    invoke-virtual {v1}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p1, Lcom/android/camera/CameraThread$ModeChangeHandle;->targetMode:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->stopPreview()V

    invoke-direct {p0, p1, v5}, Lcom/android/camera/CameraThread;->startPreviewInternal(Lcom/android/camera/Handle;Lcom/android/camera/CameraType;)Lcom/android/camera/CameraPreviewStartResult;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraThread;->modeChangedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/CameraModeChangeEventArgs;

    iget-object v2, p1, Lcom/android/camera/CameraThread$ModeChangeHandle;->targetMode:Lcom/android/camera/CameraMode;

    invoke-direct {v1, p1, v2}, Lcom/android/camera/CameraModeChangeEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraMode;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    const-string v0, "CameraThread"

    const-string v1, "changeModeInternal("

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    const-string v3, ") - end"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-direct {p0, v0, v4, v4}, Lcom/android/camera/CameraThread;->stopVideoRecordingInternal(Lcom/android/camera/CaptureHandle;ZZ)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CameraThread"

    const-string v1, "changeModeInternal() - Waiting for taking picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/CameraThread;->mPendingModeChangeHandle:Lcom/android/camera/CameraThread$ModeChangeHandle;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private changeStorageSlotInternal(Lcom/android/camera/io/StorageSlot;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CameraThread"

    const-string v1, "changeStorageSlotInternal() - taking picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CameraThread"

    const-string v1, "changeStorageSlotInternal() - recording"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isStorageSlotLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "CameraThread"

    const-string v1, "changeStorageSlotInternal() - Storage slot settings is locked"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change storage slot to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkCanTakePicture()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/io/StorageState;

    sget-object v4, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v3, v4, :cond_2

    const-string v4, "CameraThread"

    const-string v5, "storage error"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v8, v0, v1}, Lcom/android/camera/CameraThread;->checkStorageStateInternal(Lcom/android/camera/io/StorageState;ZJ)V

    iget-object v4, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v4, v5, :cond_0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v4

    if-ne v4, v8, :cond_1

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v4

    sget-object v5, Lcom/android/camera/CameraStartMode;->ContactsPhoto:Lcom/android/camera/CameraStartMode;

    if-ne v4, v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CameraThread;->calculatePicturesRemaining(J)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    sget-object v4, Lcom/android/camera/io/StorageState;->Full:Lcom/android/camera/io/StorageState;

    invoke-direct {p0, v4, v8, v0, v1}, Lcom/android/camera/CameraThread;->checkStorageStateInternal(Lcom/android/camera/io/StorageState;ZJ)V

    iget-object v4, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v4, v5, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkCanTakeRecorder()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/io/StorageState;

    sget-object v4, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v3, v4, :cond_1

    const-string v4, "CameraThread"

    const-string v5, "storage error"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v8, v0, v1}, Lcom/android/camera/CameraThread;->checkStorageStateInternal(Lcom/android/camera/io/StorageState;ZJ)V

    iget-object v4, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v4, v5, :cond_0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mRecordingLimitController:Lcom/android/camera/IRecordingLimitController;

    invoke-virtual {v4, v0, v1}, Lcom/android/camera/IRecordingLimitController;->getRemainingRecordingDuration(J)Lcom/android/camera/Duration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    sget-object v4, Lcom/android/camera/io/StorageState;->Full:Lcom/android/camera/io/StorageState;

    invoke-direct {p0, v4, v8, v0, v1}, Lcom/android/camera/CameraThread;->checkStorageStateInternal(Lcom/android/camera/io/StorageState;ZJ)V

    iget-object v4, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v4, v5, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkInternalDataSpace()V
    .locals 14

    const/4 v9, 0x0

    const-string v8, "CameraThread"

    const-string v10, "checkInternalDataSpace()"

    invoke-static {v8, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v5, Landroid/os/StatFs;

    const-string v8, "/data"

    invoke-direct {v5, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v2, v8

    mul-long v6, v0, v2

    const-string v8, "CameraThread"

    const-string v10, "checkInternalDataSpace() - internal memory : "

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v8, v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/android/camera/CameraThread;->hasEnoughInternalDataSpace:Lcom/android/camera/property/Property;

    iget-object v11, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const-wide/32 v12, 0x100000

    cmp-long v8, v6, v12

    if-lez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v10, v11, v8}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    move v8, v9

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v8, "CameraThread"

    const-string v10, "checkInternalDataSpace() - Error checking internal storage"

    invoke-static {v8, v10, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v8, p0, Lcom/android/camera/CameraThread;->hasEnoughInternalDataSpace:Lcom/android/camera/property/Property;

    iget-object v10, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private checkMediaQueueState()Z
    .locals 14

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/camera/CameraThread;->mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/CameraThread;->mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

    invoke-virtual {v6}, Lcom/android/camera/io/IMediaFileWriter;->getMediaQueueCapacity()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getMediaQueueSize()J

    move-result-wide v2

    const-string v6, "CameraThread"

    const-string v7, "checkImageQueueState() - size = %d/%d (%.2f%%)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v9, 0x2

    long-to-double v10, v2

    const-wide/high16 v12, 0x4059

    mul-double/2addr v10, v12

    long-to-double v12, v0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v6, v2, v0

    if-ltz v6, :cond_1

    :goto_1
    return v4

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1
.end method

.method private checkStorageStateInternal(Lcom/android/camera/io/StorageState;ZJ)V
    .locals 11

    const-string v0, "CameraThread"

    const-string v1, "checkStorageStateInternal(initState = "

    const-string v3, ", checkSize = "

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, ")"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/io/StorageSlot;->INVALID:Lcom/android/camera/io/StorageSlot;

    if-ne v0, v1, :cond_0

    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkStorageStateInternal() - Storage slot is \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/io/StorageSlot;->INVALID:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', try to find available storage slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v9

    if-eqz v9, :cond_4

    sget-object v0, Lcom/android/camera/io/StorageSlot;->INTERNAL_SMALL_STORAGE:Lcom/android/camera/io/StorageSlot;

    if-eq v9, v0, :cond_4

    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkStorageStateInternal() - Use \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v9}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkStorageStateInternal() - Storage slot \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not supported, toggle storage slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->toggleStorageSlot()V

    :cond_1
    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->hasStorageTest()Lcom/android/camera/io/StorageState;

    move-result-object v8

    :goto_1
    if-eqz p2, :cond_3

    sget-object v0, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-ne v8, v0, :cond_2

    invoke-direct {p0, p3, p4}, Lcom/android/camera/CameraThread;->hasEnoughFreeSpace(J)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v8, Lcom/android/camera/io/StorageState;->Full:Lcom/android/camera/io/StorageState;

    :cond_2
    sget-object v0, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v8, v0, :cond_3

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasUniqueStorageSlot()Z

    move-result v0

    if-nez v0, :cond_9

    move-object v6, v8

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->toggleStorageSlot()V

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->hasStorageTest()Lcom/android/camera/io/StorageState;

    move-result-object v8

    sget-object v0, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-ne v8, v0, :cond_8

    invoke-direct {p0, p3, p4}, Lcom/android/camera/CameraThread;->hasEnoughFreeSpace(J)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v0

    if-eqz v0, :cond_7

    const v7, 0x7f0a01e7

    :goto_2
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/android/camera/IToastManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/IToastManager;

    if-eqz v10, :cond_3

    invoke-virtual {v10, v7}, Lcom/android/camera/IToastManager;->showToast(I)Lcom/android/camera/Handle;

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v8}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1e

    invoke-static {}, Lcom/android/camera/DisplayDevice;->showFocusWithoutDelay()Z

    move-result v0

    if-eqz v0, :cond_a

    const-wide/16 v0, 0x0

    :goto_4
    invoke-static {v2, v3, v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    return-void

    :cond_4
    sget-object v0, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkStorageStateInternal() - Use \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const-string v0, "CameraThread"

    const-string v1, "checkStorageStateInternal() - Still no available storage slot"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move-object v8, p1

    goto/16 :goto_1

    :cond_7
    const v7, 0x7f0a01e8

    goto :goto_2

    :cond_8
    const-string v0, "CameraThread"

    const-string v1, "checkStorageStateInternal() - Storage error, switch storage slot back"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v6

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->toggleStorageSlot()V

    goto :goto_3

    :cond_9
    const-string v0, "CameraThread"

    const-string v1, "checkStorageStateInternal() - No storage slot to switch"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    const-wide/16 v0, 0x1f4

    goto :goto_4
.end method

.method private clearPreviewCallback()V
    .locals 2

    const-string v0, "CameraThread"

    const-string v1, "clearPreviewCallback() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    const-string v0, "CameraThread"

    const-string v1, "No camera device to clear preview call-back"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    const-string v0, "CameraThread"

    const-string v1, "clearPreviewCallback() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getVideoEncoder(Lcom/android/camera/Resolution;)I
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x2

    sget-object v2, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {p1, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {p1, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    sget-object v2, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v3, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v2, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {p1, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/camera/Resolution;->Video_720p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {p1, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT8x50()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->notSupportH264()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private hasEnoughFreeSpace(J)Z
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/CameraThread;->calculatePicturesRemaining(J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mRecordingLimitController:Lcom/android/camera/IRecordingLimitController;

    invoke-virtual {v2, p1, p2}, Lcom/android/camera/IRecordingLimitController;->getRemainingRecordingDuration(J)Lcom/android/camera/Duration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private hasStorageTest()Lcom/android/camera/io/StorageState;
    .locals 5

    :try_start_0
    iget-object v3, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v1}, Lcom/android/camera/io/StorageSlot;->getState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "mounted_ro"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/camera/io/StorageState;->ReadOnly:Lcom/android/camera/io/StorageState;

    :goto_0
    return-object v3

    :cond_0
    const-string v3, "shared"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/camera/io/StorageState;->Shared:Lcom/android/camera/io/StorageState;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/android/camera/io/StorageState;->NoStorage:Lcom/android/camera/io/StorageState;

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/android/camera/io/DCFUtility;->isDcimDirectoryWritable(Lcom/android/camera/io/StorageSlot;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/android/camera/io/StorageState;->ReadOnly:Lcom/android/camera/io/StorageState;

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "CameraThread"

    const-string v4, "cannot know storage state"

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v3, Lcom/android/camera/io/StorageState;->Unknown:Lcom/android/camera/io/StorageState;

    goto :goto_0
.end method

.method private initializeStorageSlot()V
    .locals 11

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isStorageSlotLocked()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getRequestedUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "CameraThread"

    const-string v2, "initializeStorageSlot() - Requested URI : "

    invoke-static {v0, v2, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v0, "content"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    const-string v0, "CameraThread"

    const-string v2, "initializeStorageSlot() - Requested file path : "

    invoke-static {v0, v2, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v9

    if-eqz v9, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v9, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v9, 0x0

    :cond_3
    if-nez v9, :cond_4

    sget-object v0, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    iget-object v2, v2, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v9, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    :cond_4
    if-nez v9, :cond_9

    const-string v0, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeStorageSlot() - Cannot find storage slot for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    const-string v0, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeStorageSlot() - No file path related to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    const-string v0, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeStorageSlot() - Fail to query file path for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    const-string v0, "file"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :cond_8
    const-string v0, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeStorageSlot() - Unknown URI scheme : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "CameraThread"

    const-string v2, "initializeStorageSlot() - Storage slot is \'"

    const-string v3, "\'"

    invoke-static {v0, v2, v9, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v2, v9}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/io/Path;

    invoke-direct {v0, v8}, Lcom/android/camera/io/Path;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mRequestedFilePath:Lcom/android/camera/io/Path;

    goto/16 :goto_0
.end method

.method private isAddTimeStamp()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_0

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraStartMode:[I

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraStartMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    const-string v1, "pref_camera_timestamp"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isMMSRecording()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    iget-object v2, v2, Lcom/android/camera/ICaptureResolutionManager;->videoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Resolution;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraStartMode;->MmsVideo:Lcom/android/camera/CameraStartMode;

    if-eq v2, v3, :cond_2

    sget-object v2, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private linkToOptionalServiceComponents()V
    .locals 2

    const-string v0, "CameraThread"

    const-string v1, "linkToOptionalServiceComponents()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    const-class v1, Lcom/android/camera/IAudioManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IAudioManager;

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-nez v0, :cond_0

    const-string v0, "CameraThread"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IAudioManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    const-class v1, Lcom/android/camera/IAutoFocusController;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IAutoFocusController;

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    iget-object v0, v0, Lcom/android/camera/IAutoFocusController;->autoFocusCanceledEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/CameraThread$23;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraThread$23;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    iget-object v0, v0, Lcom/android/camera/IAutoFocusController;->autoFocusFinishedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/CameraThread$24;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraThread$24;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    const-class v1, Lcom/android/camera/IAutoSceneController;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IAutoSceneController;

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mAutoSceneController:Lcom/android/camera/IAutoSceneController;

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAutoSceneController:Lcom/android/camera/IAutoSceneController;

    if-nez v0, :cond_1

    const-string v0, "CameraThread"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IAutoSceneController interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    const-class v1, Lcom/android/camera/location/ILocationManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/location/ILocationManager;

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mLocationManager:Lcom/android/camera/location/ILocationManager;

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mLocationManager:Lcom/android/camera/location/ILocationManager;

    if-nez v0, :cond_2

    const-string v0, "CameraThread"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find ILocationManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    const-class v1, Lcom/android/camera/io/IMediaFileWriter;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/io/IMediaFileWriter;

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

    iget-object v1, v1, Lcom/android/camera/io/IMediaFileWriter;->mediaSavedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->bind(Lcom/android/camera/event/Event;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

    iget-object v1, v1, Lcom/android/camera/io/IMediaFileWriter;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->bind(Lcom/android/camera/event/Event;)V

    :goto_1
    return-void

    :cond_3
    const-string v0, "CameraThread"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IAutoFocusController interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "CameraThread"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IMediaFileWriter interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private linkToRequiredServiceComponents()Z
    .locals 3

    const/4 v1, 0x0

    const-string v0, "CameraThread"

    const-string v2, "linkToRequiredServiceComponents()"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    const-class v2, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ICaptureResolutionManager;

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    if-nez v0, :cond_0

    const-string v0, "CameraThread"

    const-string v2, "linkToRequiredServiceComponents() - No ICaptureResolutionManager interface"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    const-class v2, Lcom/android/camera/IRecordingLimitController;

    invoke-virtual {v0, v2}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IRecordingLimitController;

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mRecordingLimitController:Lcom/android/camera/IRecordingLimitController;

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mRecordingLimitController:Lcom/android/camera/IRecordingLimitController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mRecordingLimitController:Lcom/android/camera/IRecordingLimitController;

    iget-object v0, v0, Lcom/android/camera/IRecordingLimitController;->recordingLimitState:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/CameraThread$22;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraThread$22;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "CameraThread"

    const-string v2, "linkToRequiredServiceComponents() - No IRecordingLimitController interface"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method private onAutoFocusCanceled(Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/camera/AutoFocusEventArgs;->focusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->BeforeCapture:Lcom/android/camera/AutoFocusMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/TakingPictureState;->Starting:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v0, :cond_0

    const-string v0, "CameraThread"

    const-string v1, "onAutoFocusCanceled() - Take picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/CameraThread;->takePictureInternal(Lcom/android/camera/CaptureHandle;ZZ)V

    goto :goto_0
.end method

.method private onAutoFocusFinished(Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/camera/AutoFocusEventArgs;->focusAreas:[Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/android/camera/CameraThread;->m_LatestFocusAreas:[Landroid/graphics/RectF;

    iget-object v0, p1, Lcom/android/camera/AutoFocusEventArgs;->focusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->BeforeCapture:Lcom/android/camera/AutoFocusMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/TakingPictureState;->Starting:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v0, :cond_0

    const-string v0, "CameraThread"

    const-string v1, "onAutoFocusFinished() - Take picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/CameraThread;->takePictureInternal(Lcom/android/camera/CaptureHandle;ZZ)V

    goto :goto_0
.end method

.method private onPreviewFrameRetrieved([B)V
    .locals 6

    iget-object v1, p0, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/imaging/Size;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1}, Lcom/android/camera/event/Event;->hasHandlers()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/imaging/RawImageEventArgs;

    sget-object v3, Lcom/android/camera/imaging/PixelFormat;->Yvu420Sp:Lcom/android/camera/imaging/PixelFormat;

    iget v4, v0, Lcom/android/camera/imaging/Size;->width:I

    iget v5, v0, Lcom/android/camera/imaging/Size;->height:I

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/android/camera/imaging/RawImageEventArgs;-><init>([BLcom/android/camera/imaging/PixelFormat;II)V

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_0
.end method

.method private onRecordingLimitStateChanged(Lcom/android/camera/RecordingLimitState;)V
    .locals 3

    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingLimitStateChanged("

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

    sget-object v0, Lcom/android/camera/RecordingLimitState;->None:Lcom/android/camera/RecordingLimitState;

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingLimitStateChanged() - Current recording state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$RecordingLimitState:[I

    invoke-virtual {p1}, Lcom/android/camera/RecordingLimitState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/CameraThread;->stopVideoRecordingInternal(Lcom/android/camera/CaptureHandle;ZZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private openCameraInternal(Lcom/android/camera/Handle;Lcom/android/camera/CameraType;)Z
    .locals 16

    const-string v11, "CameraThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "openCamera("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") - start"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-boolean v11, v0, Lcom/android/camera/CameraType;->isSupported:Z

    if-nez v11, :cond_0

    const-string v11, "CameraThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "openCamera() - Camera \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' is not supported"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    sget-object v13, Lcom/android/camera/CameraOpenFailedReason;->InvalidCamera:Lcom/android/camera/CameraOpenFailedReason;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13, v14}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Landroid/hardware/Camera;Lcom/android/camera/CameraController;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    const-string v11, "CameraThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "openCamera() - Trying to open camera \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\', but camera \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v13}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' is already open"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    sget-object v13, Lcom/android/camera/CameraOpenFailedReason;->InvalidCamera:Lcom/android/camera/CameraOpenFailedReason;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraToken;->getToken()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    if-nez v11, :cond_3

    const-string v11, "CameraThread"

    const-string v12, "openCamera() - Cannot get camera token"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    sget-object v13, Lcom/android/camera/CameraOpenFailedReason;->NoToken:Lcom/android/camera/CameraOpenFailedReason;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/camera/CameraThread;->m3DPreviewStatus:I

    :try_start_0
    new-instance v1, Lcom/android/camera/OpenCameraRequestEventArgs;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lcom/android/camera/OpenCameraRequestEventArgs;-><init>(Lcom/android/camera/CameraType;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->requestOpenCameraEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    invoke-virtual {v1}, Lcom/android/camera/OpenCameraRequestEventArgs;->isHandled()Z

    move-result v11

    if-nez v11, :cond_7

    sget-object v11, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraType:[I

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    const-string v11, "CameraThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "openCamera() - Unsupported camera type : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    invoke-static {v11}, Lcom/android/camera/CameraToken;->releaseToken(Ljava/lang/Object;)V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    sget-object v13, Lcom/android/camera/CameraOpenFailedReason;->InvalidCamera:Lcom/android/camera/CameraOpenFailedReason;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    const/4 v11, 0x0

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/camera/CameraType;->id:I

    invoke-static {v11}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    new-instance v11, Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    invoke-direct {v11}, Lcom/htc/wrap/android/hardware/HtcWrapCamera;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mErrorCallback:Lcom/android/camera/CameraThread$ErrorCallback;

    invoke-virtual {v11, v12}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    new-instance v11, Lcom/android/camera/CameraController;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    invoke-direct {v11, v12, v13}, Lcom/android/camera/CameraController;-><init>(Landroid/hardware/Camera;Lcom/android/camera/debug/IOperationTimeoutController;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v11}, Lcom/android/camera/CameraController;->setSupportedList()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v11, v12, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/CameraType;

    invoke-virtual {v11}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v11

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v12, "taking-picture-zoom"

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/camera/CameraController$SettingInfo;->getMax()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->zoomRange:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/Range;

    new-instance v6, Lcom/android/camera/Range;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v6, v11, v12}, Lcom/android/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->zoomRange:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v11, v12, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v8, :cond_e

    invoke-virtual {v8, v6}, Lcom/android/camera/Range;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v11, v8, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int v11, v12, v11

    int-to-double v12, v11

    iget-object v11, v8, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v11, v8, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int v11, v14, v11

    int-to-double v14, v11

    div-double v9, v12, v14

    iget-object v11, v6, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v11, v6, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int v11, v12, v11

    int-to-double v11, v11

    mul-double/2addr v11, v9

    double-to-int v12, v11

    iget-object v11, v6, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int v7, v12, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    iget-object v5, v4, Lcom/android/camera/CameraSettings;->Antibanding:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraController;->setAntibanding(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v12, "sound-off"

    const-string v13, "true"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13, v14}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Landroid/hardware/Camera;Lcom/android/camera/CameraController;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/camera/CameraThread;->setupParamsBeforeStartingPreview(Lcom/android/camera/Handle;)V

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/camera/CameraThread;->mIsParamsPrepared:Z

    const-string v11, "CameraThread"

    const-string v12, "openCamera() - end"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v11}, Lcom/android/camera/component/PowerWarningController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v11

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v11, v11, Lcom/android/camera/HTCCamera;->isLowPower:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "CameraThread"

    const-string v12, "openCamera() - power is low in 3D mode, won\'t open camera"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    invoke-static {v11}, Lcom/android/camera/CameraToken;->releaseToken(Ljava/lang/Object;)V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    sget-object v13, Lcom/android/camera/CameraOpenFailedReason;->LowPower:Lcom/android/camera/CameraOpenFailedReason;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/camera/CameraType;->id:I

    invoke-static {v11}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    new-instance v11, Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    invoke-direct {v11}, Lcom/htc/wrap/android/hardware/HtcWrapCamera;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const-string v11, "CameraThread"

    const-string v12, "openCamera() - Cannot open camera device"

    invoke-static {v11, v12, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    invoke-static {v11}, Lcom/android/camera/CameraToken;->releaseToken(Ljava/lang/Object;)V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "CAMERA_LOW_POWER_RESTRCTION_3D"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    sget-object v13, Lcom/android/camera/CameraOpenFailedReason;->LowPowerRestrict3D:Lcom/android/camera/CameraOpenFailedReason;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    :goto_3
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_7
    :try_start_2
    invoke-virtual {v1}, Lcom/android/camera/OpenCameraRequestEventArgs;->getCamera()Landroid/hardware/Camera;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v11, :cond_4

    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CameraThread;->requestOpenCameraEvent:Lcom/android/camera/event/Event;

    iget-object v13, v13, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " event is handled, but no result"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "CAMERA_LOW_POWER_RESTRCTION_DUAL_MODE"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    sget-object v13, Lcom/android/camera/CameraOpenFailedReason;->LowPowerDualModeCalling:Lcom/android/camera/CameraOpenFailedReason;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "CAMERA_RESOURCE_OCCUPY"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    sget-object v13, Lcom/android/camera/CameraOpenFailedReason;->CameraResourceOccupy:Lcom/android/camera/CameraOpenFailedReason;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_3

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "CAMERA_IN_NO_MEM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    sget-object v13, Lcom/android/camera/CameraOpenFailedReason;->CameraInNoMem:Lcom/android/camera/CameraOpenFailedReason;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "CAMERA_HARDWARE_OPENED_FAIL"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    sget-object v13, Lcom/android/camera/CameraOpenFailedReason;->CameraHWOpenFail:Lcom/android/camera/CameraOpenFailedReason;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "CAMERA_POLICY_DISABLED"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    sget-object v13, Lcom/android/camera/CameraOpenFailedReason;->CameraPolicyDisabled:Lcom/android/camera/CameraOpenFailedReason;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/CameraDeviceEventArgs;

    sget-object v13, Lcom/android/camera/CameraOpenFailedReason;->Unknown:Lcom/android/camera/CameraOpenFailedReason;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v13, v6, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraThread;->captureFailedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/CaptureEventArgs;

    invoke-direct {v1, p1, p2}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "CameraThread"

    const-string v2, "releaseMediaRecorder()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    iput-object v3, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CameraThread"

    const-string v2, "mRecorder.setOnInfoListener(null - Runtime exception caught"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "CameraThread"

    const-string v2, "mRecorder.reset() - Runtime exception caught"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "CameraThread"

    const-string v2, "mRecorder.release() - Runtime exception caught"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private resetZoomInternal(Z)V
    .locals 5

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraThread;->zoomRange:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Range;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "CameraThread"

    const-string v3, "resetZoom() - Cannot get zoom range"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_6

    iget-object v2, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, v0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraController;->setZoom(I)V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_4
    iget-object v2, p0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iget-object v2, v0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_3

    iget-object v2, v0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_6
    iget-object v2, v0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1
.end method

.method private setCaptureRotationInternal(Lcom/android/camera/rotate/UIRotation;)V
    .locals 3

    const-string v0, "CameraThread"

    const-string v1, "setCaptureRotationInternal("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private setFirstFrameCacheStateInternal(Z)V
    .locals 4

    const-string v0, "CameraThread"

    const-string v1, "setFirstFrameCacheStateInternal("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mIsFirstFrameCached:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mIsFirstFrameCached:Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "cache-first-frame"

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setFlashModeInternal(Lcom/android/camera/FlashMode;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/CameraThread;->flashMode:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-eqz v0, :cond_0

    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set flash mode to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget-object v1, p1, Lcom/android/camera/FlashMode;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0
.end method

.method private setHWSoundEffect(Ljava/lang/String;)V
    .locals 3

    const-string v0, "CameraThread"

    const-string v1, "setHWSoundEffect("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_1

    const-string v0, "active_ap=Camcorder;dolby_srs_eq="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v0, p1}, Lcom/android/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "active_ap=Camcorder;dolby_srs_eq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "setHWSoundEffect() - No IAudioManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupParamsBeforeStartingPreview(Lcom/android/camera/Handle;)V
    .locals 22

    const-string v17, "CameraThread"

    const-string v18, "setupParamsBeforeStartingPreview - Start"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    const-string v17, "CameraThread"

    const-string v18, "setupParamsBeforeStartingPreview - No camera device"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/CameraType;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v1, v2, Lcom/android/camera/CameraSettings;->isZSLEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_8

    sget-object v17, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    move-object/from16 v0, v17

    if-ne v4, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "capture-mode"

    const-string v19, "zsl"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "time-cons-post-processing"

    const-string v19, "enable"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->flashMode:Lcom/android/camera/property/Property;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/FlashMode;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/FlashMode;->value:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v17

    sget-object v18, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isSlowMotionMode()Z

    move-result v6

    if-nez v6, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "cam-mode"

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/CameraController;->setRecordingHint(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/CameraController;->isVideoStabilizationSupported()Z

    move-result v17

    if-eqz v17, :cond_1

    if-nez v6, :cond_b

    sget-object v17, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    move-object/from16 v0, v17

    if-ne v4, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isVideoStabilizationEnabled:Lcom/android/camera/property/Property;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_b

    const/16 v16, 0x1

    :goto_3
    const-string v17, "CameraThread"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "videoStabilization"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraController;->setVideoStabilization(Z)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "cache-first-frame"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    :goto_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canChangeFrameRate()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v17

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const/16 v18, 0x3a98

    const/16 v19, 0x3a98

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setPreviewFpsRange(II)V

    :cond_2
    :goto_5
    invoke-virtual {v4}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "front-camera-mode"

    const-string v19, "mirror"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isSlowMotionMode()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/ICaptureResolutionManager;->photoPreviewSize:Lcom/android/camera/property/Property;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/imaging/Size;

    if-eqz v7, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/ICaptureResolutionManager;->slowMotionVideoPreviewSize:Lcom/android/camera/property/Property;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/imaging/Size;

    move-object/from16 v15, v17

    :goto_6
    if-eqz v15, :cond_5

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v15, Lcom/android/camera/imaging/Size;->width:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "x"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v15, Lcom/android/camera/imaging/Size;->height:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iget v0, v15, Lcom/android/camera/imaging/Size;->width:I

    move/from16 v17, v0

    const/16 v18, 0x780

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v17

    if-eqz v17, :cond_4

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v15, Lcom/android/camera/imaging/Size;->width:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "x"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x438

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "video-size"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "CameraThread"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setCameraParameter(\'video-size\',\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\')"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-object v18, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraMode:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/CameraMode;

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v17

    aget v17, v18, v17

    packed-switch v17, :pswitch_data_0

    const-string v17, "CameraThread"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setupParamsBeforeStartingPreview() - Unknown camera mode : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lcom/android/camera/imaging/Size;

    invoke-direct {v12}, Lcom/android/camera/imaging/Size;-><init>()V

    :goto_7
    iget v0, v12, Lcom/android/camera/imaging/Size;->width:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0xf

    rsub-int/lit8 v13, v17, 0x10

    const/16 v17, 0x10

    move/from16 v0, v17

    if-ge v13, v0, :cond_6

    iget v0, v12, Lcom/android/camera/imaging/Size;->width:I

    move/from16 v17, v0

    add-int v17, v17, v13

    move/from16 v0, v17

    iput v0, v12, Lcom/android/camera/imaging/Size;->width:I

    :cond_6
    iget v0, v12, Lcom/android/camera/imaging/Size;->height:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0xf

    rsub-int/lit8 v13, v17, 0x10

    const/16 v17, 0x10

    move/from16 v0, v17

    if-ge v13, v0, :cond_7

    iget v0, v12, Lcom/android/camera/imaging/Size;->height:I

    move/from16 v17, v0

    add-int v17, v17, v13

    move/from16 v0, v17

    iput v0, v12, Lcom/android/camera/imaging/Size;->height:I

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "taking-picture-zoom"

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v17

    if-eqz v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraController;->setZoom(I)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->preparingParamsBeforePreviewStartEvent:Lcom/android/camera/event/Event;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/camera/CameraParamsSetupEventArgs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraParamsSetupEventArgs;-><init>(Lcom/android/camera/Handle;Landroid/hardware/Camera;Lcom/android/camera/CameraController;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    const-string v17, "CameraThread"

    const-string v18, "setupParamsBeforeStartingPreview - Set parameters"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    const-string v17, "CameraThread"

    const-string v18, "setupParamsBeforeStartingPreview - End"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "capture-mode"

    const-string v19, "normal"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->recordWithAudio:Lcom/android/camera/property/Property;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->disableSoundEffect()V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "cam-mode"

    const/16 v19, 0x2

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_b
    const/16 v16, 0x0

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "cam-mode"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/CameraController;->setRecordingHint(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "cache-first-frame"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->mIsFirstFrameCached:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d

    const/16 v17, 0x1

    :goto_9
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_d
    const/16 v17, 0x0

    goto :goto_9

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const v19, 0x30d40

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setPreviewFpsRange(II)V

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/ICaptureResolutionManager;->videoPreviewSize:Lcom/android/camera/property/Property;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/imaging/Size;

    move-object/from16 v15, v17

    goto/16 :goto_6

    :pswitch_0
    if-eqz v10, :cond_11

    const-string v17, "CameraThread"

    const-string v18, "setupParamsBeforeStartingPreview() - Preview size (photo) is "

    iget v0, v10, Lcom/android/camera/imaging/Size;->width:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v20, " x "

    iget v0, v10, Lcom/android/camera/imaging/Size;->height:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v17 .. v21}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    iget v0, v10, Lcom/android/camera/imaging/Size;->width:I

    move/from16 v18, v0

    iget v0, v10, Lcom/android/camera/imaging/Size;->height:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setPreviewSizeParameter(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/ICaptureResolutionManager;->photoResolution:Lcom/android/camera/property/Property;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/Resolution;

    if-eqz v11, :cond_10

    const-string v17, "CameraThread"

    const-string v18, "setupParamsBeforeStartingPreview() - Photo resolution is "

    invoke-virtual {v11}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v20, " x "

    invoke-virtual {v11}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v17 .. v21}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    invoke-virtual {v11}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v18

    invoke-virtual {v11}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setPictureSizeParameter(II)V

    :goto_a
    move-object v12, v10

    goto/16 :goto_7

    :cond_10
    const-string v17, "CameraThread"

    const-string v18, "setupParamsBeforeStartingPreview() - No photo resolution"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_11
    const-string v17, "CameraThread"

    const-string v18, "setupParamsBeforeStartingPreview() - No photo preview size"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :pswitch_1
    if-eqz v15, :cond_17

    if-eqz v7, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "video-mode"

    const-string v19, "1"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "CameraThread"

    const-string v18, "setupParamsBeforeStartingPreview() - Enable slow motion mode"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isQCT8x30()Z

    move-result v17

    if-nez v17, :cond_12

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isVilC2()Z

    move-result v17

    if-eqz v17, :cond_15

    :cond_12
    iget v0, v15, Lcom/android/camera/imaging/Size;->width:I

    move/from16 v17, v0

    sget v18, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_14

    sget v17, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    and-int/lit8 v17, v17, 0xf

    rsub-int/lit8 v9, v17, 0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    sget v18, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    sget v19, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    add-int v19, v19, v9

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setPreviewSizeParameter(II)V

    :goto_c
    const-string v17, "CameraThread"

    const-string v18, "setupParamsBeforeStartingPreview() - Preview size (video) is "

    iget v0, v15, Lcom/android/camera/imaging/Size;->width:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v20, " x "

    iget v0, v15, Lcom/android/camera/imaging/Size;->height:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v17 .. v21}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_d
    move-object v12, v15

    goto/16 :goto_7

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "video-mode"

    const-string v19, "0"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "CameraThread"

    const-string v18, "setupParamsBeforeStartingPreview() - Disable slow motion mode"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    iget v0, v15, Lcom/android/camera/imaging/Size;->width:I

    move/from16 v18, v0

    iget v0, v15, Lcom/android/camera/imaging/Size;->height:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setPreviewSizeParameter(II)V

    goto :goto_c

    :cond_15
    iget v0, v15, Lcom/android/camera/imaging/Size;->width:I

    move/from16 v17, v0

    const/16 v18, 0x780

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v17

    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    iget v0, v15, Lcom/android/camera/imaging/Size;->width:I

    move/from16 v18, v0

    const/16 v19, 0x438

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setPreviewSizeParameter(II)V

    goto :goto_c

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    iget v0, v15, Lcom/android/camera/imaging/Size;->width:I

    move/from16 v18, v0

    iget v0, v15, Lcom/android/camera/imaging/Size;->height:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setPreviewSizeParameter(II)V

    goto/16 :goto_c

    :cond_17
    const-string v17, "CameraThread"

    const-string v18, "setupParamsBeforeStartingPreview() - No video preview size"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    invoke-virtual {v5}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/CameraController;->setZoom(I)V

    goto/16 :goto_8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupPreviewCallback()V
    .locals 5

    const-string v3, "CameraThread"

    const-string v4, "setupPreviewCallback() - start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_0

    const-string v3, "CameraThread"

    const-string v4, "setupPreviewCallback() - No camera device to setup preview call-back"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v3, p0, Lcom/android/camera/CameraThread;->mCanSetPreviewCallback:Z

    if-nez v3, :cond_1

    const-string v3, "CameraThread"

    const-string v4, "setupPreviewCallback() - Cannot set preview call-back due to current state"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v3}, Lcom/android/camera/event/Event;->hasHandlers()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "CameraThread"

    const-string v4, "setupPreviewCallback() - No handlers for receiving preview frame"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v3, "CameraThread"

    const-string v4, "setupPreviewCallback() - Cannot get camera parameters"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/imaging/Size;

    if-nez v1, :cond_4

    const-string v3, "CameraThread"

    const-string v4, "setupPreviewCallback() - Cannot get preview size"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v3, v1, Lcom/android/camera/imaging/Size;->width:I

    mul-int/lit8 v3, v3, 0xc

    div-int/lit8 v2, v3, 0x8

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iget v4, v1, Lcom/android/camera/imaging/Size;->height:I

    mul-int/2addr v4, v2

    new-array v4, v4, [B

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    const-string v3, "CameraThread"

    const-string v4, "setupPreviewCallback() - end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startPreviewDirectlyInternal(Lcom/android/camera/Handle;)Lcom/android/camera/CameraPreviewStartResult;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v2, "CameraThread"

    const-string v3, "startPreviewDirectlyInternal() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "CameraThread"

    const-string v3, "startPreviewDirectlyInternal() - Handle : "

    invoke-static {v2, v3, p1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    const-string v2, "CameraThread"

    const-string v3, "startPreviewDirectlyInternal() - No camera"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v4, Lcom/android/camera/CameraPreviewStartResult;->InvalidState:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v3, p1, v4}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->InvalidState:Lcom/android/camera/CameraPreviewStartResult;

    :goto_0
    return-object v1

    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    if-nez v2, :cond_1

    const-string v2, "CameraThread"

    const-string v3, "startPreviewDirectlyInternal() - Cannot start preview, CanStartPreview = False"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v4, Lcom/android/camera/CameraPreviewStartResult;->InvalidState:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v3, p1, v4}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->InvalidState:Lcom/android/camera/CameraPreviewStartResult;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "CameraThread"

    const-string v3, "startPreviewDirectlyInternal() - Already previewing"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->previewStartedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v4, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v3, p1, v4}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/io/StorageState;->Full:Lcom/android/camera/io/StorageState;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_3
    iget-object v2, p0, Lcom/android/camera/CameraThread;->previewStartingEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/CameraPreviewEventArgs;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSurfaceStateSyncRoot()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isSurfaceAvailable()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "CameraThread"

    const-string v4, "startPreviewDirectlyInternal() - mCameraDevice.startPreview() - start"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->startPreview()V

    const-string v2, "CameraThread"

    const-string v4, "startPreviewDirectlyInternal() - mCameraDevice.startPreview() - end"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iget-boolean v2, p0, Lcom/android/camera/CameraThread;->mIsFirstTimeToStartPreview:Z

    if-eqz v2, :cond_4

    iput-boolean v7, p0, Lcom/android/camera/CameraThread;->mIsFirstTimeToStartPreview:Z

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    invoke-virtual {v2, v7}, Lcom/android/camera/component/CameraThreadComponentManager;->enableAutoInitialization(Z)V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mComponentFactory:Lcom/android/camera/component/CameraThreadComponentFactory;

    sget-object v3, Lcom/android/camera/component/ComponentCategory;->Normal:Lcom/android/camera/component/ComponentCategory;

    invoke-virtual {v2, v3}, Lcom/android/camera/component/CameraThreadComponentFactory;->createComponents(Lcom/android/camera/component/ComponentCategory;)I

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    invoke-virtual {v2, v6}, Lcom/android/camera/component/CameraThreadComponentManager;->enableAutoInitialization(Z)V

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->linkToOptionalServiceComponents()V

    :cond_4
    iget-object v2, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/camera/CameraThread;->previewStartedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v4, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v3, p1, v4}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x2713

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_6

    iput-boolean v6, p0, Lcom/android/camera/CameraThread;->mCanSetPreviewCallback:Z

    iget v2, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    if-gtz v2, :cond_6

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->setupPreviewCallback()V

    :cond_6
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mShutterSoundHandle:Lcom/android/camera/Handle;

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v3, 0x7f060004

    invoke-interface {v2, v3}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mShutterSoundHandle:Lcom/android/camera/Handle;

    :cond_7
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v3, :cond_a

    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[camera_preview]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-string v2, "CameraThread"

    const-string v3, "startPreviewDirectlyInternal() - end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    :try_start_2
    const-string v2, "CameraThread"

    const-string v4, "startPreviewDirectlyInternal() - Surface is unavailable"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->InvalidState:Lcom/android/camera/CameraPreviewStartResult;

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "CameraThread"

    const-string v3, "startPreviewDirectlyInternal() - Start preview failed"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->UnknownError:Lcom/android/camera/CameraPreviewStartResult;

    goto/16 :goto_2

    :cond_9
    iget-object v2, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/CameraPreviewEventArgs;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_3

    :cond_a
    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[camcorder_preview]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private startPreviewInternal(Lcom/android/camera/Handle;Lcom/android/camera/CameraType;)Lcom/android/camera/CameraPreviewStartResult;
    .locals 7

    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - Start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - Handle : "

    invoke-static {v3, v4, p1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - Preview is already started"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewStartedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v5, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v4, p1, v5}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    :goto_0
    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/android/camera/io/StorageState;->Full:Lcom/android/camera/io/StorageState;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    if-nez p2, :cond_4

    iget-object v3, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/CameraType;

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_5

    invoke-virtual {p0, p2}, Lcom/android/camera/CameraThread;->openCamera(Lcom/android/camera/CameraType;)Lcom/android/camera/Handle;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3, p2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startPreviewInternal mLastCameraOpenFailedReason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/CameraThread;->mLastCameraOpenFailedReason:Lcom/android/camera/CameraOpenFailedReason;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraOpenFailedReason:[I

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mLastCameraOpenFailedReason:Lcom/android/camera/CameraOpenFailedReason;

    invoke-virtual {v4}, Lcom/android/camera/CameraOpenFailedReason;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - Cannot open camera"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v5, Lcom/android/camera/CameraPreviewStartResult;->CameraOpenFailed:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v4, p1, v5}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->CameraOpenFailed:Lcom/android/camera/CameraPreviewStartResult;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eq p2, v3, :cond_2

    const-string v3, "CameraThread"

    const-string v4, "Start preview with different camera, close previous camera first"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->closeCamera()V

    goto :goto_1

    :pswitch_0
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - Cannot get camera token"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v5, Lcom/android/camera/CameraPreviewStartResult;->NoCameraToken:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v4, p1, v5}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->NoCameraToken:Lcom/android/camera/CameraPreviewStartResult;

    goto/16 :goto_0

    :pswitch_1
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - LowPowerRestrict3D"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v5, Lcom/android/camera/CameraPreviewStartResult;->LowPowerRestrict3D:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v4, p1, v5}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->LowPowerRestrict3D:Lcom/android/camera/CameraPreviewStartResult;

    goto/16 :goto_0

    :pswitch_2
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - LowPowerDualModeCalling"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v5, Lcom/android/camera/CameraPreviewStartResult;->LowPowerDualModeCalling:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v4, p1, v5}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->LowPowerDualModeCalling:Lcom/android/camera/CameraPreviewStartResult;

    goto/16 :goto_0

    :pswitch_3
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - CameraResourceOccupy"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v5, Lcom/android/camera/CameraPreviewStartResult;->CameraResourceOccupy:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v4, p1, v5}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->CameraResourceOccupy:Lcom/android/camera/CameraPreviewStartResult;

    goto/16 :goto_0

    :pswitch_4
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - CameraInNoMem"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v5, Lcom/android/camera/CameraPreviewStartResult;->CameraInNoMem:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v4, p1, v5}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->CameraInNoMem:Lcom/android/camera/CameraPreviewStartResult;

    goto/16 :goto_0

    :pswitch_5
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - CameraHWOpenFail"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v5, Lcom/android/camera/CameraPreviewStartResult;->CameraHWOpenFail:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v4, p1, v5}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->CameraHWOpenFail:Lcom/android/camera/CameraPreviewStartResult;

    goto/16 :goto_0

    :pswitch_6
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - CameraPolicyDisabled"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v5, Lcom/android/camera/CameraPreviewStartResult;->CameraPolicyDisabled:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v4, p1, v5}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->CameraPolicyDisabled:Lcom/android/camera/CameraPreviewStartResult;

    goto/16 :goto_0

    :cond_5
    iget-boolean v3, p0, Lcom/android/camera/CameraThread;->mIsParamsPrepared:Z

    if-nez v3, :cond_6

    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setupParamsBeforeStartingPreview(Lcom/android/camera/Handle;)V

    :goto_2
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getSurfaceStateSyncRoot()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isSurfaceAvailable()Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "CameraThread"

    const-string v5, "startPreviewInternal() - Surface is unavailable"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    new-instance v5, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v6, Lcom/android/camera/CameraPreviewStartResult;->InvalidState:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v5, p1, v6}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v3, p0, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->InvalidState:Lcom/android/camera/CameraPreviewStartResult;

    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_6
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - No need to setup parameters"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mIsParamsPrepared:Z

    goto :goto_2

    :cond_7
    :try_start_1
    invoke-virtual {p2}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    const/16 v5, 0x5a

    invoke-virtual {v3, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    :goto_3
    const-string v3, "CameraThread"

    const-string v5, "startPreviewInternal() - Set preview display"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->startPreviewDirectlyInternal(Lcom/android/camera/Handle;)Lcom/android/camera/CameraPreviewStartResult;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    if-ne v2, v3, :cond_a

    new-instance v0, Lcom/android/camera/CameraParamsSetupEventArgs;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-direct {v0, p1, v3, v4}, Lcom/android/camera/CameraParamsSetupEventArgs;-><init>(Lcom/android/camera/Handle;Landroid/hardware/Camera;Lcom/android/camera/CameraController;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->preparingParamsAfterPreviewStartEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v3, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    invoke-virtual {v0}, Lcom/android/camera/CameraParamsSetupEventArgs;->isParameterChanged()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :goto_4
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - End"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    :try_start_3
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iget v5, p2, Lcom/android/camera/CameraType;->orientation:I

    invoke-virtual {v3, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_4
    const-string v3, "CameraThread"

    const-string v5, "startPreviewInternal() - Cannot setup preview parameters"

    invoke-static {v3, v5, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    new-instance v5, Lcom/android/camera/CameraPreviewEventArgs;

    sget-object v6, Lcom/android/camera/CameraPreviewStartResult;->UnknownError:Lcom/android/camera/CameraPreviewStartResult;

    invoke-direct {v5, p1, v6}, Lcom/android/camera/CameraPreviewEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V

    invoke-virtual {v3, p0, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->UnknownError:Lcom/android/camera/CameraPreviewStartResult;

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_9
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - Camera parameters is not changed, no need to set again"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - Cannot start preview, no need to set parameters"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

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

.method private startVideoRecordingInternal(Lcom/android/camera/CaptureHandle;Z)V
    .locals 35

    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Start"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Handle : \'"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v8, "\'"

    invoke-static {v2, v4, v5, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v4}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - Invalid state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v4}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - Invalid state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->checkCanTakeRecorder()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Storage error"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/CaptureFailedReason;->StorageError:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->checkInternalDataSpace()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->hasEnoughInternalDataSpace:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Low internal data space"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/CaptureFailedReason;->LowInternalDataSpace:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->captureStartingEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CaptureEventArgs;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    :cond_4
    if-nez p2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingStartSoundHandle:Lcom/android/camera/Handle;

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v4, 0x7f06000b

    invoke-interface {v2, v4}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingStartSoundHandle:Lcom/android/camera/Handle;

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mRecordingStartSoundHandle:Lcom/android/camera/Handle;

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-interface {v2, v4, v5, v8}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v4, 0x273d

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v5, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v2, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const-wide/16 v4, 0x12c

    move-object/from16 v0, v30

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/camera/CameraThread$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_6
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - No camera handler"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    :cond_7
    if-nez p2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_8

    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - mRecorder != null"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_9

    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v2, :cond_a

    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Camera is closed"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const-string v4, "CAMCORDER_MODE=ON"

    invoke-interface {v2, v4}, Lcom/android/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/CameraThread;->mCanSetPreviewCallback:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->clearPreviewCallback()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V

    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - start video recording: unlock camera"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/UIRotation;

    iget v0, v2, Lcom/android/camera/rotate/UIRotation;->deviceOrientation:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    iget v0, v2, Lcom/android/camera/CameraType;->orientation:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v2

    if-eqz v2, :cond_f

    add-int v31, v31, v33

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->is3DCamera()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - set rotation landscape while 3D video mode"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v31, 0x0

    :cond_c
    move/from16 v0, v31

    rem-int/lit16 v0, v0, 0x168

    move/from16 v31, v0

    const-string v2, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - set rotation, mCaptureRotation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCamcorderRotate()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isSlowMotionMode()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSurfaceStateSyncRoot()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isSurfaceAvailable()Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "CameraThread"

    const-string v5, "startVideoRecordingInternal() - Preview surface is unavailable"

    invoke-static {v2, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v8, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v5, v8}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_f
    sub-int v31, v33, v31

    goto/16 :goto_1

    :cond_10
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSurfaceHolder()Landroid/view/SurfaceHolder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v22

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-interface/range {v22 .. v22}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isSlowMotionMode()Z

    move-result v24

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->isStereoRecordingEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v25, 0x1

    :goto_2
    if-nez v24, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->recordWithAudio:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    :goto_3
    if-eqz v26, :cond_12

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v25, :cond_1a

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/UIRotation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/android/camera/CameraThread;->setSoundEffect(ZLcom/android/camera/rotate/UIRotation;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->enableSoundEffect()V

    const-string v2, "CameraThread"

    const-string v4, "startVideoRecording() - Enable stereo recording"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v2

    if-nez v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    iget-object v5, v4, Lcom/android/camera/CameraSettings;->VideoFileFormat:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v2, "mp4"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->is3DCamera()Z

    move-result v2

    if-eqz v2, :cond_1c

    sget-object v2, Lcom/android/camera/io/FileFormat;->Mpeg4For3D:Lcom/android/camera/io/FileFormat;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    :goto_6
    const/16 v21, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRequestedFilePath:Lcom/android/camera/io/Path;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRequestedFilePath:Lcom/android/camera/io/Path;

    iget-object v2, v2, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/io/FileUtility;->createDirectories(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRequestedFilePath:Lcom/android/camera/io/Path;

    iget-object v2, v2, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/io/Path;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    iget-object v2, v2, Lcom/android/camera/io/FileFormat;->fileNameExtension:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Use requested file path"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRequestedFilePath:Lcom/android/camera/io/Path;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/Path;

    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/Path;

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/io/StorageSlot;

    invoke-static {v2}, Lcom/android/camera/io/DCFUtility;->getDcimPath(Lcom/android/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/android/camera/Reference;

    invoke-direct {v6}, Lcom/android/camera/Reference;-><init>()V

    new-instance v7, Lcom/android/camera/Reference;

    invoke-direct {v7}, Lcom/android/camera/Reference;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    sget-object v4, Lcom/android/camera/CameraThread;->mVideoDcfInfo:Lcom/android/camera/io/DCFInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    invoke-static/range {v2 .. v7}, Lcom/android/camera/io/DCFUtility;->findNextDirAndFileCounters(Lcom/android/camera/Settings;Ljava/lang/String;Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileFormat;Lcom/android/camera/Reference;Lcom/android/camera/Reference;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Cannot find available video file location, please check the storage card"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Camera app finished"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->finish()V

    :cond_14
    new-instance v16, Lcom/android/camera/io/FileCounter;

    iget-object v2, v6, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    new-instance v21, Lcom/android/camera/io/FileCounter;

    iget-object v2, v7, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    new-instance v2, Lcom/android/camera/io/DCFPath;

    sget-object v4, Lcom/android/camera/CameraThread;->mVideoDcfInfo:Lcom/android/camera/io/DCFInfo;

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/android/camera/io/DCFUtility;->getDirectoryName(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/camera/CameraThread;->mVideoDcfInfo:Lcom/android/camera/io/DCFInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    move-object/from16 v0, v21

    invoke-static {v5, v0, v8}, Lcom/android/camera/io/DCFUtility;->getFileName(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v2, v4, v5, v0, v1}, Lcom/android/camera/io/DCFPath;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileCounter;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/Path;

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/Path;

    invoke-virtual {v4}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    iget-object v2, v2, Lcom/android/camera/ICaptureResolutionManager;->videoBitRate:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isSlowMotionMode()Z

    move-result v5

    if-nez v5, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    iget-object v5, v4, Lcom/android/camera/CameraSettings;->ForceVideoQuality:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v2, "auto"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    :cond_16
    const-string v2, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - Video bit rate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v15}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :goto_8
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    iget-object v2, v2, Lcom/android/camera/ICaptureResolutionManager;->maxVideoDuration:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/camera/Duration;

    const-string v2, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - Maximum video duration : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/Duration;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/Duration;->getMilliseconds()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setMaxDuration(I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_17
    :goto_9
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    iget-object v2, v2, Lcom/android/camera/ICaptureResolutionManager;->maxVideoFileSize:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    const-string v2, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - Maximum video file size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-wide/from16 v0, v28

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :goto_a
    const/16 v23, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v2

    if-eqz v2, :cond_20

    sget-object v2, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v4, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v2, v4, :cond_20

    const/16 v23, 0xf

    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    const-string v2, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - setVideoFrameRate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v24, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    iget-object v2, v2, Lcom/android/camera/ICaptureResolutionManager;->slowMotionVideoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Resolution;

    move-object/from16 v32, v2

    :goto_c
    if-nez v32, :cond_24

    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - No video resolution"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->restoreBackgrounddataSetting()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/camera/CaptureFailedReason;->DriverFail:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    :catch_0
    move-exception v19

    :try_start_7
    const-string v2, "CameraThread"

    const-string v5, "startVideoRecordingInternal() - setPreviewDisplay failed, Camera app finished"

    move-object/from16 v0, v19

    invoke-static {v2, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v8, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v5, v8}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/camera/CaptureFailedReason;->DriverFail:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :cond_18
    const/16 v25, 0x0

    goto/16 :goto_2

    :cond_19
    const/16 v26, 0x0

    goto/16 :goto_3

    :cond_1a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/UIRotation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/android/camera/CameraThread;->setSoundEffect(ZLcom/android/camera/rotate/UIRotation;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->enableSoundEffect()V

    const-string v2, "CameraThread"

    const-string v4, "startVideoRecording() - Disable stereo recording"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    goto/16 :goto_5

    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v2

    if-nez v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    iget-object v5, v4, Lcom/android/camera/CameraSettings;->VideoFileFormat:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v2, "mp4"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    sget-object v2, Lcom/android/camera/io/FileFormat;->Mpeg4:Lcom/android/camera/io/FileFormat;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    goto/16 :goto_6

    :cond_1d
    sget-object v2, Lcom/android/camera/io/FileFormat;->ThreeGPP:Lcom/android/camera/io/FileFormat;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    goto/16 :goto_6

    :cond_1e
    const-string v2, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - Format mismatch, requested file name extension is \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', but actual format is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1f
    const-string v2, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - Fail to create directory \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mRequestedFilePath:Lcom/android/camera/io/Path;

    iget-object v5, v5, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :catch_1
    move-exception v19

    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Cannot set video bit rate"

    move-object/from16 v0, v19

    invoke-static {v2, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :catch_2
    move-exception v19

    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Cannot set maximum video file size"

    move-object/from16 v0, v19

    invoke-static {v2, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :catch_3
    move-exception v19

    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Cannot set maximum video file size"

    move-object/from16 v0, v19

    invoke-static {v2, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :cond_20
    if-eqz v24, :cond_21

    const/16 v23, 0x78

    goto/16 :goto_b

    :cond_21
    const/16 v23, 0x1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    iget-object v5, v4, Lcom/android/camera/CameraSettings;->ForceFrameRate:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v2, "auto"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v22

    :cond_22
    goto/16 :goto_b

    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    iget-object v2, v2, Lcom/android/camera/ICaptureResolutionManager;->videoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Resolution;

    move-object/from16 v32, v2

    goto/16 :goto_c

    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v2}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual/range {v32 .. v32}, Lcom/android/camera/Resolution;->isFullHDVideo()Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Set FULL HD recording size is 1920x1080"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v4, 0x780

    const/16 v5, 0x438

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    :goto_d
    const-string v2, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - setVideoSize: width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v24, :cond_28

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/camera/CameraThread;->getVideoEncoder(Lcom/android/camera/Resolution;)I

    move-result v18

    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Video encoder : "

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    :goto_e
    if-eqz v26, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->IsEqualOrAbove720p()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support128kBitrate()Z

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v4, 0x7d00

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v4, 0x1f40

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    :cond_25
    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->NeedToApplyAMR_NB()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_30

    const-string v2, "CameraThread"

    const-string v4, "AMR_NB"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :cond_26
    :goto_10
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/camera/CameraThread;->mCaptureStartTime:J

    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mInfoListener:Lcom/android/camera/CameraThread$InfoListener;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mErrorListener:Lcom/android/camera/CameraThread$ErrorListener;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSurfaceStateSyncRoot()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isSurfaceAvailable()Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "CameraThread"

    const-string v5, "startVideoRecordingInternal() - Preview surface is unavailable"

    invoke-static {v2, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v8, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v5, v8}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :catch_4
    move-exception v19

    const-string v2, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - recorder start failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/Path;

    invoke-virtual {v5}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/camera/CaptureFailedReason;->DriverFail:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual/range {v32 .. v32}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v4

    invoke-virtual/range {v32 .. v32}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    goto/16 :goto_d

    :cond_28
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Video encoder : "

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    goto/16 :goto_e

    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    iget-object v5, v4, Lcom/android/camera/CameraSettings;->ForceAudioQuality:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v2, "auto"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_11

    :cond_2a
    const v4, 0x1f400

    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->needForce48KAudioSamplingRate()Z

    move-result v2

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0xbb80

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    :goto_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/camera/HTCCamera;->setBackgroundDataSetting(Z)V

    goto/16 :goto_f

    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0xac44

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    goto :goto_12

    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->NeedToApplyAMR_NB()Z

    move-result v2

    if-nez v2, :cond_25

    sget-object v2, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    sget-object v2, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0x17700

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    :goto_13
    invoke-static {}, Lcom/android/camera/DisplayDevice;->needForce48KAudioSamplingRate()Z

    move-result v2

    if-eqz v2, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0xbb80

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    goto/16 :goto_f

    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0xfa00

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    goto :goto_13

    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0xac44

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    goto/16 :goto_f

    :cond_30
    const-string v2, "CameraThread"

    const-string v4, "AAC"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v25, :cond_31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    :goto_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto/16 :goto_10

    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    goto :goto_14

    :catch_5
    move-exception v19

    const-string v2, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - recorder prepare failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/Path;

    invoke-virtual {v5}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->restoreBackgrounddataSetting()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/camera/CaptureFailedReason;->DriverFail:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    :cond_32
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v2, :cond_35

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    const-string v9, "Start recording"

    const-wide/16 v10, 0x1388

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mMediaRecorderTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual/range {v8 .. v14}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result-object v34

    :goto_15
    :try_start_d
    const-string v2, "CameraThread"

    const-string v5, "startVideoRecordingInternal() - MediaRecorder.start() - Start"

    invoke-static {v2, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/camera/CameraThread;->mRecordingStartTime:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    const-string v2, "CameraThread"

    const-string v5, "startVideoRecordingInternal() - MediaRecorder.start() - End"

    invoke-static {v2, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    :cond_33
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v4, "[record_video]complete"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->captureStartedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CaptureEventArgs;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    if-eqz v21, :cond_34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    const-string v4, "counter_video"

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/camera/io/FileCounter;->mainCounter:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :try_start_10
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Lock semaphore"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_6

    :goto_16
    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - end"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_35
    const/16 v34, 0x0

    goto/16 :goto_15

    :catchall_2
    move-exception v2

    :try_start_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v5, :cond_36

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    :cond_36
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :catch_6
    move-exception v17

    const-string v2, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Fail to lock semaphore"

    move-object/from16 v0, v17

    invoke-static {v2, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method private stopVideoRecordingInternal(Lcom/android/camera/CaptureHandle;ZZ)V
    .locals 23

    if-nez p1, :cond_1

    const-string v2, "CameraThread"

    const-string v3, "stopVideoRecordingInternal() - Null handle"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_3

    const-string v3, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopVideoRecordingInternal() - Invalid handle, current handle : \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v2, v2, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "null"

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "CameraThread"

    const-string v3, "stopVideoRecordingInternal() - stop video recording before recording started"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x273d

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraThread$MainHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->captureCanceledEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/CaptureEventArgs;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    :cond_4
    const-string v2, "CameraThread"

    const-string v3, "stopVideoRecordingInternal() - Handle : \'"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v5, "\'"

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v16, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/CameraThread;->mRecordingStartTime:J

    sub-long v12, v2, v4

    const-wide/16 v2, 0x4b0

    cmp-long v2, v12, v2

    if-gez v2, :cond_6

    const-wide/16 v2, 0x4b0

    sub-long v10, v2, v12

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopVideoRecordingInternal() - Recording duration is too short, stop recording "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms later"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x273e

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    if-nez p3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v10, v11}, Lcom/android/camera/CameraThread$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->recycle()V

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    :cond_6
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x2726

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->recordWithAudio:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->disableSoundEffect()V

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/CameraThread;->mCaptureStartTime:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/camera/CameraThread;->mCaptureDuration:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    const-string v3, "Stop recording"

    const-wide/32 v4, 0xea60

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CameraThread;->mMediaRecorderTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;

    move-result-object v22

    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    :cond_8
    :goto_4
    if-eqz v16, :cond_9

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->reconnect()V

    const-string v2, "CameraThread"

    const-string v3, "stop video recording : reconnect camera device"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->stopPreview()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->restoreBackgrounddataSetting()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    if-eqz v16, :cond_c

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/Path;

    invoke-virtual {v2}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    iget-object v3, v3, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/camera/imaging/ThumbnailUtility;->createThumbnailImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v21

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->videoThumbnailCreatedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/imaging/ThumbnailEventArgs;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/Path;

    move-object/from16 v0, v21

    invoke-direct {v3, v4, v5, v0}, Lcom/android/camera/imaging/ThumbnailEventArgs;-><init>(Landroid/net/Uri;Lcom/android/camera/io/Path;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    if-eqz v21, :cond_a

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v21, 0x0

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

    if-eqz v2, :cond_15

    new-instance v20, Lcom/android/camera/io/SaveVideoTask;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/io/SaveVideoTask;-><init>(Lcom/android/camera/CameraThread;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/camera/io/SaveVideoTask;->captureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/Path;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/android/camera/io/SaveVideoTask;->filePath:Lcom/android/camera/io/Path;

    sget-object v2, Lcom/android/camera/CameraThread;->mVideoDcfInfo:Lcom/android/camera/io/DCFInfo;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/android/camera/io/SaveVideoTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/camera/CameraThread;->mCaptureDuration:J

    move-object/from16 v0, v20

    iput-wide v2, v0, Lcom/android/camera/io/SaveVideoTask;->duration:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/android/camera/io/SaveVideoTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/io/StorageSlot;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/android/camera/io/SaveVideoTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRequestedFilePath:Lcom/android/camera/io/Path;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRequestedFilePath:Lcom/android/camera/io/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/Path;

    invoke-virtual {v2, v3}, Lcom/android/camera/io/Path;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getRequestedUri()Landroid/net/Uri;

    move-result-object v19

    const-string v2, "content"

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/camera/io/SaveVideoTask;->existentContentUri:Landroid/net/Uri;

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/camera/io/IMediaFileWriter;->saveMedia(Lcom/android/camera/io/SaveMediaTask;)Lcom/android/camera/Handle;

    move-result-object v2

    if-nez v2, :cond_c

    const-string v2, "CameraThread"

    const-string v3, "stopVideoRecordingInternal() - Cannot save video information"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v5, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v2, v5}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object v2, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    :goto_9
    invoke-virtual {v3, v4, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->captureStoppedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/CaptureEventArgs;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v16, :cond_d

    const-string v2, "CameraThread"

    const-string v3, "stopVideoRecordingInternal() - Unlock semaphore"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const-string v3, "CAMCORDER_MODE=OFF"

    invoke-interface {v2, v3}, Lcom/android/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    if-nez v16, :cond_17

    const/4 v2, 0x1

    :goto_a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz p2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isAnswerPhoneCall()Z

    move-result v2

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingStopSoundHandle:Lcom/android/camera/Handle;

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v3, 0x7f06000a

    invoke-interface {v2, v3}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingStopSoundHandle:Lcom/android/camera/Handle;

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecordingStopSoundHandle:Lcom/android/camera/Handle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    :cond_10
    const/4 v15, 0x0

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_5
    sget-object v3, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$TakingPictureState:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v2}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    :cond_11
    :goto_b
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v15, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->exit()V

    goto/16 :goto_0

    :cond_12
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopVideoRecordingInternal() - Invalid state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    const/16 v22, 0x0

    goto/16 :goto_3

    :catch_0
    move-exception v14

    :try_start_6
    const-string v2, "CameraThread"

    const-string v3, "mRecorder.stop() - Runtime exception caught"

    invoke-static {v2, v3, v14}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    :cond_14
    throw v2

    :catch_1
    move-exception v14

    const-string v2, "CameraThread"

    const-string v3, "camera reconnect exception."

    invoke-static {v2, v3, v14}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catch_2
    move-exception v14

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop preview exception."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_3
    move-exception v14

    const/16 v21, 0x0

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create video thumbnail for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/Path;

    invoke-virtual {v4}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_15
    const-string v2, "CameraThread"

    const-string v3, "stopVideoRecordingInternal() - No IMediaFileWriter interface"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_16
    sget-object v2, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    goto/16 :goto_9

    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_a

    :pswitch_0
    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/CameraThread;->mPendingExit:Z

    if-eqz v2, :cond_18

    const/4 v15, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/CameraThread;->mPendingExit:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/CameraThread;->mPendingCloseCamera:Z

    goto/16 :goto_b

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v2

    :cond_18
    :try_start_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/CameraThread;->mPendingCloseCamera:Z

    if-eqz v2, :cond_11

    const/4 v9, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/CameraThread;->mPendingCloseCamera:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_b

    :cond_19
    if-eqz v9, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->closeCamera()V

    goto/16 :goto_0

    :catch_4
    move-exception v2

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private takePicture()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    const-string v1, "JPEG call-back"

    const-wide/16 v2, 0x2710

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mJpegCallbackTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/android/camera/Handle;

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mIsShutterCallbackReceived:Z

    sget-object v0, Lcom/android/camera/TIME;->ShutterCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->Start()V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    :goto_1
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_0
    iput-object v6, p0, Lcom/android/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/android/camera/Handle;

    goto :goto_0

    :cond_1
    move-object v0, v6

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mIsShutterCallbackReceived:Z

    sget-object v0, Lcom/android/camera/TIME;->JpegCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->Start()V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    iput-object v6, p0, Lcom/android/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/android/camera/Handle;

    :cond_3
    throw v7
.end method

.method private takePictureInternal(Lcom/android/camera/CaptureHandle;ZZ)V
    .locals 15

    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takePictureInternal(checkStorage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isFocusLocked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - Start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Handle : \'"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v4, "\' ["

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "]"

    invoke-static/range {v1 .. v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Camera is closed"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    :goto_0
    return-void

    :cond_0
    if-nez p3, :cond_1

    iget-object v1, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takePictureInternal() - Current taking picture state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Starting:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takePictureInternal() - Current taking picture state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Check storage"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->checkCanTakePicture()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - No available storage space"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/camera/CaptureFailedReason;->StorageError:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->checkInternalDataSpace()V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->hasEnoughInternalDataSpace:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Low internal data space"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/camera/CaptureFailedReason;->LowInternalDataSpace:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    :cond_4
    if-nez p3, :cond_5

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->checkMediaQueueState()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Image queue is full"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/camera/CaptureFailedReason;->ImageQueueIsFull:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mShutterSoundHandle:Lcom/android/camera/Handle;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v2, 0x7f060004

    invoke-interface {v1, v2}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mShutterSoundHandle:Lcom/android/camera/Handle;

    :cond_6
    sget-object v2, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v1, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/RecordingState;

    invoke-virtual {v1}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takePictureInternal() - Current recording state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    :pswitch_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportVideoSnapshot()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Video snapshot is not supported"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/camera/CaptureFailedReason;->InvalidState:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Taking picture during video recording"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Start preview"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->startPreviewSilently()Lcom/android/camera/CameraPreviewStartResult;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v14, 0x1

    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/TakingPictureState;->Starting:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/camera/CameraThread;->captureStartingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/CaptureEventArgs;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;)V

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    :cond_9
    if-nez p3, :cond_d

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/android/camera/CameraThread;->mIsFirstFrameCached:Z

    if-nez v1, :cond_d

    if-nez v14, :cond_d

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    if-eqz v1, :cond_d

    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Auto-focusing before taking picture"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->m_LatestFocusAreas:[Landroid/graphics/RectF;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    sget-object v2, Lcom/android/camera/AutoFocusMode;->BeforeCapture:Lcom/android/camera/AutoFocusMode;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->m_LatestFocusAreas:[Landroid/graphics/RectF;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/IAutoFocusController;->autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/util/List;)Lcom/android/camera/Handle;

    goto/16 :goto_0

    :cond_a
    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Cannot start preview"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/camera/CaptureFailedReason;->DriverFail:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    :cond_b
    const/4 v14, 0x0

    goto :goto_1

    :cond_c
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    sget-object v2, Lcom/android/camera/AutoFocusMode;->BeforeCapture:Lcom/android/camera/AutoFocusMode;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/IAutoFocusController;->autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/util/List;)Lcom/android/camera/Handle;

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const/4 v2, 0x2

    invoke-static {v2}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v3, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v3, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->forceImageQuality:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->imageQuality:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_e
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraController;->setJpegQuality(I)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/UIRotation;

    iget v13, v1, Lcom/android/camera/rotate/UIRotation;->deviceOrientation:I

    iget-object v1, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->is3DCamera()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    iget v1, v1, Lcom/android/camera/CameraType;->orientation:I

    sub-int/2addr v1, v13

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v13, v1, 0x168

    :goto_2
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takePictureInternal() - Set rotation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v1, v13}, Lcom/android/camera/CameraController;->setRotation(I)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mLocationManager:Lcom/android/camera/location/ILocationManager;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mLocationManager:Lcom/android/camera/location/ILocationManager;

    iget-object v1, v1, Lcom/android/camera/location/ILocationManager;->location:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraController;->setLocation(Landroid/location/Location;)V

    :goto_3
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->isAddTimeStamp()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "img-timestamp"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isAutoEnhanceEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v3, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    iget-object v3, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v3, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "postproc-enable-imboost"

    const-string v3, "on"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "postproc-enable-denoise"

    const-string v3, "on"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "exif-datetime"

    sget-object v3, Lcom/android/camera/CameraThread;->mExifDateTimeFormat:Ljava/text/DateFormat;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/camera/CaptureHandle;->captureTime:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v3, "review_duration"

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "on"

    :goto_6
    invoke-virtual {v2, v3, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSaveMirrorImage()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isSaveMirrorImageEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v12, 0x1

    :goto_7
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v3, "save_mirror"

    if-eqz v12, :cond_1a

    const-string v1, "true"

    :goto_8
    invoke-virtual {v2, v3, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    iget-object v1, p0, Lcom/android/camera/CameraThread;->preparingParamsBeforeTakingPictureEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1}, Lcom/android/camera/event/Event;->hasHandlers()Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v8, Lcom/android/camera/CameraParamsSetupEventArgs;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v1, v2}, Lcom/android/camera/CameraParamsSetupEventArgs;-><init>(Lcom/android/camera/Handle;Landroid/hardware/Camera;Lcom/android/camera/CameraController;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->preparingParamsBeforeTakingPictureEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0, v8}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    :cond_10
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v1}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/TakingPictureState;->TakingPicture:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    const-class v2, Lcom/android/camera/IPhotoCaptureHandler;

    invoke-virtual {v1, v2}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponents(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    const/4 v11, 0x0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v10, v1, -0x1

    :goto_9
    if-ltz v10, :cond_11

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IPhotoCaptureHandler;

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mPhotoCaptureHandler:Lcom/android/camera/IPhotoCaptureHandler;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPhotoCaptureHandler:Lcom/android/camera/IPhotoCaptureHandler;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v0, p1

    invoke-interface {v1, v0, v2, v3}, Lcom/android/camera/IPhotoCaptureHandler;->takePicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v2, "CameraThread"

    const-string v3, "takePictureInternal() - Taking picture process is handled by \'"

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPhotoCaptureHandler:Lcom/android/camera/IPhotoCaptureHandler;

    check-cast v1, Lcom/android/camera/component/Component;

    invoke-virtual {v1}, Lcom/android/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "\'"

    invoke-static {v2, v3, v1, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x1

    :cond_11
    if-nez v11, :cond_12

    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Use default taking picture process"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mPhotoCaptureHandler:Lcom/android/camera/IPhotoCaptureHandler;

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->takePicture()V

    :cond_12
    iget-object v1, p0, Lcom/android/camera/CameraThread;->captureStartedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/CaptureEventArgs;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;)V

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_a
    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - End"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    iget-object v1, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    iget v1, v1, Lcom/android/camera/CameraType;->orientation:I

    add-int/2addr v1, v13

    rem-int/lit16 v13, v1, 0x168

    goto/16 :goto_2

    :cond_14
    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Set rotation landscape while 3D photo mode"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_15
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - No ILocationManager interface to get current location"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_16
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "img-timestamp"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_17
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "postproc-enable-imboost"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "postproc-enable-denoise"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_18
    const-string v1, "off"

    goto/16 :goto_6

    :cond_19
    const/4 v12, 0x0

    goto/16 :goto_7

    :cond_1a
    const-string v1, "false"

    goto/16 :goto_8

    :cond_1b
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_9

    :catch_0
    move-exception v9

    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Cannot take picture"

    invoke-static {v1, v2, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mPhotoCaptureHandler:Lcom/android/camera/IPhotoCaptureHandler;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/camera/CaptureFailedReason;->Unknown:Lcom/android/camera/CaptureFailedReason;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final threadAccessCheck()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private toggleStorageSlot()V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isStorageSlotLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CameraThread"

    const-string v2, "toggleStorageSlot() - Storage slot settings is locked"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v1}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v1}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleStorageSlot() - Change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleStorageSlot() - No storage card slot, change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/io/StorageSlot;->INVALID:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/io/StorageSlot;->INVALID:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleStorageSlot() - Change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleStorageSlot() - No internal memory slot, change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/io/StorageSlot;->INVALID:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/io/StorageSlot;->INVALID:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public IsEqualOrAbove720p()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    iget-object v3, v3, Lcom/android/camera/ICaptureResolutionManager;->videoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Resolution;

    if-eqz v0, :cond_0

    sget-object v3, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/camera/Resolution;->Video_720p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/camera/Resolution;->Video_1080p:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/android/camera/Resolution;->Video_1080p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
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

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

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
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/android/camera/property/Property;->checkOwnerKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CameraThread"

    const-string v1, "bindProperty() - Cannot bind from CameraThread\'s property"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/android/camera/property/Property;->checkOwnerKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CameraThread"

    const-string v1, "bindProperty() - Can only bind to CameraThread\'s property"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_3
    const-string v0, "CameraThread"

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

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/property/Property;->bind(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method

.method public calculatePicturesRemaining()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CameraThread;->calculatePicturesRemaining(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public calculatePicturesRemaining(J)J
    .locals 14

    const-string v10, "CameraThread"

    const-string v11, "calculatePicturesRemaining() - start"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    iget-object v10, v10, Lcom/android/camera/ICaptureResolutionManager;->photoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v10}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/Resolution;

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/camera/ResolutionSize;->getInstance()Lcom/android/camera/ResolutionSize;

    move-result-object v10

    invoke-virtual {v7}, Lcom/android/camera/Resolution;->getNameResId()I

    move-result v11

    iget-object v12, p0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/ResolutionSize;->getSize(ILjava/lang/String;)I

    move-result v10

    int-to-long v1, v10

    :goto_0
    const-wide/16 v10, -0x1

    cmp-long v10, v10, v1

    if-nez v10, :cond_0

    const-string v10, "CameraThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getResolutionSize fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v1, 0x61a80

    :cond_0
    iget-object v10, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v10}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v10}, Lcom/android/camera/io/StorageSlot;->getFreeSpace()J

    move-result-wide v10

    const-wide/32 v12, 0x100000

    sub-long/2addr v10, v12

    sub-long v8, v10, p1

    div-long v5, v8, v1

    move-wide v3, v5

    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-gez v10, :cond_1

    const-wide/16 v3, 0x0

    :cond_1
    const-string v10, "CameraThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "return freeshot = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v10, "CameraThread"

    const-string v11, "calculatePicturesRemaining() - end"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v3

    :cond_2
    :try_start_1
    const-string v10, "CameraThread"

    const-string v11, "calculatePicturesRemaining() - No photo resolution"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v1, -0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v10, "CameraThread"

    const-string v11, "catch - calculatePicturesRemaining with exception: "

    invoke-static {v10, v11, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v10, "CameraThread"

    const-string v11, "return freeshot = -1"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, -0x1

    goto :goto_1
.end method

.method public final cancelClosingCamera()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x2713

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mPendingCloseCamera:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final cancelOpeningCamera()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    return-void
.end method

.method public final cancelStartingPreview()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x2711

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x2712

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    return-void
.end method

.method public cancelTakingPicture()V
    .locals 2

    const-string v0, "CameraThread"

    const-string v1, "cancelTakingPicture() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    new-instance v0, Lcom/android/camera/CameraThread$26;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$26;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    :goto_0
    const-string v0, "CameraThread"

    const-string v1, "cancelTakingPicture() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->cancelTakingPictureInternal()V

    goto :goto_0
.end method

.method public changeMode(Lcom/android/camera/CameraMode;)Lcom/android/camera/Handle;
    .locals 4

    const-string v1, "CameraThread"

    const-string v2, "changeMode("

    const-string v3, ") - start"

    invoke-static {v1, v2, p1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/camera/CameraThread$ModeChangeHandle;

    invoke-direct {v0, p1}, Lcom/android/camera/CameraThread$ModeChangeHandle;-><init>(Lcom/android/camera/CameraMode;)V

    const-string v1, "CameraThread"

    const-string v2, "changeMode() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, p0, :cond_0

    new-instance v1, Lcom/android/camera/CameraThread$19;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/CameraThread$19;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$ModeChangeHandle;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->changeModeInternal(Lcom/android/camera/CameraThread$ModeChangeHandle;)V

    goto :goto_0
.end method

.method public changeStorageSlot(Lcom/android/camera/io/StorageSlot;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/CameraThread$18;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraThread$18;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/io/StorageSlot;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "changeStorageSlot() - no camera handler"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->changeStorageSlotInternal(Lcom/android/camera/io/StorageSlot;)V

    goto :goto_0
.end method

.method public final changeZoom(I)V
    .locals 7

    const/16 v6, 0x2756

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v3, p0, :cond_8

    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeZoom("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - start sync"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/camera/DisplayDevice;->needDelayZooming()Z

    move-result v3

    if-nez v3, :cond_7

    move v0, v2

    if-ge v2, p1, :cond_5

    :cond_2
    add-int/lit8 v3, v0, 0x2

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v3, v0}, Lcom/android/camera/CameraController;->setZoom(I)V

    :try_start_0
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3, v4, v0}, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->setPinchZoom(Landroid/hardware/Camera;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v3, v6}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pending zooming request found, stop zooming at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeZoom("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - end sync"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_1

    :cond_4
    invoke-static {}, Ljava/lang/Thread;->yield()V

    if-lt v0, p1, :cond_2

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v0, -0x2

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v3, v0}, Lcom/android/camera/CameraController;->setZoom(I)V

    :try_start_1
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3, v4, v0}, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->setPinchZoom(Landroid/hardware/Camera;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v3, v6}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pending zooming request found, stop zooming at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v1

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_3

    :cond_6
    invoke-static {}, Ljava/lang/Thread;->yield()V

    if-gt v0, p1, :cond_5

    goto :goto_2

    :cond_7
    move v0, p1

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v3, v0}, Lcom/android/camera/CameraController;->setZoom(I)V

    :try_start_2
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3, v4, v0}, Lcom/htc/wrap/android/hardware/HtcWrapCamera;->setPinchZoom(Landroid/hardware/Camera;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->needDelayZooming()Z

    move-result v3

    if-eqz v3, :cond_3

    const-wide/16 v3, 0x64

    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v3

    goto/16 :goto_2

    :catch_3
    move-exception v1

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v3, :cond_9

    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeZoom("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - start async"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v6, p1, v4, v5}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeZoom("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - end async"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v3, "CameraThread"

    const-string v4, "Cannot change zoom because there is no handler"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final checkStorageState()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->checkStorageState(Z)V

    return-void
.end method

.method public final checkStorageState(Z)V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    new-instance v0, Lcom/android/camera/CameraThread$14;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraThread$14;-><init>(Lcom/android/camera/CameraThread;Z)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v1

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/camera/CameraThread;->checkStorageStateInternal(Lcom/android/camera/io/StorageState;ZJ)V

    goto :goto_0
.end method

.method public final closeCamera()V
    .locals 13

    const/16 v2, 0x273d

    const/4 v12, 0x0

    const/4 v3, 0x1

    const/4 v11, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const-string v0, "CameraThread"

    const-string v1, "closeCamera() - Close camera asynchronuously"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x2713

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "closeCamera() - Start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CameraThread"

    const-string v1, "closeCamera() - Cancel video recording"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iput-object v11, p0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraThread$MainHandler;->removeMessages(I)V

    sget-object v0, Lcom/android/camera/CaptureFailedReason;->Unknown:Lcom/android/camera/CaptureFailedReason;

    invoke-direct {p0, v9, v0}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPendingCloseCamera:Z

    if-eqz v0, :cond_2

    const-string v0, "CameraThread"

    const-string v1, "closeCamera() - Camera close is still pending, close camera later"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget-object v1, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v0, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeCamera() - Taking picture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", close camera later"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mPendingCloseCamera:Z

    monitor-exit p0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "CameraThread"

    const-string v1, "closeCamera() - Cancel taking picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    sget-object v0, Lcom/android/camera/CaptureFailedReason;->Unknown:Lcom/android/camera/CaptureFailedReason;

    invoke-direct {p0, v9, v0}, Lcom/android/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    :pswitch_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-direct {p0, v0, v12, v3}, Lcom/android/camera/CameraThread;->stopVideoRecordingInternal(Lcom/android/camera/CaptureHandle;ZZ)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->stopPreview()V

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->resetJpegData()V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/CameraThread;->cameraClosingEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    const-string v0, "CameraThread"

    const-string v1, "before release"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/android/camera/CloseCameraRequestEventArgs;

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-direct {v7, v0}, Lcom/android/camera/CloseCameraRequestEventArgs;-><init>(Landroid/hardware/Camera;)V

    :try_start_2
    iget-object v0, p0, Lcom/android/camera/CameraThread;->requestCloseCameraEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v0, p0, v7}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    invoke-virtual {v7}, Lcom/android/camera/CloseCameraRequestEventArgs;->isHandled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    const-string v1, "Close camera"

    const-wide/16 v2, 0x1388

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraDriverTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;

    move-result-object v10

    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    invoke-virtual {v0, v10}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    :cond_4
    const-string v0, "CameraThread"

    const-string v1, "after release"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iput-object v11, p0, Lcom/android/camera/CameraThread;->mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    iput-object v11, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/camera/CameraToken;->releaseToken(Ljava/lang/Object;)V

    iput-object v11, p0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/CameraThread;->cameraClosedEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    const-string v0, "CameraThread"

    const-string v1, "Release Camera"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iput-boolean v12, p0, Lcom/android/camera/CameraThread;->mIsParamsPrepared:Z

    const-string v0, "CameraThread"

    const-string v1, "closeCamera() - End"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v8

    const-string v0, "CameraThread"

    const-string v1, "Exception was occurred while requesting close camera"

    invoke-static {v0, v1, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    invoke-virtual {v1, v10}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    :cond_6
    throw v0

    :cond_7
    const-string v0, "CameraThread"

    const-string v1, "mCameraDevice == null in close_camera"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createPostViewImage([B)V
    .locals 10

    iget-object v7, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v7}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string v7, "CameraThread"

    const-string v8, "!!!!!!!! postviewData == null !!!!!!!!"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v7, "CameraThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "postviewData != null, postviewData.length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v7, "postview-size"

    invoke-virtual {v4, v7}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x78

    :try_start_0
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    iget-object v7, p0, Lcom/android/camera/CameraThread;->postviewImageRetrievedEvent:Lcom/android/camera/event/Event;

    new-instance v8, Lcom/android/camera/imaging/RawImageEventArgs;

    sget-object v9, Lcom/android/camera/imaging/PixelFormat;->Yvu420Sp:Lcom/android/camera/imaging/PixelFormat;

    invoke-direct {v8, p1, v9, v3, v1}, Lcom/android/camera/imaging/RawImageEventArgs;-><init>([BLcom/android/camera/imaging/PixelFormat;II)V

    invoke-virtual {v7, p0, v8}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v7, "CameraThread"

    const-string v8, "createPostViewImage() - Cannot get post-view image size"

    invoke-static {v7, v8, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final deleteLatestMedia()V
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v4, p0, :cond_3

    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - start sync"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/CameraThread;->deletingLatestMediaEvent:Lcom/android/camera/event/Event;

    sget-object v5, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v4, p0, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    new-instance v2, Lcom/android/camera/event/SingleHandlerEventArgs;

    invoke-direct {v2}, Lcom/android/camera/event/SingleHandlerEventArgs;-><init>()V

    iget-object v4, p0, Lcom/android/camera/CameraThread;->requestDeleteLatestMediaEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v4, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    invoke-virtual {v2}, Lcom/android/camera/event/SingleHandlerEventArgs;->isHandled()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - Use default method to delete latest media"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v4, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - No latest content URI"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mRequestedFilePath:Lcom/android/camera/io/Path;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getRequestedUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - Latest content URI is requested from other AP, ingore deletion"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/android/camera/CameraThread$15;

    const-string v4, "Default media deletion thread"

    invoke-direct {v3, p0, v4, v1, v0}, Lcom/android/camera/CameraThread$15;-><init>(Lcom/android/camera/CameraThread;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    sget-object v5, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraMode:[I

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/CameraMode;

    invoke-virtual {v4}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_1
    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - end sync"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    sget-object v5, Lcom/android/camera/io/DCFInfo;->DEFAULT:Lcom/android/camera/io/DCFInfo;

    invoke-static {v4, v5}, Lcom/android/camera/io/DCFUtility;->restoreFileCounter(Lcom/android/camera/Settings;Lcom/android/camera/io/DCFInfo;)V

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    sget-object v5, Lcom/android/camera/CameraThread;->mVideoDcfInfo:Lcom/android/camera/io/DCFInfo;

    invoke-static {v4, v5}, Lcom/android/camera/io/DCFUtility;->restoreFileCounter(Lcom/android/camera/Settings;Lcom/android/camera/io/DCFInfo;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v4, :cond_4

    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - start async"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/android/camera/CameraThread$16;

    invoke-direct {v4, p0}, Lcom/android/camera/CameraThread$16;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {p0, v4}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - end async"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v4, "CameraThread"

    const-string v5, "Cannot delete media because there is no handler"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final disablePreviewCallback()V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    iget v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disablePreviewCallback() - counter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->clearPreviewCallback()V

    :cond_0
    return-void
.end method

.method public final disableSoundEffect()V
    .locals 2

    const-string v0, "CameraThread"

    const-string v1, "disableSoundEffect()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const-string v1, "active_ap=Camcorder;sound_effect_enable=off"

    invoke-interface {v0, v1}, Lcom/android/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "disableSoundEffect() - No IAudioManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final enablePreviewCallback()V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    iget v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enablePreviewCallback() - counter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mCanSetPreviewCallback:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->setupPreviewCallback()V

    goto :goto_0
.end method

.method public final enableSoundEffect()V
    .locals 2

    const-string v0, "CameraThread"

    const-string v1, "enableSoundEffect()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const-string v1, "active_ap=Camcorder;sound_effect_enable=on"

    invoke-interface {v0, v1}, Lcom/android/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "enableSoundEffect() - No IAudioManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final endTakePicture(Lcom/android/camera/CaptureHandle;)V
    .locals 9

    const/4 v8, 0x1

    const-string v0, "CameraThread"

    const-string v1, "endTakePicture() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    if-nez p1, :cond_0

    const-string v0, "CameraThread"

    const-string v1, "endTakePicture() - Null handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "endTakePicture() - Handle : \'"

    iget-object v2, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\' ["

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eq p1, v0, :cond_1

    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endTakePicture() - Invalid handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/TakingPictureState;->TakingPicture:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endTakePicture() - Current taking picture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-boolean v8, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "CameraThread"

    const-string v1, "endTakePicture() - Take picture during recording, restore IsPreviewing"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->stopPreview()V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v0, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/CameraThread;->captureStoppedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/CaptureEventArgs;

    invoke-direct {v1, p1}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    const/4 v7, 0x0

    const/4 v6, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPendingExit:Z

    if-eqz v0, :cond_8

    const/4 v7, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mPendingCloseCamera:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mPendingExit:Z

    :cond_5
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->exit()V

    :cond_6
    :goto_2
    if-nez v7, :cond_7

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPendingModeChangeHandle:Lcom/android/camera/CameraThread$ModeChangeHandle;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPendingModeChangeHandle:Lcom/android/camera/CameraThread$ModeChangeHandle;

    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->changeModeInternal(Lcom/android/camera/CameraThread$ModeChangeHandle;)V

    :cond_7
    const-string v0, "CameraThread"

    const-string v1, "endTakePicture() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPendingCloseCamera:Z

    if-eqz v0, :cond_5

    const/4 v6, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mPendingCloseCamera:Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_9
    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->closeCamera()V

    goto :goto_2
.end method

.method public final exit()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, p0, :cond_0

    const-string v1, "CameraThread"

    const-string v2, "exit() - Exit camera thread asynchronously"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v2, 0x2718

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "CameraThread"

    const-string v2, "exit() - Start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/CameraThread;->mPendingExit:Z

    if-eqz v1, :cond_1

    const-string v1, "CameraThread"

    const-string v2, "exit() - Thread exit is still pending, exit later"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->closeCamera()V

    iget-boolean v1, p0, Lcom/android/camera/CameraThread;->mPendingCloseCamera:Z

    if-eqz v1, :cond_2

    const-string v1, "CameraThread"

    const-string v2, "exit() - Cannot close camera, exit later"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/CameraThread;->mPendingExit:Z

    monitor-exit p0

    goto :goto_0

    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/android/camera/CameraThread;->exitingEvent:Lcom/android/camera/event/Event;

    sget-object v2, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    invoke-virtual {v1}, Lcom/android/camera/component/CameraThreadComponentManager;->removeComponents()V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    invoke-virtual {v1}, Lcom/android/camera/component/CameraThreadComponentManager;->release()V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/android/camera/event/Event;->destroyAllEvents(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getThreadMonitor()Lcom/android/camera/debug/ThreadMonitor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/debug/ThreadMonitor;->stopMonitorCurrentThread()V

    :cond_3
    iput-object v3, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    iput-object v3, p0, Lcom/android/camera/CameraThread;->mAutoFocusController:Lcom/android/camera/IAutoFocusController;

    iput-object v3, p0, Lcom/android/camera/CameraThread;->mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread$MainHandler;->release()V

    const-string v1, "CameraThread"

    const-string v2, "exit() - End"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method public final getCameraActivity()Lcom/android/camera/HTCCamera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method public getCameraController()Lcom/android/camera/CameraController;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    return-object v0
.end method

.method public final getCaptureElapsedMilliseconds()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/CameraThread;->mCaptureStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    return-object v0
.end method

.method public final getComponentFactory()Lcom/android/camera/component/CameraThreadComponentFactory;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentFactory:Lcom/android/camera/component/CameraThreadComponentFactory;

    return-object v0
.end method

.method public bridge synthetic getComponentFactory()Lcom/android/camera/component/ComponentFactory;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getComponentFactory()Lcom/android/camera/component/CameraThreadComponentFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    return-object v0
.end method

.method public bridge synthetic getComponentManager()Lcom/android/camera/component/ComponentManager;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    return-object v0
.end method

.method public final getHtcWrapCamera()Lcom/htc/wrap/android/hardware/HtcWrapCamera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    return-object v0
.end method

.method public getJpegData()[B
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    return-object v0
.end method

.method public final getLastContentUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v0, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getLastMediaInfo()Lcom/android/camera/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {v0}, Lcom/android/camera/MediaInfo;->clone()Lcom/android/camera/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getMediaQueueSize()J
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

    invoke-virtual {v0}, Lcom/android/camera/io/IMediaFileWriter;->getMediaQueueSize()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final getPendingFileSize()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getMediaQueueSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecordingTime()J
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getCaptureElapsedMilliseconds()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getRecordingVideoFilePath()Lcom/android/camera/io/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/Path;

    return-object v0
.end method

.method public getSettings()Lcom/android/camera/CameraSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    return-object v0
.end method

.method public bridge synthetic getSettings()Lcom/android/camera/Settings;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    return-object v0
.end method

.method public final handleCommonCallbackTimeout(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCommonCallbackTimeout() - Call-back \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' timeout"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$FeatureConfig$DriverCallbackTimeoutHandlingPolicy:[I

    invoke-static {}, Lcom/android/camera/FeatureConfig;->getDriverCallbackTimeoutHandlingPolicy()Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v2, "CameraThread"

    const-string v3, "handleCommonCallbackTimeout() - Ignore"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/TakingPictureState;->TakingPicture:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CameraThread"

    const-string v3, "handleCommonCallbackTimeout() - Cancel taking picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->captureFailedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/CaptureEventArgs;

    sget-object v4, Lcom/android/camera/CaptureFailedReason;->DriverFail:Lcom/android/camera/CaptureFailedReason;

    invoke-direct {v3, v0, v4}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    new-instance v3, Lcom/android/camera/CameraThread$27;

    invoke-direct {v3, p0}, Lcom/android/camera/CameraThread$27;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/CameraThread;->mPendingExit:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/CameraThread;->mPendingExit:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/CameraThread;->mPendingCloseCamera:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    const-string v2, "CameraThread"

    const-string v3, "handleCommonCallbackTimeout() - Exit camera thread"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->exit()V

    goto :goto_0

    :cond_2
    const-string v2, "CameraThread"

    const-string v3, "handleCommonCallbackTimeout() - No photo capture handle"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_3
    const-string v2, "CameraThread"

    const-string v3, "handleCommonCallbackTimeout() - Close camera"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->closeCamera()V

    goto :goto_0

    :pswitch_2
    const-string v2, "CameraThread"

    const-string v3, "handleCommonCallbackTimeout() - Throw exception to stop camera thread"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call-back \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is missing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final handleCommonJpegCallback([BLandroid/hardware/Camera;Z)V
    .locals 5

    const-string v2, "CameraThread"

    const-string v3, "handleCommonJpegCallback() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    sget-object v2, Lcom/android/camera/TIME;->JpegCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v2}, Lcom/android/camera/TIME$Value;->End()V

    sget-object v2, Lcom/android/camera/TIME;->StoreJpegImage:Lcom/android/camera/TIME$Value;

    invoke-virtual {v2}, Lcom/android/camera/TIME$Value;->Start()V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    new-instance v3, Lcom/android/camera/CameraThread$4;

    invoke-direct {v3, p0}, Lcom/android/camera/CameraThread$4;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->endTakePicture(Lcom/android/camera/CaptureHandle;)V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2, v0}, Lcom/android/camera/HTCCamera;->completeTakingPicture(Lcom/android/camera/CaptureHandle;)V

    :cond_0
    if-eqz p3, :cond_1

    const-string v2, "CameraThread"

    const-string v3, "handleCommonJpegCallback() - cancel save image task"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->captureCanceledEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/CaptureEventArgs;

    invoke-direct {v3, v0}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;)V

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    :goto_0
    const-string v2, "CameraThread"

    const-string v3, "handleCommonJpegCallback() - end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    array-length v2, p1

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/camera/CameraThread;->captureFailedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/CaptureEventArgs;

    sget-object v4, Lcom/android/camera/CaptureFailedReason;->DriverFail:Lcom/android/camera/CaptureFailedReason;

    invoke-direct {v3, v0, v4}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/android/camera/io/SaveImageTask;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/camera/io/SaveImageTask;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;[B)V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->is3DCamera()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    :goto_1
    iput-object v2, v1, Lcom/android/camera/io/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/io/SaveImageTask;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/camera/CameraThread;->m3DFileFormat:Lcom/android/camera/io/FileFormat;

    goto :goto_1
.end method

.method public final handleCommonPostviewCallback([BLandroid/hardware/Camera;)V
    .locals 2

    const-string v0, "CameraThread"

    const-string v1, "handleCommonPostviewCallback() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraThread;->createPostViewImage([B)V

    const-string v0, "CameraThread"

    const-string v1, "handleCommonPostviewCallback() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleCommonRawCallback([BLandroid/hardware/Camera;)V
    .locals 0

    return-void
.end method

.method public handleCommonShutterCallback()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->playShutterSound()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAutoSceneController:Lcom/android/camera/IAutoSceneController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAutoSceneController:Lcom/android/camera/IAutoSceneController;

    iget-object v0, v0, Lcom/android/camera/IAutoSceneController;->isWdrScene:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    new-instance v1, Lcom/android/camera/CameraThread$5;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraThread$5;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera/TIME;->ShutterCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->End()V

    sget-object v0, Lcom/android/camera/TIME;->RawCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->Start()V

    return-void

    :cond_2
    const-string v0, "CameraThread"

    const-string v1, "handleCommonShutterCallback - Cannot find IAutoSceneController."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final invokeAsync(Ljava/lang/Runnable;)Z
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public final invokeAsync(Ljava/lang/Runnable;J)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v4, 0x2774

    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-gtz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v3, v0}, Lcom/android/camera/CameraThread$MainHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v3, v0, p2, p3}, Lcom/android/camera/CameraThread$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    const-string v1, "CameraThread"

    const-string v3, "invokeAsync() - Fail to post to camera thread handler"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_3
    const-string v1, "CameraThread"

    const-string v3, "invokeAsync() - No camera thread handler"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0
.end method

.method public is3DMode()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/android/camera/CameraThread;->m3DPreviewStatus:I

    if-eq v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mIsRunning:Z

    return v0
.end method

.method public final isShutterSoundNeeded()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isShutterSoundEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSlowMotionMode()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v1, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->isServiceMode:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v1, :cond_1

    check-cast p3, Lcom/android/camera/CameraDeviceEventArgs;

    iget-object v1, p3, Lcom/android/camera/CameraDeviceEventArgs;->openFailedReason:Lcom/android/camera/CameraOpenFailedReason;

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mLastCameraOpenFailedReason:Lcom/android/camera/CameraOpenFailedReason;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v1, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/android/camera/io/MediaSaveEventArgs;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v2, v0, Lcom/android/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    iput-object v2, v1, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v2, v0, Lcom/android/camera/MediaEventArgs;->filePath:Lcom/android/camera/io/Path;

    iput-object v2, v1, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v2, v0, Lcom/android/camera/MediaEventArgs;->format:Lcom/android/camera/io/FileFormat;

    iget-object v2, v2, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method public final openCamera(Lcom/android/camera/CameraType;)Lcom/android/camera/Handle;
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    const-string v1, "cameraType"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    new-instance v0, Lcom/android/camera/SessionHandle;

    const-string v1, "Camera"

    invoke-direct {v0, v1}, Lcom/android/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, p0, :cond_1

    const-string v1, "CameraThread"

    const-string v2, "openCamera() - Open camera from another thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v2, 0x2710

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v5, v5, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CameraThread;->openCameraInternal(Lcom/android/camera/Handle;Lcom/android/camera/CameraType;)Z

    goto :goto_0
.end method

.method public final playShutterSound()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->playShutterSound(Z)V

    return-void
.end method

.method public final playShutterSound(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mShutterSoundHandle:Lcom/android/camera/Handle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mShutterSoundHandle:Lcom/android/camera/Handle;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "playShutterSound() - No shutter sound ID"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "CameraThread"

    const-string v1, "playShutterSound() - No IAudioManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public releaseCameraThread()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method public resetJpegData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    return-void
.end method

.method public final resetZoom(Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x2740

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->resetZoomInternal(Z)V

    goto :goto_0
.end method

.method public final restartPreview(Lcom/android/camera/CameraType;)Lcom/android/camera/Handle;
    .locals 3

    new-instance v0, Lcom/android/camera/SessionHandle;

    const-string v1, "RestartPreview"

    invoke-direct {v0, v1}, Lcom/android/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    const-string v1, "CameraThread"

    const-string v2, "restartPreview() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, p0, :cond_0

    const-string v1, "CameraThread"

    const-string v2, "restartPreview() - Called from another thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/camera/CameraThread$9;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/camera/CameraThread$9;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/SessionHandle;Lcom/android/camera/CameraType;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->stopPreview()V

    invoke-direct {p0, v0, p1}, Lcom/android/camera/CameraThread;->startPreviewInternal(Lcom/android/camera/Handle;Lcom/android/camera/CameraType;)Lcom/android/camera/CameraPreviewStartResult;

    goto :goto_0
.end method

.method public run()V
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    const-string v1, "CameraThread"

    const-string v2, "***** START *****"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v1, Lcom/android/camera/CameraThread$MainHandler;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraThread$MainHandler;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getThreadMonitor()Lcom/android/camera/debug/ThreadMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/debug/ThreadMonitor;->startMonitorCurrentThread()V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    const-string v1, "CameraThread.CameraType"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    const-string v1, "CameraThread.CaptureRotation"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    const-string v1, "CameraThread.FlashMode"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/FlashMode;->Auto:Lcom/android/camera/FlashMode;

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->flashMode:Lcom/android/camera/property/Property;

    const-string v1, "CameraThread.HasEnoughInternalDataSpace"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->hasEnoughInternalDataSpace:Lcom/android/camera/property/Property;

    const-string v1, "CameraThread.HasMovingObjects"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->hasMovingObjects:Lcom/android/camera/property/Property;

    const-string v1, "CameraThread.IsEyeBlinked"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->isEyeBlinked:Lcom/android/camera/property/Property;

    const-string v1, "CameraThread.IsHdrSuggested"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->isHdrSuggested:Lcom/android/camera/property/Property;

    const-string v1, "CameraThread.IsLowlight"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->isLowlight:Lcom/android/camera/property/Property;

    const-string v1, "CameraThread.IsPreviewStarted"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    const-string v1, "CameraThread.IsRecording"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    const-string v1, "CameraThread.IsTakingPicture"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    const-string v1, "CameraThread.Mode"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mInitialMode:Lcom/android/camera/CameraMode;

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    const-string v1, "CameraThread.PreviewSize"

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    const-string v1, "CameraThread.RecordingState"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    const-string v1, "CameraThread.StorageSlot"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    const-string v1, "CameraThread.StorageState"

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    const-string v1, "CameraThread.TakingPictureState"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    const-string v1, "CameraThread.ZoomRange"

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->zoomRange:Lcom/android/camera/property/Property;

    const-string v1, "CameraThread.ZoomValue"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    const-string v1, "CameraThread.AutoFocusCanceled"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->autoFocusCanceledEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.AutoFocusFinished"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->autoFocusFinishedEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.AutoFocusStarted"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->autoFocusStartedEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.AutoFocusStarting"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->autoFocusStartingEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.CameraClosed"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->cameraClosedEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.CameraClosing"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->cameraClosingEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.CameraOpen"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->cameraOpenEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.CameraOpenFailed"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.CaptureCanceled"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->captureCanceledEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.CaptureFailed"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->captureFailedEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.CaptureStarted"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->captureStartedEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.CaptureStarting"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->captureStartingEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.CaptureStopped"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->captureStoppedEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.DeletingLatestMedia"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->deletingLatestMediaEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.Exiting"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->exitingEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.HtcCallbackReceived"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->HtcCallbackReceivedEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.MediaDeleted"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mediaDeletedEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.MediaRecorderInfoCallback"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mediaRecorderInfoCallbackEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.MediaSaved"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.MediaSaveFailed"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.ModeChanged"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->modeChangedEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.ModeChangeFailed"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->modeChangeFailedEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.PostviewImageRetrieved"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->postviewImageRetrievedEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.PreparingParamsAfterPreviewStart"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->preparingParamsAfterPreviewStartEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.PreparingParamsBeforePreviewStart"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->preparingParamsBeforePreviewStartEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.PreparingParamsBeforeTakingPicture"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->preparingParamsBeforeTakingPictureEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/CameraThread$13;

    const-string v2, "CameraThread.PreviewFrameRetrieved"

    invoke-direct {v1, p0, p0, v2}, Lcom/android/camera/CameraThread$13;-><init>(Lcom/android/camera/CameraThread;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.PreviewStarted"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->previewStartedEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.PreviewStartFailed"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->previewStartFailedEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.PreviewStarting"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->previewStartingEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.PreviewStopped"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->previewStoppedEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.PreviewStopping"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->previewStoppingEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.RecordingFailed"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->recordingFailedEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.RequestCloseCamera"

    sget-object v2, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v1, v2}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->requestCloseCameraEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.RequestDeleteLatestMedia"

    sget-object v2, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v1, v2}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->requestDeleteLatestMediaEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.RequestOpenCamera"

    sget-object v2, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v1, v2}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->requestOpenCameraEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.SavingImage"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->savingImageEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.TakingPictureFailed"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    const-string v1, "CameraThread.VideoThumbnailCreated"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->videoThumbnailCreatedEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->enableLogs(I)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->enableLogs(I)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/android/camera/event/Event;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->disableLogs(I)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->enableLogs(I)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->cameraOpenFailedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    new-instance v1, Lcom/android/camera/component/CameraThreadComponentFactory;

    invoke-direct {v1, p0}, Lcom/android/camera/component/CameraThreadComponentFactory;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mComponentFactory:Lcom/android/camera/component/CameraThreadComponentFactory;

    new-instance v1, Lcom/android/camera/component/CameraThreadComponentManager;

    invoke-direct {v1, p0}, Lcom/android/camera/component/CameraThreadComponentManager;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mComponentFactory:Lcom/android/camera/component/CameraThreadComponentFactory;

    sget-object v2, Lcom/android/camera/component/ComponentCategory;->Realtime:Lcom/android/camera/component/ComponentCategory;

    invoke-virtual {v1, v2}, Lcom/android/camera/component/CameraThreadComponentFactory;->createComponents(Lcom/android/camera/component/ComponentCategory;)I

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/component/CameraThreadComponentManager;->enableAutoInitialization(Z)V

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->linkToRequiredServiceComponents()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CameraThread"

    const-string v2, "[Fatal] Some required interface is missing"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "CameraThread"

    const-string v2, "***** STOP *****"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/camera/CameraThread;->mIsRunning:Z

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    const-class v2, Lcom/android/camera/debug/IOperationTimeoutController;

    invoke-virtual {v1, v2}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/debug/IOperationTimeoutController;

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-nez v1, :cond_2

    const-string v1, "CameraThread"

    const-string v2, "No IOperationTimeoutController interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x2776

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "CameraThread"

    const-string v2, "Cannot notify UI that camera thread is running, because message cannot be sent"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    sget-object v1, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    iget-boolean v1, v1, Lcom/android/camera/CameraType;->isSupported:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraThread;->openCamera(Lcom/android/camera/CameraType;)Lcom/android/camera/Handle;

    :goto_2
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->initializeStorageSlot()V

    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "CameraThread"

    const-string v2, "***** STOP *****"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/camera/CameraThread;->mIsRunning:Z

    goto :goto_0

    :cond_4
    :try_start_2
    const-string v1, "CameraThread"

    const-string v2, "Cannot notify UI that camera thread is running, because there is no UI handler"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    const-string v2, "CameraThread"

    const-string v3, "***** STOP *****"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/camera/CameraThread;->mIsRunning:Z

    throw v1

    :cond_5
    :try_start_3
    sget-object v1, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    iget-boolean v1, v1, Lcom/android/camera/CameraType;->isSupported:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraThread;->openCamera(Lcom/android/camera/CameraType;)Lcom/android/camera/Handle;

    goto :goto_2

    :cond_6
    const-string v1, "CameraThread"

    const-string v2, "Cannot open camera first, because there is no supported camera"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public final saveImage(Lcom/android/camera/io/SaveImageTask;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    if-nez p1, :cond_0

    const-string v0, "task"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p1, Lcom/android/camera/io/SaveImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/camera/io/DCFInfo;->DEFAULT:Lcom/android/camera/io/DCFInfo;

    iput-object v0, p1, Lcom/android/camera/io/SaveImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    :cond_1
    iget-object v0, p1, Lcom/android/camera/io/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    iput-object v0, p1, Lcom/android/camera/io/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    :cond_2
    iget-object v0, p1, Lcom/android/camera/io/SaveImageTask;->gpsLocation:Landroid/location/Location;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    iput-object v0, p1, Lcom/android/camera/io/SaveImageTask;->gpsLocation:Landroid/location/Location;

    :cond_3
    iget-object v0, p1, Lcom/android/camera/io/SaveImageTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/io/StorageSlot;

    iput-object v0, p1, Lcom/android/camera/io/SaveImageTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    :cond_4
    iget-wide v0, p1, Lcom/android/camera/io/SaveImageTask;->takenDateTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/android/camera/io/SaveImageTask;->captureHandle:Lcom/android/camera/CaptureHandle;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/android/camera/io/SaveImageTask;->captureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v0, v0, Lcom/android/camera/CaptureHandle;->captureTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/camera/io/SaveImageTask;->takenDateTime:J

    :cond_5
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraStartMode;->SquarePhoto:Lcom/android/camera/CameraStartMode;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraStartMode;->ContactsPhoto:Lcom/android/camera/CameraStartMode;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraStartMode;->GenericServiceCamera:Lcom/android/camera/CameraStartMode;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getRequestedUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_8

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/io/SaveImageTask;->getJpegRawData(Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    :goto_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mMediaFileWriter:Lcom/android/camera/io/IMediaFileWriter;

    invoke-virtual {v0, p1}, Lcom/android/camera/io/IMediaFileWriter;->saveMedia(Lcom/android/camera/io/SaveMediaTask;)Lcom/android/camera/Handle;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "CameraThread"

    const-string v1, "saveImage() - Cannot save image"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void

    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    goto :goto_0

    :cond_9
    const-string v0, "CameraThread"

    const-string v1, "saveImage() - No IMediaFileWriter interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final setCanStartPreview()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    return-void
.end method

.method public final setCaptureRotation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    new-instance v0, Lcom/android/camera/CameraThread$21;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraThread$21;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/rotate/UIRotation;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setCaptureRotationInternal(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0
.end method

.method public final setFirstFrameCacheState(Z)V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    new-instance v0, Lcom/android/camera/CameraThread$20;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraThread$20;-><init>(Lcom/android/camera/CameraThread;Z)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setFirstFrameCacheStateInternal(Z)V

    goto :goto_0
.end method

.method public setFlashMode(Lcom/android/camera/FlashMode;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x2725

    invoke-static {v0, v1, v2, v2, p1}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setFlashModeInternal(Lcom/android/camera/FlashMode;)V

    goto :goto_0
.end method

.method public final setSoundEffect(ZLcom/android/camera/rotate/UIRotation;)V
    .locals 6

    const-string v0, "CameraThread"

    const-string v1, "setSoundEffect(hasEffect="

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ", rotation="

    const-string v5, ")"

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    if-nez p1, :cond_0

    const-string v0, "Mono"

    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->setHWSoundEffect(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$rotate$UIRotation:[I

    invoke-virtual {p2}, Lcom/android/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "Portrait"

    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->setHWSoundEffect(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string v0, "Landscape_Left"

    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->setHWSoundEffect(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "Landscape_Right"

    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->setHWSoundEffect(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startPreview(Lcom/android/camera/CameraType;)Lcom/android/camera/Handle;
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/android/camera/SessionHandle;

    const-string v1, "StartPreview"

    invoke-direct {v0, v1}, Lcom/android/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    const-string v1, "CameraThread"

    const-string v2, "startPreview() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, p0, :cond_0

    const-string v1, "CameraThread"

    const-string v2, "startPreview() - Start preview from another thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v2, 0x2711

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v5, v5, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CameraThread;->startPreviewInternal(Lcom/android/camera/Handle;Lcom/android/camera/CameraType;)Lcom/android/camera/CameraPreviewStartResult;

    goto :goto_0
.end method

.method public final startPreviewDirectly()Lcom/android/camera/Handle;
    .locals 3

    new-instance v0, Lcom/android/camera/SessionHandle;

    const-string v1, "StartPreview"

    invoke-direct {v0, v1}, Lcom/android/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    const-string v1, "CameraThread"

    const-string v2, "startPreviewDirectly() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->startPreviewDirectlyInternal(Lcom/android/camera/Handle;)Lcom/android/camera/CameraPreviewStartResult;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "CameraThread"

    const-string v2, "startPreviewDirectly() - Called from another thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v2, 0x2712

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    const-string v1, "CameraThread"

    const-string v2, "startPreviewDirectly() - No camera handler"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final startPreviewSilently()Lcom/android/camera/CameraPreviewStartResult;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->startPreviewSilently(Z)Lcom/android/camera/CameraPreviewStartResult;

    move-result-object v0

    return-object v0
.end method

.method public final startPreviewSilently(Z)Lcom/android/camera/CameraPreviewStartResult;
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    const-string v1, "CameraThread"

    const-string v2, "startPreviewSilently() - Camera is not open"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->InvalidState:Lcom/android/camera/CameraPreviewStartResult;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getSurfaceStateSyncRoot()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isSurfaceAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CameraThread"

    const-string v3, "startPreviewSilently() - Surface is unavailable"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->InvalidState:Lcom/android/camera/CameraPreviewStartResult;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v1}, Lcom/android/camera/CameraController;->stopPreview()V

    :cond_2
    const-string v1, "CameraThread"

    const-string v3, "startPreviewSilently() - mCameraDevice.startPreview() - Start"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v1}, Lcom/android/camera/CameraController;->startPreview()V

    const-string v1, "CameraThread"

    const-string v3, "startPreviewSilently() - mCameraDevice.startPreview() - End"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "CameraThread"

    const-string v3, "startPreviewSilently() - Start preview failed"

    invoke-static {v1, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->UnknownError:Lcom/android/camera/CameraPreviewStartResult;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final startVideoRecording()Lcom/android/camera/CaptureHandle;
    .locals 5

    const-string v1, "CameraThread"

    const-string v2, "startVideoRecording()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/CaptureHandle;

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-direct {v0, v1}, Lcom/android/camera/CaptureHandle;-><init>(Lcom/android/camera/CameraMode;)V

    const-string v1, "CameraThread"

    const-string v2, "startVideoRecording() - Create handle : \'"

    iget-object v3, v0, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v4, "\'"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, p0, :cond_1

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/camera/CameraThread$12;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/CameraThread$12;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "CameraThread"

    const-string v2, "startVideoRecording() - No camera handler"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraThread;->startVideoRecordingInternal(Lcom/android/camera/CaptureHandle;Z)V

    goto :goto_0
.end method

.method public final stopPreview()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_1

    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - start sync"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mCanSetPreviewCallback:Z

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->clearPreviewCallback()V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/CameraThread;->previewStoppingEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    const-string v0, "CameraThread"

    const-string v1, "before stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->stopPreview()V

    const-string v0, "CameraThread"

    const-string v1, "after stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->previewStoppedEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->isPreviewStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - end sync"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_2

    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - start async"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/CameraThread$10;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$10;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - end async"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "CameraThread"

    const-string v1, "Cannot stop preview because there is no handler for camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final stopVideoRecording(Lcom/android/camera/CaptureHandle;ZZ)V
    .locals 8

    const/4 v3, 0x0

    if-nez p1, :cond_1

    const-string v3, "CameraThread"

    const-string v4, "stopVideoRecording() - Null handle"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "CameraThread"

    const-string v5, "stopVideoRecording() - Handle : \'"

    iget-object v6, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v7, "\'"

    invoke-static {v4, v5, v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v4, p0, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_4

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v3, :cond_3

    const-string v3, "CameraThread"

    const-string v4, "stopVideoRecording() - Stop recording asynchronuously"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/camera/CameraThread$11;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/android/camera/CameraThread$11;-><init>(Lcom/android/camera/CameraThread;Ljava/util/concurrent/Semaphore;Lcom/android/camera/CaptureHandle;Z)V

    invoke-virtual {p0, v3}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    :goto_2
    if-eqz p3, :cond_0

    if-nez v1, :cond_0

    const-string v3, "CameraThread"

    const-string v4, "stopVideoRecording() - Wait for recording stop - start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const-string v3, "CameraThread"

    const-string v4, "stopVideoRecording() - Wait for recording stop - end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    const-string v3, "CameraThread"

    const-string v4, "stopVideoRecording() - No camera thread handler"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-direct {p0, p1, p2, v3}, Lcom/android/camera/CameraThread;->stopVideoRecordingInternal(Lcom/android/camera/CaptureHandle;ZZ)V

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v3, "CameraThread"

    const-string v4, "stopVideoRecording() - Wait for recording stop - interrupted"

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public final takePicture(Z)Lcom/android/camera/CaptureHandle;
    .locals 7

    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takePicture("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/android/camera/CaptureHandle;

    sget-object v0, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-direct {v6, v0}, Lcom/android/camera/CaptureHandle;-><init>(Lcom/android/camera/CameraMode;)V

    const-string v0, "CameraThread"

    const-string v1, "takePicture() - Handle : \'"

    iget-object v2, v6, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\' ["

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/camera/CameraThread$25;

    invoke-direct {v0, p0, v6, p1}, Lcom/android/camera/CameraThread$25;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;Z)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    return-object v6
.end method
