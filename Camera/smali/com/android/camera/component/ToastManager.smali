.class Lcom/android/camera/component/ToastManager;
.super Lcom/android/camera/IToastManager;
.source "ToastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/ToastManager$6;,
        Lcom/android/camera/component/ToastManager$ToastHandle;
    }
.end annotation


# static fields
.field private static final MSG_SHOW_TOAST:I = 0x2711

.field private static final MSG_TOAST_TIMEOUT:I = 0x2712

.field static final NAME:Ljava/lang/String; = "Toast Manager"

.field private static final SHOW_TOAST_DELAY:I = 0x2bc

.field private static final TOAST_TIMEOUT:I = 0x7d0


# instance fields
.field private m_CurrentHandle:Lcom/android/camera/component/ToastManager$ToastHandle;

.field private m_IsToastTimeout:Z

.field private m_Toast:Landroid/widget/Toast;

.field private m_ToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_ToastContainerRotation:Lcom/android/camera/rotate/UIRotation;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const-string v0, "Toast Manager"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/IToastManager;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V

    sget-object v0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    iput-object v0, p0, Lcom/android/camera/component/ToastManager;->m_ToastContainerRotation:Lcom/android/camera/rotate/UIRotation;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ToastManager;)Lcom/android/camera/component/ToastManager$ToastHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ToastManager;->m_CurrentHandle:Lcom/android/camera/component/ToastManager$ToastHandle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/ToastManager;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/ToastManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/ToastManager;->m_IsToastTimeout:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/ToastManager;Lcom/android/camera/component/ToastManager$ToastHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/ToastManager;->showToast(Lcom/android/camera/component/ToastManager$ToastHandle;)V

    return-void
.end method

.method private showToast(Lcom/android/camera/component/ToastManager$ToastHandle;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/ToastManager;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "showToast() - Component is not running"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v6, 0x1

    iget-object v1, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    :goto_1
    iput-object p1, p0, Lcom/android/camera/component/ToastManager;->m_CurrentHandle:Lcom/android/camera/component/ToastManager$ToastHandle;

    iput-boolean v0, p0, Lcom/android/camera/component/ToastManager;->m_IsToastTimeout:Z

    const/16 v1, 0x2712

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ToastManager;->removeMessages(I)V

    const/16 v2, 0x2711

    if-eqz v6, :cond_1

    const/16 v0, 0x2bc

    :cond_1
    int-to-long v3, v0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ToastManager;->sendMessage(Lcom/android/camera/component/Component;IJZ)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/ToastManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/component/ToastManager$ToastHandle;->message:Ljava/lang/String;

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v7

    new-instance v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0}, Lcom/android/camera/component/ToastManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/component/ToastManager;->m_ToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/android/camera/component/ToastManager;->m_ToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v7}, Lcom/android/camera/rotate/RotateRelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/android/camera/component/ToastManager;->m_ToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    goto :goto_1
.end method


# virtual methods
.method public cancelToast(Lcom/android/camera/Handle;)V
    .locals 2

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "cancelToast() - Null handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/ToastManager;->m_CurrentHandle:Lcom/android/camera/component/ToastManager$ToastHandle;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ToastManager;->m_CurrentHandle:Lcom/android/camera/component/ToastManager$ToastHandle;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ToastManager;->m_IsToastTimeout:Z

    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ToastManager;->removeMessages(I)V

    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ToastManager;->removeMessages(I)V

    goto :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    :cond_0
    invoke-super {p0}, Lcom/android/camera/IToastManager;->deinitializeOverride()V

    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/IToastManager;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ToastManager;->m_ToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/android/camera/component/ToastManager;->m_CurrentHandle:Lcom/android/camera/component/ToastManager$ToastHandle;

    iget-object v1, v1, Lcom/android/camera/component/ToastManager$ToastHandle;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ToastManager;->setToastRotation()V

    invoke-virtual {p0}, Lcom/android/camera/component/ToastManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    iput-object v0, p0, Lcom/android/camera/component/ToastManager;->m_ToastContainerRotation:Lcom/android/camera/rotate/UIRotation;

    iget-object v0, p0, Lcom/android/camera/component/ToastManager;->m_ToastContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/android/camera/component/ToastManager;->m_ToastContainerRotation:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    iget-object v0, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v2, 0x2712

    const-wide/16 v3, 0x7d0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ToastManager;->sendMessage(Lcom/android/camera/component/Component;IJZ)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iput-boolean v5, p0, Lcom/android/camera/component/ToastManager;->m_IsToastTimeout:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 6

    invoke-super {p0}, Lcom/android/camera/IToastManager;->initializeOverride()V

    const-class v2, Lcom/android/camera/IAutoFocusController;

    invoke-virtual {p0, v2}, Lcom/android/camera/component/ToastManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IAutoFocusController;

    invoke-virtual {p0}, Lcom/android/camera/component/ToastManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/camera/IAutoFocusController;->autoFocusStartingEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/ToastManager$1;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ToastManager$1;-><init>(Lcom/android/camera/component/ToastManager;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    :goto_0
    iget-object v2, v1, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/ToastManager$2;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ToastManager$2;-><init>(Lcom/android/camera/component/ToastManager;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v2, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/component/ToastManager$3;

    iget-object v4, v1, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/android/camera/component/ToastManager$3;-><init>(Lcom/android/camera/component/ToastManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/ToastManager$4;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ToastManager$4;-><init>(Lcom/android/camera/component/ToastManager;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "initializeOverride() - No IAutoFocusController interface"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setToastRotation()V
    .locals 7

    iget-object v5, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getXOffset()I

    move-result v2

    iget-object v5, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getYOffset()I

    move-result v3

    iget-object v5, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getHorizontalMargin()F

    move-result v1

    iget-object v5, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getVerticalMargin()F

    move-result v4

    sget-object v6, Lcom/android/camera/component/ToastManager$6;->$SwitchMap$com$android$camera$rotate$UIRotation:[I

    invoke-virtual {p0}, Lcom/android/camera/component/ToastManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v5}, Lcom/android/camera/rotate/UIRotation;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    const/16 v0, 0x51

    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/component/ToastManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v5}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v5

    iget-object v6, p0, Lcom/android/camera/component/ToastManager;->m_ToastContainerRotation:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v6}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v6

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v5, v0, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v5, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v5, v1, v4}, Landroid/widget/Toast;->setMargin(FF)V

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x13

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x31

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x15

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v5, v0, v3, v2}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v5, p0, Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v5, v4, v1}, Landroid/widget/Toast;->setMargin(FF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showToast(Ljava/lang/String;)Lcom/android/camera/Handle;
    .locals 3

    new-instance v0, Lcom/android/camera/component/ToastManager$ToastHandle;

    invoke-direct {v0, p1}, Lcom/android/camera/component/ToastManager$ToastHandle;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ToastManager;->isDependencyThread()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/component/ToastManager;->showToast(Lcom/android/camera/component/ToastManager$ToastHandle;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "showToast() - Called from another thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/camera/component/ToastManager$5;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/component/ToastManager$5;-><init>(Lcom/android/camera/component/ToastManager;Lcom/android/camera/component/ToastManager$ToastHandle;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ToastManager;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
