.class final Lcom/android/camera/component/ImageSettingsController;
.super Lcom/android/camera/IImageSettingsController;
.source "ImageSettingsController.java"


# static fields
.field static final NAME:Ljava/lang/String; = "Image Settings Controller"

.field private static final PARAMETER_CONTRAST:Ljava/lang/String; = "contrast"

.field private static final PARAMETER_ISO:Ljava/lang/String; = "iso"

.field private static final PARAMETER_SATURATION:Ljava/lang/String; = "saturation"

.field private static final PARAMETER_SHARPNESS:Ljava/lang/String; = "sharpness"


# instance fields
.field private final m_AecLockHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_AwbLockHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_BrightnessRange:Lcom/android/camera/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_ContrastRange:Lcom/android/camera/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_DefaultBrightness:I

.field private m_DefaultContrast:I

.field private m_DefaultSaturation:I

.field private m_DefaultSharpness:I

.field private m_NeedToReset:Z

.field private m_NeedToSetParams:Z

.field private m_SaturationRange:Lcom/android/camera/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_SharpnessRange:Lcom/android/camera/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 6

    const/4 v5, 0x0

    const-string v1, "Image Settings Controller"

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/IImageSettingsController;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ImageSettingsController;->m_AecLockHandles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ImageSettingsController;->m_AwbLockHandles:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultBrightness:I

    invoke-direct {p0, v5}, Lcom/android/camera/component/ImageSettingsController;->loadFromPreferences(Z)V

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ImageSettingsController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/ImageSettingsController;->m_NeedToSetParams:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/component/ImageSettingsController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/ImageSettingsController;->m_NeedToSetParams:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/component/ImageSettingsController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/ImageSettingsController;->unlockAutoExposure(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/component/ImageSettingsController;Lcom/android/camera/Handle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/ImageSettingsController;->lockAutoWhiteBalance(Lcom/android/camera/Handle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/ImageSettingsController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/ImageSettingsController;->unlockAutoWhiteBalance(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/component/ImageSettingsController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/ImageSettingsController;->m_NeedToReset:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/component/ImageSettingsController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/ImageSettingsController;->m_NeedToReset:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/component/ImageSettingsController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/ImageSettingsController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/ImageSettingsController;->loadFromPreferences(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/component/ImageSettingsController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/ImageSettingsController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/ImageSettingsController;->applyImageSettings(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/component/ImageSettingsController;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/ImageSettingsController;->setWhiteBalance(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/component/ImageSettingsController;Lcom/android/camera/Handle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/ImageSettingsController;->lockAutoExposure(Lcom/android/camera/Handle;)V

    return-void
.end method

.method private applyImageSetting(Ljava/lang/String;FLcom/android/camera/Range;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F",
            "Lcom/android/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lcom/android/camera/component/ImageSettingsController;->mapToActualImageSettingValue(FLcom/android/camera/Range;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p5}, Lcom/android/camera/component/ImageSettingsController;->applyImageSetting(Ljava/lang/String;ILcom/android/camera/CameraController;Z)V

    return-void
.end method

.method private applyImageSetting(Ljava/lang/String;ILcom/android/camera/CameraController;Z)V
    .locals 5

    if-eqz p3, :cond_3

    :try_start_0
    const-string v1, "contrast"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x19

    if-ne p2, v0, :cond_0

    const/16 v3, 0x5

    move/from16 p2, v3

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    if-ne p2, v0, :cond_1

    const/16 v3, 0x7

    move/from16 p2, v3

    goto :goto_0

    :cond_1
    const/16 v0, 0x4b

    if-ne p2, v0, :cond_2

    const/16 v3, 0x32

    move/from16 p2, v3

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "applyImageSetting() - Set "

    const-string v3, " = "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, p1, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, p1, p2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    if-eqz p4, :cond_3

    invoke-virtual {p3}, Lcom/android/camera/CameraController;->doSetCameraParameters()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyImageSetting() - Cannot apply image setting for parameter \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private applyImageSettings(Z)V
    .locals 2

    new-instance v0, Lcom/android/camera/ImageSettings;

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/HTCCamera;)V

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->brightness:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Float;

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->contrast:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Float;

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->iso:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->saturation:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Float;

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->sharpness:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->whiteBalance:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->whiteBalance:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/component/ImageSettingsController;->applyImageSettings(Lcom/android/camera/ImageSettings;Z)V

    return-void
.end method

.method private ensureNormalizedValue(F)F
    .locals 3

    const/high16 v1, 0x3f80

    const/high16 v0, -0x2050

    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    return p1

    :cond_1
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method private getImageSettingDefaultValue(Lcom/android/camera/CameraController;Ljava/lang/String;Lcom/android/camera/Range;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraController;",
            "Ljava/lang/String;",
            "Lcom/android/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImageSettingDefaultValue() - Cannot default value from parameter \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p3, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p3, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private getImageSettingRange(Lcom/android/camera/CameraController;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraController;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lcom/android/camera/Range;

    invoke-virtual {p1, p2}, Lcom/android/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, p3}, Lcom/android/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImageSettingRange() - Cannot get range from parameters (\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    new-instance v1, Lcom/android/camera/Range;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getImageSettingRanges()V
    .locals 7

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_BrightnessRange:Lcom/android/camera/Range;

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "getImageSettingRanges()"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v2, Lcom/android/camera/Range;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->getMinExposureCompensation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->getMaxExposureCompensation()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_BrightnessRange:Lcom/android/camera/Range;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_BrightnessRange:Lcom/android/camera/Range;

    if-nez v2, :cond_2

    new-instance v2, Lcom/android/camera/Range;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_BrightnessRange:Lcom/android/camera/Range;

    :cond_2
    iget v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultBrightness:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_BrightnessRange:Lcom/android/camera/Range;

    iget-object v2, v2, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_BrightnessRange:Lcom/android/camera/Range;

    iget-object v2, v2, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultBrightness:I

    :cond_3
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "getImageSettingRanges() - Brightness : "

    iget-object v4, p0, Lcom/android/camera/component/ImageSettingsController;->m_BrightnessRange:Lcom/android/camera/Range;

    const-string v5, ", "

    iget v6, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultBrightness:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "contrast-min"

    const-string v3, "contrast-max"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/camera/component/ImageSettingsController;->getImageSettingRange(Lcom/android/camera/CameraController;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/Range;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_ContrastRange:Lcom/android/camera/Range;

    const-string v2, "contrast-def"

    iget-object v3, p0, Lcom/android/camera/component/ImageSettingsController;->m_ContrastRange:Lcom/android/camera/Range;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/camera/component/ImageSettingsController;->getImageSettingDefaultValue(Lcom/android/camera/CameraController;Ljava/lang/String;Lcom/android/camera/Range;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultContrast:I

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "getImageSettingRanges() - Contrast : "

    iget-object v4, p0, Lcom/android/camera/component/ImageSettingsController;->m_ContrastRange:Lcom/android/camera/Range;

    const-string v5, ", "

    iget v6, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultContrast:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "saturation-min"

    const-string v3, "saturation-max"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/camera/component/ImageSettingsController;->getImageSettingRange(Lcom/android/camera/CameraController;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/Range;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_SaturationRange:Lcom/android/camera/Range;

    const-string v2, "saturation-def"

    iget-object v3, p0, Lcom/android/camera/component/ImageSettingsController;->m_SaturationRange:Lcom/android/camera/Range;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/camera/component/ImageSettingsController;->getImageSettingDefaultValue(Lcom/android/camera/CameraController;Ljava/lang/String;Lcom/android/camera/Range;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultSaturation:I

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "getImageSettingRanges() - Saturation : "

    iget-object v4, p0, Lcom/android/camera/component/ImageSettingsController;->m_SaturationRange:Lcom/android/camera/Range;

    const-string v5, ", "

    iget v6, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultSaturation:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "sharpness-min"

    const-string v3, "sharpness-max"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/camera/component/ImageSettingsController;->getImageSettingRange(Lcom/android/camera/CameraController;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/Range;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_SharpnessRange:Lcom/android/camera/Range;

    const-string v2, "sharpness-def"

    iget-object v3, p0, Lcom/android/camera/component/ImageSettingsController;->m_SharpnessRange:Lcom/android/camera/Range;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/camera/component/ImageSettingsController;->getImageSettingDefaultValue(Lcom/android/camera/CameraController;Ljava/lang/String;Lcom/android/camera/Range;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultSharpness:I

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "getImageSettingRanges() - Sharpness : "

    iget-object v4, p0, Lcom/android/camera/component/ImageSettingsController;->m_SharpnessRange:Lcom/android/camera/Range;

    const-string v5, ", "

    iget v6, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultSharpness:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "getImageSettingRanges() - Cannot get brightness range"

    invoke-static {v2, v3, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method private isImageSettingsWithoutChanges(Lcom/android/camera/ImageSettings;)Z
    .locals 6

    const/4 v2, 0x1

    const v5, 0x38d1b717

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget-object v1, p1, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Float;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->brightness:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v4, p1, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Float;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->contrast:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v4, p1, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->iso:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p1, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Float;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->saturation:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v4, p1, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_4

    move v1, v3

    goto :goto_0

    :cond_4
    iget-object v1, p1, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->sharpness:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v4, p1, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_5

    move v1, v3

    goto/16 :goto_0

    :cond_5
    iget-object v1, p1, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->whiteBalance:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p1, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v3

    goto/16 :goto_0

    :cond_6
    iget-object v1, p1, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->whiteBalance:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p1, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v3

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->isAutoExposureLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->getAutoExposureLock()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    move v1, v3

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->isAutoWhiteBalanceLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->getAutoWhiteBalanceLock()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v3

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto/16 :goto_0
.end method

.method private loadFromPreferences(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "loadFromPreferences()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->brightness:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/camera/CameraSettings;->brightness:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->contrast:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/camera/CameraSettings;->contrast:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->iso:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/camera/CameraSettings;->iso:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->saturation:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/camera/CameraSettings;->saturation:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->sharpness:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/camera/CameraSettings;->sharpness:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->whiteBalance:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/camera/CameraSettings;->mainWhiteBalance:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/component/ImageSettingsController;->applyImageSettings(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->whiteBalance:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/camera/CameraSettings;->frontWhiteBalance:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private lockAutoExposure(Lcom/android/camera/Handle;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoExposure() - Handle : "

    invoke-static {v1, v2, p1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoExposure() - Component is not running"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/ImageSettingsController;->m_AecLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoExposure() - Handle count : "

    iget-object v3, p0, Lcom/android/camera/component/ImageSettingsController;->m_AecLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/component/ImageSettingsController;->m_AecLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->isAutoExposureLocked:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraController;->setAutoExposureLock(Z)Z

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0
.end method

.method private lockAutoWhiteBalance(Lcom/android/camera/Handle;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoWhiteBalance() - Handle : "

    invoke-static {v1, v2, p1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoWhiteBalance() - Component is not running"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/ImageSettingsController;->m_AwbLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoWhiteBalance() - Handle count : "

    iget-object v3, p0, Lcom/android/camera/component/ImageSettingsController;->m_AwbLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/component/ImageSettingsController;->m_AwbLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->isAutoWhiteBalanceLocked:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraController;->setAutoWhiteBalanceLock(Z)Z

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0
.end method

.method private mapToActualImageSettingValue(FLcom/android/camera/Range;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/android/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    const/high16 v3, 0x3f00

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "mapToActualImageSettingValue() - No value range, use default value"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return p3

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/component/ImageSettingsController;->ensureNormalizedValue(F)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget-object v0, p2, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p2, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, p3, v0

    int-to-float v0, v0

    const/high16 v2, 0x3f80

    add-float/2addr v2, p1

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    float-to-int v0, v0

    add-int p3, v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, p3

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v3

    float-to-int v0, v0

    add-int/2addr p3, v0

    goto :goto_0
.end method

.method private setBrightness(FZ)V
    .locals 8

    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "setBrightness("

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v7, ")"

    invoke-static {v4, v5, v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/camera/component/ImageSettingsController;->ensureNormalizedValue(F)F

    move-result v3

    invoke-direct {p0}, Lcom/android/camera/component/ImageSettingsController;->getImageSettingRanges()V

    iget-object v4, p0, Lcom/android/camera/IImageSettingsController;->isAutoExposureLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/camera/component/ImageSettingsController;->m_BrightnessRange:Lcom/android/camera/Range;

    iget v5, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultBrightness:I

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/component/ImageSettingsController;->mapToActualImageSettingValue(FLcom/android/camera/Range;I)I

    move-result v2

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraController;->setExposureCompensation(I)V

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/camera/IImageSettingsController;->brightness:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception v1

    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "setBrightness() - Cannot set brightness"

    invoke-static {v4, v5, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "setBrightness() - AEC is locked"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setContrast(FZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setContrast("

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v0, v1, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/camera/component/ImageSettingsController;->ensureNormalizedValue(F)F

    move-result v2

    invoke-direct {p0}, Lcom/android/camera/component/ImageSettingsController;->getImageSettingRanges()V

    const-string v1, "contrast"

    iget-object v3, p0, Lcom/android/camera/component/ImageSettingsController;->m_ContrastRange:Lcom/android/camera/Range;

    iget v4, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultContrast:I

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/ImageSettingsController;->applyImageSetting(Ljava/lang/String;FLcom/android/camera/Range;IZ)V

    iget-object v0, p0, Lcom/android/camera/IImageSettingsController;->contrast:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private setIso(Ljava/lang/String;Z)V
    .locals 6

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "setIsoInternal("

    const-string v5, ")"

    invoke-static {v3, v4, p1, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    move-object v2, p1

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v3, "iso"

    invoke-virtual {v0, v3, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/camera/IImageSettingsController;->iso:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_1
    const-string v2, "auto"

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "setIsoInternal() - Cannot set brightness"

    invoke-static {v3, v4, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private setSaturation(FZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setSaturation("

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v0, v1, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/camera/component/ImageSettingsController;->ensureNormalizedValue(F)F

    move-result v2

    invoke-direct {p0}, Lcom/android/camera/component/ImageSettingsController;->getImageSettingRanges()V

    const-string v1, "saturation"

    iget-object v3, p0, Lcom/android/camera/component/ImageSettingsController;->m_SaturationRange:Lcom/android/camera/Range;

    iget v4, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultSaturation:I

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/ImageSettingsController;->applyImageSetting(Ljava/lang/String;FLcom/android/camera/Range;IZ)V

    iget-object v0, p0, Lcom/android/camera/IImageSettingsController;->saturation:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private setSharpness(FZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setSharpness("

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v0, v1, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/camera/component/ImageSettingsController;->ensureNormalizedValue(F)F

    move-result v2

    invoke-direct {p0}, Lcom/android/camera/component/ImageSettingsController;->getImageSettingRanges()V

    const-string v1, "sharpness"

    iget-object v3, p0, Lcom/android/camera/component/ImageSettingsController;->m_SharpnessRange:Lcom/android/camera/Range;

    iget v4, p0, Lcom/android/camera/component/ImageSettingsController;->m_DefaultSharpness:I

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/ImageSettingsController;->applyImageSetting(Ljava/lang/String;FLcom/android/camera/Range;IZ)V

    iget-object v0, p0, Lcom/android/camera/IImageSettingsController;->sharpness:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private setWhiteBalance(Ljava/lang/String;Z)V
    .locals 6

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "setWhiteBalanceInternal("

    const-string v5, ")"

    invoke-static {v3, v4, p1, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    move-object v2, p1

    :goto_0
    iget-object v3, p0, Lcom/android/camera/IImageSettingsController;->isAutoWhiteBalanceLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraController;->setWhiteBalance(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/camera/IImageSettingsController;->whiteBalance:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_1
    const-string v2, "auto"

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "setWhiteBalanceInternal() - Cannot set brightness"

    invoke-static {v3, v4, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "setWhiteBalanceInternal() - AWB is locked"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private unlockAutoExposure(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->isAutoExposureLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/ImageSettingsController;->m_AecLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->isAutoExposureLocked:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->brightness:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1, v4}, Lcom/android/camera/component/ImageSettingsController;->setBrightness(FZ)V

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraController;->setAutoExposureLock(Z)Z

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_0
    return-void
.end method

.method private unlockAutoWhiteBalance(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->isAutoWhiteBalanceLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/ImageSettingsController;->m_AwbLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->isAutoWhiteBalanceLocked:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->whiteBalance:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/android/camera/component/ImageSettingsController;->setWhiteBalance(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraController;->setAutoWhiteBalanceLock(Z)Z

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_0
    return-void
.end method


# virtual methods
.method public applyImageSettings(Lcom/android/camera/ImageSettings;Z)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "applyImageSettings() - No image settings"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->isDependencyThread()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "applyImageSettings() - Called from another thread"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/ImageSettings;

    invoke-direct {v0, p1}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/ImageSettings;)V

    new-instance v3, Lcom/android/camera/component/ImageSettingsController$1;

    invoke-direct {v3, p0, v0, p2}, Lcom/android/camera/component/ImageSettingsController$1;-><init>(Lcom/android/camera/component/ImageSettingsController;Lcom/android/camera/ImageSettings;Z)V

    invoke-virtual {p0, v3}, Lcom/android/camera/component/ImageSettingsController;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Float;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v3, v4}, Lcom/android/camera/component/ImageSettingsController;->setBrightness(FZ)V

    :cond_3
    iget-object v3, p1, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Float;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v3, v4}, Lcom/android/camera/component/ImageSettingsController;->setContrast(FZ)V

    :cond_4
    iget-object v3, p1, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/camera/component/ImageSettingsController;->setIso(Ljava/lang/String;Z)V

    :cond_5
    iget-object v3, p1, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Float;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v3, v4}, Lcom/android/camera/component/ImageSettingsController;->setSaturation(FZ)V

    :cond_6
    iget-object v3, p1, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v3, v4}, Lcom/android/camera/component/ImageSettingsController;->setSharpness(FZ)V

    :cond_7
    iget-object v3, p1, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p1, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/camera/component/ImageSettingsController;->setWhiteBalance(Ljava/lang/String;Z)V

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v3, p0, Lcom/android/camera/IImageSettingsController;->isAutoExposureLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/camera/CameraController;->setAutoExposureLock(Z)Z

    iget-object v3, p0, Lcom/android/camera/IImageSettingsController;->isAutoWhiteBalanceLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/camera/CameraController;->setAutoWhiteBalanceLock(Z)Z

    :cond_9
    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/android/camera/CameraController;->doSetCameraParameters()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "applyImageSettings() - Cannot apply image settings"

    invoke-static {v3, v4, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_a
    iget-object v3, p1, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p1, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/camera/component/ImageSettingsController;->setWhiteBalance(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method protected deinitializeOverride()V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/camera/IImageSettingsController;->deinitializeOverride()V

    return-void
.end method

.method protected initializeOverride()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/IImageSettingsController;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/CameraThread;->cameraOpenEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ImageSettingsController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ImageSettingsController$2;-><init>(Lcom/android/camera/component/ImageSettingsController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v1, v0, Lcom/android/camera/CameraThread;->preparingParamsAfterPreviewStartEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ImageSettingsController$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ImageSettingsController$3;-><init>(Lcom/android/camera/component/ImageSettingsController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    new-instance v2, Lcom/android/camera/component/ImageSettingsController$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ImageSettingsController$4;-><init>(Lcom/android/camera/component/ImageSettingsController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/android/camera/FeatureConfig;->useSeparateWhiteBalanceSettings()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ImageSettingsController$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ImageSettingsController$5;-><init>(Lcom/android/camera/component/ImageSettingsController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    :cond_0
    iget-object v1, v0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ImageSettingsController$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ImageSettingsController$6;-><init>(Lcom/android/camera/component/ImageSettingsController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    return-void
.end method

.method public lockAutoExposure(Ljava/lang/String;)Lcom/android/camera/Handle;
    .locals 3

    if-nez p1, :cond_0

    const-string v1, "name"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/SessionHandle;

    invoke-direct {v0, p1}, Lcom/android/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoExposure() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->isDependencyThread()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoExposure() - Called from another thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/camera/component/ImageSettingsController$7;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/component/ImageSettingsController$7;-><init>(Lcom/android/camera/component/ImageSettingsController;Lcom/android/camera/SessionHandle;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ImageSettingsController;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/component/ImageSettingsController;->lockAutoExposure(Lcom/android/camera/Handle;)V

    goto :goto_0
.end method

.method public lockAutoWhiteBalance(Ljava/lang/String;)Lcom/android/camera/Handle;
    .locals 3

    if-nez p1, :cond_0

    const-string v1, "name"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/SessionHandle;

    invoke-direct {v0, p1}, Lcom/android/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoWhiteBalance() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->isDependencyThread()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoWhiteBalance() - Called from another thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/camera/component/ImageSettingsController$8;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/component/ImageSettingsController$8;-><init>(Lcom/android/camera/component/ImageSettingsController;Lcom/android/camera/SessionHandle;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ImageSettingsController;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/component/ImageSettingsController;->lockAutoWhiteBalance(Lcom/android/camera/Handle;)V

    goto :goto_0
.end method

.method public unlockAutoExposure(Lcom/android/camera/Handle;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unlockAutoExposure() - Null handle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unlockAutoExposure() - Handle : "

    invoke-static {v1, v2, p1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->isDependencyThread()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unlockAutoExposure() - Called from another thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/camera/component/ImageSettingsController$9;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/component/ImageSettingsController$9;-><init>(Lcom/android/camera/component/ImageSettingsController;Lcom/android/camera/Handle;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ImageSettingsController;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unlockAutoExposure() - Component is not running"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/camera/component/ImageSettingsController;->m_AecLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unlockAutoExposure() - Invalid handle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unlockAutoExposure() - Handle count : "

    iget-object v3, p0, Lcom/android/camera/component/ImageSettingsController;->m_AecLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/component/ImageSettingsController;->m_AecLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->isAutoExposureLocked:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraController;->setAutoExposureLock(Z)Z

    :cond_5
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->brightness:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/camera/component/ImageSettingsController;->setBrightness(FZ)V

    goto :goto_0
.end method

.method public unlockAutoWhiteBalance(Lcom/android/camera/Handle;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unlockAutoWhiteBalance() - Null handle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unlockAutoWhiteBalance() - Handle : "

    invoke-static {v1, v2, p1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->isDependencyThread()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unlockAutoWhiteBalance() - Called from another thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/camera/component/ImageSettingsController$10;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/component/ImageSettingsController$10;-><init>(Lcom/android/camera/component/ImageSettingsController;Lcom/android/camera/Handle;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ImageSettingsController;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unlockAutoWhiteBalance() - Component is not running"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/camera/component/ImageSettingsController;->m_AwbLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unlockAutoWhiteBalance() - Invalid handle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unlockAutoWhiteBalance() - Handle count : "

    iget-object v3, p0, Lcom/android/camera/component/ImageSettingsController;->m_AwbLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/component/ImageSettingsController;->m_AwbLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->isAutoWhiteBalanceLocked:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/camera/component/ImageSettingsController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraController;->setAutoWhiteBalanceLock(Z)Z

    :cond_5
    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->whiteBalance:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/camera/component/ImageSettingsController;->setWhiteBalance(Ljava/lang/String;Z)V

    goto :goto_0
.end method
