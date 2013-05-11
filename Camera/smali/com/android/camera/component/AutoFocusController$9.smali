.class Lcom/android/camera/component/AutoFocusController$9;
.super Ljava/lang/Object;
.source "AutoFocusController.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoFocusController;->initializeOverride()V
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
        "Lcom/android/camera/TakingPictureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoFocusController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoFocusController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/AutoFocusController$9;->this$0:Lcom/android/camera/component/AutoFocusController;

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
            "Lcom/android/camera/TakingPictureState;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/TakingPictureState;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/TakingPictureState;->TakingPicture:Lcom/android/camera/TakingPictureState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$9;->this$0:Lcom/android/camera/component/AutoFocusController;

    invoke-virtual {v0}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$9;->this$0:Lcom/android/camera/component/AutoFocusController;

    iget-object v0, v0, Lcom/android/camera/IAutoFocusController;->isAutoFocusLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$9;->this$0:Lcom/android/camera/component/AutoFocusController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/AutoFocusController;->access$600(Lcom/android/camera/component/AutoFocusController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancelAutoFocus for VideoSnapShot"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$9;->this$0:Lcom/android/camera/component/AutoFocusController;

    #calls: Lcom/android/camera/component/AutoFocusController;->cancelAutoFocusDirectly()V
    invoke-static {v0}, Lcom/android/camera/component/AutoFocusController;->access$500(Lcom/android/camera/component/AutoFocusController;)V

    :cond_0
    return-void
.end method
