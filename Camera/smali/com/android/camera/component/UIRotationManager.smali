.class final Lcom/android/camera/component/UIRotationManager;
.super Lcom/android/camera/IUIRotationManager;
.source "UIRotationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/UIRotationManager$LockHandle;
    }
.end annotation


# static fields
.field private static final MIN_ROTATION_CHANGE_INTERVAL:J = 0x258L

.field private static final MSG_EXIT_SHAKE_PREVENTION:I = 0x2711

.field static final NAME:Ljava/lang/String; = "UI Rotation Manager"

.field private static final SHAKE_PREVENTION_INTERVAL:J = 0x12cL

.field private static final SHAKE_PREVENTION_THRESHOLD:I = 0x5


# instance fields
.field private m_ActualRotation:Lcom/android/camera/rotate/UIRotation;

.field private m_IsFirstOrientationChange:Z

.field private m_IsShakePreventionEntered:Z

.field private m_LastDeviceOrientation:I

.field private m_LastRotationChangeTime:J

.field private final m_LockHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/component/UIRotationManager$LockHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_OrientationDropCounter:I

.field private final m_OrientationListener:Landroid/view/OrientationEventListener;

.field private m_ShakePreventionCounter:I

.field private m_SharedBackgroundWorker:Lcom/android/camera/ISharedBackgroundWorker;

.field private final m_StartOrientationListenerRunnable:Ljava/lang/Runnable;

