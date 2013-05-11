.class Lcom/android/camera/component/CaptureResolutionManager$3$1;
.super Ljava/lang/Object;
.source "CaptureResolutionManager.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/CaptureResolutionManager$3;->run()V
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
.field final synthetic this$1:Lcom/android/camera/component/CaptureResolutionManager$3;


# direct methods
.method constructor <init>(Lcom/android/camera/component/CaptureResolutionManager$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/CaptureResolutionManager$3$1;->this$1:Lcom/android/camera/component/CaptureResolutionManager$3;

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

    const/4 v1, 0x0

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/CaptureResolutionManager$3$1;->this$1:Lcom/android/camera/component/CaptureResolutionManager$3;

    iget-object v0, v0, Lcom/android/camera/component/CaptureResolutionManager$3;->this$0:Lcom/android/camera/component/CaptureResolutionManager;

    invoke-virtual {v0}, Lcom/android/camera/component/CaptureResolutionManager;->getDefaultPhotoResolutionProvider()Lcom/android/camera/IPhotoResolutionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IPhotoResolutionProvider;->resetResolutions()V

    iget-object v0, p0, Lcom/android/camera/component/CaptureResolutionManager$3$1;->this$1:Lcom/android/camera/component/CaptureResolutionManager$3;

    iget-object v0, v0, Lcom/android/camera/component/CaptureResolutionManager$3;->this$0:Lcom/android/camera/component/CaptureResolutionManager;

    invoke-virtual {v0}, Lcom/android/camera/component/CaptureResolutionManager;->getDefaultVideoResolutionProvider()Lcom/android/camera/IVideoResolutionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IVideoResolutionProvider;->resetResolutions()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/CaptureResolutionManager$3$1;->this$1:Lcom/android/camera/component/CaptureResolutionManager$3;

    iget-object v0, v0, Lcom/android/camera/component/CaptureResolutionManager$3;->this$0:Lcom/android/camera/component/CaptureResolutionManager;

    #calls: Lcom/android/camera/component/CaptureResolutionManager;->updateResolutions(ZZZ)V
    invoke-static {v0, v1, v1, v1}, Lcom/android/camera/component/CaptureResolutionManager;->access$100(Lcom/android/camera/component/CaptureResolutionManager;ZZZ)V

    goto :goto_0
.end method
