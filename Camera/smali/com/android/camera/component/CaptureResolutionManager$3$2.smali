.class Lcom/android/camera/component/CaptureResolutionManager$3$2;
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

    iput-object p1, p0, Lcom/android/camera/component/CaptureResolutionManager$3$2;->this$1:Lcom/android/camera/component/CaptureResolutionManager$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 1
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

    iget-object v0, p0, Lcom/android/camera/component/CaptureResolutionManager$3$2;->this$1:Lcom/android/camera/component/CaptureResolutionManager$3;

    iget-object v0, v0, Lcom/android/camera/component/CaptureResolutionManager$3;->this$0:Lcom/android/camera/component/CaptureResolutionManager;

    invoke-virtual {v0}, Lcom/android/camera/component/CaptureResolutionManager;->updateResolutions()V

    return-void
.end method
