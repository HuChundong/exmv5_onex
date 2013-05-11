.class public Lcom/android/camera/CameraSettings$DefaultValues;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultValues"
.end annotation


# static fields
.field public static final brightness:F = 0.0f

.field public static final canAutoFocus:Z = true

.field public static final contrast:F = 0.0f

.field public static final flashMode:Lcom/android/camera/FlashMode; = null

.field public static final forceImageQuality:Z = true

.field public static final frontSelfTimerInterval:Lcom/android/camera/Duration; = null

.field public static final frontWhiteBalance:Ljava/lang/String; = "auto"

#the value of this static final field might be set in the static constructor
.field public static final imageQuality:I = 0x5a

.field public static final isAutoEnhanceEnabled:Z = false

.field public static final isAutoFiveShotsEnabled:Z = true

.field public static final isAutoSmileCaptureEnabled:Z = false

.field public static final isContinuousBurstAutoReview:Z = true

.field public static final isContinuousBurstEnabled:Z = true

.field public static final isContinuousBurstLimited:Z = true

.field public static final isFaceDetectionEnabled:Z = true

.field public static final isFrontFaceBeautifierEnabled:Z = true

#the value of this static final field might be set in the static constructor
.field public static final isGeoTaggingEnabled:Z = false

.field public static final isGridVisible:Z = false

.field public static final isObjectTrackingEnabled:Z = false

.field public static final isSaveMirrorImageEnabled:Z = false

.field public static final isShutterSoundEnabled:Z = true

.field public static final isSlowMotionEnabled:Z = false

.field public static final isStereoRecordingEnabled:Z = true

.field public static final isTapCaptureEnabled:Z = false

.field public static final isTapCaptureFrontEnabled:Z = true

.field public static final isVideoStabilizationEnabled:Z = true

.field public static final isWideRatioPhoto:Z = true

.field public static final iso:Ljava/lang/String; = "auto"

.field public static final mainSelfTimerInterval:Lcom/android/camera/Duration; = null

.field public static final mainWhiteBalance:Ljava/lang/String; = "auto"

.field public static final recordWithAudio:Z = true

.field public static final reviewDuration:Lcom/android/camera/Duration;

.field public static final saturation:F

.field public static final sharpness:F

.field public static final storageSlot:Lcom/android/camera/io/StorageSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/android/camera/FlashMode;->Auto:Lcom/android/camera/FlashMode;

    sput-object v0, Lcom/android/camera/CameraSettings$DefaultValues;->flashMode:Lcom/android/camera/FlashMode;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/Duration;->fromSeconds(J)Lcom/android/camera/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraSettings$DefaultValues;->frontSelfTimerInterval:Lcom/android/camera/Duration;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->EnableGeoTagByDefault()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/CameraSettings$DefaultValues;->isGeoTaggingEnabled:Z

    invoke-static {v2, v3}, Lcom/android/camera/Duration;->fromSeconds(J)Lcom/android/camera/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraSettings$DefaultValues;->mainSelfTimerInterval:Lcom/android/camera/Duration;

    const/16 v0, 0x5a

    sput v0, Lcom/android/camera/CameraSettings$DefaultValues;->imageQuality:I

    invoke-static {v2, v3}, Lcom/android/camera/Duration;->fromSeconds(J)Lcom/android/camera/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraSettings$DefaultValues;->reviewDuration:Lcom/android/camera/Duration;

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasInternalMemorySlot()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/io/StorageSlot;->INTERNAL_SMALL_STORAGE:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraSettings$DefaultValues;->storageSlot:Lcom/android/camera/io/StorageSlot;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    sput-object v0, Lcom/android/camera/CameraSettings$DefaultValues;->storageSlot:Lcom/android/camera/io/StorageSlot;

    goto :goto_0

    :cond_1
    const-string v0, "CameraSettings"

    const-string v1, "No available storage slot, use INVALID as default storage slot"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/camera/io/StorageSlot;->INVALID:Lcom/android/camera/io/StorageSlot;

    sput-object v0, Lcom/android/camera/CameraSettings$DefaultValues;->storageSlot:Lcom/android/camera/io/StorageSlot;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
