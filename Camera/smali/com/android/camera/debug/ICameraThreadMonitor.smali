.class public abstract Lcom/android/camera/debug/ICameraThreadMonitor;
.super Lcom/android/camera/component/ServiceCameraComponent;
.source "ICameraThreadMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;
    }
.end annotation


# instance fields
.field public final cameraThreadState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;",
            ">;"
        }
    .end annotation
.end field

.field public final isMonitoring:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "ICameraThreadMonitor.CameraThreadState"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;->Running:Lcom/android/camera/debug/ICameraThreadMonitor$CameraThreadState;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/debug/ICameraThreadMonitor;->cameraThreadState:Lcom/android/camera/property/Property;

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "ICameraThreadMonitor.IsMonitoring"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/debug/ICameraThreadMonitor;->isMonitoring:Lcom/android/camera/property/Property;

    iget-object v0, p0, Lcom/android/camera/debug/ICameraThreadMonitor;->cameraThreadState:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v5}, Lcom/android/camera/property/Property;->enableLogs(I)V

    iget-object v0, p0, Lcom/android/camera/debug/ICameraThreadMonitor;->isMonitoring:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v5}, Lcom/android/camera/property/Property;->enableLogs(I)V

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
