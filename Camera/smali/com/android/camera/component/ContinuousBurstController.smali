.class public final Lcom/android/camera/component/ContinuousBurstController;
.super Lcom/android/camera/component/AsyncCameraThreadComponent;
.source "ContinuousBurstController.java"

# interfaces
.implements Lcom/android/camera/IPhotoCaptureHandler;
.implements Landroid/hardware/Camera$ShutterCallback;
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/ContinuousBurstController$4;,
        Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;,
        Lcom/android/camera/component/ContinuousBurstController$DropState;,
        Lcom/android/camera/component/ContinuousBurstController$CaptureState;
    }
.end annotation


# static fields
.field static final BURST_MODE_1_SHOT:I = 0x1

.field static final BURST_MODE_5_SHOTS:I = 0x2

.field static final BURST_MODE_CONTINUOUS:I = 0x3

.field static final BURST_MODE_UNDEFINED:I = 0x0

.field static final DEFAULT_MAX_PICTURE_COUNT:I = 0x14

#the value of this static final field might be set in the static constructor
.field static final DEFAULT_UNLIMITED_PICTURE_COUNT:I = 0x0

.field private static final HTCCB_ARG1_DRIVER_BURST_DONE:I = 0x3

.field private static final HTC_CALLBACK_TIMEOUT:I = 0x7d0

.field private static final JPEG_CALLBACK_CANCEL:I = 0x4

.field private static final JPEG_CALLBACK_FROM_DRIVER:I = 0x1

.field private static final JPEG_CALLBACK_IS_TIMEOUT:I = 0x2

.field private static final JPEG_CALLBACK_NONE:I = 0x0

.field private static final MAX_CONTINUOUS_DROPPED_PHOTO:I = 0x8

.field static final MSG_ENTER:I = 0x2710

.field static final MSG_EXIT:I = 0x2711

.field private static final MSG_HTC_CALLBACK_TIMEOUT_EXIT:I = 0x271c

.field private static final MSG_IMAGE_SAVED:I = 0x2719

.field private static final MSG_IMAGE_SAVE_FAILED:I = 0x271a

.field private static final MSG_PHOTO_SAVE_COMPLETED:I = 0x2717

.field private static final MSG_PLAY_SHUTTER_SOUND:I = 0x2712

.field static final MSG_SET_BURST_MODE:I = 0x2714

.field static final MSG_SET_PICTURE_COUNT:I = 0x2715

.field static final MSG_STOP_PLAYING_SHUTTER_SOUND:I = 0x2716

.field private static final MSG_STOP_SHUTTER_SOUND:I = 0x2713

.field private static final MSG_THUMBNAIL_IMAGE_CREATED:I = 0x2718

.field static final NAME:Ljava/lang/String; = "Continuous Burst Controller"

.field private static final PREF_MAX_PICTURE_COUNT:Ljava/lang/String; = "pref_max_conti_burst_picture_count"

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_SOUND_LENGTH:I = 0x0

.field private static final SHUTTER_SOUND_TIMER_INTERVAL:I = 0x190

.field private static final SIZE_RATIO_DROP_CONSECUTIVE:F = 0.95f

.field private static final SIZE_RATIO_DROP_ONE_OF_CONSECUTIVE:F = 0.8f

.field private static final m_DcfInfo:Lcom/android/camera/io/DCFInfo;


# instance fields
.field private mAudioManager:Lcom/android/camera/IAudioManager;

.field private m_BucketId:Ljava/lang/String;

.field private m_BurstMode:I

.field private m_CaptureHandle:Lcom/android/camera/CaptureHandle;

.field private m_CaptureInterval:I

.field private m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

.field private m_ContDroppingCounter:I

.field private m_ContinuousBurstImageCounter:I

.field private m_DirectoryCounter:Lcom/android/camera/io/FileCounter;

.field private m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

.field private m_DropState:Lcom/android/camera/component/ContinuousBurstController$DropState;

.field private m_FirstJpegRawData:[B

.field private m_GotFirstPicture:Z

.field private m_IfGotHTCCallback:Z

.field private m_ImageCounter:Lcom/android/camera/io/FileCounter;

.field private m_IsCaptureModeChanged:Z

.field private m_IsEntered:Z

.field private m_IsFirstPicture:Z

.field private m_IsSavingPhotos:Z

.field private m_IsSavingStartMsgSent:Z

.field private m_IsSecondPictureTaken:Z

.field private m_IsShutterSoundPlayed:Z

.field private final m_JpegCallbackTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

.field private m_JpegIndex:I

.field private final m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_LastSavedImageFilePath:Lcom/android/camera/io/Path;

.field private m_MaxPictureCount:I

.field private m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

.field private m_OriginalFlashMode:Lcom/android/camera/FlashMode;

.field private m_PhotoSize:Lcom/android/camera/imaging/Size;

.field private m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

.field private m_ResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

.field private m_SavedBurstImageCount:I

.field private final m_SavedImageTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;",
            ">;"
        }
    .end annotation
.end field

.field private m_ShutterIndex:I

.field private m_ShutterSoundHandle:Lcom/android/camera/Handle;

.field private m_ShutterSoundStartTime:Ljava/lang/Long;

.field private m_ShutterSoundStreamHandle:Lcom/android/camera/Handle;

.field private m_StartTime:J

.field private m_TakePictureIndex:I

.field private m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

.field private m_ThumbnailImageSize:Lcom/android/camera/imaging/Size;

.field private m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

.field private m_TotalCaptureInterval:J

