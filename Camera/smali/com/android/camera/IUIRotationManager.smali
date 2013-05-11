.class public abstract Lcom/android/camera/IUIRotationManager;
.super Lcom/android/camera/component/ServiceCameraComponent;
.source "IUIRotationManager.java"


# static fields
.field public static final DEVICE_ORIENTATION_UNKNOWN:I = -0x1


# instance fields
.field public final deviceOrientation:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final fakeRotation:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/rotate/UIRotation;",
            ">;"
        }
    .end annotation
.end field

.field public final isOrientationListenerStarted:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isRotationLocked:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final rotation:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/rotate/UIRotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IUIRotationManager.DeviceOrientation"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/IUIRotationManager;->deviceOrientation:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/property/Property;

    const-string v2, "IUIRotationManager.FakeRotation"

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/FeatureConfig;->isInitialFakeRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/IUIRotationManager;->fakeRotation:Lcom/android/camera/property/Property;

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IUIRotationManager.IsOrientationListenerStarted"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/IUIRotationManager;->isOrientationListenerStarted:Lcom/android/camera/property/Property;

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IUIRotationManager.IsRotationLocked"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/IUIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IUIRotationManager.Rotation"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/IUIRotationManager;->rotation:Lcom/android/camera/property/Property;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/camera/component/ServiceCameraComponent;->deinitializeOverride()V

    return-void
.end method

.method public abstract getAvailableDeviceOrientation()I
.end method

.method public abstract lockRotation(Ljava/lang/String;Lcom/android/camera/rotate/UIRotation;)Lcom/android/camera/Handle;
.end method

.method public abstract unlockRotation(Lcom/android/camera/Handle;)V
.end method
