.class public final Lcom/android/camera/effect/EffectControlUI;
.super Lcom/android/camera/effect/IEffectControlUI;
.source "EffectControlUI.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "Effect Control UI"


# instance fields
.field private m_ControlBar:Landroid/widget/SeekBar;

.field private m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

.field private m_DecreaseButton:Landroid/view/View;

.field private final m_EffectCenterPool:[Landroid/graphics/PointF;

.field private m_EffectCenterPoolIndex:I

.field private m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

.field private m_IncreaseButton:Landroid/view/View;

.field private m_IsControlsNeeded:Z

.field private m_ShowingInitValues:Z

.field private m_ToastHandle:Lcom/android/camera/Handle;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "Effect Control UI"

    invoke-direct {p0, v0, v3, p1, v2}, Lcom/android/camera/effect/IEffectControlUI;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCenterPool:[Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->disableAutoInflateView()V

    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectControlUI;->setBaseLayoutId(I)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/effect/EffectControlUI;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectControlUI;->m_ToastHandle:Lcom/android/camera/Handle;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/effect/EffectControlUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/EffectControlUI;->hideControls()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/effect/EffectControlUI;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/effect/EffectControlUI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectControlUI;->onControlBarProgressChanged(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/rotate/UIRotation;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->getFakeUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/rotate/UIRotation;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/effect/EffectControlUI;Lcom/android/camera/effect/EffectBase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectControlUI;->onEffectApplied(Lcom/android/camera/effect/EffectBase;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/effect/EffectControlUI;Lcom/android/camera/effect/EffectBase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectControlUI;->onEffectCanceled(Lcom/android/camera/effect/EffectBase;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/effect/EffectControlUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectControlUI;->showControls(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/effect/EffectControlUI;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/effect/EffectControlUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_ShowingInitValues:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/effect/EffectControlUI;)[Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCenterPool:[Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/effect/EffectControlUI;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCenterPoolIndex:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/camera/effect/EffectControlUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCenterPoolIndex:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/effect/EffectBase;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method private calcControlBarProgress(I)I
    .locals 8

    const/16 v1, 0x64

    add-int/lit8 v2, p1, -0x28

    int-to-double v2, v2

    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    int-to-double v4, v4

    const-wide v6, 0x400199999999999aL

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4044

    sub-double/2addr v4, v6

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059

    mul-double/2addr v2, v4

    double-to-int v0, v2

    if-lt v0, v1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private calcEffectRadius(I)I
    .locals 6

    const-wide/high16 v4, 0x4044

    sget v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    int-to-double v0, v0

    const-wide v2, 0x400199999999999aL

    div-double/2addr v0, v2

    sub-double/2addr v0, v4

    const-wide/high16 v2, 0x4059

    div-double/2addr v0, v2

    int-to-double v2, p1

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    double-to-int v0, v0

    return v0
.end method

.method private convertToUIEffectCenter(Landroid/graphics/PointF;)Landroid/graphics/Point;
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/HTCCamera;->normalizedPointToScreenPoint(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v0

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v2}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int v1, v2, v3

    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    :cond_0
    return-object v0
.end method

.method private getCenterPointOnScreenForDriver()Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private hideControls()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/camera/effect/EffectControlUI;->showUI(Landroid/view/View;ZZ)V

    :cond_0
    return-void
.end method

.method private initializeUI()V
    .locals 5

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f080061

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/widget/EffectControlCircle;

    iput-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    const v2, 0x7f080064

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    const v2, 0x7f080066

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_IncreaseButton:Landroid/view/View;

    const v2, 0x7f080065

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_DecreaseButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v2}, Lcom/android/camera/widget/EffectControlCircle;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    new-instance v3, Lcom/android/camera/effect/EffectControlUI$10;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectControlUI$10;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/EffectControlCircle;->setOnCenterPointChangedListener(Lcom/android/camera/widget/EffectControlCircle$OnCenterPointChangedListener;)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    new-instance v3, Lcom/android/camera/effect/EffectControlUI$11;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectControlUI$11;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/EffectControlCircle;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/android/camera/effect/EffectControlUI$12;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectControlUI$12;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v2, Lcom/android/camera/effect/EffectControlUI$13;

    invoke-direct {v2, p0}, Lcom/android/camera/effect/EffectControlUI$13;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {p0, v2}, Lcom/android/camera/effect/EffectControlUI;->invokeAsync(Ljava/lang/Runnable;)Z

    const v2, 0x7f080063

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/camera/effect/EffectControlUI$14;

    invoke-direct {v2, p0}, Lcom/android/camera/effect/EffectControlUI$14;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private onControlBarProgressChanged(I)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_ShowingInitValues:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    instance-of v1, v1, Lcom/android/camera/effect/DistortionEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    check-cast v1, Lcom/android/camera/effect/DistortionEffect;

    invoke-virtual {v1, p1}, Lcom/android/camera/effect/DistortionEffect;->setDistortion(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    instance-of v1, v1, Lcom/android/camera/effect/VignetteEffect;

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectControlUI;->calcEffectRadius(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    check-cast v1, Lcom/android/camera/effect/VignetteEffect;

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/VignetteEffect;->setRadius(I)V

    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v1, v0}, Lcom/android/camera/widget/EffectControlCircle;->setBorderRadius(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    instance-of v1, v1, Lcom/android/camera/effect/DepthOfFieldEffect;

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectControlUI;->calcEffectRadius(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    check-cast v1, Lcom/android/camera/effect/DepthOfFieldEffect;

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/DepthOfFieldEffect;->setRadius(I)V

    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v1, v0}, Lcom/android/camera/widget/EffectControlCircle;->setBorderRadius(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    instance-of v1, v1, Lcom/android/camera/effect/DotsEffect;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    check-cast v1, Lcom/android/camera/effect/DotsEffect;

    invoke-virtual {v1, p1}, Lcom/android/camera/effect/DotsEffect;->setDotSize(I)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    instance-of v1, v1, Lcom/android/camera/effect/SplitToningMonoEffect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    check-cast v1, Lcom/android/camera/effect/SplitToningMonoEffect;

    invoke-virtual {v1, p1}, Lcom/android/camera/effect/SplitToningMonoEffect;->setColorStrength(I)V

    goto :goto_0
.end method

.method private onEffectApplied(Lcom/android/camera/effect/EffectBase;)V
    .locals 11

    const/16 v7, 0x8

    const/high16 v10, 0x3f00

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-class v6, Lcom/android/camera/IToastManager;

    invoke-virtual {p0, v6}, Lcom/android/camera/effect/EffectControlUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/IToastManager;

    const/4 v2, 0x1

    iput-boolean v9, p0, Lcom/android/camera/effect/EffectControlUI;->m_ShowingInitValues:Z

    iput-object p1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    instance-of v6, p1, Lcom/android/camera/effect/DistortionEffect;

    if-eqz v6, :cond_6

    iput-boolean v9, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    invoke-direct {p0, v9}, Lcom/android/camera/effect/EffectControlUI;->showControls(Z)V

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v6, v9}, Lcom/android/camera/widget/EffectControlCircle;->allowUserChangeCenterPoint(Z)V

    iget-object v7, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    move-object v6, p1

    check-cast v6, Lcom/android/camera/effect/DistortionEffect;

    invoke-virtual {v6}, Lcom/android/camera/effect/DistortionEffect;->getCenter()Landroid/graphics/PointF;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/camera/effect/EffectControlUI;->convertToUIEffectCenter(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/camera/widget/EffectControlCircle;->setCenterPoint(Landroid/graphics/Point;)V

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v6, v9}, Lcom/android/camera/widget/EffectControlCircle;->setCenterPointVisibility(Z)V

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v6, v8}, Lcom/android/camera/widget/EffectControlCircle;->setBorderVisibility(Z)V

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v6, v8}, Lcom/android/camera/widget/EffectControlCircle;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    move-object v6, p1

    check-cast v6, Lcom/android/camera/effect/DistortionEffect;

    invoke-virtual {v6}, Lcom/android/camera/effect/DistortionEffect;->getDistortion()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_0
    iput-boolean v8, p0, Lcom/android/camera/effect/EffectControlUI;->m_ShowingInitValues:Z

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    if-eqz v6, :cond_0

    instance-of v6, p1, Lcom/android/camera/effect/SplitToningMonoEffect;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    const v7, 0x7f02009d

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setBackgroundResource(I)V

    :cond_0
    :goto_1
    iget-boolean v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    if-eqz v6, :cond_2

    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_ToastHandle:Lcom/android/camera/Handle;

    if-nez v6, :cond_1

    if-eqz v3, :cond_1

    const v6, 0x7f0a01dd

    invoke-virtual {v3, v6}, Lcom/android/camera/IToastManager;->showToast(I)Lcom/android/camera/Handle;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_ToastHandle:Lcom/android/camera/Handle;

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/effect/EffectControlUI;->updateEffectCircleBounds()V

    :cond_2
    iget-boolean v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/camera/effect/IEffectControlUI;->effectControlState:Lcom/android/camera/property/Property;

    iget-object v7, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v8, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/camera/effect/IEffectControlUI;->effectControlBarState:Lcom/android/camera/property/Property;

    iget-object v7, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v8, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCenterPool:[Landroid/graphics/PointF;

    iget v7, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCenterPoolIndex:I

    aget-object v0, v6, v7

    iget v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCenterPoolIndex:I

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCenterPool:[Landroid/graphics/PointF;

    array-length v7, v7

    rem-int/2addr v6, v7

    iput v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCenterPoolIndex:I

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v6}, Lcom/android/camera/widget/EffectControlCircle;->getCenterPoint()Landroid/graphics/Point;

    move-result-object v4

    sget-object v6, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v6}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v6

    if-eqz v6, :cond_3

    sget v6, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    sub-int v5, v6, v7

    iget v6, v4, Landroid/graphics/Point;->x:I

    iput v6, v4, Landroid/graphics/Point;->y:I

    iput v5, v4, Landroid/graphics/Point;->x:I

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    iget v7, v4, Landroid/graphics/Point;->x:I

    iget v8, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7, v8, v9, v0}, Lcom/android/camera/HTCCamera;->screenPointToNormalizedPoint(IIZLandroid/graphics/PointF;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v0, v10, v10}, Landroid/graphics/PointF;->set(FF)V

    :cond_4
    iget-object v6, p0, Lcom/android/camera/effect/IEffectControlUI;->effectCenter:Lcom/android/camera/property/Property;

    iget-object v7, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v6, v7, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_5
    return-void

    :cond_6
    instance-of v6, p1, Lcom/android/camera/effect/VignetteEffect;

    if-eqz v6, :cond_7

    move-object v6, p1

    check-cast v6, Lcom/android/camera/effect/VignetteEffect;

    invoke-virtual {v6}, Lcom/android/camera/effect/VignetteEffect;->getRadius()I

    move-result v1

    iput-boolean v9, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    invoke-direct {p0, v9}, Lcom/android/camera/effect/EffectControlUI;->showControls(Z)V

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v6, v8}, Lcom/android/camera/widget/EffectControlCircle;->allowUserChangeCenterPoint(Z)V

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-direct {p0}, Lcom/android/camera/effect/EffectControlUI;->getCenterPointOnScreenForDriver()Landroid/graphics/Point;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/camera/widget/EffectControlCircle;->setCenterPoint(Landroid/graphics/Point;)V

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v6, v8}, Lcom/android/camera/widget/EffectControlCircle;->setCenterPointVisibility(Z)V

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v6, v9}, Lcom/android/camera/widget/EffectControlCircle;->setBorderVisibility(Z)V

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v6, v1}, Lcom/android/camera/widget/EffectControlCircle;->setBorderRadius(I)V

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v6, v8}, Lcom/android/camera/widget/EffectControlCircle;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v1}, Lcom/android/camera/effect/EffectControlUI;->calcControlBarProgress(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    :cond_7
    instance-of v6, p1, Lcom/android/camera/effect/DepthOfFieldEffect;

    if-eqz v6, :cond_8

    move-object v6, p1

    check-cast v6, Lcom/android/camera/effect/DepthOfFieldEffect;

    invoke-virtual {v6}, Lcom/android/camera/effect/DepthOfFieldEffect;->getRadius()I

    move-result v1

    iput-boolean v9, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    invoke-direct {p0, v9}, Lcom/android/camera/effect/EffectControlUI;->showControls(Z)V

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v6, v9}, Lcom/android/camera/widget/EffectControlCircle;->allowUserChangeCenterPoint(Z)V

    iget-object v7, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    move-object v6, p1

    check-cast v6, Lcom/android/camera/effect/DepthOfFieldEffect;

    invoke-virtual {v6}, Lcom/android/camera/effect/DepthOfFieldEffect;->getCenter()Landroid/graphics/PointF;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/camera/effect/EffectControlUI;->convertToUIEffectCenter(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/camera/widget/EffectControlCircle;->setCenterPoint(Landroid/graphics/Point;)V

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v6, v9}, Lcom/android/camera/widget/EffectControlCircle;->setCenterPointVisibility(Z)V

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v6, v9}, Lcom/android/camera/widget/EffectControlCircle;->setBorderVisibility(Z)V

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v6, v1}, Lcom/android/camera/widget/EffectControlCircle;->setBorderRadius(I)V

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v6, v8}, Lcom/android/camera/widget/EffectControlCircle;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v1}, Lcom/android/camera/effect/EffectControlUI;->calcControlBarProgress(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    :cond_8
    instance-of v6, p1, Lcom/android/camera/effect/DotsEffect;

    if-eqz v6, :cond_9

    iput-boolean v9, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    invoke-direct {p0, v9}, Lcom/android/camera/effect/EffectControlUI;->showControls(Z)V

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v6, v8}, Lcom/android/camera/widget/EffectControlCircle;->setCenterPointVisibility(Z)V

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v6, v7}, Lcom/android/camera/widget/EffectControlCircle;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    move-object v6, p1

    check-cast v6, Lcom/android/camera/effect/DotsEffect;

    invoke-virtual {v6}, Lcom/android/camera/effect/DotsEffect;->getDotSize()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    :cond_9
    instance-of v6, p1, Lcom/android/camera/effect/SplitToningMonoEffect;

    if-eqz v6, :cond_a

    iput-boolean v9, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    invoke-direct {p0, v9}, Lcom/android/camera/effect/EffectControlUI;->showControls(Z)V

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v6, v8}, Lcom/android/camera/widget/EffectControlCircle;->setCenterPointVisibility(Z)V

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v6, v7}, Lcom/android/camera/widget/EffectControlCircle;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    move-object v6, p1

    check-cast v6, Lcom/android/camera/effect/SplitToningMonoEffect;

    invoke-virtual {v6}, Lcom/android/camera/effect/SplitToningMonoEffect;->getColorStrength()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    :cond_a
    iput-boolean v8, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    const/4 v2, 0x0

    if-eqz v3, :cond_b

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_ToastHandle:Lcom/android/camera/Handle;

    invoke-virtual {v3, v6}, Lcom/android/camera/IToastManager;->cancelToast(Lcom/android/camera/Handle;)V

    :cond_b
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_ToastHandle:Lcom/android/camera/Handle;

    invoke-direct {p0}, Lcom/android/camera/effect/EffectControlUI;->hideControls()V

    goto/16 :goto_0

    :cond_c
    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    const v7, 0x7f02009c

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method

