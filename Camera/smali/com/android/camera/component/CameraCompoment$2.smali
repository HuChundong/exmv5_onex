.class Lcom/android/camera/component/CameraCompoment$2;
.super Ljava/lang/Object;
.source "CameraCompoment.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/CameraCompoment;
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
        "Lcom/android/camera/rotate/UIRotation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/CameraCompoment;


# direct methods
.method constructor <init>(Lcom/android/camera/component/CameraCompoment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/CameraCompoment$2;->this$0:Lcom/android/camera/component/CameraCompoment;

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
            "Lcom/android/camera/rotate/UIRotation;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/rotate/UIRotation;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment$2;->this$0:Lcom/android/camera/component/CameraCompoment;

    #getter for: Lcom/android/camera/component/CameraCompoment;->m_RotationFlags:I
    invoke-static {v0}, Lcom/android/camera/component/CameraCompoment;->access$100(Lcom/android/camera/component/CameraCompoment;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment$2;->this$0:Lcom/android/camera/component/CameraCompoment;

    #getter for: Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;
    invoke-static {v0}, Lcom/android/camera/component/CameraCompoment;->access$000(Lcom/android/camera/component/CameraCompoment;)Lcom/android/camera/IUIRotationManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/IUIRotationManager;->fakeRotation:Lcom/android/camera/property/Property;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/camera/component/CameraCompoment$2;->this$0:Lcom/android/camera/component/CameraCompoment;

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/component/CameraCompoment;->onUIRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    :cond_1
    return-void
.end method
