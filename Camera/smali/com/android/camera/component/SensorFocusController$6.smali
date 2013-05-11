.class Lcom/android/camera/component/SensorFocusController$6;
.super Ljava/lang/Object;
.source "SensorFocusController.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/SensorFocusController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<[F>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/SensorFocusController;

.field final synthetic val$cameraActivity:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SensorFocusController;Lcom/android/camera/HTCCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/SensorFocusController$6;->this$0:Lcom/android/camera/component/SensorFocusController;

    iput-object p2, p0, Lcom/android/camera/component/SensorFocusController$6;->val$cameraActivity:Lcom/android/camera/HTCCamera;

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
            "<[F>;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<[F>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController$6;->val$cameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isAccelerometerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController$6;->this$0:Lcom/android/camera/component/SensorFocusController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/SensorFocusController;->access$300(Lcom/android/camera/component/SensorFocusController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isAccelerometerStarted is false. Return."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/SensorFocusController$6;->this$0:Lcom/android/camera/component/SensorFocusController;

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, [F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    invoke-virtual {v1, v0}, Lcom/android/camera/component/SensorFocusController;->onAccelerometerValuesChanged([F)V

    goto :goto_0
.end method
