.class synthetic Lcom/android/camera/CameraThread$28;
.super Ljava/lang/Object;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$camera$CameraMode:[I

.field static final synthetic $SwitchMap$com$android$camera$CameraOpenFailedReason:[I

.field static final synthetic $SwitchMap$com$android$camera$CameraStartMode:[I

.field static final synthetic $SwitchMap$com$android$camera$CameraType:[I

.field static final synthetic $SwitchMap$com$android$camera$FeatureConfig$DriverCallbackTimeoutHandlingPolicy:[I

.field static final synthetic $SwitchMap$com$android$camera$RecordingLimitState:[I

.field static final synthetic $SwitchMap$com$android$camera$RecordingState:[I

.field static final synthetic $SwitchMap$com$android$camera$TakingPictureState:[I

.field static final synthetic $SwitchMap$com$android$camera$rotate$UIRotation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->values()[Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$FeatureConfig$DriverCallbackTimeoutHandlingPolicy:[I

    :try_start_0
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$FeatureConfig$DriverCallbackTimeoutHandlingPolicy:[I

    sget-object v1, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->Ignore:Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    invoke-virtual {v1}, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1c

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$FeatureConfig$DriverCallbackTimeoutHandlingPolicy:[I

    sget-object v1, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->RecoverSilently:Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    invoke-virtual {v1}, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1b

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$FeatureConfig$DriverCallbackTimeoutHandlingPolicy:[I

    sget-object v1, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->ThrowException:Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    invoke-virtual {v1}, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1a

    :goto_2
    invoke-static {}, Lcom/android/camera/RecordingState;->values()[Lcom/android/camera/RecordingState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$RecordingState:[I

    :try_start_3
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$RecordingState:[I

    sget-object v1, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v1}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_19

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$RecordingState:[I

    sget-object v1, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v1}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_18

    :goto_4
    :try_start_5
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$RecordingState:[I

    sget-object v1, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v1}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_17

    :goto_5
    invoke-static {}, Lcom/android/camera/rotate/UIRotation;->values()[Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$rotate$UIRotation:[I

    :try_start_6
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$rotate$UIRotation:[I

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_16

    :goto_6
    :try_start_7
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$rotate$UIRotation:[I

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->InverseLandscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_15

    :goto_7
    invoke-static {}, Lcom/android/camera/RecordingLimitState;->values()[Lcom/android/camera/RecordingLimitState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$RecordingLimitState:[I

    :try_start_8
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$RecordingLimitState:[I

    sget-object v1, Lcom/android/camera/RecordingLimitState;->DurationLimitReached:Lcom/android/camera/RecordingLimitState;

    invoke-virtual {v1}, Lcom/android/camera/RecordingLimitState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_14

    :goto_8
    :try_start_9
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$RecordingLimitState:[I

    sget-object v1, Lcom/android/camera/RecordingLimitState;->FileSizeLimitReached:Lcom/android/camera/RecordingLimitState;

    invoke-virtual {v1}, Lcom/android/camera/RecordingLimitState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_13

    :goto_9
    :try_start_a
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$RecordingLimitState:[I

    sget-object v1, Lcom/android/camera/RecordingLimitState;->FileSystemLimitReached:Lcom/android/camera/RecordingLimitState;

    invoke-virtual {v1}, Lcom/android/camera/RecordingLimitState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_12

    :goto_a
    :try_start_b
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$RecordingLimitState:[I

    sget-object v1, Lcom/android/camera/RecordingLimitState;->StorageSpaceLimitReached:Lcom/android/camera/RecordingLimitState;

    invoke-virtual {v1}, Lcom/android/camera/RecordingLimitState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_11

    :goto_b
    invoke-static {}, Lcom/android/camera/CameraStartMode;->values()[Lcom/android/camera/CameraStartMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraStartMode:[I

    :try_start_c
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraStartMode:[I

    sget-object v1, Lcom/android/camera/CameraStartMode;->ContactsPhoto:Lcom/android/camera/CameraStartMode;

    invoke-virtual {v1}, Lcom/android/camera/CameraStartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_10

    :goto_c
    :try_start_d
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraStartMode:[I

    sget-object v1, Lcom/android/camera/CameraStartMode;->SquarePhoto:Lcom/android/camera/CameraStartMode;

    invoke-virtual {v1}, Lcom/android/camera/CameraStartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_f

    :goto_d
    invoke-static {}, Lcom/android/camera/TakingPictureState;->values()[Lcom/android/camera/TakingPictureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$TakingPictureState:[I

    :try_start_e
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$TakingPictureState:[I

    sget-object v1, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :goto_e
    :try_start_f
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$TakingPictureState:[I

    sget-object v1, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_d

    :goto_f
    :try_start_10
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$TakingPictureState:[I

    sget-object v1, Lcom/android/camera/TakingPictureState;->Starting:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_c

    :goto_10
    invoke-static {}, Lcom/android/camera/CameraOpenFailedReason;->values()[Lcom/android/camera/CameraOpenFailedReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraOpenFailedReason:[I

    :try_start_11
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraOpenFailedReason:[I

    sget-object v1, Lcom/android/camera/CameraOpenFailedReason;->NoToken:Lcom/android/camera/CameraOpenFailedReason;

    invoke-virtual {v1}, Lcom/android/camera/CameraOpenFailedReason;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_b

    :goto_11
    :try_start_12
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraOpenFailedReason:[I

    sget-object v1, Lcom/android/camera/CameraOpenFailedReason;->LowPowerRestrict3D:Lcom/android/camera/CameraOpenFailedReason;

    invoke-virtual {v1}, Lcom/android/camera/CameraOpenFailedReason;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_a

    :goto_12
    :try_start_13
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraOpenFailedReason:[I

    sget-object v1, Lcom/android/camera/CameraOpenFailedReason;->LowPowerDualModeCalling:Lcom/android/camera/CameraOpenFailedReason;

    invoke-virtual {v1}, Lcom/android/camera/CameraOpenFailedReason;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_9

    :goto_13
    :try_start_14
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraOpenFailedReason:[I

    sget-object v1, Lcom/android/camera/CameraOpenFailedReason;->CameraResourceOccupy:Lcom/android/camera/CameraOpenFailedReason;

    invoke-virtual {v1}, Lcom/android/camera/CameraOpenFailedReason;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_8

    :goto_14
    :try_start_15
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraOpenFailedReason:[I

    sget-object v1, Lcom/android/camera/CameraOpenFailedReason;->CameraInNoMem:Lcom/android/camera/CameraOpenFailedReason;

    invoke-virtual {v1}, Lcom/android/camera/CameraOpenFailedReason;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_7

    :goto_15
    :try_start_16
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraOpenFailedReason:[I

    sget-object v1, Lcom/android/camera/CameraOpenFailedReason;->CameraHWOpenFail:Lcom/android/camera/CameraOpenFailedReason;

    invoke-virtual {v1}, Lcom/android/camera/CameraOpenFailedReason;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_6

    :goto_16
    :try_start_17
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraOpenFailedReason:[I

    sget-object v1, Lcom/android/camera/CameraOpenFailedReason;->CameraPolicyDisabled:Lcom/android/camera/CameraOpenFailedReason;

    invoke-virtual {v1}, Lcom/android/camera/CameraOpenFailedReason;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_5

    :goto_17
    invoke-static {}, Lcom/android/camera/CameraMode;->values()[Lcom/android/camera/CameraMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraMode:[I

    :try_start_18
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraMode:[I

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v1}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_4

    :goto_18
    :try_start_19
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraMode:[I

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v1}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_3

    :goto_19
    invoke-static {}, Lcom/android/camera/CameraType;->values()[Lcom/android/camera/CameraType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraType:[I

    :try_start_1a
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraType:[I

    sget-object v1, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_2

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraType:[I

    sget-object v1, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/android/camera/CameraThread$28;->$SwitchMap$com$android$camera$CameraType:[I

    sget-object v1, Lcom/android/camera/CameraType;->Main3D:Lcom/android/camera/CameraType;

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_0

    :goto_1c
    return-void

    :catch_0
    move-exception v0

    goto :goto_1c

    :catch_1
    move-exception v0

    goto :goto_1b

    :catch_2
    move-exception v0

    goto :goto_1a

    :catch_3
    move-exception v0

    goto :goto_19

    :catch_4
    move-exception v0

    goto :goto_18

    :catch_5
    move-exception v0

    goto :goto_17

    :catch_6
    move-exception v0

    goto :goto_16

    :catch_7
    move-exception v0

    goto :goto_15

    :catch_8
    move-exception v0

    goto :goto_14

    :catch_9
    move-exception v0

    goto/16 :goto_13

    :catch_a
    move-exception v0

    goto/16 :goto_12

    :catch_b
    move-exception v0

    goto/16 :goto_11

    :catch_c
    move-exception v0

    goto/16 :goto_10

    :catch_d
    move-exception v0

    goto/16 :goto_f

    :catch_e
    move-exception v0

    goto/16 :goto_e

    :catch_f
    move-exception v0

    goto/16 :goto_d

    :catch_10
    move-exception v0

    goto/16 :goto_c

    :catch_11
    move-exception v0

    goto/16 :goto_b

    :catch_12
    move-exception v0

    goto/16 :goto_a

    :catch_13
    move-exception v0

    goto/16 :goto_9

    :catch_14
    move-exception v0

    goto/16 :goto_8

    :catch_15
    move-exception v0

    goto/16 :goto_7

    :catch_16
    move-exception v0

    goto/16 :goto_6

    :catch_17
    move-exception v0

    goto/16 :goto_5

    :catch_18
    move-exception v0

    goto/16 :goto_4

    :catch_19
    move-exception v0

    goto/16 :goto_3

    :catch_1a
    move-exception v0

    goto/16 :goto_2

    :catch_1b
    move-exception v0

    goto/16 :goto_1

    :catch_1c
    move-exception v0

    goto/16 :goto_0
.end method
