.class Lcom/android/camera/component/CaptureResolutionManager$3;
.super Ljava/lang/Object;
.source "CaptureResolutionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/CaptureResolutionManager;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/CaptureResolutionManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/CaptureResolutionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/CaptureResolutionManager$3;->this$0:Lcom/android/camera/component/CaptureResolutionManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/CaptureResolutionManager$3;->this$0:Lcom/android/camera/component/CaptureResolutionManager;

    invoke-virtual {v0}, Lcom/android/camera/component/CaptureResolutionManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isResettingToDefault:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/component/CaptureResolutionManager$3$1;

    invoke-direct {v1, p0}, Lcom/android/camera/component/CaptureResolutionManager$3$1;-><init>(Lcom/android/camera/component/CaptureResolutionManager$3;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v0, p0, Lcom/android/camera/component/CaptureResolutionManager$3;->this$0:Lcom/android/camera/component/CaptureResolutionManager;

    invoke-virtual {v0}, Lcom/android/camera/component/CaptureResolutionManager;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/component/CaptureResolutionManager$3$2;

    invoke-direct {v1, p0}, Lcom/android/camera/component/CaptureResolutionManager$3$2;-><init>(Lcom/android/camera/component/CaptureResolutionManager$3;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/CaptureResolutionManager$3;->this$0:Lcom/android/camera/component/CaptureResolutionManager;

    invoke-virtual {v0}, Lcom/android/camera/component/CaptureResolutionManager;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/component/CaptureResolutionManager$3$3;

    invoke-direct {v1, p0}, Lcom/android/camera/component/CaptureResolutionManager$3$3;-><init>(Lcom/android/camera/component/CaptureResolutionManager$3;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    :cond_0
    return-void
.end method
