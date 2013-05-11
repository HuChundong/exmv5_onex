.class public final Lcom/android/camera/component/CameraThreadComponentManager;
.super Lcom/android/camera/component/ComponentManager;
.source "CameraThreadComponentManager.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/ComponentManager;-><init>(Lcom/android/camera/component/IComponentOwner;)V

    return-void
.end method


# virtual methods
.method public getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/CameraThreadComponentManager;->getOwner()Lcom/android/camera/component/IComponentOwner;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/camera/component/Component;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v4

    goto :goto_0
.end method
