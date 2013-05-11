.class public final Lcom/android/camera/component/ObjectTrackingUI;
.super Lcom/android/camera/IObjectTracker;
.source "ObjectTrackingUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/ObjectTrackingUI$9;
    }
.end annotation


# static fields
.field static final MSG_FACE_UPDATED:I = 0x2711

.field static final MSG_OT_MODE_EXITED:I = 0x2712

.field static final MSG_SET_SENSOR_FOCUS:I = 0x2713

.field public static final NAME:Ljava/lang/String; = "Object Tracking UI"

.field static final OBJECT_MOVEMENT_THRESHOLD:D = 0.25


# instance fields
.field private m_BackObjectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ObjectTrackingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_Controller:Lcom/android/camera/component/ObjectTrackingController;

.field private m_EffectManager:Lcom/android/camera/effect/IEffectManager;

.field m_FocusObject:Lcom/android/camera/ObjectTrackingInfo;

.field private m_FocusedObjIndex:I

.field private m_HasFaces:Z

.field private m_IsStarted:Z

.field m_LastfocusFaceRect:Landroid/graphics/RectF;

.field private m_OTEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 7

    const/4 v6, 0x0

    const-string v1, "Object Tracking UI"

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/IObjectTracker;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Z)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v6, v6, v6, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_LastfocusFaceRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->disableMessageLogs()V

    iget-object v0, p0, Lcom/android/camera/IObjectTracker;->detectedObjects:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_BackObjectList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->disableFakeUIRotation()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ObjectTrackingUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->stopFaceDetection()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/ObjectTrackingUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->checkFaceDetection()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/ObjectTrackingUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->disableOT()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/component/ObjectTrackingUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/ObjectTrackingUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->enableOT()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/component/ObjectTrackingUI;[Lcom/android/camera/ObjectTrackingInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/ObjectTrackingUI;->onFaceUpdated([Lcom/android/camera/ObjectTrackingInfo;)V

    return-void
.end method

.method private calculateFocusFace([Lcom/android/camera/ObjectTrackingInfo;I)I
    .locals 18

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    :goto_0
    move/from16 v0, p2

    if-ge v6, v0, :cond_0

    aget-object v12, p1, v6

    iget-object v7, v12, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v13

    mul-float v8, v12, v13

    add-float/2addr v9, v8

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    mul-float/2addr v12, v8

    add-float/2addr v10, v12

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    mul-float/2addr v12, v8

    add-float/2addr v11, v12

    add-int/lit8 v12, v6, 0x1

    int-to-short v6, v12

    goto :goto_0

    :cond_0
    div-float/2addr v10, v9

    div-float/2addr v11, v9

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    :goto_1
    move/from16 v0, p2

    if-ge v6, v0, :cond_3

    aget-object v12, p1, v6

    iget-object v7, v12, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    sub-float/2addr v12, v10

    float-to-double v12, v12

    const-wide/high16 v14, 0x4000

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    sub-float/2addr v14, v11

    float-to-double v14, v14

    const-wide/high16 v16, 0x4000

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double v1, v12, v14

    if-eqz v6, :cond_1

    cmpg-double v12, v1, v3

    if-gez v12, :cond_2

    :cond_1
    move v5, v6

    move-wide v3, v1

    :cond_2
    add-int/lit8 v12, v6, 0x1

    int-to-short v6, v12

    goto :goto_1

    :cond_3
    return v5
.end method

.method private checkFaceDetection()V
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensorFocus()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFaceDetection()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v5

    sget-object v8, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v5, v8, :cond_4

    move v1, v6

    :goto_1
    sget-object v5, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v8, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v5, v8, :cond_2

    iget-object v5, v4, Lcom/android/camera/CameraSettings;->canAutoFocus:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_2
    move v0, v6

    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v4, Lcom/android/camera/CameraSettings;->isFaceDetectionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_3
    move v2, v6

    :goto_3
    if-ne v1, v6, :cond_7

    if-ne v0, v6, :cond_7

    if-ne v2, v6, :cond_7

    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->startFaceDetection()V

    goto :goto_0

    :cond_4
    move v1, v7

    goto :goto_1

    :cond_5
    move v0, v7

    goto :goto_2

    :cond_6
    move v2, v7

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->stopFaceDetection()V

    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->disableOT()V

    goto :goto_0
.end method

.method private checkFaceMoving(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 10

    const/4 v6, 0x0

    const/high16 v9, 0x4080

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float v5, v7, v9

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float v4, v7, v9

    cmpl-float v7, v2, v5

    if-gtz v7, :cond_2

    cmpl-float v7, v3, v4

    if-gtz v7, :cond_2

    cmpl-float v7, v1, v5

    if-gtz v7, :cond_2

    cmpl-float v7, v0, v4

    if-lez v7, :cond_0

    :cond_2
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private disableOT()V
    .locals 9

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_OTEnabled:Z

    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    const/16 v2, 0x2715

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/ObjectTrackingUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "disableOT() - Cannot link with controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableOT()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_OTEnabled:Z

    return-void
.end method

.method private isObjectMoving(Lcom/android/camera/ObjectTrackingInfo;Lcom/android/camera/ObjectTrackingInfo;)Z
    .locals 12

    const/4 v8, 0x1

    const/high16 v11, 0x4000

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    iget-object v9, p2, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    iget-object v10, p1, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v0, v9

    iget-object v9, p2, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    iget-object v10, p1, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v2, v9

    iget-object v9, p1, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v9, v11

    float-to-double v6, v9

    iget-object v9, p1, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    div-float/2addr v9, v11

    float-to-double v4, v9

    const-string v9, "Object Tracking UI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dx is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", dy is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", widthThreshold is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", heightThreshold is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    cmpl-double v9, v0, v6

    if-gtz v9, :cond_0

    cmpl-double v9, v2, v4

    if-gtz v9, :cond_0

    const/4 v8, 0x0

    goto :goto_0
.end method

.method private linkToController()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    if-eqz v0, :cond_1

    move v3, v6

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-string v1, "Object Tracking Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/ObjectTrackingController;

    iput-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    iget-object v1, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    const/16 v2, 0x2711

    move v4, v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ObjectTrackingController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    move v3, v6

    goto :goto_0
.end method

.method private onFaceUpdated([Lcom/android/camera/ObjectTrackingInfo;)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/component/ObjectTrackingUI;->m_IsStarted:Z

    if-nez v13, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/IObjectTracker;->detectedObjects:Lcom/android/camera/property/Property;

    invoke-virtual {v13}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/component/ObjectTrackingUI;->m_BackObjectList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/IObjectTracker;->detectedObjects:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v13, v14, v10}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/camera/component/ObjectTrackingUI;->m_BackObjectList:Ljava/util/List;

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/IObjectTracker;->focusedObject:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/IObjectTracker;->numberOfDetectedFaces:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    invoke-virtual {v13}, Lcom/android/camera/component/ObjectTrackingController;->getObjectTrackingMode()Lcom/android/camera/ObjectTrackingMode;

    move-result-object v13

    sget-object v14, Lcom/android/camera/ObjectTrackingMode;->Object:Lcom/android/camera/ObjectTrackingMode;

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/component/ObjectTrackingUI;->m_HasFaces:Z

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v14, "No callbackTargets"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/camera/HTCCamera;->canSensorFocus()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/camera/HTCCamera;->handleSensorFocus(Z)Z

    :cond_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/camera/component/ObjectTrackingUI;->m_HasFaces:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusObject:Lcom/android/camera/ObjectTrackingInfo;

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    invoke-virtual {v13}, Lcom/android/camera/component/ObjectTrackingController;->getObjectTrackingMode()Lcom/android/camera/ObjectTrackingMode;

    move-result-object v13

    sget-object v14, Lcom/android/camera/ObjectTrackingMode;->Face:Lcom/android/camera/ObjectTrackingMode;

    if-ne v13, v14, :cond_9

    move-object/from16 v0, p1

    array-length v13, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/android/camera/component/ObjectTrackingUI;->calculateFocusFace([Lcom/android/camera/ObjectTrackingInfo;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/camera/component/ObjectTrackingUI;->m_HasFaces:Z

    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    aget-object v13, p1, v13

    iget-object v7, v13, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v13

    iget-object v13, v13, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    invoke-virtual {v13}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/camera/HTCCamera;->canFaceFocus()Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    aget-object v14, p1, v14

    iget-object v14, v14, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v14

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_7

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    aget-object v14, p1, v14

    iget-object v14, v14, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v14

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ObjectTrackingUI;->m_LastfocusFaceRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/camera/component/ObjectTrackingUI;->checkFaceMoving(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v13

    if-eqz v13, :cond_7

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v13

    float-to-double v13, v13

    const-wide/high16 v15, 0x3fd0

    cmpl-double v13, v13, v15

    if-ltz v13, :cond_a

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v13

    float-to-double v13, v13

    const-wide/high16 v15, 0x3fd0

    sub-double/2addr v13, v15

    double-to-float v4, v13

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v13

    float-to-double v13, v13

    const-wide/high16 v15, 0x3fd0

    sub-double/2addr v13, v15

    double-to-float v5, v13

    const/4 v13, 0x0

    cmpl-float v13, v4, v13

    if-eqz v13, :cond_5

    iget v13, v6, Landroid/graphics/RectF;->left:F

    const/high16 v14, 0x4000

    div-float v14, v4, v14

    add-float/2addr v13, v14

    iput v13, v6, Landroid/graphics/RectF;->left:F

    iget v13, v6, Landroid/graphics/RectF;->left:F

    float-to-double v13, v13

    const-wide/high16 v15, 0x3fd0

    add-double/2addr v13, v15

    double-to-float v13, v13

    iput v13, v6, Landroid/graphics/RectF;->right:F

    :cond_5
    const/4 v13, 0x0

    cmpl-float v13, v5, v13

    if-eqz v13, :cond_6

    iget v13, v6, Landroid/graphics/RectF;->top:F

    const/high16 v14, 0x4000

    div-float v14, v5, v14

    add-float/2addr v13, v14

    iput v13, v6, Landroid/graphics/RectF;->top:F

    iget v13, v6, Landroid/graphics/RectF;->top:F

    float-to-double v13, v13

    const-wide/high16 v15, 0x3fd0

    add-double/2addr v13, v15

    double-to-float v13, v13

    iput v13, v6, Landroid/graphics/RectF;->bottom:F

    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/ObjectTrackingUI;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v13

    if-eqz v13, :cond_c

    iget v13, v6, Landroid/graphics/RectF;->left:F

    const/high16 v14, 0x3ec0

    add-float/2addr v13, v14

    iput v13, v6, Landroid/graphics/RectF;->right:F

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v13

    iget-object v13, v13, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v13}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lcom/android/camera/effect/HdrScene;

    if-eqz v13, :cond_d

    move-object v9, v6

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v13

    sget-object v14, Lcom/android/camera/AutoFocusMode;->Face:Lcom/android/camera/AutoFocusMode;

    const/4 v15, 0x1

    new-array v15, v15, [Landroid/graphics/RectF;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/graphics/RectF;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v9, v16, v17

    invoke-virtual/range {v13 .. v16}, Lcom/android/camera/HTCCamera;->autoFocus(Lcom/android/camera/AutoFocusMode;[Landroid/graphics/RectF;[Landroid/graphics/RectF;)Z

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/camera/component/ObjectTrackingUI;->m_LastfocusFaceRect:Landroid/graphics/RectF;

    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    aget-object v13, p1, v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusObject:Lcom/android/camera/ObjectTrackingInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/IObjectTracker;->detectedObjects:Lcom/android/camera/property/Property;

    invoke-virtual {v13}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/component/ObjectTrackingUI;->m_BackObjectList:Ljava/util/List;

    const/4 v11, 0x0

    const/4 v8, 0x0

    :goto_5
    move-object/from16 v0, p1

    array-length v13, v0

    if-ge v8, v13, :cond_e

    aget-object v13, p1, v8

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v13, p1, v8

    iget-object v13, v13, Lcom/android/camera/ObjectTrackingInfo;->type:Lcom/android/camera/ObjectTrackingInfoType;

    sget-object v14, Lcom/android/camera/ObjectTrackingInfoType;->Face:Lcom/android/camera/ObjectTrackingInfoType;

    if-ne v13, v14, :cond_8

    add-int/lit8 v11, v11, 0x1

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/camera/component/ObjectTrackingUI;->m_HasFaces:Z

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v13

    float-to-double v13, v13

    const-wide/high16 v15, 0x3fc0

    cmpg-double v13, v13, v15

    if-gtz v13, :cond_6

    const-wide/high16 v13, 0x3fc0

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v15

    float-to-double v15, v15

    sub-double/2addr v13, v15

    double-to-float v4, v13

    const-wide/high16 v13, 0x3fc0

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v15

    float-to-double v15, v15

    sub-double/2addr v13, v15

    double-to-float v5, v13

    const/4 v13, 0x0

    cmpl-float v13, v4, v13

    if-eqz v13, :cond_b

    iget v13, v6, Landroid/graphics/RectF;->left:F

    const/high16 v14, 0x4000

    div-float v14, v4, v14

    sub-float/2addr v13, v14

    iput v13, v6, Landroid/graphics/RectF;->left:F

    iget v13, v6, Landroid/graphics/RectF;->left:F

    float-to-double v13, v13

    const-wide/high16 v15, 0x3fc0

    add-double/2addr v13, v15

    double-to-float v13, v13

    iput v13, v6, Landroid/graphics/RectF;->right:F

    :cond_b
    const/4 v13, 0x0

    cmpl-float v13, v5, v13

    if-eqz v13, :cond_6

    iget v13, v6, Landroid/graphics/RectF;->top:F

    const/high16 v14, 0x4000

    div-float v14, v5, v14

    sub-float/2addr v13, v14

    iput v13, v6, Landroid/graphics/RectF;->top:F

    iget v13, v6, Landroid/graphics/RectF;->top:F

    float-to-double v13, v13

    const-wide/high16 v15, 0x3fc0

    add-double/2addr v13, v15

    double-to-float v13, v13

    iput v13, v6, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    :cond_c
    iget v13, v6, Landroid/graphics/RectF;->top:F

    const/high16 v14, 0x3ec0

    add-float/2addr v13, v14

    iput v13, v6, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_3

    :cond_d
    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    float-to-double v13, v2

    const-wide/high16 v15, 0x3fc0

    sub-double/2addr v13, v15

    double-to-float v13, v13

    iput v13, v9, Landroid/graphics/RectF;->left:F

    float-to-double v13, v2

    const-wide/high16 v15, 0x3fc0

    add-double/2addr v13, v15

    double-to-float v13, v13

    iput v13, v9, Landroid/graphics/RectF;->right:F

    float-to-double v13, v3

    const-wide/high16 v15, 0x3fc0

    sub-double/2addr v13, v15

    double-to-float v13, v13

    iput v13, v9, Landroid/graphics/RectF;->top:F

    float-to-double v13, v3

    const-wide/high16 v15, 0x3fc0

    add-double/2addr v13, v15

    double-to-float v13, v13

    iput v13, v9, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/IObjectTracker;->detectedObjects:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v13, v14, v10}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/camera/component/ObjectTrackingUI;->m_BackObjectList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/IObjectTracker;->focusedObject:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusObject:Lcom/android/camera/ObjectTrackingInfo;

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/IObjectTracker;->numberOfDetectedFaces:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private onOTModeExited()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->setSensorFocus()V

    return-void
.end method

.method private setSensorFocus()V
    .locals 0

    return-void
.end method

.method private startFaceDetection()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_IsStarted:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->linkToController()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "startFaceDetection() - Cannot link with controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Send Start face detection msg"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/ObjectTrackingUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    iput-boolean v2, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_IsStarted:Z

    iget-object v0, p0, Lcom/android/camera/IObjectTracker;->isObjectDetectionEnabled:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private stopFaceDetection()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_IsStarted:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->linkToController()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "stopFaceDetection() - Cannot link with controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_Controller:Lcom/android/camera/component/ObjectTrackingController;

    const/16 v1, 0x2713

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/ObjectTrackingUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    iput-boolean v2, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_IsStarted:Z

    iget-object v0, p0, Lcom/android/camera/IObjectTracker;->isObjectDetectionEnabled:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    invoke-super {p0}, Lcom/android/camera/IObjectTracker;->deinitializeOverride()V

    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/IObjectTracker;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/android/camera/ObjectTrackingInfo;

    check-cast v0, [Lcom/android/camera/ObjectTrackingInfo;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ObjectTrackingUI;->onFaceUpdated([Lcom/android/camera/ObjectTrackingInfo;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->onOTModeExited()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/component/ObjectTrackingUI;->setSensorFocus()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 4

    invoke-super {p0}, Lcom/android/camera/IObjectTracker;->initializeOverride()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_HasFaces:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_FocusObject:Lcom/android/camera/ObjectTrackingInfo;

    const-class v2, Lcom/android/camera/effect/IEffectManager;

    invoke-virtual {p0, v2}, Lcom/android/camera/component/ObjectTrackingUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/IEffectManager;

    iput-object v2, p0, Lcom/android/camera/component/ObjectTrackingUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    const-class v2, Lcom/android/camera/effect/IEffectManager;

    invoke-virtual {p0, v2}, Lcom/android/camera/component/ObjectTrackingUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/IEffectManager;

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/ObjectTrackingUI$1;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ObjectTrackingUI$1;-><init>(Lcom/android/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->canAutoFocus:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/ObjectTrackingUI$2;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ObjectTrackingUI$2;-><init>(Lcom/android/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/ObjectTrackingUI$3;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ObjectTrackingUI$3;-><init>(Lcom/android/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->focusMode:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/ObjectTrackingUI$4;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ObjectTrackingUI$4;-><init>(Lcom/android/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/ObjectTrackingUI$5;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ObjectTrackingUI$5;-><init>(Lcom/android/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/ObjectTrackingUI$6;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ObjectTrackingUI$6;-><init>(Lcom/android/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/camera/effect/IEffectManager;->effectAppliedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/ObjectTrackingUI$7;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ObjectTrackingUI$7;-><init>(Lcom/android/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    :cond_0
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->showFocusingEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/ObjectTrackingUI$8;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ObjectTrackingUI$8;-><init>(Lcom/android/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    return-void
.end method

.method public final screenPointToLandscapePoint(IIZ)Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/component/ObjectTrackingUI;->screenPointToLandscapePoint(IIZLandroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final screenPointToLandscapePoint(IIZLandroid/graphics/Point;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getPreviewSurfaceHitRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ge p1, v1, :cond_4

    iget p1, v0, Landroid/graphics/Rect;->left:I

    :cond_2
    :goto_1
    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ge p2, v1, :cond_5

    iget p2, v0, Landroid/graphics/Rect;->top:I

    :cond_3
    :goto_2
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v1

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {p4, p2, v1}, Landroid/graphics/Point;->set(II)V

    :goto_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-le p1, v1, :cond_2

    iget p1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_5
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-le p2, v1, :cond_3

    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_6
    invoke-virtual {p4, p1, p2}, Landroid/graphics/Point;->set(II)V

    goto :goto_3
.end method
