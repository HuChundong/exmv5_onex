.class Lcom/android/camera/component/ObjectTrackingUI$3;
.super Ljava/lang/Object;
.source "ObjectTrackingUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ObjectTrackingUI;->initializeOverride()V
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
        "Lcom/android/camera/RecordingState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ObjectTrackingUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ObjectTrackingUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ObjectTrackingUI$3;->this$0:Lcom/android/camera/component/ObjectTrackingUI;

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
            "Lcom/android/camera/RecordingState;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/RecordingState;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/RecordingState;

    sget-object v1, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/RecordingState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI$3;->this$0:Lcom/android/camera/component/ObjectTrackingUI;

    #calls: Lcom/android/camera/component/ObjectTrackingUI;->stopFaceDetection()V
    invoke-static {v0}, Lcom/android/camera/component/ObjectTrackingUI;->access$000(Lcom/android/camera/component/ObjectTrackingUI;)V

    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI$3;->this$0:Lcom/android/camera/component/ObjectTrackingUI;

    #calls: Lcom/android/camera/component/ObjectTrackingUI;->disableOT()V
    invoke-static {v0}, Lcom/android/camera/component/ObjectTrackingUI;->access$200(Lcom/android/camera/component/ObjectTrackingUI;)V

    :cond_0
    return-void
.end method
