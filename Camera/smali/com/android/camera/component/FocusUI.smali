.class public Lcom/android/camera/component/FocusUI;
.super Lcom/android/camera/component/UIComponent;
.source "FocusUI.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "FocusUI UI"

.field private static mCanShowFocusView:Z


# instance fields
.field private final isFocusUIShowing:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFocus_Screen_X:I

.field private mFocus_Screen_Y:I

.field private m_FocusWiget:Lcom/android/camera/widget/FocusAnimationView;

.field private m_HideUIHandler:Lcom/android/camera/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/EventHandler",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_HideUIHandlerWithSetParam:Lcom/android/camera/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/EventHandler",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_ShowUIHandler:Lcom/android/camera/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/EventHandler",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/component/FocusUI;->mCanShowFocusView:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "FocusUI UI"

    const v1, 0x7f080048

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    iput v2, p0, Lcom/android/camera/component/FocusUI;->mFocus_Screen_X:I

    iput v2, p0, Lcom/android/camera/component/FocusUI;->mFocus_Screen_Y:I

    new-instance v0, Lcom/android/camera/component/FocusUI$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/FocusUI$1;-><init>(Lcom/android/camera/component/FocusUI;)V

    iput-object v0, p0, Lcom/android/camera/component/FocusUI;->m_HideUIHandler:Lcom/android/camera/event/EventHandler;

    new-instance v0, Lcom/android/camera/component/FocusUI$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/FocusUI$2;-><init>(Lcom/android/camera/component/FocusUI;)V

    iput-object v0, p0, Lcom/android/camera/component/FocusUI;->m_HideUIHandlerWithSetParam:Lcom/android/camera/event/EventHandler;

    new-instance v0, Lcom/android/camera/component/FocusUI$3;

    invoke-direct {v0, p0}, Lcom/android/camera/component/FocusUI$3;-><init>(Lcom/android/camera/component/FocusUI;)V

    iput-object v0, p0, Lcom/android/camera/component/FocusUI;->m_ShowUIHandler:Lcom/android/camera/event/EventHandler;

    const-string v0, "FocusUI.IsFocusUIShowing"

    invoke-static {v0, p0, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/FocusUI;->isFocusUIShowing:Lcom/android/camera/property/Property;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/FocusUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/FocusUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/camera/component/FocusUI;->mCanShowFocusView:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/component/FocusUI;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/FocusUI;->updateFocusViewPosition(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/FocusUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/FocusUI;)Lcom/android/camera/widget/FocusAnimationView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/FocusUI;->m_FocusWiget:Lcom/android/camera/widget/FocusAnimationView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/FocusUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static canShowFocusView()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/component/FocusUI;->mCanShowFocusView:Z

    return v0
.end method

.method public static isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensorFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerListeners()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/component/FocusUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->focusPointUpdateEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/component/FocusUI$4;

    invoke-direct {v1, p0}, Lcom/android/camera/component/FocusUI$4;-><init>(Lcom/android/camera/component/FocusUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    invoke-virtual {p0}, Lcom/android/camera/component/FocusUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->autoFocusCancelingEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/component/FocusUI;->m_HideUIHandlerWithSetParam:Lcom/android/camera/event/EventHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    invoke-virtual {p0}, Lcom/android/camera/component/FocusUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->pausingEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/component/FocusUI;->m_HideUIHandlerWithSetParam:Lcom/android/camera/event/EventHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    invoke-virtual {p0}, Lcom/android/camera/component/FocusUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->autoFocusCanceledEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/component/FocusUI;->m_HideUIHandler:Lcom/android/camera/event/EventHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    invoke-virtual {p0}, Lcom/android/camera/component/FocusUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->showFocusEndEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/component/FocusUI;->m_HideUIHandler:Lcom/android/camera/event/EventHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    invoke-virtual {p0}, Lcom/android/camera/component/FocusUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->showFocusingEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/component/FocusUI;->m_ShowUIHandler:Lcom/android/camera/event/EventHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    invoke-virtual {p0}, Lcom/android/camera/component/FocusUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->showFocusSucessEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/component/FocusUI$5;

    invoke-direct {v1, p0}, Lcom/android/camera/component/FocusUI$5;-><init>(Lcom/android/camera/component/FocusUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    invoke-virtual {p0}, Lcom/android/camera/component/FocusUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->showFocusFailEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/component/FocusUI$6;

    invoke-direct {v1, p0}, Lcom/android/camera/component/FocusUI$6;-><init>(Lcom/android/camera/component/FocusUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    return-void
.end method

.method private updateFocusViewPosition(II)V
    .locals 13

    const/4 v12, -0x1

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v10, "updateFocusViewPosition - start"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/camera/component/FocusUI;->mFocus_Screen_X:I

    iput p2, p0, Lcom/android/camera/component/FocusUI;->mFocus_Screen_Y:I

    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/camera/component/FocusUI;->mCanShowFocusView:Z

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    sget v8, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sget v7, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    invoke-virtual {p0}, Lcom/android/camera/component/FocusUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v9

    invoke-static {v9}, Lcom/android/camera/DisplayDevice;->getFocusHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/component/FocusUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v9

    invoke-static {v9}, Lcom/android/camera/DisplayDevice;->getFocusWidth(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v9, v1, 0x2

    sub-int v3, p1, v9

    div-int/lit8 v9, v0, 0x2

    sub-int v5, p2, v9

    sub-int v9, v8, p1

    div-int/lit8 v10, v1, 0x2

    sub-int v4, v9, v10

    sub-int v9, v7, p2

    div-int/lit8 v10, v0, 0x2

    sub-int v2, v9, v10

    iget-object v9, p0, Lcom/android/camera/component/FocusUI;->m_FocusWiget:Lcom/android/camera/widget/FocusAnimationView;

    invoke-virtual {v9}, Lcom/android/camera/widget/FocusAnimationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v9, 0x9

    invoke-virtual {v6, v9, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0xa

    invoke-virtual {v6, v9, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0xb

    invoke-virtual {v6, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0xc

    invoke-virtual {v6, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0xd

    invoke-virtual {v6, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v6, v3, v5, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v9, p0, Lcom/android/camera/component/FocusUI;->m_FocusWiget:Lcom/android/camera/widget/FocusAnimationView;

    invoke-virtual {v9, v6}, Lcom/android/camera/widget/FocusAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v10, "updateFocusViewPosition - end"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public completeAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "FocusUI completeAnimation"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/FocusUI;->m_FocusWiget:Lcom/android/camera/widget/FocusAnimationView;

    invoke-virtual {v0}, Lcom/android/camera/widget/FocusAnimationView;->showFocusSucess()V

    invoke-virtual {p0}, Lcom/android/camera/component/FocusUI;->hideUI()V

    :cond_0
    return-void
.end method

.method protected deinitializeOverride()V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    return-void
.end method

.method public hideUI()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Hide Focus Widget"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/FocusUI;->isFocusUIShowing:Lcom/android/camera/property/Property;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/component/FocusUI;->m_FocusWiget:Lcom/android/camera/widget/FocusAnimationView;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/camera/component/FocusUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method protected initializeOverride()V
    .locals 6

    const/4 v5, -0x2

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/FocusUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/component/FocusUI;->isFocusUIShowing:Lcom/android/camera/property/Property;

    invoke-virtual {p0}, Lcom/android/camera/component/FocusUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->isFocusUIShowing:Lcom/android/camera/property/Property;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    invoke-virtual {p0}, Lcom/android/camera/component/FocusUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/android/camera/widget/FocusAnimationView;

    invoke-virtual {p0}, Lcom/android/camera/component/FocusUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/camera/widget/FocusAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/component/FocusUI;->m_FocusWiget:Lcom/android/camera/widget/FocusAnimationView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/android/camera/component/FocusUI;->m_FocusWiget:Lcom/android/camera/widget/FocusAnimationView;

    invoke-virtual {v2, v1}, Lcom/android/camera/widget/FocusAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/camera/component/FocusUI;->m_FocusWiget:Lcom/android/camera/widget/FocusAnimationView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/camera/component/FocusUI;->hideUI()V

    invoke-direct {p0}, Lcom/android/camera/component/FocusUI;->registerListeners()V

    return-void
.end method

.method public showUI()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Show Focus Widget"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/FocusUI;->isFocusUIShowing:Lcom/android/camera/property/Property;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/FocusUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isObjectTrackingEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/FocusUI;->m_FocusWiget:Lcom/android/camera/widget/FocusAnimationView;

    new-instance v1, Lcom/android/camera/component/FocusUI$7;

    invoke-direct {v1, p0}, Lcom/android/camera/component/FocusUI$7;-><init>(Lcom/android/camera/component/FocusUI;)V

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/android/camera/component/FocusUI;->showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/FocusUI;->m_FocusWiget:Lcom/android/camera/widget/FocusAnimationView;

    invoke-virtual {v0}, Lcom/android/camera/widget/FocusAnimationView;->startFocus()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/FocusUI;->m_FocusWiget:Lcom/android/camera/widget/FocusAnimationView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/camera/component/FocusUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method
