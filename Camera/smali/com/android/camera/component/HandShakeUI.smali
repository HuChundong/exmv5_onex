.class public Lcom/android/camera/component/HandShakeUI;
.super Lcom/android/camera/component/UIComponent;
.source "HandShakeUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/HandShakeUI$13;
    }
.end annotation


# static fields
.field private static final HANDSHAKE_THRESHOLD:F = 0.2f

.field private static final MSG_LOWLIGHT_CHANGED:I = 0x2711

.field public static final NAME:Ljava/lang/String; = "Handshake UI"


# instance fields
.field private m_AccelerometerValues:[F

.field private m_HandShakeStableTime:I

.field private m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_NeedDetect:Z

.field private m_canShow:Z

.field private m_captureBarHeight:I

.field private m_effectBarHeight:I

.field private m_marginButtom:I

.field private m_marginRight:I

.field private m_menuIsOpen:Z

.field private m_remainIsShowing:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "Handshake UI"

    const v1, 0x7f080050

    invoke-direct {p0, v0, v3, p1, v1}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    iput v2, p0, Lcom/android/camera/component/HandShakeUI;->m_HandShakeStableTime:I

    iput-boolean v2, p0, Lcom/android/camera/component/HandShakeUI;->m_NeedDetect:Z

    iput-boolean v3, p0, Lcom/android/camera/component/HandShakeUI;->m_canShow:Z

    iput-boolean v2, p0, Lcom/android/camera/component/HandShakeUI;->m_menuIsOpen:Z

    iput-boolean v2, p0, Lcom/android/camera/component/HandShakeUI;->m_remainIsShowing:Z

    iget-object v0, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/component/HandShakeUI$1;

    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->isCameraThreadRunning:Lcom/android/camera/property/Property;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/component/HandShakeUI$1;-><init>(Lcom/android/camera/component/HandShakeUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private HideDisable()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/HandShakeUI;->m_canShow:Z

    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->hideHandshake()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/component/HandShakeUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/HandShakeUI;->m_menuIsOpen:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/component/HandShakeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->HideDisable()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/HandShakeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->checkCanShow()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/component/HandShakeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->stopDetection()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/camera/component/HandShakeUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/HandShakeUI;->m_remainIsShowing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/component/HandShakeUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/HandShakeUI;[F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/HandShakeUI;->onAccelerometerValuesChanged([F)V

    return-void
.end method

.method private checkCanShow()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/component/HandShakeUI;->m_menuIsOpen:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/component/HandShakeUI;->m_remainIsShowing:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->HideDisable()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/HandShakeUI;->m_canShow:Z

    goto :goto_0
.end method

.method private hideHandshake()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/camera/component/HandShakeUI;->showUI(Landroid/view/View;ZZ)V

    :cond_0
    return-void
.end method

.method private onAccelerometerValuesChanged([F)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/camera/component/HandShakeUI;->m_AccelerometerValues:[F

    if-nez v2, :cond_0

    iput-object p1, p0, Lcom/android/camera/component/HandShakeUI;->m_AccelerometerValues:[F

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/component/HandShakeUI;->m_AccelerometerValues:[F

    aget v2, v2, v1

    aget v3, p1, v1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3e4ccccd

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_6

    iget-boolean v2, p0, Lcom/android/camera/component/HandShakeUI;->m_NeedDetect:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->showHandshake()V

    :cond_2
    :goto_2
    iput v4, p0, Lcom/android/camera/component/HandShakeUI;->m_HandShakeStableTime:I

    :cond_3
    :goto_3
    iput-object p1, p0, Lcom/android/camera/component/HandShakeUI;->m_AccelerometerValues:[F

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->hideHandshake()V

    goto :goto_2

    :cond_6
    iget v2, p0, Lcom/android/camera/component/HandShakeUI;->m_HandShakeStableTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/component/HandShakeUI;->m_HandShakeStableTime:I

    iget v2, p0, Lcom/android/camera/component/HandShakeUI;->m_HandShakeStableTime:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/component/HandShakeUI;->m_NeedDetect:Z

    if-eqz v2, :cond_7

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->showHandshake()V

    :cond_7
    :goto_4
    iput v4, p0, Lcom/android/camera/component/HandShakeUI;->m_HandShakeStableTime:I

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->hideHandshake()V

    goto :goto_4
.end method

.method private onLowlightChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->startDetection()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->stopDetection()V

    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->hideHandshake()V

    goto :goto_0
.end method

.method private registerListeners()V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/HandShakeUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HandShakeUI$2;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/HandShakeUI$3;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/HandShakeUI$3;-><init>(Lcom/android/camera/component/HandShakeUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/HandShakeUI$4;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/HandShakeUI$4;-><init>(Lcom/android/camera/component/HandShakeUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isRemainingCounterVisible:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/HandShakeUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HandShakeUI$5;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/HandShakeUI$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HandShakeUI$6;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    return-void
.end method

.method private setLayoutPosition(Lcom/android/camera/rotate/RotateRelativeLayout;)V
    .locals 5

    const/16 v4, 0xb

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/component/HandShakeUI;->m_captureBarHeight:I

    iget v2, p0, Lcom/android/camera/component/HandShakeUI;->m_captureBarHeight:I

    const v3, 0x2050002

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/component/HandShakeUI;->m_marginButtom:I

    const v2, 0x2050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/component/HandShakeUI;->m_marginRight:I

    const v2, 0x7f0b0076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/component/HandShakeUI;->m_effectBarHeight:I

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v2, p0, Lcom/android/camera/component/HandShakeUI;->m_marginButtom:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v2, p0, Lcom/android/camera/component/HandShakeUI;->m_marginRight:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v2, p0, Lcom/android/camera/component/HandShakeUI;->m_marginButtom:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v2, p0, Lcom/android/camera/component/HandShakeUI;->m_marginRight:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->accelerometerValues:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/HandShakeUI$7;

    invoke-direct {v4, p0}, Lcom/android/camera/component/HandShakeUI$7;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/HandShakeUI$8;

    invoke-direct {v4, p0}, Lcom/android/camera/component/HandShakeUI$8;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/HandShakeUI$9;

    invoke-direct {v4, p0}, Lcom/android/camera/component/HandShakeUI$9;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    new-instance v3, Lcom/android/camera/component/HandShakeUI$10;

    invoke-direct {v3, p0, v1}, Lcom/android/camera/component/HandShakeUI$10;-><init>(Lcom/android/camera/component/HandShakeUI;Lcom/android/camera/CameraThread;)V

    invoke-virtual {v1, v3}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    new-instance v2, Lcom/android/camera/component/HandShakeUI$11;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HandShakeUI$11;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v3, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/HandShakeUI$12;

    invoke-direct {v4, p0}, Lcom/android/camera/component/HandShakeUI$12;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    return-void
.end method

.method private showHandshake()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/component/HandShakeUI;->m_canShow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/component/HandShakeUI;->showUI(Landroid/view/View;ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->hideHandshake()V

    goto :goto_0
.end method

.method private startDetection()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/HandShakeUI;->m_NeedDetect:Z

    return-void
.end method

.method private stopDetection()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/HandShakeUI;->m_NeedDetect:Z

    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->hideHandshake()V

    return-void
.end method

.method private updateLayoutPosition(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isTablet()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/android/camera/component/HandShakeUI;->m_marginButtom:I

    iget v2, p0, Lcom/android/camera/component/HandShakeUI;->m_effectBarHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    iget-object v1, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->requestLayout()V

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/camera/component/HandShakeUI;->m_marginButtom:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/android/camera/component/HandShakeUI;->m_marginButtom:I

    iget v2, p0, Lcom/android/camera/component/HandShakeUI;->m_effectBarHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/camera/component/HandShakeUI;->m_marginButtom:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/HandShakeUI;->onLowlightChanged(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080074

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v1, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-direct {p0, v1}, Lcom/android/camera/component/HandShakeUI;->setLayoutPosition(Lcom/android/camera/rotate/RotateRelativeLayout;)V

    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->registerListeners()V

    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->setupPropertyChangedCallbacks()V

    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraThread;->isLowlight:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/component/HandShakeUI;->onLowlightChanged(Z)V

    return-void
.end method
