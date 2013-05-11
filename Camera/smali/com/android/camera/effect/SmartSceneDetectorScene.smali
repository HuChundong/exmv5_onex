.class public final Lcom/android/camera/effect/SmartSceneDetectorScene;
.super Lcom/android/camera/effect/SceneEffectBase;
.source "SmartSceneDetectorScene.java"

# interfaces
.implements Lcom/android/camera/effect/IScene;


# static fields
.field static final SCENE_MODE_SMART:Ljava/lang/String; = "Smart Scene"


# instance fields
.field private m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1

    const-string v0, "Smart Scene"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    return-void
.end method

.method private linkToComponents()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/effect/SmartSceneDetectorScene;->m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/SmartSceneDetectorScene;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/android/camera/component/AutoSceneUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/AutoSceneUI;

    iput-object v0, p0, Lcom/android/camera/effect/SmartSceneDetectorScene;->m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;

    iget-object v0, p0, Lcom/android/camera/effect/SmartSceneDetectorScene;->m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected applyEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/effect/SmartSceneDetectorScene;->linkToComponents()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/SmartSceneDetectorScene;->m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;

    invoke-virtual {v0}, Lcom/android/camera/component/AutoSceneUI;->enterSmartSceneDetectMode()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to SmartSceneDetector UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/effect/SmartSceneDetectorScene;->linkToComponents()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/SmartSceneDetectorScene;->m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;

    invoke-virtual {v0}, Lcom/android/camera/component/AutoSceneUI;->exitSmartSceneDetectMode()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to SmartSceneDetector UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCapabilities()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/effect/SmartSceneDetectorScene;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->isSmartSceneDetectSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x51

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Smart scene detection is not supported."

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDisabledImageSettings()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
