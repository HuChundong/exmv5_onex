.class public Lcom/android/camera/CameraController;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraController$SupportedList;,
        Lcom/android/camera/CameraController$Settings;,
        Lcom/android/camera/CameraController$SettingInfo;
    }
.end annotation


# static fields
.field private static final INIT_BRIGHTNESS:I = 0x0

.field private static final INIT_CONTRAST:I = 0x5

.field private static final INIT_SATURATION:I = 0x5

.field private static final INIT_SHARPNESS:I = 0xf

.field public static final KEY_GPU_EFFECT:Ljava/lang/String; = "GPU-effect"

.field public static final KEY_GPU_EFFECT_PARAM_0:Ljava/lang/String; = "GE-param0"

.field public static final KEY_GPU_EFFECT_PARAM_1:Ljava/lang/String; = "GE-param1"

.field public static final KEY_GPU_EFFECT_PARAM_2:Ljava/lang/String; = "GE-param2"

.field public static final KEY_GPU_EFFECT_PARAM_3:Ljava/lang/String; = "GE-param3"

.field private static final KEY_QUERY_SMART_SCENE_DETECT_SUPPORTED:Ljava/lang/String; = "scene-detect-values"

.field private static final TAG:Ljava/lang/String; = "CameraController"

.field private static final TIMEOUT_GET_PARAMS:J = 0x1388L

.field public static final TIMEOUT_STANDARD:J = 0x1388L

.field private static final TIMEOUT_START_PREVIEW:J = 0x1388L

.field private static final TIMEOUT_STOP_PREVIEW:J = 0x1388L

.field private static final VALUE_SMART_SCENE_DETECT_SUPPORTED:Ljava/lang/String; = "off,on"


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field private mCameraParameters:Landroid/hardware/Camera$Parameters;

.field private mInjectParam0:I

.field private mInjectParam1:I

.field private final mIsSmartSceneDetectSupported:Z

.field private final mIsVideoStabilizationSupported:Z

.field private final mOperationTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

.field private mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Lcom/android/camera/debug/IOperationTimeoutController;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/android/camera/CameraController;->mInjectParam0:I

    iput v4, p0, Lcom/android/camera/CameraController;->mInjectParam1:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    new-instance v1, Lcom/android/camera/CameraController$1;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraController$1;-><init>(Lcom/android/camera/CameraController;)V

    iput-object v1, p0, Lcom/android/camera/CameraController;->mOperationTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    iput-object p2, p0, Lcom/android/camera/CameraController;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    iput-object p1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    const-string v1, "Get camera parameters"

    const-wide/16 v2, 0x1388

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/CameraController;->startTimeoutTimer(Ljava/lang/String;J)Lcom/android/camera/Handle;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0}, Lcom/android/camera/CameraController;->stopTimeoutTimer(Lcom/android/camera/Handle;)V

    iput-boolean v4, p0, Lcom/android/camera/CameraController;->mIsSmartSceneDetectSupported:Z

    invoke-virtual {p0}, Lcom/android/camera/CameraController;->supportVideoStabilization()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/CameraController;->mIsVideoStabilizationSupported:Z

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/android/camera/CameraController;->stopTimeoutTimer(Lcom/android/camera/Handle;)V

    throw v1

    :cond_0
    iput-boolean v4, p0, Lcom/android/camera/CameraController;->mIsVideoStabilizationSupported:Z

    goto :goto_0
.end method