.field private final m_StopOrientationListenerRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 4

    const/4 v3, 0x4

    const-string v0, "UI Rotation Manager"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/IUIRotationManager;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V

    new-instance v0, Lcom/android/camera/component/UIRotationManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/UIRotationManager$1;-><init>(Lcom/android/camera/component/UIRotationManager;)V

    iput-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_StartOrientationListenerRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/camera/component/UIRotationManager$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/UIRotationManager$2;-><init>(Lcom/android/camera/component/UIRotationManager;)V

    iput-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_StopOrientationListenerRunnable:Ljava/lang/Runnable;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/camera/IUIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v3}, Lcom/android/camera/property/Property;->enableLogs(I)V

    iget-object v0, p0, Lcom/android/camera/IUIRotationManager;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v3}, Lcom/android/camera/property/Property;->enableLogs(I)V

    new-instance v0, Lcom/android/camera/component/UIRotationManager$3;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/component/UIRotationManager$3;-><init>(Lcom/android/camera/component/UIRotationManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_OrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->disableFakeUIRotation()V

    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->disableUIRotationChangeNotification()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/UIRotationManager;)Landroid/view/OrientationEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_OrientationListener:Landroid/view/OrientationEventListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/UIRotationManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/UIRotationManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/UIRotationManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/UIRotationManager;->onOrientationChanged(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/rotate/UIRotation;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/rotate/UIRotation;)Lcom/android/camera/rotate/UIRotation;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/UIRotationManager;->m_ActualRotation:Lcom/android/camera/rotate/UIRotation;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/rotate/UIRotation;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/UIRotationManager;->updateVirtualHwKeysOrientation(Lcom/android/camera/rotate/UIRotation;Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/camera/component/UIRotationManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/component/UIRotationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/UIRotationManager;->stopOrientationListener()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/component/UIRotationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/UIRotationManager;->startOrientationListener()V

    return-void
.end method

.method private enterShakePrevention()V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enterShakePrevention()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/IUIRotationManager;->isOrientationListenerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enterShakePrevention() - Orientation listener is not started"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v5, p0, Lcom/android/camera/component/UIRotationManager;->m_IsShakePreventionEntered:Z

    const/16 v2, 0x2711

    const-wide/16 v3, 0x12c

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/UIRotationManager;->sendMessage(Lcom/android/camera/component/Component;IJZ)Z

    goto :goto_0
.end method

.method private exitShakePrevention()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "exitShakePrevention()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/camera/component/UIRotationManager;->m_IsShakePreventionEntered:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/component/UIRotationManager;->m_IsShakePreventionEntered:Z

    iput v3, p0, Lcom/android/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    const/16 v1, 0x2711

    invoke-virtual {p0, v1}, Lcom/android/camera/component/UIRotationManager;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/camera/IUIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_ActualRotation:Lcom/android/camera/rotate/UIRotation;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/UIRotationManager;->m_ActualRotation:Lcom/android/camera/rotate/UIRotation;

    invoke-direct {p0, v0}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0
.end method

.method private onOrientationChanged(I)V
    .locals 5

    iget v2, p0, Lcom/android/camera/component/UIRotationManager;->m_OrientationDropCounter:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/android/camera/component/UIRotationManager;->m_OrientationDropCounter:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/camera/component/UIRotationManager;->m_OrientationDropCounter:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/IUIRotationManager;->deviceOrientation:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "onOrientationChanged() - Unknown orientation"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/android/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    iget-boolean v2, p0, Lcom/android/camera/component/UIRotationManager;->m_IsFirstOrientationChange:Z

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-static {v0, p1}, Lcom/android/camera/rotate/UIRotation;->fromDeviceOrientation(Lcom/android/camera/rotate/UIRotation;I)Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/component/UIRotationManager;->m_IsFirstOrientationChange:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/IUIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraThread;->setCaptureRotation(Lcom/android/camera/rotate/UIRotation;)V

    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/component/UIRotationManager;->m_IsFirstOrientationChange:Z

    iget-object v2, p0, Lcom/android/camera/IUIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/camera/IUIRotationManager;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/UIRotation;

    move-object v0, v2

    goto :goto_1
.end method

.method private onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onRotationChanged(Lcom/android/camera/rotate/UIRotation;Z)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/component/UIRotationManager;->m_ActualRotation:Lcom/android/camera/rotate/UIRotation;

    if-ne v5, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/camera/component/UIRotationManager;->m_ActualRotation:Lcom/android/camera/rotate/UIRotation;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/android/camera/component/UIRotationManager;->m_LastRotationChangeTime:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0x258

    cmp-long v5, v5, v7

    if-gez v5, :cond_3

    move v2, v3

    :goto_1
    iput-wide v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LastRotationChangeTime:J

    if-eqz v2, :cond_4

    iget v4, p0, Lcom/android/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    if-ge v4, v9, :cond_2

    iget v4, p0, Lcom/android/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    :cond_2
    iget v4, p0, Lcom/android/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    if-lt v4, v9, :cond_6

    invoke-direct {p0}, Lcom/android/camera/component/UIRotationManager;->enterShakePrevention()V

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    iget-boolean v5, p0, Lcom/android/camera/component/UIRotationManager;->m_IsShakePreventionEntered:Z

    if-eqz v5, :cond_5

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onRotationChanged() - Shake prevention"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iput v4, p0, Lcom/android/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    :cond_6
    invoke-static {}, Lcom/android/camera/FeatureConfig;->isInitialFakeRotationEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/camera/IUIRotationManager;->fakeRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v4, v10}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/camera/IUIRotationManager;->rotation:Lcom/android/camera/property/Property;

    sget-object v5, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v4, v5}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/camera/IUIRotationManager;->fakeRotation:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v4, v5, v10}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_7
    iget-object v4, p0, Lcom/android/camera/IUIRotationManager;->rotation:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v4, v5, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/camera/CameraThread;->setCaptureRotation(Lcom/android/camera/rotate/UIRotation;)V

    :cond_8
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isVirtualHWKeyRotated()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p1, v3}, Lcom/android/camera/component/UIRotationManager;->updateVirtualHwKeysOrientation(Lcom/android/camera/rotate/UIRotation;Z)V

    goto :goto_0
.end method

