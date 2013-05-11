.class public final Lcom/android/camera/component/ZoomBar;
.super Lcom/android/camera/IZoomBar;
.source "ZoomBar.java"


# static fields
.field private static final MSG_CHANGE_ZOOM:I = 0x2712

.field private static final MSG_SHOW_ZOOM_BAR:I = 0x2713

.field private static final MSG_ZOOM_RANGE_CHANGED:I = 0x2711

.field public static final NAME:Ljava/lang/String; = "Zoom Bar"


# instance fields
.field private m_HTCCamera:Lcom/android/camera/HTCCamera;

.field private m_IsUpdatingZoom:Z

.field private m_ZoomBar:Landroid/widget/SeekBar;

.field private m_ZoomBarContainer:Landroid/view/View;

.field private m_ZoomInButton:Landroid/view/View;

.field private m_ZoomOutButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const-string v0, "Zoom Bar"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/IZoomBar;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ZoomBar;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/ZoomBar;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/ZoomBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/ZoomBar;->m_IsUpdatingZoom:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/component/ZoomBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/ZoomBar;->m_IsUpdatingZoom:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/component/ZoomBar;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->cancelAutoFocus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/ZoomBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->syncFromCurrentZoom()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/component/ZoomBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->hideZoomBar()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/component/ZoomBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->showZoomBar()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/component/ZoomBar;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomInButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/ZoomBar;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomOutButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/component/ZoomBar;)Lcom/android/camera/HTCCamera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method private cancelAutoFocus()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getFocusingState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    :cond_0
    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hideZoomBar()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/camera/component/ZoomBar;->showUI(Landroid/view/View;ZZ)V

    :cond_0
    const/16 v0, 0x2713

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ZoomBar;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/IZoomBar;->zoomBarState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private showZoomBar()V
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isZoomLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->syncFromCurrentZoom()V

    iget-object v1, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    invoke-virtual {p0, v1, v2, v2}, Lcom/android/camera/component/ZoomBar;->showUI(Landroid/view/View;ZZ)V

    const/16 v1, 0x2713

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ZoomBar;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/camera/IZoomBar;->zoomBarState:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private syncFromCurrentZoom()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "syncFromCurrentZoom()"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->zoomRange:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Range;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/component/ZoomBar;->m_IsUpdatingZoom:Z

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncFromCurrentZoom() - ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    iget-object v2, v1, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v1, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v2, v4, v2

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->zoomValue:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_0
    iput-boolean v5, p0, Lcom/android/camera/component/ZoomBar;->m_IsUpdatingZoom:Z

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "syncFromCurrentZoom() - No zoom range"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/IZoomBar;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->hasDialog:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-ne v1, v2, :cond_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->cancelAutoFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->showZoomBar()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->showZoomBar()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->syncFromCurrentZoom()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 8

    const/4 v7, 0x0

    invoke-super {p0}, Lcom/android/camera/IZoomBar;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v4

    const v5, 0x7f080171

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    const v5, 0x7f080173

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    const v5, 0x7f080174

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomInButton:Landroid/view/View;

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    const v5, 0x7f080172

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomOutButton:Landroid/view/View;

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    const v5, 0x7f080175

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isTablet()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    new-instance v4, Lcom/android/camera/component/ZoomBar$1;

    invoke-direct {v4, p0}, Lcom/android/camera/component/ZoomBar$1;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isTablet()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v5, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    :goto_1
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->syncFromCurrentZoom()V

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    new-instance v5, Lcom/android/camera/component/ZoomBar$2;

    invoke-direct {v5, p0}, Lcom/android/camera/component/ZoomBar$2;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-static {}, Lcom/android/camera/FeatureConfig;->canChangeZoomByVolumeKeys()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->keyDownEvent:Lcom/android/camera/event/Event;

    new-instance v5, Lcom/android/camera/component/ZoomBar$3;

    invoke-direct {v5, p0}, Lcom/android/camera/component/ZoomBar$3;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    :cond_0
    iget-object v4, v0, Lcom/android/camera/HTCCamera;->restartingCameraEvent:Lcom/android/camera/event/Event;

    new-instance v5, Lcom/android/camera/component/ZoomBar$4;

    invoke-direct {v5, p0}, Lcom/android/camera/component/ZoomBar$4;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    new-instance v2, Lcom/android/camera/component/ZoomBar$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ZoomBar$5;-><init>(Lcom/android/camera/component/ZoomBar;)V

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v4, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v4, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/android/camera/property/Property;

    new-instance v5, Lcom/android/camera/component/ZoomBar$6;

    invoke-direct {v5, p0}, Lcom/android/camera/component/ZoomBar$6;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    new-instance v5, Lcom/android/camera/component/ZoomBar$7;

    invoke-direct {v5, p0}, Lcom/android/camera/component/ZoomBar$7;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v4, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/camera/component/ZoomBar$8;

    iget-object v6, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7}, Lcom/android/camera/component/ZoomBar$8;-><init>(Lcom/android/camera/component/ZoomBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v5, Lcom/android/camera/component/ZoomBar$9;

    invoke-direct {v5, p0}, Lcom/android/camera/component/ZoomBar$9;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    new-instance v5, Lcom/android/camera/component/ZoomBar$10;

    invoke-direct {v5, p0}, Lcom/android/camera/component/ZoomBar$10;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->isZoomLocked:Lcom/android/camera/property/Property;

    new-instance v5, Lcom/android/camera/component/ZoomBar$11;

    invoke-direct {v5, p0}, Lcom/android/camera/component/ZoomBar$11;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->zoomValue:Lcom/android/camera/property/Property;

    new-instance v5, Lcom/android/camera/component/ZoomBar$12;

    invoke-direct {v5, p0}, Lcom/android/camera/component/ZoomBar$12;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->zoomRange:Lcom/android/camera/property/Property;

    new-instance v5, Lcom/android/camera/component/ZoomBar$13;

    invoke-direct {v5, p0}, Lcom/android/camera/component/ZoomBar$13;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v4, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/camera/component/ZoomBar$14;

    iget-object v6, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    invoke-direct {v5, p0, v6, v7}, Lcom/android/camera/component/ZoomBar$14;-><init>(Lcom/android/camera/component/ZoomBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    sget-object v4, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v5, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto/16 :goto_1
.end method

.method protected onEnteringFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomInButton:Landroid/view/View;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/component/ZoomBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;I)V

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomOutButton:Landroid/view/View;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/component/ZoomBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;I)V

    return-void
.end method

.method protected onExitingFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomInButton:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/component/ZoomBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomOutButton:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/component/ZoomBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method protected onUIRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomInButton:Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/android/camera/component/ZoomBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomOutButton:Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/android/camera/component/ZoomBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method
