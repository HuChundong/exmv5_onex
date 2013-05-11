.class Lcom/android/camera/component/UIRotationManager$7;
.super Ljava/lang/Object;
.source "UIRotationManager.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/UIRotationManager;->initializeOverride()V
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
.field final synthetic this$0:Lcom/android/camera/component/UIRotationManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/UIRotationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/UIRotationManager$7;->this$0:Lcom/android/camera/component/UIRotationManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 3
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

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager$7;->this$0:Lcom/android/camera/component/UIRotationManager;

    #calls: Lcom/android/camera/component/UIRotationManager;->stopOrientationListener()V
    invoke-static {v0}, Lcom/android/camera/component/UIRotationManager;->access$800(Lcom/android/camera/component/UIRotationManager;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isVirtualHWKeyRotated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager$7;->this$0:Lcom/android/camera/component/UIRotationManager;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    const/4 v2, 0x0

    #calls: Lcom/android/camera/component/UIRotationManager;->updateVirtualHwKeysOrientation(Lcom/android/camera/rotate/UIRotation;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/camera/component/UIRotationManager;->access$600(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/rotate/UIRotation;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isVirtualHWKeyRotated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/UIRotationManager$7;->this$0:Lcom/android/camera/component/UIRotationManager;

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager$7;->this$0:Lcom/android/camera/component/UIRotationManager;

    iget-object v0, v0, Lcom/android/camera/IUIRotationManager;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    const/4 v2, 0x1

    #calls: Lcom/android/camera/component/UIRotationManager;->updateVirtualHwKeysOrientation(Lcom/android/camera/rotate/UIRotation;Z)V
    invoke-static {v1, v0, v2}, Lcom/android/camera/component/UIRotationManager;->access$600(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/rotate/UIRotation;Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager$7;->this$0:Lcom/android/camera/component/UIRotationManager;

    invoke-virtual {v0}, Lcom/android/camera/component/UIRotationManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->setCaptureRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0
.end method
