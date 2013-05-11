.class synthetic Lcom/android/camera/HTCCamera$30;
.super Ljava/lang/Object;
.source "HTCCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/HTCCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$camera$AutoDetectedScene:[I

.field static final synthetic $SwitchMap$com$android$camera$CameraMode:[I

.field static final synthetic $SwitchMap$com$android$camera$CameraPreviewStartResult:[I

.field static final synthetic $SwitchMap$com$android$camera$CameraStartMode:[I

.field static final synthetic $SwitchMap$com$android$camera$CaptureFailedReason:[I

.field static final synthetic $SwitchMap$com$android$camera$Global$REQUEST_CODE:[I

.field static final synthetic $SwitchMap$com$android$camera$RecordingLimitState:[I

.field static final synthetic $SwitchMap$com$android$camera$RecordingState:[I

.field static final synthetic $SwitchMap$com$android$camera$TakingPictureState:[I

.field static final synthetic $SwitchMap$com$android$camera$UIState:[I

.field static final synthetic $SwitchMap$com$android$camera$io$StorageState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/camera/AutoDetectedScene;->values()[Lcom/android/camera/AutoDetectedScene;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$AutoDetectedScene:[I

    :try_start_0
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$AutoDetectedScene:[I

    sget-object v1, Lcom/android/camera/AutoDetectedScene;->FiveShots:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v1}, Lcom/android/camera/AutoDetectedScene;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_27

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$AutoDetectedScene:[I

    sget-object v1, Lcom/android/camera/AutoDetectedScene;->Group:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v1}, Lcom/android/camera/AutoDetectedScene;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_26

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$AutoDetectedScene:[I

    sget-object v1, Lcom/android/camera/AutoDetectedScene;->Hdr:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v1}, Lcom/android/camera/AutoDetectedScene;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_25

    :goto_2
    invoke-static {}, Lcom/android/camera/io/StorageState;->values()[Lcom/android/camera/io/StorageState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$io$StorageState:[I

    :try_start_3
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$io$StorageState:[I

    sget-object v1, Lcom/android/camera/io/StorageState;->NoStorage:Lcom/android/camera/io/StorageState;

    invoke-virtual {v1}, Lcom/android/camera/io/StorageState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_24

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$io$StorageState:[I

    sget-object v1, Lcom/android/camera/io/StorageState;->Unknown:Lcom/android/camera/io/StorageState;

    invoke-virtual {v1}, Lcom/android/camera/io/StorageState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_23

    :goto_4
    :try_start_5
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$io$StorageState:[I

    sget-object v1, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    invoke-virtual {v1}, Lcom/android/camera/io/StorageState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_22

    :goto_5
    :try_start_6
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$io$StorageState:[I

    sget-object v1, Lcom/android/camera/io/StorageState;->Shared:Lcom/android/camera/io/StorageState;

    invoke-virtual {v1}, Lcom/android/camera/io/StorageState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_21

    :goto_6
    :try_start_7
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$io$StorageState:[I

    sget-object v1, Lcom/android/camera/io/StorageState;->Full:Lcom/android/camera/io/StorageState;

    invoke-virtual {v1}, Lcom/android/camera/io/StorageState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_20

    :goto_7
    :try_start_8
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$io$StorageState:[I

    sget-object v1, Lcom/android/camera/io/StorageState;->ReadOnly:Lcom/android/camera/io/StorageState;

    invoke-virtual {v1}, Lcom/android/camera/io/StorageState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1f

    :goto_8
    invoke-static {}, Lcom/android/camera/CaptureFailedReason;->values()[Lcom/android/camera/CaptureFailedReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CaptureFailedReason:[I

    :try_start_9
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CaptureFailedReason:[I

    sget-object v1, Lcom/android/camera/CaptureFailedReason;->ImageQueueIsFull:Lcom/android/camera/CaptureFailedReason;

    invoke-virtual {v1}, Lcom/android/camera/CaptureFailedReason;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1e

    :goto_9
    :try_start_a
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CaptureFailedReason:[I

    sget-object v1, Lcom/android/camera/CaptureFailedReason;->StorageError:Lcom/android/camera/CaptureFailedReason;

    invoke-virtual {v1}, Lcom/android/camera/CaptureFailedReason;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1d

    :goto_a
    :try_start_b
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CaptureFailedReason:[I

    sget-object v1, Lcom/android/camera/CaptureFailedReason;->LowInternalDataSpace:Lcom/android/camera/CaptureFailedReason;

    invoke-virtual {v1}, Lcom/android/camera/CaptureFailedReason;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1c

    :goto_b
    invoke-static {}, Lcom/android/camera/RecordingLimitState;->values()[Lcom/android/camera/RecordingLimitState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingLimitState:[I

    :try_start_c
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingLimitState:[I

    sget-object v1, Lcom/android/camera/RecordingLimitState;->FileSystemLimitReached:Lcom/android/camera/RecordingLimitState;

    invoke-virtual {v1}, Lcom/android/camera/RecordingLimitState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1b

    :goto_c
    :try_start_d
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingLimitState:[I

    sget-object v1, Lcom/android/camera/RecordingLimitState;->StorageSpaceLimitReached:Lcom/android/camera/RecordingLimitState;

    invoke-virtual {v1}, Lcom/android/camera/RecordingLimitState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1a

    :goto_d
    invoke-static {}, Lcom/android/camera/CameraPreviewStartResult;->values()[Lcom/android/camera/CameraPreviewStartResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraPreviewStartResult:[I

    :try_start_e
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraPreviewStartResult:[I

    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->CameraOpenFailed:Lcom/android/camera/CameraPreviewStartResult;

    invoke-virtual {v1}, Lcom/android/camera/CameraPreviewStartResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_19

    :goto_e
    :try_start_f
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraPreviewStartResult:[I

    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->LowPowerRestrict3D:Lcom/android/camera/CameraPreviewStartResult;

    invoke-virtual {v1}, Lcom/android/camera/CameraPreviewStartResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_18

    :goto_f
    :try_start_10
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraPreviewStartResult:[I

    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->LowPowerDualModeCalling:Lcom/android/camera/CameraPreviewStartResult;

    invoke-virtual {v1}, Lcom/android/camera/CameraPreviewStartResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_17

    :goto_10
    :try_start_11
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraPreviewStartResult:[I

    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->CameraResourceOccupy:Lcom/android/camera/CameraPreviewStartResult;

    invoke-virtual {v1}, Lcom/android/camera/CameraPreviewStartResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_16

    :goto_11
    :try_start_12
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraPreviewStartResult:[I

    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->CameraInNoMem:Lcom/android/camera/CameraPreviewStartResult;

    invoke-virtual {v1}, Lcom/android/camera/CameraPreviewStartResult;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_15

    :goto_12
    :try_start_13
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraPreviewStartResult:[I

    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->CameraHWOpenFail:Lcom/android/camera/CameraPreviewStartResult;

    invoke-virtual {v1}, Lcom/android/camera/CameraPreviewStartResult;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_14

    :goto_13
    :try_start_14
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraPreviewStartResult:[I

    sget-object v1, Lcom/android/camera/CameraPreviewStartResult;->CameraPolicyDisabled:Lcom/android/camera/CameraPreviewStartResult;

    invoke-virtual {v1}, Lcom/android/camera/CameraPreviewStartResult;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_13

    :goto_14
    invoke-static {}, Lcom/android/camera/UIState;->values()[Lcom/android/camera/UIState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$UIState:[I

    :try_start_15
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$UIState:[I

    sget-object v1, Lcom/android/camera/UIState;->Opening:Lcom/android/camera/UIState;

    invoke-virtual {v1}, Lcom/android/camera/UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_12

    :goto_15
    :try_start_16
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$UIState:[I

    sget-object v1, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v1}, Lcom/android/camera/UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_11

    :goto_16
    invoke-static {}, Lcom/android/camera/CameraStartMode;->values()[Lcom/android/camera/CameraStartMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraStartMode:[I

    :try_start_17
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraStartMode:[I

    sget-object v1, Lcom/android/camera/CameraStartMode;->ContactsPhoto:Lcom/android/camera/CameraStartMode;

    invoke-virtual {v1}, Lcom/android/camera/CameraStartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_10

    :goto_17
    :try_start_18
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraStartMode:[I

    sget-object v1, Lcom/android/camera/CameraStartMode;->SquarePhoto:Lcom/android/camera/CameraStartMode;

    invoke-virtual {v1}, Lcom/android/camera/CameraStartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_f

    :goto_18
    invoke-static {}, Lcom/android/camera/Global$REQUEST_CODE;->values()[Lcom/android/camera/Global$REQUEST_CODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$Global$REQUEST_CODE:[I

    :try_start_19
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$Global$REQUEST_CODE:[I

    sget-object v1, Lcom/android/camera/Global$REQUEST_CODE;->INTENT_ALBUM_RESULT:Lcom/android/camera/Global$REQUEST_CODE;

    invoke-virtual {v1}, Lcom/android/camera/Global$REQUEST_CODE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_e

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$Global$REQUEST_CODE:[I

    sget-object v1, Lcom/android/camera/Global$REQUEST_CODE;->REQUEST_CODE_CROP_MSG:Lcom/android/camera/Global$REQUEST_CODE;

    invoke-virtual {v1}, Lcom/android/camera/Global$REQUEST_CODE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_d

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$Global$REQUEST_CODE:[I

    sget-object v1, Lcom/android/camera/Global$REQUEST_CODE;->REQUEST_AUTO_UPLOAD_SETTING:Lcom/android/camera/Global$REQUEST_CODE;

    invoke-virtual {v1}, Lcom/android/camera/Global$REQUEST_CODE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_c

    :goto_1b
    invoke-static {}, Lcom/android/camera/CameraMode;->values()[Lcom/android/camera/CameraMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraMode:[I

    :try_start_1c
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraMode:[I

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v1}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_b

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$CameraMode:[I

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v1}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_a

    :goto_1d
    invoke-static {}, Lcom/android/camera/RecordingState;->values()[Lcom/android/camera/RecordingState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    :try_start_1e
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    sget-object v1, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v1}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_9

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    sget-object v1, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v1}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_8

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    sget-object v1, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-virtual {v1}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_7

    :goto_20
    :try_start_21
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    sget-object v1, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v1}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_6

    :goto_21
    :try_start_22
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$RecordingState:[I

    sget-object v1, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    invoke-virtual {v1}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_5

    :goto_22
    invoke-static {}, Lcom/android/camera/TakingPictureState;->values()[Lcom/android/camera/TakingPictureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$TakingPictureState:[I

    :try_start_23
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$TakingPictureState:[I

    sget-object v1, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_4

    :goto_23
    :try_start_24
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$TakingPictureState:[I

    sget-object v1, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_3

    :goto_24
    :try_start_25
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$TakingPictureState:[I

    sget-object v1, Lcom/android/camera/TakingPictureState;->Starting:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_2

    :goto_25
    :try_start_26
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$TakingPictureState:[I

    sget-object v1, Lcom/android/camera/TakingPictureState;->TakingPicture:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_1

    :goto_26
    :try_start_27
    sget-object v0, Lcom/android/camera/HTCCamera$30;->$SwitchMap$com$android$camera$TakingPictureState:[I

    sget-object v1, Lcom/android/camera/TakingPictureState;->Processing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_0

    :goto_27
    return-void

    :catch_0
    move-exception v0

    goto :goto_27

    :catch_1
    move-exception v0

    goto :goto_26

    :catch_2
    move-exception v0

    goto :goto_25

    :catch_3
    move-exception v0

    goto :goto_24

    :catch_4
    move-exception v0

    goto :goto_23

    :catch_5
    move-exception v0

    goto :goto_22

    :catch_6
    move-exception v0

    goto :goto_21

    :catch_7
    move-exception v0

    goto :goto_20

    :catch_8
    move-exception v0

    goto :goto_1f

    :catch_9
    move-exception v0

    goto :goto_1e

    :catch_a
    move-exception v0

    goto/16 :goto_1d

    :catch_b
    move-exception v0

    goto/16 :goto_1c

    :catch_c
    move-exception v0

    goto/16 :goto_1b

    :catch_d
    move-exception v0

    goto/16 :goto_1a

    :catch_e
    move-exception v0

    goto/16 :goto_19

    :catch_f
    move-exception v0

    goto/16 :goto_18

    :catch_10
    move-exception v0

    goto/16 :goto_17

    :catch_11
    move-exception v0

    goto/16 :goto_16

    :catch_12
    move-exception v0

    goto/16 :goto_15

    :catch_13
    move-exception v0

    goto/16 :goto_14

    :catch_14
    move-exception v0

    goto/16 :goto_13

    :catch_15
    move-exception v0

    goto/16 :goto_12

    :catch_16
    move-exception v0

    goto/16 :goto_11

    :catch_17
    move-exception v0

    goto/16 :goto_10

    :catch_18
    move-exception v0

    goto/16 :goto_f

    :catch_19
    move-exception v0

    goto/16 :goto_e

    :catch_1a
    move-exception v0

    goto/16 :goto_d

    :catch_1b
    move-exception v0

    goto/16 :goto_c

    :catch_1c
    move-exception v0

    goto/16 :goto_b

    :catch_1d
    move-exception v0

    goto/16 :goto_a

    :catch_1e
    move-exception v0

    goto/16 :goto_9

    :catch_1f
    move-exception v0

    goto/16 :goto_8

    :catch_20
    move-exception v0

    goto/16 :goto_7

    :catch_21
    move-exception v0

    goto/16 :goto_6

    :catch_22
    move-exception v0

    goto/16 :goto_5

    :catch_23
    move-exception v0

    goto/16 :goto_4

    :catch_24
    move-exception v0

    goto/16 :goto_3

    :catch_25
    move-exception v0

    goto/16 :goto_2

    :catch_26
    move-exception v0

    goto/16 :goto_1

    :catch_27
    move-exception v0

    goto/16 :goto_0
.end method
