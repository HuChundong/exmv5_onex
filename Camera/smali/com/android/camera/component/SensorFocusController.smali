.class public final Lcom/android/camera/component/SensorFocusController;
.super Lcom/android/camera/component/UIComponent;
.source "SensorFocusController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/SensorFocusController$14;
    }
.end annotation


# static fields
.field private static final MSG_RESTART_SENSOR_FOCUS:I = 0x2712

.field private static final MSG_STABLE:I = 0x2711

.field public static final NAME:Ljava/lang/String; = "Sensor-Focus Controller"

.field private static final RESTART_SENSOR_FOCUS_DURATION:J = 0x12cL

.field private static final SENSOR_STATE_STABLE_FOCUSED:I = 0x3

.field private static final SENSOR_STATE_STABLE_FOCUSING:I = 0x2

.field private static final SENSOR_STATE_UNSTABLE:I = 0x0

.field private static final SENSOR_STATE_WAITING_FOR_STABLE:I = 0x1

.field private static final SENSOR_UNSTABLE_THRESHOLD:F = 0.5f

.field private static final STABLE_PERIOD:J = 0xbeL

.field private static final STABLE_THRESHOLD:F = 0.1f

.field private static final TOUCH_UNSTABLE_THRESHOLD:F = 0.8f

.field private static final UNSTABLE_THRESHOLD_FACTOR_FOR_CAF:F = 2.0f


# instance fields
.field private m_EffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

