.class Lcom/android/camera/component/ImageSettingsController$5;
.super Ljava/lang/Object;
.source "ImageSettingsController.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ImageSettingsController;->initializeOverride()V
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
.field final synthetic this$0:Lcom/android/camera/component/ImageSettingsController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ImageSettingsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ImageSettingsController$5;->this$0:Lcom/android/camera/component/ImageSettingsController;

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

    iget-object v2, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v3

    iget-object v2, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v2

    if-eq v3, v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/ImageSettingsController$5;->this$0:Lcom/android/camera/component/ImageSettingsController;

    invoke-virtual {v2}, Lcom/android/camera/component/ImageSettingsController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v2, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/camera/CameraSettings;->mainWhiteBalance:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    :goto_0
    iget-object v2, p0, Lcom/android/camera/component/ImageSettingsController$5;->this$0:Lcom/android/camera/component/ImageSettingsController;

    const/4 v3, 0x0

    #calls: Lcom/android/camera/component/ImageSettingsController;->setWhiteBalance(Ljava/lang/String;Z)V
    invoke-static {v2, v1, v3}, Lcom/android/camera/component/ImageSettingsController;->access$800(Lcom/android/camera/component/ImageSettingsController;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/camera/component/ImageSettingsController$5;->this$0:Lcom/android/camera/component/ImageSettingsController;

    const/4 v3, 0x1

    #setter for: Lcom/android/camera/component/ImageSettingsController;->m_NeedToSetParams:Z
    invoke-static {v2, v3}, Lcom/android/camera/component/ImageSettingsController;->access$002(Lcom/android/camera/component/ImageSettingsController;Z)Z

    :cond_0
    return-void

    :cond_1
    iget-object v2, v0, Lcom/android/camera/CameraSettings;->frontWhiteBalance:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_0
.end method
