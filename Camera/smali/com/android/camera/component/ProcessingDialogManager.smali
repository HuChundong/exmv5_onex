.class final Lcom/android/camera/component/ProcessingDialogManager;
.super Lcom/android/camera/IProcessingDialogManager;
.source "ProcessingDialogManager.java"


# static fields
.field static final NAME:Ljava/lang/String; = "Processing Dialog Manager"


# instance fields
.field private m_CloseDialogWhenPausing:Z

.field private m_CurrentDialogHandle:Lcom/android/camera/Handle;

.field private m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_DialogTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const-string v0, "Processing Dialog Manager"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/IProcessingDialogManager;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ProcessingDialogManager;)Lcom/android/camera/Handle;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ProcessingDialogManager;->m_CurrentDialogHandle:Lcom/android/camera/Handle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/ProcessingDialogManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/ProcessingDialogManager;->m_CloseDialogWhenPausing:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/ProcessingDialogManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/ProcessingDialogManager;Lcom/android/camera/Handle;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/component/ProcessingDialogManager;->showProcessingDialog(Lcom/android/camera/Handle;Ljava/lang/String;I)V

    return-void
.end method

.method private showProcessingDialog(Lcom/android/camera/Handle;Ljava/lang/String;I)V
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/ProcessingDialogManager;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "showProcessingDialog() - Component is not running"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "showProcessingDialog() - Handle : "

    invoke-static {v2, v4, p1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/component/ProcessingDialogManager;->m_CurrentDialogHandle:Lcom/android/camera/Handle;

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/component/ProcessingDialogManager;->m_CloseDialogWhenPausing:Z

    iget-object v2, p0, Lcom/android/camera/component/ProcessingDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/component/ProcessingDialogManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    const v4, 0x7f080055

    invoke-virtual {v2, v4}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/component/ProcessingDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v2, p0, Lcom/android/camera/component/ProcessingDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v4, 0x7f080056

    invoke-virtual {v2, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewStub;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    const-string v2, "com.htc.internal.R.drawable.popup_full_bright"

    invoke-static {v2}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/camera/component/ProcessingDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v4, 0x7f0800da

    invoke-virtual {v2, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/component/ProcessingDialogManager;->m_DialogTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/component/ProcessingDialogManager;->m_DialogTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/component/ProcessingDialogManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    const-string v5, "com.htc.R.style.list_primary_s"

    invoke-static {v5}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_2
    iget-object v4, p0, Lcom/android/camera/component/ProcessingDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0}, Lcom/android/camera/component/ProcessingDialogManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v4, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    iget-object v2, p0, Lcom/android/camera/component/ProcessingDialogManager;->m_DialogTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/camera/component/ProcessingDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/component/ProcessingDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/16 v6, 0x190

    invoke-static {v2, v4, v5, v3, v6}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    goto/16 :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method public closeProcessingDialog(Lcom/android/camera/Handle;)V
    .locals 5

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "closeProcessingDialog() - Null handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/ProcessingDialogManager;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "closeProcessingDialog() - Called from another thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/component/ProcessingDialogManager$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/component/ProcessingDialogManager$1;-><init>(Lcom/android/camera/component/ProcessingDialogManager;Lcom/android/camera/Handle;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ProcessingDialogManager;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "closeProcessingDialog() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/component/ProcessingDialogManager;->m_CurrentDialogHandle:Lcom/android/camera/Handle;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ProcessingDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/ProcessingDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/component/ProcessingDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x190

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ProcessingDialogManager;->m_CurrentDialogHandle:Lcom/android/camera/Handle;

    goto :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/component/ProcessingDialogManager;->m_CurrentDialogHandle:Lcom/android/camera/Handle;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ProcessingDialogManager;->closeProcessingDialog(Lcom/android/camera/Handle;)V

    iput-object v1, p0, Lcom/android/camera/component/ProcessingDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v1, p0, Lcom/android/camera/component/ProcessingDialogManager;->m_DialogTextView:Landroid/widget/TextView;

    invoke-super {p0}, Lcom/android/camera/IProcessingDialogManager;->deinitializeOverride()V

    return-void
.end method

.method protected initializeOverride()V
    .locals 5

    invoke-super {p0}, Lcom/android/camera/IProcessingDialogManager;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/ProcessingDialogManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/ProcessingDialogManager$2;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/ProcessingDialogManager$2;-><init>(Lcom/android/camera/component/ProcessingDialogManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onEnteringFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0

    invoke-virtual {p0, p2, p1}, Lcom/android/camera/component/ProcessingDialogManager;->onUIRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method protected onExitingFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/component/ProcessingDialogManager;->onUIRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method protected onUIRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ProcessingDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ProcessingDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ProcessingDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/component/ProcessingDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, p2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    :cond_0
    return-void
.end method

.method public showProcessingDialog(Ljava/lang/String;I)Lcom/android/camera/Handle;
    .locals 3

    new-instance v0, Lcom/android/camera/SessionHandle;

    const-string v1, "ProcessingDialog"

    invoke-direct {v0, v1}, Lcom/android/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "showProcessingDialog() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ProcessingDialogManager;->isDependencyThread()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/camera/component/ProcessingDialogManager;->showProcessingDialog(Lcom/android/camera/Handle;Ljava/lang/String;I)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "showProcessingDialog() - Called from another thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/camera/component/ProcessingDialogManager$3;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/camera/component/ProcessingDialogManager$3;-><init>(Lcom/android/camera/component/ProcessingDialogManager;Lcom/android/camera/SessionHandle;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ProcessingDialogManager;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