.field private final m_HasMovement:[Z

.field private m_LastFocusMode:Lcom/android/camera/AutoFocusMode;

.field private m_NeedSensorFocusAfterPreview:Z

.field private m_NeedSensorFocusWhenGSensorMoving:Z

.field private m_SensorState:I

.field private m_SensorValues:[F

.field private m_StableSensorValues:[F

.field private m_UnstableThreshold:F


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "Sensor-Focus Controller"

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/camera/component/SensorFocusController;->m_HasMovement:[Z

    iput v1, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorState:I

    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/camera/component/SensorFocusController;->m_UnstableThreshold:F

    iput-boolean v2, p0, Lcom/android/camera/component/SensorFocusController;->m_NeedSensorFocusAfterPreview:Z

    iput-boolean v1, p0, Lcom/android/camera/component/SensorFocusController;->m_NeedSensorFocusWhenGSensorMoving:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/SensorFocusController;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/SensorFocusController;->restartSensorFocus(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/SensorFocusController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/SensorFocusController;->m_NeedSensorFocusAfterPreview:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/component/SensorFocusController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/SensorFocusController;->m_NeedSensorFocusAfterPreview:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/camera/component/SensorFocusController;Lcom/android/camera/AutoFocusMode;)Lcom/android/camera/AutoFocusMode;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/android/camera/AutoFocusMode;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/component/SensorFocusController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/component/SensorFocusController;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/component/SensorFocusController;->m_UnstableThreshold:F

    return p1
.end method

.method static synthetic access$432(Lcom/android/camera/component/SensorFocusController;F)F
    .locals 1

    iget v0, p0, Lcom/android/camera/component/SensorFocusController;->m_UnstableThreshold:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/component/SensorFocusController;->m_UnstableThreshold:F

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/component/SensorFocusController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/SensorFocusController;->m_NeedSensorFocusWhenGSensorMoving:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/component/SensorFocusController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/component/SensorFocusController;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorState:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/camera/component/SensorFocusController;[F)[F
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorValues:[F

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/camera/component/SensorFocusController;[F)[F
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/SensorFocusController;->m_StableSensorValues:[F

    return-object p1
.end method

.method private checkSensorFocus([F)V
    .locals 9

    const/16 v2, 0x2711

    const/4 v8, 0x1

    const/4 v3, 0x0

    iput v8, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorState:I

    invoke-direct {p0, p1}, Lcom/android/camera/component/SensorFocusController;->updateSensorValues([F)V

    invoke-virtual {p0}, Lcom/android/camera/component/SensorFocusController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->canSensorFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/android/camera/component/SensorFocusController;->removeMessages(I)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/android/camera/AutoFocusMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/component/SensorFocusController;->m_NeedSensorFocusWhenGSensorMoving:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "checkSensorFocus - trigger startSensorFocus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/component/SensorFocusController;->startSensorFocus()V

    :cond_1
    const/4 v5, 0x0

    const-wide/16 v6, 0xbe

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/SensorFocusController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/camera/component/SensorFocusController;->removeMessages(I)V

    const-wide/16 v0, 0x12c

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/SensorFocusController;->restartSensorFocus(J)V

    goto :goto_0
.end method

.method private checkSensorValuesChanged([F)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorValues:[F

    if-nez v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/camera/component/SensorFocusController;->updateSensorValues([F)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_StableSensorValues:[F

    if-nez v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/camera/component/SensorFocusController;->updateStableSensorValues([F)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorValues:[F

    aget v3, v3, v0

    aget v4, p1, v0

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3dcccccd

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_HasMovement:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_HasMovement:[Z

    aput-boolean v1, v3, v0

    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_StableSensorValues:[F

    aget v4, p1, v0

    aput v4, v3, v0

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorValues:[F

    aget v3, v3, v0

    aget v4, p1, v0

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/camera/component/SensorFocusController;->m_UnstableThreshold:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorValues:[F

    aget v4, p1, v0

    aput v4, v3, v0

    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_HasMovement:[Z

    aput-boolean v2, v3, v0

    const/high16 v3, 0x3f00

    iput v3, p0, Lcom/android/camera/component/SensorFocusController;->m_UnstableThreshold:F

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/camera/component/SensorFocusController;->m_UnstableThreshold:F

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/component/SensorFocusController;->m_UnstableThreshold:F

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_HasMovement:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_HasMovement:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_HasMovement:[Z

    const/4 v4, 0x2

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_0

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method private enterUnstableState()V
    .locals 3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/SensorFocusController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->resetFocusMode()V

    goto :goto_0
.end method

.method private restartSensorFocus(J)V
    .locals 9

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/SensorFocusController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0x2712

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    move-wide v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/SensorFocusController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    goto :goto_0
.end method

.method private startSensorFocus()V
    .locals 6

    const-wide/16 v4, 0x12c

    const/16 v3, 0x2712

    invoke-virtual {p0}, Lcom/android/camera/component/SensorFocusController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/component/SensorFocusController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->canSensorFocus()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "startSensorFocus() - Cannot trigger sensor focus"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p0, v3, v4, v5}, Lcom/android/camera/component/SensorFocusController;->sendMessage(Lcom/android/camera/component/Component;IJ)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->handleSensorFocus(Z)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p0, v3, v4, v5}, Lcom/android/camera/component/SensorFocusController;->sendMessage(Lcom/android/camera/component/Component;IJ)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/component/SensorFocusController;->m_NeedSensorFocusAfterPreview:Z

    goto :goto_0
.end method

.method private updateSensorValues([F)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorValues:[F

    if-nez v1, :cond_0

    array-length v1, p1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorValues:[F

    :cond_0
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorValues:[F

    aget v2, p1, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateStableSensorValues([F)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/component/SensorFocusController;->m_StableSensorValues:[F

    if-nez v1, :cond_0

    array-length v1, p1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/camera/component/SensorFocusController;->m_StableSensorValues:[F

    :cond_0
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/SensorFocusController;->m_StableSensorValues:[F

    aget v2, p1, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/SensorFocusController;->m_HasMovement:[Z

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/SensorFocusController;->m_HasMovement:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/SensorFocusController;->m_EffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x3f00

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/camera/component/SensorFocusController;->startSensorFocus()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/SensorFocusController;->restartSensorFocus()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/camera/component/SensorFocusController;->startSensorFocus()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/SensorFocusController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->isFocusUIShowing:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "FocusUI is showing, won\'t trigger SensorFocus"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/android/camera/AutoFocusMode;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v4, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    if-eq v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/android/camera/component/SensorFocusController;->m_NeedSensorFocusWhenGSensorMoving:Z

    if-eqz v3, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/component/SensorFocusController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_EffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_EffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    iget-object v3, v3, Lcom/android/camera/effect/IEffectControlUI;->effectCenter:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v1, v6, v6}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    :cond_6
    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->normalizedPointToScreenPoint(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->focusPointUpdateEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/OneValueEventArgs;

    invoke-direct {v4, v2}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    iget-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v4, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    if-ne v3, v4, :cond_7

    invoke-virtual {v1, v5, v5}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->showFocusingEvent:Lcom/android/camera/event/Event;

    sget-object v4, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    :cond_7
    invoke-direct {p0}, Lcom/android/camera/component/SensorFocusController;->startSensorFocus()V

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/AutoFocusMode;

    iput-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/android/camera/AutoFocusMode;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/camera/component/SensorFocusController;->m_NeedSensorFocusWhenGSensorMoving:Z

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 7

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    const-class v3, Lcom/android/camera/effect/IEffectControlUI;

    invoke-virtual {p0, v3}, Lcom/android/camera/component/SensorFocusController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/effect/IEffectControlUI;

    iput-object v3, p0, Lcom/android/camera/component/SensorFocusController;->m_EffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    invoke-virtual {p0}, Lcom/android/camera/component/SensorFocusController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v3, v1, Lcom/android/camera/HTCCamera;->autoFocusCanceledEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/component/SensorFocusController$1;

    invoke-direct {v4, p0}, Lcom/android/camera/component/SensorFocusController$1;-><init>(Lcom/android/camera/component/SensorFocusController;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v3, v1, Lcom/android/camera/HTCCamera;->cameraClosedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/component/SensorFocusController$2;

    invoke-direct {v4, p0}, Lcom/android/camera/component/SensorFocusController$2;-><init>(Lcom/android/camera/component/SensorFocusController;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    const-class v3, Lcom/android/camera/IAutoFocusController;

    invoke-virtual {p0, v3}, Lcom/android/camera/component/SensorFocusController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IAutoFocusController;

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/camera/IAutoFocusController;->autoFocusFinishedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/component/SensorFocusController$3;

    invoke-direct {v4, p0}, Lcom/android/camera/component/SensorFocusController$3;-><init>(Lcom/android/camera/component/SensorFocusController;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    :cond_0
    const-class v3, Lcom/android/camera/effect/IEffectManager;

    invoke-virtual {p0, v3}, Lcom/android/camera/component/SensorFocusController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/IEffectManager;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/camera/effect/IEffectManager;->currentEffect:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/SensorFocusController$4;

    invoke-direct {v4, p0}, Lcom/android/camera/component/SensorFocusController$4;-><init>(Lcom/android/camera/component/SensorFocusController;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v3, v2, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/SensorFocusController$5;

    invoke-direct {v4, p0}, Lcom/android/camera/component/SensorFocusController$5;-><init>(Lcom/android/camera/component/SensorFocusController;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    :cond_1
    iget-object v3, v1, Lcom/android/camera/HTCCamera;->accelerometerValues:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/SensorFocusController$6;

    invoke-direct {v4, p0, v1}, Lcom/android/camera/component/SensorFocusController$6;-><init>(Lcom/android/camera/component/SensorFocusController;Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/CameraSettings;->canAutoFocus:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/SensorFocusController$7;

    invoke-direct {v4, p0}, Lcom/android/camera/component/SensorFocusController$7;-><init>(Lcom/android/camera/component/SensorFocusController;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v3, v1, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/SensorFocusController$8;

    invoke-direct {v4, p0}, Lcom/android/camera/component/SensorFocusController$8;-><init>(Lcom/android/camera/component/SensorFocusController;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v3, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/camera/component/SensorFocusController$9;

    iget-object v5, v1, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/camera/component/SensorFocusController$9;-><init>(Lcom/android/camera/component/SensorFocusController;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/SensorFocusController$10;

    invoke-direct {v4, p0}, Lcom/android/camera/component/SensorFocusController$10;-><init>(Lcom/android/camera/component/SensorFocusController;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v3, v1, Lcom/android/camera/HTCCamera;->isAccelerometerStarted:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/SensorFocusController$11;

    invoke-direct {v4, p0}, Lcom/android/camera/component/SensorFocusController$11;-><init>(Lcom/android/camera/component/SensorFocusController;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v3, v1, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/SensorFocusController$12;

    invoke-direct {v4, p0}, Lcom/android/camera/component/SensorFocusController$12;-><init>(Lcom/android/camera/component/SensorFocusController;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v3, v1, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/SensorFocusController$13;

    invoke-direct {v4, p0}, Lcom/android/camera/component/SensorFocusController$13;-><init>(Lcom/android/camera/component/SensorFocusController;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    return-void
.end method

.method public onAccelerometerValuesChanged([F)V
    .locals 1

    iget v0, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorState:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/camera/component/SensorFocusController;->checkSensorFocus([F)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/camera/component/SensorFocusController;->checkSensorValuesChanged([F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/component/SensorFocusController;->checkSensorFocus([F)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/camera/component/SensorFocusController;->updateSensorValues([F)V

    invoke-direct {p0, p1}, Lcom/android/camera/component/SensorFocusController;->updateStableSensorValues([F)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/camera/component/SensorFocusController;->checkSensorValuesChanged([F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/component/SensorFocusController;->checkSensorFocus([F)V

    invoke-direct {p0}, Lcom/android/camera/component/SensorFocusController;->enterUnstableState()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public restartSensorFocus()V
    .locals 1

    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/android/camera/component/SensorFocusController;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/camera/component/SensorFocusController;->getCameraActivity()Lcom/android/camera/HTCCamera;

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
    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorValues:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController;->m_SensorValues:[F

    invoke-direct {p0, v0}, Lcom/android/camera/component/SensorFocusController;->checkSensorFocus([F)V

    invoke-direct {p0}, Lcom/android/camera/component/SensorFocusController;->enterUnstableState()V

    goto :goto_0
.end method
