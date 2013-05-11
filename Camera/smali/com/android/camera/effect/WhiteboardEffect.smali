.class public Lcom/android/camera/effect/WhiteboardEffect;
.super Lcom/android/camera/effect/GpuEffectBase;
.source "WhiteboardEffect.java"

# interfaces
.implements Lcom/android/camera/effect/IScene;


# instance fields
.field private m_ISceneController:Lcom/android/camera/effect/ISceneController;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 12

    const-string v7, "B_whiteboard"

    new-instance v8, Lcom/android/camera/effect/GpuEffectInfo;

    const-string v9, "B_whiteboard"

    const/4 v0, 0x2

    new-array v10, v0, [Lcom/android/camera/effect/GpuEffectParameters;

    const/4 v11, 0x0

    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param0"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v0, v10, v11

    const/4 v11, 0x1

    new-instance v0, Lcom/android/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param1"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v0, v10, v11

    invoke-direct {v8, v9, v10}, Lcom/android/camera/effect/GpuEffectInfo;-><init>(Ljava/lang/String;[Lcom/android/camera/effect/GpuEffectParameters;)V

    invoke-direct {p0, v7, p1, v8}, Lcom/android/camera/effect/GpuEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;Lcom/android/camera/effect/GpuEffectInfo;)V

    return-void
.end method


# virtual methods
.method protected applyEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/effect/WhiteboardEffect;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/android/camera/effect/ISceneController;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/ISceneController;

    iput-object v0, p0, Lcom/android/camera/effect/WhiteboardEffect;->m_ISceneController:Lcom/android/camera/effect/ISceneController;

    iget-object v0, p0, Lcom/android/camera/effect/WhiteboardEffect;->m_ISceneController:Lcom/android/camera/effect/ISceneController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/WhiteboardEffect;->m_ISceneController:Lcom/android/camera/effect/ISceneController;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/ISceneController;->setScene(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/effect/GpuEffectBase;->applyEffect(Lcom/android/camera/effect/EffectBase;)V

    return-void
.end method

.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/camera/effect/GpuEffectBase;->cancelEffect(Lcom/android/camera/effect/EffectBase;)V

    instance-of v1, p1, Lcom/android/camera/effect/GpuEffectBase;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/effect/WhiteboardEffect;->getEffectController()Lcom/android/camera/effect/IEffectController;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/IEffectController;->setGpuEffect(Lcom/android/camera/effect/GpuEffectInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "No GPU effect controller to clear effect"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDisabledImageSettings()I
    .locals 1

    sget v0, Lcom/android/camera/ImageSettings;->SETTING_IMAGE_PROPERTIES:I

    or-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x20

    return v0
.end method
