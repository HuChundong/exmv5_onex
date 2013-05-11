.class final Lcom/android/camera/effect/SceneControllerProxy;
.super Lcom/android/camera/effect/ISceneController;
.source "SceneControllerProxy.java"


# static fields
.field static final NAME:Ljava/lang/String; = "Scene Controller Proxy (UI)"


# instance fields
.field private final m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/component/ComponentBinder",
            "<",
            "Lcom/android/camera/effect/ISceneController;",
            "Lcom/android/camera/effect/SceneControllerProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const-string v0, "Scene Controller Proxy (UI)"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/effect/ISceneController;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V

    new-instance v0, Lcom/android/camera/component/SimpleComponentBinder;

    invoke-virtual {p0}, Lcom/android/camera/effect/SceneControllerProxy;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    const-class v2, Lcom/android/camera/effect/ISceneController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/camera/component/SimpleComponentBinder;-><init>(Lcom/android/camera/component/IComponentOwner;Ljava/lang/Class;Lcom/android/camera/component/Component;)V

    iput-object v0, p0, Lcom/android/camera/effect/SceneControllerProxy;->m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;

    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/SceneControllerProxy;->m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/android/camera/component/ComponentBinder;->release()V

    invoke-super {p0}, Lcom/android/camera/effect/ISceneController;->deinitializeOverride()V

    return-void
.end method

.method public setScene(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/SceneControllerProxy;->m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/android/camera/component/ComponentBinder;->bindToSourceComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/SceneControllerProxy;->m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/android/camera/component/ComponentBinder;->getSourceComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/ISceneController;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/ISceneController;->setScene(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setScene() - Cannot bind to ISceneController"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
