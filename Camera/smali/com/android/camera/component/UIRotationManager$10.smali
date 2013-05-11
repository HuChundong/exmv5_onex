.class Lcom/android/camera/component/UIRotationManager$10;
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
        "Lcom/android/camera/CameraType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/UIRotationManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/UIRotationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/UIRotationManager$10;->this$0:Lcom/android/camera/component/UIRotationManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/CameraType;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/CameraType;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/camera/component/UIRotationManager$10;->this$0:Lcom/android/camera/component/UIRotationManager;

    invoke-virtual {v1}, Lcom/android/camera/component/UIRotationManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/UIRotationManager$10;->this$0:Lcom/android/camera/component/UIRotationManager;

    iget-object v1, v1, Lcom/android/camera/IUIRotationManager;->fakeRotation:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/UIRotationManager$10;->this$0:Lcom/android/camera/component/UIRotationManager;

    iget-object v2, v2, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
