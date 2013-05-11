.class public final Lcom/android/camera/FeatureConfig;
.super Ljava/lang/Object;
.source "FeatureConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canChangeZoomByVolumeKeys()Z
    .locals 2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDriverCallbackTimeoutHandlingPolicy()Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;
    .locals 1

    sget-object v0, Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->RecoverSilently:Lcom/android/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    return-object v0
.end method

.method public static isDefault720pFrontVideoResolution()Z
    .locals 2

    const/16 v1, 0xa9

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x26

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x146

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x149

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x147

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x14a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x43

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDlxSeries()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDefaultMaxFrontVideoResolution()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isDefaultMaxMainVideoResolution()Z
    .locals 2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExperimentalFeatureEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isFrontCameraFaceBeautifierSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isFrontCameraSceneEnabled()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/FeatureConfig;->isExperimentalFeatureEnabled()Z

    move-result v0

    return v0
.end method

.method public static isInitialFakeRotationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isVideoSceneSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final useNativeJpegRawDataBuffer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static useSeparateWhiteBalanceSettings()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSpecific2ndCamera()Z

    move-result v0

    return v0
.end method

.method public static useSpecialPanoramaResolutions()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
