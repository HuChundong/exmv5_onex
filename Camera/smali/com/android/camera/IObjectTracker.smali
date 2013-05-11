.class public abstract Lcom/android/camera/IObjectTracker;
.super Lcom/android/camera/component/ServiceCameraComponent;
.source "IObjectTracker.java"


# instance fields
.field public final detectedObjects:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ObjectTrackingInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public final focusedObject:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/ObjectTrackingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final isObjectDetectionEnabled:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final numberOfDetectedFaces:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/android/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Z)V

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IObjectTracker.DetectedObjects"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v3, v2, v6}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/IObjectTracker;->detectedObjects:Lcom/android/camera/property/Property;

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IObjectTracker.FocusedObject"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v3, v2, v6}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/IObjectTracker;->focusedObject:Lcom/android/camera/property/Property;

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IObjectTracker.IsObjectDetectionEnabled"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/IObjectTracker;->isObjectDetectionEnabled:Lcom/android/camera/property/Property;

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IObjectTracker.NumberOfDetectedFaces"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/IObjectTracker;->numberOfDetectedFaces:Lcom/android/camera/property/Property;

    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/camera/component/ServiceCameraComponent;->deinitializeOverride()V

    return-void
.end method
