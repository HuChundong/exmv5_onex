.class final Lcom/android/camera/component/ImageSettingsControllerProxy;
.super Lcom/android/camera/IImageSettingsController;
.source "ImageSettingsControllerProxy.java"


# static fields
.field static final NAME:Ljava/lang/String; = "Image Settings Controller Proxy (UI)"


# instance fields
.field private final m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/component/ComponentBinder",
            "<",
            "Lcom/android/camera/IImageSettingsController;",
            "Lcom/android/camera/component/ImageSettingsControllerProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 6

    const-string v1, "Image Settings Controller Proxy (UI)"

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/IImageSettingsController;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Z)V

    new-instance v0, Lcom/android/camera/component/ImageSettingsControllerProxy$1;

    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    const-class v3, Lcom/android/camera/IImageSettingsController;

    iget-object v5, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/ImageSettingsControllerProxy$1;-><init>(Lcom/android/camera/component/ImageSettingsControllerProxy;Lcom/android/camera/component/IComponentOwner;Ljava/lang/Class;Lcom/android/camera/component/ImageSettingsControllerProxy;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/component/ImageSettingsControllerProxy;->m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;

    return-void
.end method


# virtual methods
.method public applyImageSettings(Lcom/android/camera/ImageSettings;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/ImageSettingsControllerProxy;->m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/android/camera/component/ComponentBinder;->bindToSourceComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ImageSettingsControllerProxy;->m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/android/camera/component/ComponentBinder;->getSourceComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IImageSettingsController;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/IImageSettingsController;->applyImageSettings(Lcom/android/camera/ImageSettings;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "applyImageSettings() - No IImageSettingsController interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ImageSettingsControllerProxy;->m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/android/camera/component/ComponentBinder;->release()V

    invoke-super {p0}, Lcom/android/camera/IImageSettingsController;->deinitializeOverride()V

    return-void
.end method

.method public lockAutoExposure(Ljava/lang/String;)Lcom/android/camera/Handle;
    .locals 4

    iget-object v1, p0, Lcom/android/camera/component/ImageSettingsControllerProxy;->m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;

    invoke-virtual {v1}, Lcom/android/camera/component/ComponentBinder;->bindToSourceComponent()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/ImageSettingsControllerProxy;->m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;

    invoke-virtual {v1}, Lcom/android/camera/component/ComponentBinder;->getSourceComponent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IImageSettingsController;

    invoke-virtual {v1, p1}, Lcom/android/camera/IImageSettingsController;->lockAutoExposure(Ljava/lang/String;)Lcom/android/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->isAutoExposureLocked:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoExposure() - No IImageSettingsController interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lockAutoWhiteBalance(Ljava/lang/String;)Lcom/android/camera/Handle;
    .locals 4

    iget-object v1, p0, Lcom/android/camera/component/ImageSettingsControllerProxy;->m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;

    invoke-virtual {v1}, Lcom/android/camera/component/ComponentBinder;->bindToSourceComponent()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/ImageSettingsControllerProxy;->m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;

    invoke-virtual {v1}, Lcom/android/camera/component/ComponentBinder;->getSourceComponent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IImageSettingsController;

    invoke-virtual {v1, p1}, Lcom/android/camera/IImageSettingsController;->lockAutoWhiteBalance(Ljava/lang/String;)Lcom/android/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/IImageSettingsController;->isAutoWhiteBalanceLocked:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoWhiteBalance() - No IImageSettingsController interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unlockAutoExposure(Lcom/android/camera/Handle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/ImageSettingsControllerProxy;->m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/android/camera/component/ComponentBinder;->bindToSourceComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ImageSettingsControllerProxy;->m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/android/camera/component/ComponentBinder;->getSourceComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IImageSettingsController;

    invoke-virtual {v0, p1}, Lcom/android/camera/IImageSettingsController;->unlockAutoExposure(Lcom/android/camera/Handle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockAutoExposure() - No IImageSettingsController interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unlockAutoWhiteBalance(Lcom/android/camera/Handle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/ImageSettingsControllerProxy;->m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/android/camera/component/ComponentBinder;->bindToSourceComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ImageSettingsControllerProxy;->m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/android/camera/component/ComponentBinder;->getSourceComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IImageSettingsController;

    invoke-virtual {v0, p1}, Lcom/android/camera/IImageSettingsController;->unlockAutoWhiteBalance(Lcom/android/camera/Handle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockAutoExposure() - No IImageSettingsController interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