.field private m_UI:Lcom/android/camera/component/ContinuousBurstUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x190

    :goto_0
    sput v0, Lcom/android/camera/component/ContinuousBurstController;->SHUTTER_SOUND_LENGTH:I

    sget-object v0, Lcom/android/camera/io/DCFInfo;->DEFAULT:Lcom/android/camera/io/DCFInfo;

    sput-object v0, Lcom/android/camera/component/ContinuousBurstController;->m_DcfInfo:Lcom/android/camera/io/DCFInfo;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1e

    sput v0, Lcom/android/camera/component/ContinuousBurstController;->DEFAULT_UNLIMITED_PICTURE_COUNT:I

    :goto_1
    return-void

    :cond_0
    const/16 v0, 0x12c

    goto :goto_0

    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2d7

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isK2Series()Z

    move-result v0

    if-nez v0, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2aa

    if-ne v0, v1, :cond_3

    :cond_2
    const/16 v0, 0x3c

    sput v0, Lcom/android/camera/component/ContinuousBurstController;->DEFAULT_UNLIMITED_PICTURE_COUNT:I

    goto :goto_1

    :cond_3
    const/16 v0, 0x63

    sput v0, Lcom/android/camera/component/ContinuousBurstController;->DEFAULT_UNLIMITED_PICTURE_COUNT:I

    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2

    const-string v0, "Continuous Burst Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Unavailable:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_SavedImageTasks:Ljava/util/Set;

    new-instance v0, Lcom/android/camera/component/ContinuousBurstController$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ContinuousBurstController$1;-><init>(Lcom/android/camera/component/ContinuousBurstController;)V

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegCallbackTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ContinuousBurstController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/ContinuousBurstController;->onJpegCallbackTimeout(I)V

    return-void
.end method

