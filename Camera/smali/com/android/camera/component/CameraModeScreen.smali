.class final Lcom/android/camera/component/CameraModeScreen;
.super Lcom/android/camera/component/UIComponent;
.source "CameraModeScreen.java"


# static fields
.field static final NAME:Ljava/lang/String; = "Camera Mode Screen"


# instance fields
.field private final m_InitialModeImageView:Landroid/widget/ImageView;

.field private final m_ModeImageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 4

    const v3, 0x7f08002b

    const-string v1, "Camera Mode Screen"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p1, v3}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    const-class v1, Lcom/android/camera/IViewFinder;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/CameraModeScreen;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IViewFinder;

    const v1, 0x7f08002d

    invoke-virtual {p1, v1}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/component/CameraModeScreen;->m_InitialModeImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CameraModeScreen$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CameraModeScreen$1;-><init>(Lcom/android/camera/component/CameraModeScreen;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v1, p1, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CameraModeScreen$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CameraModeScreen$2;-><init>(Lcom/android/camera/component/CameraModeScreen;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CameraModeScreen$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CameraModeScreen$3;-><init>(Lcom/android/camera/component/CameraModeScreen;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v1, p1, Lcom/android/camera/HTCCamera;->stoppingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/CameraModeScreen$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CameraModeScreen$4;-><init>(Lcom/android/camera/component/CameraModeScreen;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/CameraModeScreen;Lcom/android/camera/CameraMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/CameraModeScreen;->showModeIcon(Lcom/android/camera/CameraMode;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/CameraModeScreen;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/CameraModeScreen;->m_InitialModeImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/CameraModeScreen;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private showModeIcon(Lcom/android/camera/CameraMode;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/CameraModeScreen;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/camera/component/CameraModeScreen;->showModeIcon(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/CameraMode;)V

    return-void
.end method

.method private showModeIcon(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/CameraMode;)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    sget-object v0, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne p2, v0, :cond_0

    const v0, 0x7f020074

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object v0, p0, Lcom/android/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/component/CameraModeScreen;->showUI(Landroid/view/View;ZZ)V

    return-void

    :cond_0
    const/high16 v0, 0x7f02

    goto :goto_0
.end method


# virtual methods
.method protected onEnteringFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_0
    return-void
.end method

.method protected onExitingFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/android/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_0
    return-void
.end method

.method protected onUIRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/android/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_0
    return-void
.end method
