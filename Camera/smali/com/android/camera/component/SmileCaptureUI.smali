.class final Lcom/android/camera/component/SmileCaptureUI;
.super Lcom/android/camera/component/UIComponent;
.source "SmileCaptureUI.java"


# static fields
.field static final MSG_SMILE_CAPTURE:I = 0x2711

.field static final NAME:Ljava/lang/String; = "Smile-Capture UI"


# instance fields
.field private m_BubbleToastContent:Landroid/view/View;

.field private m_BubbleToastHandle:Lcom/android/camera/Handle;

.field private m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

.field private m_Controller:Lcom/android/camera/component/SmileCaptureController;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const-string v0, "Smile-Capture UI"

    const/4 v1, 0x1

    const v2, 0x7f0800f1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->disableAutoInflateView()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/component/SmileCaptureUI;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/SmileCaptureUI;->m_BubbleToastHandle:Lcom/android/camera/Handle;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/component/SmileCaptureUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/SmileCaptureUI;->updateSmileCaptureState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/SmileCaptureUI;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/component/SmileCaptureUI;->isSmileCaptureEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/SmileCaptureUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/SmileCaptureUI;->showToast(Z)V

    return-void
.end method

.method private isSmileCaptureEnabled()Z
    .locals 9

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v3, v2, Lcom/android/camera/CameraSettings;->isFaceDetectionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/camera/CameraSettings;->isAutoSmileCaptureEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v5, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v3, v5, :cond_1

    iget-object v3, v2, Lcom/android/camera/CameraSettings;->canAutoFocus:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v4

    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v3

    sget-object v5, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    if-eq v3, v5, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/android/camera/CameraSettings;->isFaceDetectionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/Duration;

    invoke-virtual {v3}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "smileCapture() - Cannot take picture due to self-timer"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    goto :goto_0

    :cond_4
    const-class v3, Lcom/android/camera/effect/IEffectManager;

    invoke-virtual {p0, v3}, Lcom/android/camera/component/SmileCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/IEffectManager;

    if-eqz v0, :cond_6

    iget-object v3, v0, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/effect/EffectBase;

    move-object v1, v3

    :goto_1
    instance-of v3, v1, Lcom/android/camera/effect/PanoramaScene;

    if-nez v3, :cond_5

    instance-of v3, v1, Lcom/android/camera/effect/SmartShotScene;

    if-eqz v3, :cond_7

    :cond_5
    move v3, v4

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    :cond_7
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private linkToController()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureUI;->m_Controller:Lcom/android/camera/component/SmileCaptureController;

    if-eqz v0, :cond_1

    move v3, v6

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-string v1, "Smile-Capture Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/SmileCaptureController;

    iput-object v0, p0, Lcom/android/camera/component/SmileCaptureUI;->m_Controller:Lcom/android/camera/component/SmileCaptureController;

    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureUI;->m_Controller:Lcom/android/camera/component/SmileCaptureController;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/SmileCaptureUI;->m_Controller:Lcom/android/camera/component/SmileCaptureController;

    const/16 v2, 0x2711

    move-object v0, p0

    move v4, v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/SmileCaptureUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    move v3, v6

    goto :goto_0
.end method

.method private showToast(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureUI;->m_BubbleToastContent:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030037

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/SmileCaptureUI;->m_BubbleToastContent:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureUI;->m_BubbleToastHandle:Lcom/android/camera/Handle;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    iget-object v1, p0, Lcom/android/camera/component/SmileCaptureUI;->m_BubbleToastContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/IBubbleToastManager;->showBubbleToast(Landroid/view/View;)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/SmileCaptureUI;->m_BubbleToastHandle:Lcom/android/camera/Handle;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    iget-object v1, p0, Lcom/android/camera/component/SmileCaptureUI;->m_BubbleToastHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/android/camera/IBubbleToastManager;->closeBubbleToast(Lcom/android/camera/Handle;)V

    iput-object v2, p0, Lcom/android/camera/component/SmileCaptureUI;->m_BubbleToastHandle:Lcom/android/camera/Handle;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "showToast() - No IBubbleToastManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private smileCapture()V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "smileCapture()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/component/SmileCaptureUI;->isSmileCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "smileCapture() - Smile-capture is not enabled"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "smileCapture() - Activity is paused or idle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smileCapture() - Current camera mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "Smile Capture"

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "smileCapture() - Cannot take picture"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSmileCaptureState()V
    .locals 8

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/camera/component/SmileCaptureUI;->isSmileCaptureEnabled()Z

    move-result v7

    invoke-direct {p0}, Lcom/android/camera/component/SmileCaptureUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/SmileCaptureUI;->m_Controller:Lcom/android/camera/component/SmileCaptureController;

    const/16 v2, 0x2712

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/component/SmileCaptureUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;Z)Z

    :goto_0
    invoke-direct {p0, v7}, Lcom/android/camera/component/SmileCaptureUI;->showToast(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "updateSmileCaptureState() - No controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/SmileCaptureUI;->m_Controller:Lcom/android/camera/component/SmileCaptureController;

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/SmileCaptureUI;->smileCapture()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 4

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->isAutoSmileCaptureEnabled:Lcom/android/camera/property/Property;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    const-class v2, Lcom/android/camera/IBubbleToastManager;

    invoke-virtual {p0, v2}, Lcom/android/camera/component/SmileCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/IBubbleToastManager;

    iput-object v2, p0, Lcom/android/camera/component/SmileCaptureUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->newIntentEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/SmileCaptureUI$1;

    invoke-direct {v3, p0}, Lcom/android/camera/component/SmileCaptureUI$1;-><init>(Lcom/android/camera/component/SmileCaptureUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/SmileCaptureUI$2;

    invoke-direct {v3, p0}, Lcom/android/camera/component/SmileCaptureUI$2;-><init>(Lcom/android/camera/component/SmileCaptureUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    const-class v2, Lcom/android/camera/effect/IEffectManager;

    invoke-virtual {p0, v2}, Lcom/android/camera/component/SmileCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/IEffectManager;

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/SmileCaptureUI$3;

    invoke-direct {v3, p0}, Lcom/android/camera/component/SmileCaptureUI$3;-><init>(Lcom/android/camera/component/SmileCaptureUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/SmileCaptureUI$4;

    invoke-direct {v3, p0}, Lcom/android/camera/component/SmileCaptureUI$4;-><init>(Lcom/android/camera/component/SmileCaptureUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/SmileCaptureUI$5;

    invoke-direct {v3, p0}, Lcom/android/camera/component/SmileCaptureUI$5;-><init>(Lcom/android/camera/component/SmileCaptureUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->isAutoSmileCaptureEnabled:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/SmileCaptureUI$6;

    invoke-direct {v3, p0}, Lcom/android/camera/component/SmileCaptureUI$6;-><init>(Lcom/android/camera/component/SmileCaptureUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->isFaceDetectionEnabled:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/SmileCaptureUI$7;

    invoke-direct {v3, p0}, Lcom/android/camera/component/SmileCaptureUI$7;-><init>(Lcom/android/camera/component/SmileCaptureUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->canAutoFocus:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/SmileCaptureUI$8;

    invoke-direct {v3, p0}, Lcom/android/camera/component/SmileCaptureUI$8;-><init>(Lcom/android/camera/component/SmileCaptureUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/SmileCaptureUI$9;

    invoke-direct {v3, p0}, Lcom/android/camera/component/SmileCaptureUI$9;-><init>(Lcom/android/camera/component/SmileCaptureUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    return-void
.end method