.method private startOrientationListener()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/camera/IUIRotationManager;->isOrientationListenerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "startOrientationListener()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_SharedBackgroundWorker:Lcom/android/camera/ISharedBackgroundWorker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_SharedBackgroundWorker:Lcom/android/camera/ISharedBackgroundWorker;

    iget-object v1, p0, Lcom/android/camera/component/UIRotationManager;->m_StartOrientationListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ISharedBackgroundWorker;->enqueueTask(Ljava/lang/Runnable;)Lcom/android/camera/Handle;

    :goto_0
    iget-object v0, p0, Lcom/android/camera/IUIRotationManager;->isOrientationListenerStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/component/UIRotationManager;->m_IsFirstOrientationChange:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/UIRotationManager;->m_OrientationDropCounter:I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_StartOrientationListenerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private stopOrientationListener()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/IUIRotationManager;->isOrientationListenerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "stopOrientationListener()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_SharedBackgroundWorker:Lcom/android/camera/ISharedBackgroundWorker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_SharedBackgroundWorker:Lcom/android/camera/ISharedBackgroundWorker;

    iget-object v1, p0, Lcom/android/camera/component/UIRotationManager;->m_StopOrientationListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ISharedBackgroundWorker;->enqueueTask(Ljava/lang/Runnable;)Lcom/android/camera/Handle;

    :goto_0
    iget-object v0, p0, Lcom/android/camera/IUIRotationManager;->isOrientationListenerStarted:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/UIRotationManager;->exitShakePrevention()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_StopOrientationListenerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private updateVirtualHwKeysOrientation(Lcom/android/camera/rotate/UIRotation;Z)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.content.intent.action.ORIENTATION_LIGHT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "package_name"

    const-string v3, "com.android.camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "manual"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "orientation"

    iget v3, p1, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getAvailableDeviceOrientation()I
    .locals 2

    iget v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/IUIRotationManager;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/UIRotationManager;->exitShakePrevention()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 10

    const/4 v9, 0x1

    invoke-super {p0}, Lcom/android/camera/IUIRotationManager;->initializeOverride()V

    const-class v5, Lcom/android/camera/ISharedBackgroundWorker;

    invoke-virtual {p0, v5}, Lcom/android/camera/component/UIRotationManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ISharedBackgroundWorker;

    iput-object v5, p0, Lcom/android/camera/component/UIRotationManager;->m_SharedBackgroundWorker:Lcom/android/camera/ISharedBackgroundWorker;

    const-class v5, Lcom/android/camera/IViewFinder;

    invoke-virtual {p0, v5}, Lcom/android/camera/component/UIRotationManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/IViewFinder;

    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/FeatureConfig;->isInitialFakeRotationEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/android/camera/HTCCamera;->popupOpeningEvent:Lcom/android/camera/event/Event;

    new-instance v6, Lcom/android/camera/component/UIRotationManager$4;

    invoke-direct {v6, p0}, Lcom/android/camera/component/UIRotationManager$4;-><init>(Lcom/android/camera/component/UIRotationManager;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    :cond_0
    iget-object v5, v1, Lcom/android/camera/HTCCamera;->resumingEvent:Lcom/android/camera/event/Event;

    new-instance v6, Lcom/android/camera/component/UIRotationManager$5;

    invoke-direct {v6, p0}, Lcom/android/camera/component/UIRotationManager$5;-><init>(Lcom/android/camera/component/UIRotationManager;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v5, v1, Lcom/android/camera/HTCCamera;->stoppingEvent:Lcom/android/camera/event/Event;

    new-instance v6, Lcom/android/camera/component/UIRotationManager$6;

    invoke-direct {v6, p0}, Lcom/android/camera/component/UIRotationManager$6;-><init>(Lcom/android/camera/component/UIRotationManager;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v5, v1, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    new-instance v6, Lcom/android/camera/component/UIRotationManager$7;

    invoke-direct {v6, p0}, Lcom/android/camera/component/UIRotationManager$7;-><init>(Lcom/android/camera/component/UIRotationManager;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    if-eqz v3, :cond_3

    iget-object v5, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/camera/component/UIRotationManager$8;

    iget-object v7, v3, Lcom/android/camera/IViewFinder;->isPreviewSurfaceCreated:Lcom/android/camera/property/Property;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8}, Lcom/android/camera/component/UIRotationManager$8;-><init>(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v5, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/camera/component/UIRotationManager$9;

    iget-object v7, v1, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8}, Lcom/android/camera/component/UIRotationManager$9;-><init>(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/FeatureConfig;->isInitialFakeRotationEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    const-class v5, Lcom/android/camera/effect/IEffectControlUI;

    invoke-virtual {p0, v5}, Lcom/android/camera/component/UIRotationManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/IEffectControlUI;

    const-class v5, Lcom/android/camera/IZoomBar;

    invoke-virtual {p0, v5}, Lcom/android/camera/component/UIRotationManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/IZoomBar;

    iget-object v5, v1, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    new-instance v6, Lcom/android/camera/component/UIRotationManager$10;

    invoke-direct {v6, p0}, Lcom/android/camera/component/UIRotationManager$10;-><init>(Lcom/android/camera/component/UIRotationManager;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v5, v1, Lcom/android/camera/HTCCamera;->flashButtonClickedEvent:Lcom/android/camera/event/Event;

    new-instance v6, Lcom/android/camera/component/UIRotationManager$11;

    invoke-direct {v6, p0}, Lcom/android/camera/component/UIRotationManager$11;-><init>(Lcom/android/camera/component/UIRotationManager;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v5, v1, Lcom/android/camera/HTCCamera;->isoButtonClickedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v5, v6}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v5, v1, Lcom/android/camera/HTCCamera;->wbButtonClickedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v5, v6}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v5, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/camera/component/UIRotationManager$12;

    iget-object v7, v1, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8}, Lcom/android/camera/component/UIRotationManager$12;-><init>(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/camera/component/UIRotationManager$13;

    iget-object v7, v1, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8}, Lcom/android/camera/component/UIRotationManager$13;-><init>(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/camera/component/UIRotationManager$14;

    iget-object v7, v1, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v8, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/camera/component/UIRotationManager$14;-><init>(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/camera/component/UIRotationManager$15;

    iget-object v7, v1, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v8, Lcom/android/camera/TakingPictureState;->Starting:Lcom/android/camera/TakingPictureState;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/camera/component/UIRotationManager$15;-><init>(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/camera/component/UIRotationManager$16;

    iget-object v7, p0, Lcom/android/camera/IUIRotationManager;->fakeRotation:Lcom/android/camera/property/Property;

    const/4 v8, 0x0

    invoke-direct {v6, p0, v7, v8}, Lcom/android/camera/component/UIRotationManager$16;-><init>(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/component/UIRotationManager$17;

    invoke-direct {v0, p0}, Lcom/android/camera/component/UIRotationManager$17;-><init>(Lcom/android/camera/component/UIRotationManager;)V

    if-eqz v2, :cond_1

    iget-object v5, v2, Lcom/android/camera/effect/IEffectControlUI;->effectControlBarTrackingStartedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v5, v0}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    :cond_1
    if-eqz v4, :cond_2

    iget-object v5, v4, Lcom/android/camera/IZoomBar;->zoomBarTrackingStartedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v5, v0}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/component/UIRotationManager;->startOrientationListener()V

    return-void

    :cond_3
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "initializeOverride() - No IViewFinder interface"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public lockRotation(Ljava/lang/String;Lcom/android/camera/rotate/UIRotation;)Lcom/android/camera/Handle;
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation(\'"

    const-string v3, "\', "

    const-string v5, ")"

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->threadAccessCheck()V

    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation() - Component is not running"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    new-instance v6, Lcom/android/camera/component/UIRotationManager$LockHandle;

    invoke-direct {v6, p1}, Lcom/android/camera/component/UIRotationManager$LockHandle;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation() - New handle : \'"

    const-string v3, "\' ["

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation() - Handle count : "

    iget-object v2, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v7, :cond_0

    iget-object v0, p0, Lcom/android/camera/IUIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/IUIRotationManager;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraThread;->setCaptureRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0
.end method

.method public unlockRotation(Lcom/android/camera/Handle;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->threadAccessCheck()V

    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Component is not running"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Null handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/android/camera/component/UIRotationManager$LockHandle;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Invalid handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation(\'"

    iget-object v2, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\' ["

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "])"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Invalid handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Handle count : "

    iget-object v2, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/IUIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-direct {p0, v0}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    invoke-static {v0}, Lcom/android/camera/rotate/UIRotation;->fromDeviceOrientation(I)Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V

    goto/16 :goto_0
.end method