.method private onEffectCanceled(Lcom/android/camera/effect/EffectBase;)V
    .locals 4

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/IEffectControlUI;->effectControlBarState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/effect/IEffectControlUI;->effectControlState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/effect/IEffectControlUI;->effectCenter:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    :cond_0
    return-void
.end method

.method private showControls(Z)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/effect/EffectControlUI;->initializeUI()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->settingsMenuState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/effect/EffectControlUI;->initializeUI()V

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->getBaseLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/camera/effect/EffectControlUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method private updateEffectCircleBounds()V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    :goto_1
    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    sub-int/2addr v3, v1

    div-int/lit8 v2, v3, 0x2

    iget-object v3, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v3, v2, v4, v2, v4}, Lcom/android/camera/widget/EffectControlCircle;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v1, v3, 0x3

    goto :goto_1
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    invoke-super {p0}, Lcom/android/camera/effect/IEffectControlUI;->deinitializeOverride()V

    return-void
.end method

.method protected initializeOverride()V
    .locals 7

    invoke-super {p0}, Lcom/android/camera/effect/IEffectControlUI;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    const-class v3, Lcom/android/camera/effect/IEffectManager;

    invoke-virtual {p0, v3}, Lcom/android/camera/effect/EffectControlUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/IEffectManager;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/effect/EffectControlUI$1;

    invoke-direct {v4, p0}, Lcom/android/camera/effect/EffectControlUI$1;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->newIntentEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/effect/EffectControlUI$2;

    invoke-direct {v4, p0}, Lcom/android/camera/effect/EffectControlUI$2;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/android/camera/effect/IEffectManager;->effectAppliedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/effect/EffectControlUI$3;

    invoke-direct {v4, p0}, Lcom/android/camera/effect/EffectControlUI$3;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v3, v1, Lcom/android/camera/effect/IEffectManager;->effectCanceledEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/effect/EffectControlUI$4;

    invoke-direct {v4, p0}, Lcom/android/camera/effect/EffectControlUI$4;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    :cond_0
    new-instance v2, Lcom/android/camera/effect/EffectControlUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/effect/EffectControlUI$5;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/effect/EffectControlUI$6;

    invoke-direct {v4, p0}, Lcom/android/camera/effect/EffectControlUI$6;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/effect/EffectControlUI$7;

    invoke-direct {v4, p0}, Lcom/android/camera/effect/EffectControlUI$7;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v3, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/camera/effect/EffectControlUI$8;

    iget-object v5, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/camera/effect/EffectControlUI$8;-><init>(Lcom/android/camera/effect/EffectControlUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/effect/EffectControlUI$9;

    invoke-direct {v4, p0}, Lcom/android/camera/effect/EffectControlUI$9;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->settingsMenuState:Lcom/android/camera/property/Property;

    invoke-virtual {v3, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    return-void
.end method

.method protected onEnteringFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_IncreaseButton:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_IncreaseButton:Landroid/view/View;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/effect/EffectControlUI;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;I)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_DecreaseButton:Landroid/view/View;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/effect/EffectControlUI;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;I)V

    goto :goto_0
.end method

.method protected onExitingFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_IncreaseButton:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_IncreaseButton:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/effect/EffectControlUI;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_DecreaseButton:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/effect/EffectControlUI;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0
.end method

.method protected onUIRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_IncreaseButton:Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/android/camera/effect/EffectControlUI;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_DecreaseButton:Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/android/camera/effect/EffectControlUI;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method
