.class public Lcom/android/camera/component/ScreenSaveUI;
.super Lcom/android/camera/component/UIComponent;
.source "ScreenSaveUI.java"


# static fields
.field private static final HANDSHAKE_STABLETIME_THREADHOLD:F = 300.0f

.field private static final HANDSHAKE_THRESHOLD:F = 0.5f

.field private static final MSG_RESET_SCREENSAVE:I = 0x1

.field public static final NAME:Ljava/lang/String; = "ScreenSaveUI"

.field private static final ROTATE_THRESHOLD:I = 0x14

.field private static final SCREEN_DELAY_RESETCHECK_DELAY:I = 0x1d0d8


# instance fields
.field private m_AccelerometerValues:[F

.field private m_HandShakeStableTime:I

.field private m_iCurrentOri:I

.field private m_rotation:Lcom/android/camera/rotate/UIRotation;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v0, "ScreenSaveUI"

    invoke-direct {p0, v0, v3, p1, v1}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    iput v1, p0, Lcom/android/camera/component/ScreenSaveUI;->m_HandShakeStableTime:I

    sget-object v0, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    iput-object v0, p0, Lcom/android/camera/component/ScreenSaveUI;->m_rotation:Lcom/android/camera/rotate/UIRotation;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/component/ScreenSaveUI;->m_iCurrentOri:I

    iget-object v0, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/component/ScreenSaveUI$1;

    invoke-virtual {p0}, Lcom/android/camera/component/ScreenSaveUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->isCameraThreadRunning:Lcom/android/camera/property/Property;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/component/ScreenSaveUI$1;-><init>(Lcom/android/camera/component/ScreenSaveUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ScreenSaveUI;[F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/ScreenSaveUI;->onAccelerometerValuesChanged([F)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/camera/component/ScreenSaveUI;Lcom/android/camera/rotate/UIRotation;)Lcom/android/camera/rotate/UIRotation;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ScreenSaveUI;->m_rotation:Lcom/android/camera/rotate/UIRotation;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/component/ScreenSaveUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private isUnder4DimenThreshold()Z
    .locals 2

    const/16 v1, 0x14

    iget v0, p0, Lcom/android/camera/component/ScreenSaveUI;->m_iCurrentOri:I

    add-int/lit16 v0, v0, -0x167

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/component/ScreenSaveUI;->m_iCurrentOri:I

    add-int/lit8 v0, v0, 0x0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/component/ScreenSaveUI;->m_iCurrentOri:I

    add-int/lit8 v0, v0, -0x5a

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/component/ScreenSaveUI;->m_iCurrentOri:I

    add-int/lit16 v0, v0, -0xb4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/component/ScreenSaveUI;->m_iCurrentOri:I

    add-int/lit16 v0, v0, -0x10e

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAccelerometerValuesChanged([F)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/component/ScreenSaveUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v3, v1, Lcom/android/camera/HTCCamera;->deviceOrientation:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/camera/component/ScreenSaveUI;->m_iCurrentOri:I

    iget-object v3, p0, Lcom/android/camera/component/ScreenSaveUI;->m_AccelerometerValues:[F

    if-nez v3, :cond_0

    iput-object p1, p0, Lcom/android/camera/component/ScreenSaveUI;->m_AccelerometerValues:[F

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/component/ScreenSaveUI;->m_AccelerometerValues:[F

    aget v3, v3, v2

    aget v4, p1, v2

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f00

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_3

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/camera/component/ScreenSaveUI;->m_HandShakeStableTime:I

    :goto_2
    iput-object p1, p0, Lcom/android/camera/component/ScreenSaveUI;->m_AccelerometerValues:[F

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/android/camera/component/ScreenSaveUI;->m_HandShakeStableTime:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/camera/component/ScreenSaveUI;->m_HandShakeStableTime:I

    goto :goto_2
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/camera/component/ScreenSaveUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->accelerometerValues:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ScreenSaveUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ScreenSaveUI$2;-><init>(Lcom/android/camera/component/ScreenSaveUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/ScreenSaveUI$3;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/ScreenSaveUI$3;-><init>(Lcom/android/camera/component/ScreenSaveUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/ScreenSaveUI$4;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/ScreenSaveUI$4;-><init>(Lcom/android/camera/component/ScreenSaveUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ScreenSaveUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ScreenSaveUI$5;-><init>(Lcom/android/camera/component/ScreenSaveUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/component/ScreenSaveUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    const/4 v1, -0x1

    iget v2, p0, Lcom/android/camera/component/ScreenSaveUI;->m_iCurrentOri:I

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/camera/component/ScreenSaveUI;->isUnder4DimenThreshold()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x4396

    iget v2, p0, Lcom/android/camera/component/ScreenSaveUI;->m_HandShakeStableTime:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "resetScreenSaveTimer"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    const-wide/32 v2, 0x1d0d8

    invoke-virtual {p0, p0, v1, v2, v3}, Lcom/android/camera/component/ScreenSaveUI;->sendMessage(Lcom/android/camera/component/Component;IJ)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-direct {p0}, Lcom/android/camera/component/ScreenSaveUI;->setupPropertyChangedCallbacks()V

    const/4 v0, 0x1

    const-wide/32 v1, 0x1d0d8

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/camera/component/ScreenSaveUI;->sendMessage(Lcom/android/camera/component/Component;IJ)Z

    return-void
.end method
