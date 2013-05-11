.class public final Lcom/android/camera/effect/AutoScene;
.super Lcom/android/camera/effect/SceneEffectBase;
.source "AutoScene.java"

# interfaces
.implements Lcom/android/camera/effect/IScene;


# instance fields
.field private m_IsFaceBeautifierEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 2

    const-string v0, "auto"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    invoke-static {}, Lcom/android/camera/FeatureConfig;->isFrontCameraFaceBeautifierSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/effect/AutoScene$1;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/AutoScene$1;-><init>(Lcom/android/camera/effect/AutoScene;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v0, p1, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/effect/AutoScene$2;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/AutoScene$2;-><init>(Lcom/android/camera/effect/AutoScene;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isFrontFaceBeautifierEnabled:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/effect/AutoScene$3;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/AutoScene$3;-><init>(Lcom/android/camera/effect/AutoScene;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/effect/AutoScene;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/effect/AutoScene;->canEnableFaceBeautifier()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/effect/AutoScene;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/AutoScene;->enableFaceBeautifier()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/effect/AutoScene;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/AutoScene;->disableFaceBeautifier()V

    return-void
.end method

.method private canEnableFaceBeautifier()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/effect/AutoScene;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/FeatureConfig;->isFrontCameraFaceBeautifierSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/camera/CameraSettings;->isFrontFaceBeautifierEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private disableFaceBeautifier()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "disableFaceBeautifier()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/effect/AutoScene;->m_IsFaceBeautifierEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "disableFaceBeautifier() - Face beautifier is already disabled"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/AutoScene;->linkToSceneController()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/effect/AutoScene;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/effect/AutoScene$4;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/AutoScene$4;-><init>(Lcom/android/camera/effect/AutoScene;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/android/camera/effect/AutoScene;->getSceneController()Lcom/android/camera/effect/ISceneController;

    move-result-object v0

    const-string v1, "auto"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/effect/ISceneController;->setScene(Ljava/lang/String;Z)V

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/effect/AutoScene;->m_IsFaceBeautifierEnabled:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "disableFaceBeautifier() - No ISceneController interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private enableFaceBeautifier()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enableFaceBeautifier()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/effect/AutoScene;->m_IsFaceBeautifierEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enableFaceBeautifier() - Face beautifier is already enabled"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/AutoScene;->linkToSceneController()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/effect/AutoScene;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/effect/AutoScene$5;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/AutoScene$5;-><init>(Lcom/android/camera/effect/AutoScene;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/android/camera/effect/AutoScene;->getSceneController()Lcom/android/camera/effect/ISceneController;

    move-result-object v0

    const-string v1, "portrait"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/effect/ISceneController;->setScene(Ljava/lang/String;Z)V

    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/effect/AutoScene;->m_IsFaceBeautifierEnabled:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enableFaceBeautifier() - No ISceneController interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected applyEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/effect/AutoScene;->canEnableFaceBeautifier()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/camera/effect/SceneEffectBase;->applyEffect(Lcom/android/camera/effect/EffectBase;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/effect/AutoScene;->enableFaceBeautifier()V

    goto :goto_0
.end method

.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/effect/AutoScene;->m_IsFaceBeautifierEnabled:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/camera/effect/SceneEffectBase;->cancelEffect(Lcom/android/camera/effect/EffectBase;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/effect/AutoScene;->disableFaceBeautifier()V

    goto :goto_0
.end method

.method public getCapabilities()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public getDisabledImageSettings()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
