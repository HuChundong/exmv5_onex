.class Lcom/android/camera/component/CaptureResolutionManager$2;
.super Ljava/lang/Object;
.source "CaptureResolutionManager.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/CaptureResolutionManager;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/CaptureResolutionManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/CaptureResolutionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/CaptureResolutionManager$2;->this$0:Lcom/android/camera/component/CaptureResolutionManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/CaptureResolutionManager$2;->this$0:Lcom/android/camera/component/CaptureResolutionManager;

    invoke-virtual {v0}, Lcom/android/camera/component/CaptureResolutionManager;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/CaptureResolutionManager$2;->this$0:Lcom/android/camera/component/CaptureResolutionManager;

    iget-object v0, v0, Lcom/android/camera/ICaptureResolutionManager;->videoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/CaptureResolutionManager$2;->this$0:Lcom/android/camera/component/CaptureResolutionManager;

    iget-object v0, p0, Lcom/android/camera/component/CaptureResolutionManager$2;->this$0:Lcom/android/camera/component/CaptureResolutionManager;

    iget-object v0, v0, Lcom/android/camera/ICaptureResolutionManager;->videoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Resolution;

    #calls: Lcom/android/camera/component/CaptureResolutionManager;->updateMaxVideoSize(Lcom/android/camera/Resolution;)V
    invoke-static {v1, v0}, Lcom/android/camera/component/CaptureResolutionManager;->access$000(Lcom/android/camera/component/CaptureResolutionManager;Lcom/android/camera/Resolution;)V

    :cond_0
    return-void
.end method