.method public static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startTimeoutTimer(Ljava/lang/String;J)Lcom/android/camera/Handle;
    .locals 7

    iget-object v0, p0, Lcom/android/camera/CameraController;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    invoke-virtual {v0}, Lcom/android/camera/debug/IOperationTimeoutController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    iget-object v0, p0, Lcom/android/camera/CameraController;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    iget-object v4, p0, Lcom/android/camera/CameraController;->mOperationTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    move-object v1, p1

    move-wide v2, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopTimeoutTimer(Lcom/android/camera/Handle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraController;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mTimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    invoke-virtual {v0, p1}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    :cond_0
    return-void
.end method

.method public static supportFlashLight()Z
    .locals 1

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->FlashMode:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportScene()Z
    .locals 1

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->SceneMode:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doSetCameraParameters()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "CameraController"

    const-string v2, "doSetCameraParameters"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CameraController"

    const-string v2, "setParameters exception"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getAutoExposureLock()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getAutoExposureLock()Z

    move-result v0

    return v0
.end method

.method public final getAutoWhiteBalanceLock()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getAutoWhiteBalanceLock()Z

    move-result v0

    return v0
.end method

.method public final getIntCameraParameter(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getMaxExposureCompensation()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    return v0
.end method

.method public final getMinExposureCompensation()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    return v0
.end method

.method public getPictureSizeParameter()Landroid/hardware/Camera$Size;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewSizeParameter()Landroid/hardware/Camera$Size;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;
    .locals 10

    new-instance v2, Lcom/android/camera/CameraController$SettingInfo;

    invoke-direct {v2}, Lcom/android/camera/CameraController$SettingInfo;-><init>()V

    const-string v7, "exposure-compensation"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    :try_start_0
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V

    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setStep(F)V

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V

    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string v7, "CameraController"

    const-string v8, "exposure-compensation: set value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v7, "saturation"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :try_start_1
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "saturation-min"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v5

    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "saturation-max"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saturation-min:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",saturation-max:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    invoke-virtual {v2, v4}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    const/high16 v7, 0x2050

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setStep(F)V

    :try_start_2
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "saturation-def"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saturation-def:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "saturation"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current saturation:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V

    const-string v7, "CameraController"

    const-string v8, "saturation: set current value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_2
    move-exception v1

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    const/16 v7, 0x19

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V

    const-string v7, "CameraController"

    const-string v8, "saturation: set min, max value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception v1

    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V

    const-string v7, "CameraController"

    const-string v8, "saturation: set default value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    const-string v7, "contrast"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :try_start_4
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "contrast-min"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v5

    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "contrast-max"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contrast-min:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",contrast-max:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    invoke-virtual {v2, v4}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :goto_3
    const/high16 v7, 0x2050

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setStep(F)V

    :try_start_5
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "contrast-def"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contrast-def int: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :goto_4
    :try_start_6
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "contrast"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current contrast:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v1

    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V

    const-string v7, "CameraController"

    const-string v8, "contrast: set current value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_5
    move-exception v1

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    const/16 v7, 0x19

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V

    const-string v7, "CameraController"

    const-string v8, "contrast: set min, max value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_6
    move-exception v1

    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V

    const-string v7, "CameraController"

    const-string v8, "contrast: set default value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_2
    const-string v7, "sharpness"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :try_start_7
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "sharpness-min"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v5

    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "sharpness-max"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sharpness-min:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",sharpness-max:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    invoke-virtual {v2, v4}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    :goto_5
    const/high16 v7, 0x2050

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setStep(F)V

    :try_start_8
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "sharpness-def"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sharpness-def:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    :goto_6
    :try_start_9
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "sharpness"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current sharpness:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v1

    const/16 v7, 0xf

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V

    const-string v7, "CameraController"

    const-string v8, "sharpness: set current value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_8
    move-exception v1

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    const/16 v7, 0x19

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V

    const-string v7, "CameraController"

    const-string v8, "sharpness: set min, max value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_9
    move-exception v1

    const/16 v7, 0xf

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V

    const-string v7, "CameraController"

    const-string v8, "sharpness: set default value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_3
    const-string v7, "taking-picture-zoom"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    :try_start_a
    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    :goto_7
    const/high16 v7, 0x3f80

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setStep(F)V

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V

    :try_start_b
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "taking-picture-zoom"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception v1

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V

    goto/16 :goto_0

    :catch_b
    move-exception v1

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    const/16 v7, 0x1e

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V

    goto :goto_7

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public final getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public injectGEParam()Z
    .locals 3

    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    const-string v1, "CameraController"

    const-string v2, "injectGEParam"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    :catch_0
    move-exception v0

    const-string v1, "CameraController"

    const-string v2, "setParameters exception"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isSmartSceneDetectSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraController;->mIsSmartSceneDetectSupported:Z

    return v0
.end method

.method public isVideoStabilizationSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraController;->mIsVideoStabilizationSupported:Z

    return v0
.end method

.method public removeCameraParameter(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setAntibanding(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->Antibanding:Ljava/util/List;

    if-nez v0, :cond_1

    const-string v0, "CameraController"

    const-string v1, "not support Antibanding !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->Antibanding:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string p1, "auto"

    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    return-void
.end method

.method public final setAutoExposureLock(Z)Z
    .locals 3

    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoExposureLock("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setAutoWhiteBalanceLock(Z)Z
    .locals 3

    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoWhiteBalanceLock("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCameraParameter(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->Effects:Ljava/util/List;

    if-nez v0, :cond_1

    const-string v0, "CameraController"

    const-string v1, "not support Effects !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->Effects:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string p1, "none"

    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->FlashMode:Ljava/util/List;

    if-nez v0, :cond_1

    const-string v0, "CameraController"

    const-string v1, "not support FlashMode !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->FlashMode:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string p1, "auto"

    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    return-void
.end method

.method public final setFocusAreas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusMode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    return-void
.end method

.method public setGEParam(Ljava/lang/String;IIIIZ)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    const-string v2, "GE-param0"

    if-eq p1, v2, :cond_1

    const-string v2, "GE-param1"

    if-eq p1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    const-string v2, "GE-param0"

    if-ne p1, v2, :cond_4

    if-ne p6, v1, :cond_3

    iput v1, p0, Lcom/android/camera/CameraController;->mInjectParam0:I

    :cond_2
    :goto_1
    const-string v0, "CameraController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGEParam ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "GE-param3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/camera/CameraController;->mInjectParam0:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/CameraController;->mInjectParam1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_3
    iput v0, p0, Lcom/android/camera/CameraController;->mInjectParam0:I

    goto/16 :goto_1

    :cond_4
    const-string v2, "GE-param1"

    if-ne p1, v2, :cond_2

    if-ne p6, v1, :cond_5

    iput v1, p0, Lcom/android/camera/CameraController;->mInjectParam1:I

    goto/16 :goto_1

    :cond_5
    iput v0, p0, Lcom/android/camera/CameraController;->mInjectParam1:I

    goto/16 :goto_1
.end method

.method public setGpuEffectType(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "GPU-effect"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setJpegQuality(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 11

    const-wide/16 v9, 0x0

    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    cmpl-double v7, v1, v9

    if-nez v7, :cond_1

    cmpl-double v7, v3, v9

    if-eqz v7, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_5

    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7, v3, v4}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Location.getTime():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long v5, v7, v9

    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "utcTimeSeconds:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7, v5, v6}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    :cond_2
    const-string v7, "CameraController"

    const-string v8, "add gps location on photo"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7, v9, v10}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto :goto_1

    :cond_5
    const-string v7, "CameraController"

    const-string v8, "not add gps location on photo - hasLatLon = false"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v7, "CameraController"

    const-string v8, "not add gps location on photo - loc = null"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final setMeteringAreas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    return-void
.end method

.method public setPictureSizeParameter(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    return-void
.end method

.method public setPreviewFpsRange(II)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CameraController"

    const-string v2, "setPreviewFpsRange exception"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPreviewSizeParameter(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    return-void
.end method

.method public final setRecordingHint(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    return-void
.end method

.method public setRotation(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->SceneMode:Ljava/util/List;

    if-nez v0, :cond_1

    const-string v0, "CameraController"

    const-string v1, "not support SceneMode !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->SceneMode:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string p1, "auto"

    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    return-void
.end method

.method public setSupportedList()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    const-string v0, "CameraController"

    const-string v1, "setSupportedList() - mCameraParameters = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraController$SupportedList;->FlashMode:Ljava/util/List;

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->FlashMode:Ljava/util/List;

    if-nez v0, :cond_2

    const-string v0, "CameraController"

    const-string v1, "SupportedList.FlashMode == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraController$SupportedList;->FocusModes:Ljava/util/List;

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->FocusModes:Ljava/util/List;

    if-nez v0, :cond_3

    const-string v0, "CameraController"

    const-string v1, "SupportedList.FocusModes == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraController$SupportedList;->WhiteBalance:Ljava/util/List;

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->WhiteBalance:Ljava/util/List;

    if-nez v0, :cond_4

    const-string v0, "CameraController"

    const-string v1, "SupportedList.WhiteBalance == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraController$SupportedList;->Effects:Ljava/util/List;

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->Effects:Ljava/util/List;

    if-nez v0, :cond_5

    const-string v0, "CameraController"

    const-string v1, "SupportedList.Effects == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraController$SupportedList;->Antibanding:Ljava/util/List;

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->Antibanding:Ljava/util/List;

    if-nez v0, :cond_6

    const-string v0, "CameraController"

    const-string v1, "SupportedList.Antibanding == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraController$SupportedList;->SceneMode:Ljava/util/List;

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->SceneMode:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, "CameraController"

    const-string v1, "SupportedList.SceneMode == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVideoStabilization(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraController;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "video-stabilization"

    if-eqz p1, :cond_2

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CameraController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoStabilization ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_3

    const-string v0, "true"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "false"

    goto :goto_0

    :cond_3
    const-string v0, "false"

    goto :goto_1
.end method

.method public setWhiteBalance(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->WhiteBalance:Ljava/util/List;

    if-nez v0, :cond_1

    const-string v0, "CameraController"

    const-string v1, "not support WhiteBalance !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->WhiteBalance:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string p1, "auto"

    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    return-void
.end method

.method public final setZoom(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    return-void
.end method

.method public showParameters()V
    .locals 3

    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final startPreview()V
    .locals 4

    const-string v1, "Start preview"

    const-wide/16 v2, 0x1388

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/CameraController;->startTimeoutTimer(Ljava/lang/String;J)Lcom/android/camera/Handle;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0}, Lcom/android/camera/CameraController;->stopTimeoutTimer(Lcom/android/camera/Handle;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/android/camera/CameraController;->stopTimeoutTimer(Lcom/android/camera/Handle;)V

    throw v1
.end method

.method public final stopPreview()V
    .locals 4

    const-string v1, "Stop preview"

    const-wide/16 v2, 0x1388

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/CameraController;->startTimeoutTimer(Ljava/lang/String;J)Lcom/android/camera/Handle;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0}, Lcom/android/camera/CameraController;->stopTimeoutTimer(Lcom/android/camera/Handle;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/android/camera/CameraController;->stopTimeoutTimer(Lcom/android/camera/Handle;)V

    throw v1
.end method

.method public supportVideoStabilization()Z
    .locals 3

    iget-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "video-stabilization-supported"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const-string v1, "CameraController"

    const-string v2, "Video Stabilization is not supported."

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateCameraParameters()V
    .locals 4

    const-string v1, "Get camera parameters"

    const-wide/16 v2, 0x1388

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/CameraController;->startTimeoutTimer(Ljava/lang/String;J)Lcom/android/camera/Handle;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0}, Lcom/android/camera/CameraController;->stopTimeoutTimer(Lcom/android/camera/Handle;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/android/camera/CameraController;->stopTimeoutTimer(Lcom/android/camera/Handle;)V

    throw v1
.end method
