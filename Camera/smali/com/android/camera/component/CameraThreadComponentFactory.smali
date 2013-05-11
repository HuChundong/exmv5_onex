.class public final Lcom/android/camera/component/CameraThreadComponentFactory;
.super Lcom/android/camera/component/ComponentFactory;
.source "CameraThreadComponentFactory.java"


# static fields
.field private static final m_Builders:[Lcom/android/camera/component/IComponentBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/android/camera/component/IComponentBuilder",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x18

    new-array v0, v0, [Lcom/android/camera/component/IComponentBuilder;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/camera/debug/OperationTimeoutControllerBuilder;

    invoke-direct {v2}, Lcom/android/camera/debug/OperationTimeoutControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/camera/component/CaptureResolutionManagerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/CaptureResolutionManagerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/camera/component/RecordingLimitControllerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/RecordingLimitControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/camera/io/MediaFileWriterBuilder;

    invoke-direct {v2}, Lcom/android/camera/io/MediaFileWriterBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/android/camera/component/SharedBackgroundWorkerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/SharedBackgroundWorkerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/android/camera/component/AudioManagerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/AudioManagerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/camera/component/AutoFocusControllerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/AutoFocusControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/android/camera/component/ImageSettingsControllerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/ImageSettingsControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/android/camera/component/FaceDetectionControllerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/FaceDetectionControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/android/camera/component/ThumbnailControllerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/ThumbnailControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/android/camera/component/PanoramaControllerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/PanoramaControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/android/camera/component/HdrControllerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/HdrControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/android/camera/component/SmartShotControllerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/SmartShotControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/android/camera/component/BurstControllerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/BurstControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/android/camera/component/ContinuousBurstControllerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/ContinuousBurstControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/android/camera/component/PowerWarningControllerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/PowerWarningControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/android/camera/effect/EffectControllerBuilder;

    invoke-direct {v2}, Lcom/android/camera/effect/EffectControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/android/camera/effect/SceneControllerBuilder;

    invoke-direct {v2}, Lcom/android/camera/effect/SceneControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/android/camera/component/HtcCallbackControllerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/HtcCallbackControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/android/camera/component/ObjectTrackingControllerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/ObjectTrackingControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/android/camera/component/SmileCaptureControllerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/SmileCaptureControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/android/camera/component/AutoSceneControllerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/AutoSceneControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/android/camera/component/EisControllerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/EisControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/android/camera/location/LocationManagerProxyBuilder;

    invoke-direct {v2}, Lcom/android/camera/location/LocationManagerProxyBuilder;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/component/CameraThreadComponentFactory;->m_Builders:[Lcom/android/camera/component/IComponentBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/ComponentFactory;-><init>(Lcom/android/camera/component/IComponentOwner;)V

    return-void
.end method


# virtual methods
.method public final createComponents(Lcom/android/camera/component/ComponentCategory;)I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/camera/component/ComponentFactory;->componentOwner:Lcom/android/camera/component/IComponentOwner;

    check-cast v1, Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/camera/component/CameraThreadComponentFactory;->createComponents(Lcom/android/camera/component/ComponentCategory;[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v4

    goto :goto_0
.end method

.method protected getComponentBuilders()[Lcom/android/camera/component/IComponentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/android/camera/component/IComponentBuilder",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/component/CameraThreadComponentFactory;->m_Builders:[Lcom/android/camera/component/IComponentBuilder;

    return-object v0
.end method
