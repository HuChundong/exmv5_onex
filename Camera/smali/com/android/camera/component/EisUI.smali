.class public final Lcom/android/camera/component/EisUI;
.super Lcom/android/camera/component/UIComponent;
.source "EisUI.java"


# static fields
.field static final MSG_LINK:I = 0x3

.field static final MSG_PHOTO_PROCESSED:I = 0x2

.field static final MSG_PROCESSING_PHOTO:I = 0x1

.field public static final NAME:Ljava/lang/String; = "EIS UI"


# instance fields
.field private m_EisController:Lcom/android/camera/component/EisController;

.field private m_IsModeEntered:Z

.field private m_ProcessingDialogHandle:Lcom/android/camera/Handle;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const-string v0, "EIS UI"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    return-void
.end method

.method private linkToController()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/component/EisUI;->m_EisController:Lcom/android/camera/component/EisController;

    if-eqz v0, :cond_1

    move v3, v6

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/EisUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-class v1, Lcom/android/camera/component/EisController;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/EisController;

    iput-object v0, p0, Lcom/android/camera/component/EisUI;->m_EisController:Lcom/android/camera/component/EisController;

    iget-object v0, p0, Lcom/android/camera/component/EisUI;->m_EisController:Lcom/android/camera/component/EisController;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/EisUI;->m_EisController:Lcom/android/camera/component/EisController;

    const/16 v2, 0x2710

    move-object v0, p0

    move v4, v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/EisUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    move v3, v6

    goto :goto_0
.end method

.method private onPhotoProcessed(Lcom/android/camera/CaptureHandle;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/component/EisUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/camera/IProcessingDialogManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/EisUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IProcessingDialogManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/EisUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/android/camera/IProcessingDialogManager;->closeProcessingDialog(Lcom/android/camera/Handle;)V

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/EisUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/EisUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/HTCCamera;->completeTakingPicture(Lcom/android/camera/CaptureHandle;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPhotoProcessed() - No IProcessingDialogManager interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPhotoProcessing(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const-class v1, Lcom/android/camera/IProcessingDialogManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/EisUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IProcessingDialogManager;

    if-eqz v0, :cond_1

    const v1, 0x7f0a004d

    invoke-virtual {v0, v1}, Lcom/android/camera/IProcessingDialogManager;->showProcessingDialog(I)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/EisUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPhotoProcessing() - No IProcessingDialogManager interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 0

    return-void
.end method


# virtual methods
.method public enterEisMode()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enterEisMode()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/component/EisUI;->m_IsModeEntered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Re-enter Eis mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Re-enter Eis mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/EisUI;->m_IsModeEntered:Z

    invoke-direct {p0}, Lcom/android/camera/component/EisUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/EisUI;->m_EisController:Lcom/android/camera/component/EisController;

    const/16 v1, 0x2711

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/EisUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enterHdrMode() - No controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public exitEisMode()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "exitEisMode()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/component/EisUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Re-exit Eis mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/EisUI;->m_IsModeEntered:Z

    invoke-direct {p0}, Lcom/android/camera/component/EisUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/EisUI;->m_EisController:Lcom/android/camera/component/EisController;

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/EisUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "exitEisMode() - No controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/component/EisUI;->linkToController()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/android/camera/CaptureHandle;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/component/EisUI;->onPhotoProcessed(Lcom/android/camera/CaptureHandle;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/component/EisUI;->onPhotoProcessing(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/component/EisController;

    iput-object v1, p0, Lcom/android/camera/component/EisUI;->m_EisController:Lcom/android/camera/component/EisController;

    iget-boolean v1, p0, Lcom/android/camera/component/EisUI;->m_IsModeEntered:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/EisUI;->m_EisController:Lcom/android/camera/component/EisController;

    const/16 v2, 0x2711

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/component/EisUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-direct {p0}, Lcom/android/camera/component/EisUI;->setupPropertyChangedCallbacks()V

    return-void
.end method
