.class Lcom/android/camera/component/ImageSettingsController$6;
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
        "Lcom/android/camera/CameraMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ImageSettingsController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ImageSettingsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ImageSettingsController$6;->this$0:Lcom/android/camera/component/ImageSettingsController;

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
            "Lcom/android/camera/CameraMode;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/CameraMode;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/component/ImageSettingsController$6;->this$0:Lcom/android/camera/component/ImageSettingsController;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/component/ImageSettingsController;->m_NeedToReset:Z
    invoke-static {v0, v1}, Lcom/android/camera/component/ImageSettingsController;->access$302(Lcom/android/camera/component/ImageSettingsController;Z)Z

    iget-object v0, p0, Lcom/android/camera/component/ImageSettingsController$6;->this$0:Lcom/android/camera/component/ImageSettingsController;

    #calls: Lcom/android/camera/component/ImageSettingsController;->unlockAutoExposure(Z)V
    invoke-static {v0, v2}, Lcom/android/camera/component/ImageSettingsController;->access$100(Lcom/android/camera/component/ImageSettingsController;Z)V

    iget-object v0, p0, Lcom/android/camera/component/ImageSettingsController$6;->this$0:Lcom/android/camera/component/ImageSettingsController;

    #calls: Lcom/android/camera/component/ImageSettingsController;->unlockAutoWhiteBalance(Z)V
    invoke-static {v0, v2}, Lcom/android/camera/component/ImageSettingsController;->access$200(Lcom/android/camera/component/ImageSettingsController;Z)V

    return-void
.end method