.method static synthetic access$100()Lcom/android/camera/io/DCFInfo;
    .locals 1

    sget-object v0, Lcom/android/camera/component/ContinuousBurstController;->m_DcfInfo:Lcom/android/camera/io/DCFInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/ContinuousBurstController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IfGotHTCCallback:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/component/ContinuousBurstController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IfGotHTCCallback:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/CaptureHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/camera/component/ContinuousBurstController;Lcom/android/camera/CaptureHandle;)Lcom/android/camera/CaptureHandle;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/camera/component/ContinuousBurstController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingPhotos:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/component/ContinuousBurstController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_SavedBurstImageCount:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/component/ContinuousBurstController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BucketId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/io/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_LastSavedImageFilePath:Lcom/android/camera/io/Path;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/component/ContinuousBurstController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/component/ContinuousBurstController;Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/io/FileCounter;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_DirectoryCounter:Lcom/android/camera/io/FileCounter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/io/FileCounter;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ImageCounter:Lcom/android/camera/io/FileCounter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/imaging/Size;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/android/camera/imaging/Size;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/ContinuousBurstController;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_SavedImageTasks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/component/ContinuousBurstUI;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/ContinuousBurstController;Lcom/android/camera/CameraController;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/component/ContinuousBurstController;->setupParamsBeforeTakingPicture(Lcom/android/camera/CameraController;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/ContinuousBurstController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/component/ContinuousBurstController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    return v0
.end method

.method private findNextDirectoryCounters()Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/io/StorageSlot;

    new-instance v4, Lcom/android/camera/Reference;

    invoke-direct {v4}, Lcom/android/camera/Reference;-><init>()V

    new-instance v5, Lcom/android/camera/Reference;

    invoke-direct {v5}, Lcom/android/camera/Reference;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-static {v6}, Lcom/android/camera/io/DCFUtility;->getDcimPath(Lcom/android/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/camera/component/ContinuousBurstController;->m_DcfInfo:Lcom/android/camera/io/DCFInfo;

    sget-object v3, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    invoke-static/range {v0 .. v5}, Lcom/android/camera/io/DCFUtility;->findNextDirAndFileCounters(Lcom/android/camera/Settings;Ljava/lang/String;Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileFormat;Lcom/android/camera/Reference;Lcom/android/camera/Reference;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Lcom/android/camera/io/FileCounter;

    iget-object v0, v4, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_DirectoryCounter:Lcom/android/camera/io/FileCounter;

    new-instance v1, Lcom/android/camera/io/FileCounter;

    iget-object v0, v5, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ImageCounter:Lcom/android/camera/io/FileCounter;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportRAWChip()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private linkToUI()Z
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v1

    const-string v3, "Continuous Burst UI"

    invoke-virtual {v1, v3}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/ContinuousBurstUI;

    :goto_1
    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private onBurstModeChanged(I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onBurstModeChanged("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput p1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v2, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v2, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v1, v2, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v1, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v2, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    if-ne v1, v5, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onBurstModeChanged() - Set time-consuming post-processing to \'enable\'"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "time-cons-post-processing"

    const-string v2, "enable"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_4
    :goto_2
    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_GotFirstPicture:Z

    if-eqz v1, :cond_5

    iput-boolean v6, p0, Lcom/android/camera/component/ContinuousBurstController;->m_GotFirstPicture:Z

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onBurstModeChanged() - Handle JPEG data again"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_FirstJpegRawData:[B

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    invoke-direct {p0, v6, v1, v2, v6}, Lcom/android/camera/component/ContinuousBurstController;->onPictureTaken(I[BLandroid/hardware/Camera;I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_FirstJpegRawData:[B

    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v2, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    if-ne v1, v5, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSecondPictureTaken:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onBurstModeChanged() - Start preview"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->startPreviewSilently()Lcom/android/camera/CameraPreviewStartResult;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onBurstModeChanged() - Start taking burst shots for nVidia platform"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/android/camera/component/ContinuousBurstController;->takeNextPicture(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onBurstModeChanged() - Cannot take next picture"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    if-ne v1, v5, :cond_3

    invoke-direct {p0, v6}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto/16 :goto_1

    :pswitch_2
    invoke-direct {p0, v5}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onBurstModeChanged() - No camera controller to update time-consuming post-processing mode"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onBurstModeChanged() - Cannot start preview"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onEntered()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Ready:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstController;->linkToUI()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onExited()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_FirstJpegRawData:[B

    iput-boolean v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_GotFirstPicture:Z

    iput v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    sget-object v1, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Unavailable:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsCaptureModeChanged:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onExited() - Set capture mode to normal"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onExited() - Enable time-consuming post-processing"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "capture-mode"

    const-string v2, "zsl"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v1, "time-cons-post-processing"

    const-string v2, "enable"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :goto_2
    iput-boolean v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsCaptureModeChanged:Z

    goto :goto_0

    :cond_2
    const-string v1, "capture-mode"

    const-string v2, "normal"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onExited() - No camera controller to reset capture mode"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onImageSaveFailed(ILcom/android/camera/io/Path;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageSaveFailed() - Index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", file path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v1, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageSaveFailed() - Capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ignore error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onImageSaveFailed() - Stop capture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    goto :goto_0
.end method

.method private onImageSaved(Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;Lcom/android/camera/io/Path;)V
    .locals 10

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onImageSaved(\'"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, "\')"

    invoke-static {v1, v2, v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p2, :cond_1

    :goto_1
    return-void

    :cond_0
    const-string v0, "null"

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->getJpegRawData(Z)[B

    move-result-object v7

    iget v0, p1, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->imageWidth:I

    iget v1, p1, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->imageHeight:I

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageSize:Lcom/android/camera/imaging/Size;

    iget v2, v2, Lcom/android/camera/imaging/Size;->width:I

    iget-object v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageSize:Lcom/android/camera/imaging/Size;

    iget v3, v3, Lcom/android/camera/imaging/Size;->height:I

    invoke-static {v7, v0, v1, v2, v3}, Lcom/android/camera/imaging/ThumbnailUtility;->createThumbnailImage([BIIII)Landroid/graphics/Bitmap;

    move-result-object v9

    if-nez v9, :cond_2

    invoke-virtual {p2}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    iget-object v1, v1, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/imaging/ThumbnailUtility;->createThumbnailImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    :cond_2
    if-eqz v9, :cond_3

    new-instance v8, Lcom/android/camera/MediaInfo;

    const/4 v0, 0x0

    sget-object v1, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    iget-object v1, v1, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-direct {v8, v0, p2, v1}, Lcom/android/camera/MediaInfo;-><init>(Landroid/net/Uri;Lcom/android/camera/io/Path;Ljava/lang/String;)V

    const/16 v2, 0x2718

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v8, v5, v0

    const/4 v0, 0x1

    aput-object v9, v5, v0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p1}, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->clearJpegRawData()V

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onImageSaved() - Cannot create thumbnail image"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    :try_start_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onImageSaved() - Cannot create thumbnail image"

    invoke-static {v0, v1, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p1}, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->clearJpegRawData()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->clearJpegRawData()V

    throw v0
.end method

.method private onJpegCallbackTimeout(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJpegCallbackTimeout("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v1, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJpegCallbackTimeout() - Capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ignore timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/camera/component/ContinuousBurstController;->onPictureTaken(I[BLandroid/hardware/Camera;I)V

    goto :goto_0
.end method

.method private onPhotoSaveCompleted(Lcom/android/camera/CaptureHandle;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 11

    const/16 v10, 0x2711

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_SavedBurstImageCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoSaveCompleted("

    const-string v3, ", "

    const-string v5, ")"

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoSaveCompleted() - Last file path : "

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_LastSavedImageFilePath:Lcom/android/camera/io/Path;

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v9, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingPhotos:Z

    iput-object p3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BucketId:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/IThumbnailImageManager;->enableAutoUpdate(Lcom/android/camera/Handle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IfGotHTCCallback:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v9

    aput-object p3, v5, v8

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_LastSavedImageFilePath:Lcom/android/camera/io/Path;

    aput-object v0, v5, v6

    move-object v0, p0

    move v2, v10

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :goto_0
    return-void

    :cond_2
    const/16 v2, 0x271c

    iget-object v5, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    const-wide/16 v6, 0x7d0

    move-object v0, p0

    move-object v1, p0

    move v3, v9

    move v4, v9

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v9

    aput-object p3, v5, v8

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_LastSavedImageFilePath:Lcom/android/camera/io/Path;

    aput-object v0, v5, v6

    move-object v0, p0

    move v2, v10

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoSaveCompleted() - No UI to notify"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPictureTaken(I[BLandroid/hardware/Camera;I)V
    .locals 29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "JPEG call-back ["

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "]"

    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    and-int/lit8 v3, p4, 0x2

    if-eqz v3, :cond_18

    const/16 v22, 0x1

    :goto_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_StartTime:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureInterval:I

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TotalCaptureInterval:J

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureInterval:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TotalCaptureInterval:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - Average capture interval = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TotalCaptureInterval:J

    add-int/lit8 v8, p1, 0x1

    int-to-long v8, v8

    div-long/2addr v5, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v4, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v3, v4, :cond_1b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {v3}, Lcom/android/camera/component/ContinuousBurstUI;->canCapture()Z

    move-result v20

    :goto_1
    if-eqz v20, :cond_1d

    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    array-length v3, v0

    if-nez v3, :cond_1c

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - No memory for JPEG RAW data, stop capturing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v3, :pswitch_data_0

    :cond_3
    :goto_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFirstPicture:Z

    if-nez p1, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    if-nez v20, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_5

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/component/ContinuousBurstController;->findNextDirectoryCounters()Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Cannot find available directory counters, stop capturing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    :cond_5
    if-eqz p2, :cond_29

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    if-nez p1, :cond_24

    if-nez v20, :cond_24

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_24

    :cond_6
    new-instance v2, Lcom/android/camera/io/SaveImageTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v0, p2

    invoke-direct {v2, v15, v3, v0}, Lcom/android/camera/io/SaveImageTask;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;[B)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/android/camera/imaging/Size;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/android/camera/imaging/Size;

    iget v3, v3, Lcom/android/camera/imaging/Size;->width:I

    iput v3, v2, Lcom/android/camera/io/SaveImageTask;->imageWidth:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/android/camera/imaging/Size;

    iget v3, v3, Lcom/android/camera/imaging/Size;->height:I

    iput v3, v2, Lcom/android/camera/io/SaveImageTask;->imageHeight:I

    :cond_7
    :goto_4
    const/16 v21, 0x0

    if-eqz v20, :cond_9

    const-class v3, Lcom/android/camera/io/IMediaFileWriter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/camera/io/IMediaFileWriter;

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/io/IMediaFileWriter;->getMediaQueueCapacity()J

    move-result-wide v16

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/io/IMediaFileWriter;->getMediaQueueSize()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-double v3, v0

    move-wide/from16 v0, v16

    long-to-double v5, v0

    div-double v26, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - File buffer : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide v5, 0x40c3880000000000L

    mul-double v5, v5, v26

    double-to-int v5, v5

    int-to-double v5, v5

    const-wide/high16 v8, 0x4059

    div-double/2addr v5, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v3, 0x3fee666660000000L

    cmpl-double v3, v26, v3

    if-ltz v3, :cond_2a

    sget-object v3, Lcom/android/camera/component/ContinuousBurstController$DropState;->ContinuousDropping:Lcom/android/camera/component/ContinuousBurstController$DropState;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_DropState:Lcom/android/camera/component/ContinuousBurstController$DropState;

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContDroppingCounter:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContDroppingCounter:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - Drop previous save task, DropState: Continuous("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContDroppingCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContDroppingCounter:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_8

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Reach maximum continuous dropping limitation(8), stop capturing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_5
    if-eqz v21, :cond_9

    invoke-virtual {v2}, Lcom/android/camera/io/SaveImageTask;->clearJpegRawData()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    :cond_9
    if-eqz v20, :cond_b

    if-nez p1, :cond_b

    const-class v3, Lcom/android/camera/io/IMediaFileWriter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/camera/io/IMediaFileWriter;

    if-eqz v23, :cond_2d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/camera/io/IMediaFileWriter;->resumeUpdatingMediaStore(Lcom/android/camera/Handle;)V

    :cond_a
    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/io/IMediaFileWriter;->suspendUpdatingMediaStore()Lcom/android/camera/Handle;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

    if-eqz v3, :cond_d

    if-nez v2, :cond_c

    if-nez v21, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/camera/io/SaveImageTask;->isLastMedia:Z

    :cond_c
    if-nez v21, :cond_2e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

    invoke-virtual {v15, v3}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/io/SaveImageTask;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - Continuous Burst ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_7
    if-eqz v2, :cond_30

    if-eqz v20, :cond_2f

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

    :cond_e
    :goto_8
    if-eqz v20, :cond_f

    if-nez p1, :cond_f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSecondPictureTaken:Z

    if-nez v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Start preview"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/camera/CameraThread;->startPreviewSilently()Lcom/android/camera/CameraPreviewStartResult;

    move-result-object v3

    sget-object v4, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    if-eq v3, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Cannot start preview"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    :cond_f
    monitor-enter p0

    if-eqz v20, :cond_12

    :try_start_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSecondPictureTaken:Z

    if-nez v3, :cond_12

    :cond_10
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v3

    if-eqz v3, :cond_11

    if-nez p1, :cond_12

    :cond_11
    add-int/lit8 v3, p1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/component/ContinuousBurstController;->takeNextPicture(I)Z

    move-result v3

    if-nez v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Cannot take next picture, stop capturing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    :cond_12
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v3

    if-eqz v3, :cond_14

    if-nez v20, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JPEG ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, 0x2710

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegCallbackTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v13, p0

    invoke-virtual/range {v8 .. v14}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    if-nez v20, :cond_41

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-nez v3, :cond_32

    if-nez p1, :cond_32

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_32

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    :cond_15
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v4, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v3, v4, :cond_33

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_35

    sget-object v3, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Waiting for pending pictures"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",m_TakePictureIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v18

    if-eqz v18, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - stop driver capturing. one shot"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "contiburst-state"

    const-string v4, "contiburst-done"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingStartMsgSent:Z

    if-nez v3, :cond_17

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    const/16 v10, 0x2710

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    add-int/lit8 v11, v3, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingStartMsgSent:Z

    :cond_17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_a
    return-void

    :cond_18
    const/16 v22, 0x0

    goto/16 :goto_0

    :cond_19
    const/16 v20, 0x0

    goto/16 :goto_1

    :cond_1a
    const/16 v20, 0x1

    goto/16 :goto_1

    :cond_1b
    const/16 v20, 0x0

    goto/16 :goto_1

    :cond_1c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - This is the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " picture, stop capturing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    goto/16 :goto_2

    :cond_1d
    if-eqz p2, :cond_1e

    move-object/from16 v0, p2

    array-length v3, v0

    if-nez v3, :cond_2

    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - No memory for JPEG RAW data"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Burst mode is 1-shot, stop taking picture."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFirstPicture:Z

    if-nez v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Burst mode is 1-shot, but this is not the first picture."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    const/16 v20, 0x0

    goto/16 :goto_3

    :pswitch_1
    if-eqz v20, :cond_3

    const/4 v3, 0x4

    move/from16 v0, p1

    if-ne v0, v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Burst mode is 5-shots, stop taking picture."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    goto/16 :goto_3

    :cond_20
    const/4 v3, 0x4

    move/from16 v0, p1

    if-le v0, v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Burst mode is 5-shots, but we have taken more than 5 pictures."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    goto/16 :goto_3

    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Start preview again"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v18

    if-eqz v18, :cond_22

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/CameraController;->startPreview()V

    goto/16 :goto_3

    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - No camera controller"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_2
    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFirstPicture:Z

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Burst mode is undefined, handle JPEG raw data later."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/ContinuousBurstController;->m_FirstJpegRawData:[B

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_GotFirstPicture:Z

    goto/16 :goto_a

    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Burst mode is undefined, but this is not the first picture."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_3
    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFirstPicture:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Disable GC"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/htc/wrap/dalvik/system/HtcWrapVMRuntime;->disableGcForExternalAlloc(Z)V

    goto/16 :goto_3

    :cond_24
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    if-ge v3, v4, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - m_ContinuousBurstImageCounter :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v20, :cond_27

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_25

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_27

    :cond_25
    const/4 v7, 0x1

    :goto_b
    new-instance v2, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;-><init>(Lcom/android/camera/component/ContinuousBurstController;Lcom/android/camera/CaptureHandle;I[BZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

    if-nez v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    if-eqz v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    invoke-interface {v3}, Lcom/android/camera/IThumbnailImageManager;->disableAutoUpdate()Lcom/android/camera/Handle;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

    :cond_26
    :goto_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    goto/16 :goto_4

    :cond_27
    const/4 v7, 0x0

    goto :goto_b

    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - Drop this index :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",Drop count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    const/4 v2, 0x0

    goto :goto_c

    :cond_29
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_2a
    const-wide v3, 0x3fe99999a0000000L

    cmpl-double v3, v26, v3

    if-ltz v3, :cond_2c

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContDroppingCounter:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_DropState:Lcom/android/camera/component/ContinuousBurstController$DropState;

    sget-object v4, Lcom/android/camera/component/ContinuousBurstController$DropState;->Dropped:Lcom/android/camera/component/ContinuousBurstController$DropState;

    if-eq v3, v4, :cond_2b

    sget-object v3, Lcom/android/camera/component/ContinuousBurstController$DropState;->Dropped:Lcom/android/camera/component/ContinuousBurstController$DropState;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_DropState:Lcom/android/camera/component/ContinuousBurstController$DropState;

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Drop current save task"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_2b
    sget-object v3, Lcom/android/camera/component/ContinuousBurstController$DropState;->Dropping:Lcom/android/camera/component/ContinuousBurstController$DropState;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_DropState:Lcom/android/camera/component/ContinuousBurstController$DropState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Save current save task due to previous was dropped"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_2c
    sget-object v3, Lcom/android/camera/component/ContinuousBurstController$DropState;->Unavailable:Lcom/android/camera/component/ContinuousBurstController$DropState;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_DropState:Lcom/android/camera/component/ContinuousBurstController$DropState;

    goto/16 :goto_5

    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - No IMediaFileWriter interface"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_2e
    if-nez v20, :cond_d

    if-eqz v21, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/camera/io/SaveImageTask;->isLastMedia:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

    invoke-virtual {v15, v3}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/io/SaveImageTask;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/io/SaveImageTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - Continuous Burst ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2f
    invoke-virtual {v15, v2}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/io/SaveImageTask;)V

    goto/16 :goto_8

    :cond_30
    if-nez v22, :cond_e

    and-int/lit8 v3, p4, 0x4

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_31

    if-nez p1, :cond_e

    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/CameraThread;->captureFailedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CaptureEventArgs;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    sget-object v6, Lcom/android/camera/CaptureFailedReason;->DriverFail:Lcom/android/camera/CaptureFailedReason;

    invoke-direct {v4, v5, v6}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CaptureFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_8

    :cond_32
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-eqz v3, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/component/ContinuousBurstController;->stopShutterSound()V

    goto/16 :goto_9

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_33
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v4, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v3, v4, :cond_42

    and-int/lit8 v3, p4, 0x4

    if-nez v3, :cond_34

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() Stopping - Waiting for pending pictures"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",m_TakePictureIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    goto/16 :goto_a

    :cond_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - cancel taking picture - ignore jpeg call back"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Stop capturing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

    if-eqz v3, :cond_36

    const-class v3, Lcom/android/camera/io/IMediaFileWriter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/camera/io/IMediaFileWriter;

    if-eqz v23, :cond_43

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/camera/io/IMediaFileWriter;->resumeUpdatingMediaStore(Lcom/android/camera/Handle;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

    :cond_36
    :goto_d
    if-eqz v22, :cond_37

    if-lez p1, :cond_45

    :cond_37
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v3

    if-eqz v3, :cond_38

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    if-nez v3, :cond_44

    :cond_38
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {v15, v3}, Lcom/android/camera/CameraThread;->endTakePicture(Lcom/android/camera/CaptureHandle;)V

    and-int/lit8 v3, p4, 0x4

    if-eqz v3, :cond_39

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    if-nez v3, :cond_39

    iget-object v3, v15, Lcom/android/camera/CameraThread;->captureCanceledEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/CaptureEventArgs;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-direct {v4, v5}, Lcom/android/camera/CaptureEventArgs;-><init>(Lcom/android/camera/CaptureHandle;)V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    :cond_39
    :goto_e
    if-eqz v22, :cond_3a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Close camera for recovering"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/camera/CameraThread;->closeCamera()V

    :cond_3a
    :goto_f
    if-nez p1, :cond_3b

    if-eqz v2, :cond_46

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/camera/component/ContinuousBurstController;->onPhotoSaveCompleted(Lcom/android/camera/CaptureHandle;Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_3b
    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Enable GC"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/htc/wrap/dalvik/system/HtcWrapVMRuntime;->disableGcForExternalAlloc(Z)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v18

    if-eqz v18, :cond_3c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - stop driver capturing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "contiburst-state"

    const-string v4, "contiburst-done"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_OriginalFlashMode:Lcom/android/camera/FlashMode;

    if-eqz v3, :cond_3d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_OriginalFlashMode:Lcom/android/camera/FlashMode;

    invoke-virtual {v15, v3}, Lcom/android/camera/CameraThread;->setFlashMode(Lcom/android/camera/FlashMode;)V

    :cond_3d
    invoke-virtual {v15}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v3

    if-eqz v3, :cond_3e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v3, :cond_3e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v3}, Lcom/android/camera/IAudioManager;->abandonAudioFocus()V

    :cond_3e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v3, :cond_3f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingStartMsgSent:Z

    if-nez v3, :cond_3f

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    const/16 v10, 0x2710

    add-int/lit8 v11, p1, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingStartMsgSent:Z

    :cond_3f
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v3

    if-eqz v3, :cond_40

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    if-nez v3, :cond_41

    :cond_40
    sget-object v3, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Ready:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    :cond_41
    monitor-exit p0

    goto/16 :goto_a

    :cond_42
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - Unexpected capture state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    goto/16 :goto_a

    :cond_43
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - No IMediaFileWriter interface"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_44
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wait HTCCallback to endTakePicture m_TakePictureIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JPEG ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/android/camera/CameraThread;->handleCommonCallbackTimeout(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_46
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - No photo to save"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/camera/component/ContinuousBurstController;->onPhotoSaveCompleted(Lcom/android/camera/CaptureHandle;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_10

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private onShutter(I)V
    .locals 8

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Shutter call-back ["

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "]"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    const/16 v1, 0x2713

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    if-eq v0, v7, :cond_2

    invoke-direct {p0, v7}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureMode(Z)V

    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v0

    if-eqz v0, :cond_a

    if-le p1, v7, :cond_a

    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v1, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Trying to take next picture for nVidia platform or Proto"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    if-eq v0, v5, :cond_5

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutter() - Burst mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", no need to take next picture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void

    :pswitch_1
    invoke-direct {p0, v4}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v7}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/ContinuousBurstUI;->canCapture()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - canCapture() = false, no need to take next picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_7
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_8

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Max picture count reached, no need to take next picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    if-nez p1, :cond_9

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Start preview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->startPreviewSilently()Lcom/android/camera/CameraPreviewStartResult;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->Successful:Lcom/android/camera/CameraPreviewStartResult;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Cannot start preview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, p1

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->takeNextPicture(I)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Cannot take next picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proto ShutterIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/ContinuousBurstUI;->canCapture()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_b
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    if-ne v5, v0, :cond_4

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    if-lez v0, :cond_4

    :cond_c
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v6

    if-eqz v6, :cond_d

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - stop driver capturing"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "contiburst-state"

    const-string v1, "contiburst-done"

    invoke-virtual {v6, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_d
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingStartMsgSent:Z

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    const/16 v2, 0x2710

    add-int/lit8 v3, p1, 0x1

    iget-object v5, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    iput-boolean v7, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingStartMsgSent:Z

    goto/16 :goto_1

    :cond_e
    add-int/lit8 v0, p1, 0x1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onThumbnailImageCreated(Lcom/android/camera/MediaInfo;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onThumbnailImageCreated()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingPhotos:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/IThumbnailImageManager;->updateThumbnailImageDirectly(Lcom/android/camera/MediaInfo;Landroid/graphics/Bitmap;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onThumbnailImageCreated() - No IThumbnailImageManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    throw v0
.end method

.method private playShutterSound(Z)V
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "playShutterSound("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, ")"

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    :goto_0
    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStartTime:Ljava/lang/Long;

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    iget-object v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;

    invoke-interface {v2, v3, v0, v1}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStreamHandle:Lcom/android/camera/Handle;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStreamHandle:Lcom/android/camera/Handle;

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    :cond_1
    const/16 v1, 0x2712

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->removeMessages(I)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private setCaptureMode(Z)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsCaptureModeChanged:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "setCaptureMode() - Set capture mode to contiburst"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "capture-mode"

    const-string v2, "contiburst-one-shot"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "contiburst-state"

    const-string v2, "contiburst-capturing"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "setCaptureMode() - Set time-consuming post-processing mode to \'bypass\'"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "time-cons-post-processing"

    const-string v2, "bypass"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsCaptureModeChanged:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v1, "capture-mode"

    const-string v2, "contiburst"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "setCaptureMode() - No camera controller to set capture mode"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureState("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    return-void
.end method

.method private setupParamsBeforeTakingPicture(Lcom/android/camera/CameraController;)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setupParamsBeforeTakingPicture() - Set time-consuming post-processing mode to \'delay\'"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "time-cons-post-processing"

    const-string v1, "delay"

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "setupParamsBeforeTakingPicture() - Set time-consuming post-processing mode to \'bypass\'"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "time-cons-post-processing"

    const-string v2, "bypass"

    invoke-virtual {p1, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureMode(Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private stopShutterSound()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStartTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStreamHandle:Lcom/android/camera/Handle;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/component/ContinuousBurstController;->stopShutterSound(JLcom/android/camera/Handle;)V

    iput-object v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStartTime:Ljava/lang/Long;

    iput-object v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStreamHandle:Lcom/android/camera/Handle;

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private stopShutterSound(JLcom/android/camera/Handle;)V
    .locals 11

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "stopShutterSound("

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, ", "

    if-eqz p3, :cond_2

    iget-object v4, p3, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_0
    const-string v5, ")"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_3

    const/4 v10, 0x1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/HeadsetHelper;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v10, 0x2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v8, v0, p1

    sget v0, Lcom/android/camera/component/ContinuousBurstController;->SHUTTER_SOUND_LENGTH:I

    mul-int/2addr v0, v10

    int-to-long v0, v0

    sub-long v6, v0, v8

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopShutterSound() - Stop shutter sound after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2713

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    aput-object p3, v5, v0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;J)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v4, "null"

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v0, p3}, Lcom/android/camera/IAudioManager;->stopInMemorySound(Lcom/android/camera/Handle;)V

    goto :goto_1
.end method

.method private takeNextPicture(I)Z
    .locals 14

    const/4 v1, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSurfaceStateSyncRoot()Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isSurfaceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "takeNextPicture() - Surface is unavailable"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v13

    move v0, v11

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v7

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-eqz v0, :cond_1

    if-ne p1, v12, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureMode(Z)V

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    if-ne v0, v1, :cond_1

    iget-object v0, v7, Lcom/android/camera/CameraThread;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FlashMode;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_OriginalFlashMode:Lcom/android/camera/FlashMode;

    sget-object v0, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    invoke-virtual {v7, v0}, Lcom/android/camera/CameraThread;->setFlashMode(Lcom/android/camera/FlashMode;)V

    :cond_1
    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    if-ne v0, v1, :cond_3

    if-ne p1, v12, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ContDroppingCounter:I

    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$DropState;->Unavailable:Lcom/android/camera/component/ContinuousBurstController$DropState;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_DropState:Lcom/android/camera/component/ContinuousBurstController$DropState;

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v8

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Set continuous burst type to limit-20"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "contiburst-type"

    const-string v1, "limit-20"

    invoke-virtual {v8, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v8}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_3
    if-ne p1, v12, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSecondPictureTaken:Z

    :cond_4
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JPEG ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x2710

    iget-object v4, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegCallbackTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;

    move-result-object v10

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Take picture ["

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "]"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_StartTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    if-ge p1, v0, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proto takePicture()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iput p1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit v13

    move v0, v12

    goto/16 :goto_0

    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :pswitch_1
    if-ne p1, v12, :cond_2

    :try_start_3
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Set continuous burst type to unlimited"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "contiburst-type"

    const-string v1, "unlimited"

    invoke-virtual {v8, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    :cond_7
    :try_start_4
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proto NextPicture()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception v9

    :try_start_5
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takeNextPicture() - Cannot take picture ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    invoke-virtual {v0, v10}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_8
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v0, v11

    goto/16 :goto_0

    :cond_9
    :try_start_6
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cancelTakingPicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Not NvidiaPlatform , without cancel"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    if-eq p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle is not equal , handle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v3, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelTakingPicture() - Capture state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopTimer ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Handle;

    invoke-virtual {v2, v1}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_5
    sget-object v1, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {p0, v1, v2, p3, v3}, Lcom/android/camera/component/ContinuousBurstController;->onPictureTaken(I[BLandroid/hardware/Camera;I)V

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->deinitializeOverride()V

    return-void
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 6

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleAsyncMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    move-object v1, v4

    check-cast v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v3, v1, v4

    check-cast v3, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;

    iget-object v5, p0, Lcom/android/camera/component/ContinuousBurstController;->m_SavedImageTasks:Ljava/util/Set;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/camera/component/ContinuousBurstController;->m_SavedImageTasks:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/camera/component/ContinuousBurstController;->m_SavedImageTasks:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;

    invoke-virtual {v2}, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;->clearJpegRawData()V

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/camera/component/ContinuousBurstController;->m_SavedImageTasks:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    const/16 v4, 0x2719

    invoke-virtual {p0, v4}, Lcom/android/camera/component/ContinuousBurstController;->removeAsyncMessages(I)V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    aget-object v4, v1, v4

    check-cast v4, Lcom/android/camera/io/Path;

    invoke-direct {p0, v3, v4}, Lcom/android/camera/component/ContinuousBurstController;->onImageSaved(Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;Lcom/android/camera/io/Path;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2719
        :pswitch_0
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstController;->onEntered()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstController;->onExited()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "wait HTCCallback timeout"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    iput-boolean v7, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IfGotHTCCallback:Z

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->endTakePicture(Lcom/android/camera/CaptureHandle;)V

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    const/16 v2, 0x2711

    iget v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_SavedBurstImageCount:I

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    aput-object v0, v5, v4

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BucketId:Ljava/lang/String;

    aput-object v0, v5, v7

    const/4 v0, 0x2

    iget-object v7, p0, Lcom/android/camera/component/ContinuousBurstController;->m_LastSavedImageFilePath:Lcom/android/camera/io/Path;

    aput-object v7, v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :cond_1
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Ready:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    iput-object v8, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_IsEntered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/io/Path;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/component/ContinuousBurstController;->onImageSaveFailed(ILcom/android/camera/io/Path;)V

    goto :goto_0

    :pswitch_5
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_SavedBurstImageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_SavedBurstImageCount:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/io/Path;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_LastSavedImageFilePath:Lcom/android/camera/io/Path;

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    aget-object v0, v6, v4

    check-cast v0, Lcom/android/camera/CaptureHandle;

    aget-object v1, v6, v7

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v8, v1}, Lcom/android/camera/component/ContinuousBurstController;->onPhotoSaveCompleted(Lcom/android/camera/CaptureHandle;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v1, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v0, :pswitch_data_1

    :pswitch_8
    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Timeout, play burst shutter sound"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto/16 :goto_0

    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->onBurstModeChanged(I)V

    goto/16 :goto_0

    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    if-gtz v0, :cond_3

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_max_conti_burst_picture_count"

    iget v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_c
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstController;->stopShutterSound()V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    aget-object v0, v6, v4

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    aget-object v0, v6, v7

    check-cast v0, Lcom/android/camera/Handle;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/camera/component/ContinuousBurstController;->stopShutterSound(JLcom/android/camera/Handle;)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    aget-object v0, v6, v4

    check-cast v0, Lcom/android/camera/MediaInfo;

    aget-object v1, v6, v7

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/ContinuousBurstController;->onThumbnailImageCreated(Lcom/android/camera/MediaInfo;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_d
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_6
        :pswitch_e
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 4

    const/16 v3, 0x14

    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    const-string v2, "pref_max_conti_burst_picture_count"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraSettings;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    if-gtz v1, :cond_0

    iput v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    :cond_0
    const-class v1, Lcom/android/camera/IAudioManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IAudioManager;

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    const-class v1, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ICaptureResolutionManager;

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    const-class v1, Lcom/android/camera/debug/IOperationTimeoutController;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/debug/IOperationTimeoutController;

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v2, 0x7f060001

    invoke-interface {v1, v2}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;

    :cond_1
    :goto_0
    new-instance v1, Lcom/android/camera/imaging/Size;

    const v2, 0x7f0b00c5

    invoke-virtual {p0, v2}, Lcom/android/camera/component/ContinuousBurstController;->getDimension(I)I

    move-result v2

    const v3, 0x7f0b00c6

    invoke-virtual {p0, v3}, Lcom/android/camera/component/ContinuousBurstController;->getDimension(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/imaging/Size;-><init>(II)V

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageSize:Lcom/android/camera/imaging/Size;

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraThread;->preparingParamsBeforeTakingPictureEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ContinuousBurstController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ContinuousBurstController$2;-><init>(Lcom/android/camera/component/ContinuousBurstController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/CameraThread;->HtcCallbackReceivedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ContinuousBurstController$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ContinuousBurstController$3;-><init>(Lcom/android/camera/component/ContinuousBurstController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v2, 0x7f060002

    invoke-interface {v1, v2}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;

    goto :goto_0
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Handle;

    invoke-virtual {v1, v0}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - Shutter call-back["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is missing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->onJpegCallbackTimeout(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - JPEG index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but there is no timeout timer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$4;->$SwitchMap$com$android$camera$component$ContinuousBurstController$CaptureState:[I

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1}, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - Current capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", drop picture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - Current capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", drop picture m_JpegIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",m_TakePictureIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/camera/component/ContinuousBurstController;->onPictureTaken(I[BLandroid/hardware/Camera;I)V

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onShutter()V
    .locals 3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shutter call-back ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to drop picture m_TakePictureIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",m_ShutterIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->onShutter(I)V

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    goto :goto_0
.end method

.method public takePicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v0}, Lcom/android/camera/IAudioManager;->requestAudioFocus()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    if-nez v0, :cond_2

    const-class v0, Lcom/android/camera/IThumbnailImageManager;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IThumbnailImageManager;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - Cannot find IThumbnailImageManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ResolutionManager:Lcom/android/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/android/camera/ICaptureResolutionManager;->photoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/Resolution;

    if-eqz v9, :cond_7

    iget-object v0, v7, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/camera/imaging/Size;

    invoke-virtual {v9}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v1

    invoke-virtual {v9}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/imaging/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/android/camera/imaging/Size;

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFirstPicture:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_GotFirstPicture:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TotalCaptureInterval:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingPhotos:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_OriginalFlashMode:Lcom/android/camera/FlashMode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSecondPictureTaken:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BucketId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IfGotHTCCallback:Z

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object p1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$DropState;->Unavailable:Lcom/android/camera/component/ContinuousBurstController$DropState;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_DropState:Lcom/android/camera/component/ContinuousBurstController$DropState;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingStartMsgSent:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_LastSavedImageFilePath:Lcom/android/camera/io/Path;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_SavedBurstImageCount:I

    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, v7, Lcom/android/camera/CameraThread;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FlashMode;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_OriginalFlashMode:Lcom/android/camera/FlashMode;

    sget-object v0, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    invoke-virtual {v7, v0}, Lcom/android/camera/CameraThread;->setFlashMode(Lcom/android/camera/FlashMode;)V

    :cond_3
    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    const-string v1, "JPEG [0]"

    const-wide/16 v2, 0x2710

    iget-object v4, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegCallbackTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;

    move-result-object v10

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Take picture [0]"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_StartTime:J

    const/4 v0, 0x0

    invoke-virtual {p3, p0, v0, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    new-instance v0, Lcom/android/camera/imaging/Size;

    invoke-virtual {v9}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v1

    invoke-virtual {v9}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/imaging/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/android/camera/imaging/Size;

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - No photo resolution"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/android/camera/imaging/Size;

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - No ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/android/camera/imaging/Size;

    goto/16 :goto_1

    :cond_9
    const/16 v2, 0x2712

    const-wide/16 v3, 0x190

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IJZ)Z

    goto :goto_2

    :catch_0
    move-exception v8

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Handle;

    invoke-virtual {v1, v0}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_a
    throw v8
.end method
