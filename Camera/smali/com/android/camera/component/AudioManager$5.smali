.class Lcom/android/camera/component/AudioManager$5;
.super Ljava/lang/Object;
.source "AudioManager.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AudioManager;->initializeOverride()V
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
        "Lcom/android/camera/UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AudioManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AudioManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/AudioManager$5;->this$0:Lcom/android/camera/component/AudioManager;

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
            "Lcom/android/camera/UIState;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/UIState;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/AudioManager$5;->this$0:Lcom/android/camera/component/AudioManager;

    iget-object v0, p0, Lcom/android/camera/component/AudioManager$5;->this$0:Lcom/android/camera/component/AudioManager;

    invoke-virtual {v0}, Lcom/android/camera/component/AudioManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    #calls: Lcom/android/camera/component/AudioManager;->setVolumePanelOrientation(Lcom/android/camera/rotate/UIRotation;)V
    invoke-static {v1, v0}, Lcom/android/camera/component/AudioManager;->access$300(Lcom/android/camera/component/AudioManager;Lcom/android/camera/rotate/UIRotation;)V

    :cond_0
    return-void
.end method
