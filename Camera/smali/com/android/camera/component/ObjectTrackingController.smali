.class public final Lcom/android/camera/component/ObjectTrackingController;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "ObjectTrackingController.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# static fields
.field static final MSG_EXIT_OT:I = 0x2715

.field static final MSG_LINK_UI:I = 0x2711

.field static final MSG_SET_OT_ROI:I = 0x2714

.field static final MSG_START_FACE_DETECTION:I = 0x2712

.field static final MSG_STOP_FACE_DETECTION:I = 0x2713

.field public static final NAME:Ljava/lang/String; = "Object Tracking Controller"

.field static final OBJECT_MISSING_TIME_OUT:I = 0x1388

.field static final OBJECT_MOVING_COUNTER_THRESHOLD:D = 1.0

.field static final OBJECT_MOVING_DISTANCE_THRESHOLD:D = 0.1

.field public static final PARAMETER_EXIT_OT:Ljava/lang/String; = "(-1,-1)"

.field public static final PARAMETER_FACE_OPTIONS:Ljava/lang/String; = "ola-options"

.field public static final PARAMETER_OBJECT_TRACKING_ROI_KEY:Ljava/lang/String; = "OT-point"


# instance fields
.field private final isObjectMoving:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbackTargets:[Landroid/hardware/Camera$Face;

.field private mMode:Lcom/android/camera/ObjectTrackingMode;

.field private mMovingCounter:I

.field private m_IsStarted:Z

.field private m_LastTarget:[Lcom/android/camera/ObjectTrackingInfo;

.field private m_LastTime:J

.field private m_Targets:[Lcom/android/camera/ObjectTrackingInfo;

.field private m_UI:Lcom/android/camera/component/ObjectTrackingUI;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2

    const-string v0, "Object Tracking Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    sget-object v0, Lcom/android/camera/ObjectTrackingMode;->Face:Lcom/android/camera/ObjectTrackingMode;

    iput-object v0, p0, Lcom/android/camera/component/ObjectTrackingController;->mMode:Lcom/android/camera/ObjectTrackingMode;

    const-string v0, "ObjectTrackingController.IsObjectMoving"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/ObjectTrackingController;->isObjectMoving:Lcom/android/camera/property/Property;

    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingController;->isObjectMoving:Lcom/android/camera/property/Property;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->enableLogs(I)V

    return-void
.end method

.method private containsObjects([Landroid/hardware/Camera$Face;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    array-length v3, p1

    if-ne v3, v2, :cond_2

    aget-object v3, p1, v1

    iget-object v0, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private exitObjTracking()V
    .locals 2

    const-string v0, "(-1,-1)"

    invoke-direct {p0, v0}, Lcom/android/camera/component/ObjectTrackingController;->setObjTrackingROIParameters(Ljava/lang/String;)V

    sget-object v0, Lcom/android/camera/ObjectTrackingMode;->Face:Lcom/android/camera/ObjectTrackingMode;

    iput-object v0, p0, Lcom/android/camera/component/ObjectTrackingController;->mMode:Lcom/android/camera/ObjectTrackingMode;

    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingController;->m_UI:Lcom/android/camera/component/ObjectTrackingUI;

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/ObjectTrackingController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    return-void
.end method

.method private setObjTrackingROI(Landroid/graphics/Point;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x2715

    invoke-virtual {p0, p0, v1}, Lcom/android/camera/component/ObjectTrackingController;->removeMessages(Lcom/android/camera/component/Component;I)V

    iget-object v1, p0, Lcom/android/camera/component/ObjectTrackingController;->mMode:Lcom/android/camera/ObjectTrackingMode;

    sget-object v2, Lcom/android/camera/ObjectTrackingMode;->Object:Lcom/android/camera/ObjectTrackingMode;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/ObjectTrackingController;->m_Targets:[Lcom/android/camera/ObjectTrackingInfo;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingController;->exitObjTracking()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingController;->resetMovingCounter()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/camera/ObjectTrackingMode;->Object:Lcom/android/camera/ObjectTrackingMode;

    iput-object v1, p0, Lcom/android/camera/component/ObjectTrackingController;->mMode:Lcom/android/camera/ObjectTrackingMode;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ObjectTrackingController;->setObjTrackingROIParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setObjTrackingROIParameters(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v1

    :try_start_0
    const-string v2, "OT-point"

    invoke-virtual {v1, v2, p1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/camera/CameraController;->doSetCameraParameters()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setObjTrackingROIParameters RE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startFaceDetection()V
    .locals 4

    iget-boolean v2, p0, Lcom/android/camera/component/ObjectTrackingController;->m_IsStarted:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "CameraHandler Message - setFaceDetectionListener start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingController;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    invoke-virtual {v0}, Landroid/hardware/Camera;->startFaceDetection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/component/ObjectTrackingController;->m_IsStarted:Z

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "startFaceDetection() - Fail to start face detection"

    invoke-static {v2, v3, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "startFaceDetection() - No camera device"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopFaceDetection()V
    .locals 4

    iget-boolean v2, p0, Lcom/android/camera/component/ObjectTrackingController;->m_IsStarted:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "CameraHandler Message - setFaceDetectionListener stop"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingController;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopFaceDetection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/component/ObjectTrackingController;->m_IsStarted:Z

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "stopFaceDetection() - Fail to stop face detection"

    invoke-static {v2, v3, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "stopFaceDetection() - No camera device"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public checkObjectMoving()V
    .locals 14

    iget-object v10, p0, Lcom/android/camera/component/ObjectTrackingController;->mMode:Lcom/android/camera/ObjectTrackingMode;

    sget-object v11, Lcom/android/camera/ObjectTrackingMode;->Face:Lcom/android/camera/ObjectTrackingMode;

    if-ne v10, v11, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingController;->resetMovingCounter()V

    :goto_0
    return-void

    :cond_0
    iget-wide v10, p0, Lcom/android/camera/component/ObjectTrackingController;->m_LastTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/camera/component/ObjectTrackingController;->m_LastTarget:[Lcom/android/camera/ObjectTrackingInfo;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/camera/component/ObjectTrackingController;->m_Targets:[Lcom/android/camera/ObjectTrackingInfo;

    if-nez v10, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingController;->decreaseMovingCounter()V

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/camera/component/ObjectTrackingController;->m_LastTime:J

    sub-long v6, v10, v12

    iget-object v10, p0, Lcom/android/camera/component/ObjectTrackingController;->m_Targets:[Lcom/android/camera/ObjectTrackingInfo;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    iget-object v11, p0, Lcom/android/camera/component/ObjectTrackingController;->m_LastTarget:[Lcom/android/camera/ObjectTrackingInfo;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x447a

    mul-float/2addr v10, v11

    float-to-double v0, v10

    iget-object v10, p0, Lcom/android/camera/component/ObjectTrackingController;->m_Targets:[Lcom/android/camera/ObjectTrackingInfo;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    iget-object v11, p0, Lcom/android/camera/component/ObjectTrackingController;->m_LastTarget:[Lcom/android/camera/ObjectTrackingInfo;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x447a

    mul-float/2addr v10, v11

    float-to-double v2, v10

    mul-double v10, v0, v0

    mul-double v12, v2, v2

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    long-to-double v10, v6

    div-double v8, v4, v10

    const-wide v10, 0x3fb999999999999aL

    cmpl-double v10, v8, v10

    if-lez v10, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingController;->increaseMovingCounter()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingController;->decreaseMovingCounter()V

    goto :goto_0
.end method

.method public decreaseMovingCounter()V
    .locals 2

    iget v0, p0, Lcom/android/camera/component/ObjectTrackingController;->mMovingCounter:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingController;->isObjectMoving:Lcom/android/camera/property/Property;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/component/ObjectTrackingController;->mMovingCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/component/ObjectTrackingController;->mMovingCounter:I

    goto :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->deinitializeOverride()V

    return-void
.end method

.method public getObjectTrackingMode()Lcom/android/camera/ObjectTrackingMode;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingController;->mMode:Lcom/android/camera/ObjectTrackingMode;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/CameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/component/ObjectTrackingUI;

    iput-object v0, p0, Lcom/android/camera/component/ObjectTrackingController;->m_UI:Lcom/android/camera/component/ObjectTrackingUI;

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingController;->startFaceDetection()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingController;->stopFaceDetection()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ObjectTrackingController;->setObjTrackingROI(Landroid/graphics/Point;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingController;->exitObjTracking()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public increaseMovingCounter()V
    .locals 4

    iget v0, p0, Lcom/android/camera/component/ObjectTrackingController;->mMovingCounter:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingController;->isObjectMoving:Lcom/android/camera/property/Property;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/component/ObjectTrackingController;->mMovingCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/component/ObjectTrackingController;->mMovingCounter:I

    goto :goto_0
.end method

.method protected initializeOverride()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/ObjectTrackingController;->isObjectMoving:Lcom/android/camera/property/Property;

    iget-object v2, v0, Lcom/android/camera/CameraThread;->hasMovingObjects:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraThread;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/camera/component/ObjectTrackingController;->m_LastTime:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/ObjectTrackingController;->m_LastTarget:[Lcom/android/camera/ObjectTrackingInfo;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/component/ObjectTrackingController;->mMovingCounter:I

    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 12

    const/4 v5, 0x0

    const/16 v2, 0x2715

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/camera/component/ObjectTrackingController;->mCallbackTargets:[Landroid/hardware/Camera$Face;

    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingController;->mCallbackTargets:[Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFaceDetection() - Num of CallbackTargets="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/component/ObjectTrackingController;->mCallbackTargets:[Landroid/hardware/Camera$Face;

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object v5, p0, Lcom/android/camera/component/ObjectTrackingController;->m_Targets:[Lcom/android/camera/ObjectTrackingInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingController;->mCallbackTargets:[Landroid/hardware/Camera$Face;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ObjectTrackingController;->containsObjects([Landroid/hardware/Camera$Face;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingController;->mMode:Lcom/android/camera/ObjectTrackingMode;

    sget-object v1, Lcom/android/camera/ObjectTrackingMode;->Object:Lcom/android/camera/ObjectTrackingMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/camera/component/ObjectTrackingController;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingController;->mCallbackTargets:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    new-array v0, v0, [Lcom/android/camera/ObjectTrackingInfo;

    iput-object v0, p0, Lcom/android/camera/component/ObjectTrackingController;->m_Targets:[Lcom/android/camera/ObjectTrackingInfo;

    const/4 v9, 0x0

    :goto_1
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingController;->mCallbackTargets:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-ge v9, v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingController;->m_Targets:[Lcom/android/camera/ObjectTrackingInfo;

    new-instance v1, Lcom/android/camera/ObjectTrackingInfo;

    invoke-direct {v1}, Lcom/android/camera/ObjectTrackingInfo;-><init>()V

    aput-object v1, v0, v9

    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingController;->m_Targets:[Lcom/android/camera/ObjectTrackingInfo;

    aget-object v0, v0, v9

    iget-object v1, p0, Lcom/android/camera/component/ObjectTrackingController;->mCallbackTargets:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v9

    iget-object v1, v1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-static {v1}, Lcom/android/camera/imaging/ImageUtility;->mapFromCameraArea(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingController;->m_Targets:[Lcom/android/camera/ObjectTrackingInfo;

    aget-object v0, v0, v9

    sget-object v1, Lcom/android/camera/ObjectTrackingInfoType;->Face:Lcom/android/camera/ObjectTrackingInfoType;

    iput-object v1, v0, Lcom/android/camera/ObjectTrackingInfo;->type:Lcom/android/camera/ObjectTrackingInfoType;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onFaceDetection() - mCallbackTargets == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingController;->mMode:Lcom/android/camera/ObjectTrackingMode;

    sget-object v1, Lcom/android/camera/ObjectTrackingMode;->Object:Lcom/android/camera/ObjectTrackingMode;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/camera/component/ObjectTrackingController;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    const-wide/16 v6, 0x1388

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/ObjectTrackingController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingController;->checkObjectMoving()V

    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingController;->m_Targets:[Lcom/android/camera/ObjectTrackingInfo;

    iput-object v0, p0, Lcom/android/camera/component/ObjectTrackingController;->m_LastTarget:[Lcom/android/camera/ObjectTrackingInfo;

    iput-wide v10, p0, Lcom/android/camera/component/ObjectTrackingController;->m_LastTime:J

    iget-object v1, p0, Lcom/android/camera/component/ObjectTrackingController;->m_UI:Lcom/android/camera/component/ObjectTrackingUI;

    const/16 v2, 0x2711

    iget-object v5, p0, Lcom/android/camera/component/ObjectTrackingController;->m_Targets:[Lcom/android/camera/ObjectTrackingInfo;

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ObjectTrackingController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    return-void
.end method

.method public resetMovingCounter()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/component/ObjectTrackingController;->mMovingCounter:I

    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingController;->isObjectMoving:Lcom/android/camera/property/Property;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
