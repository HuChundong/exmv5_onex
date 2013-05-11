.class final Lcom/android/camera/component/RotateDialogManager;
.super Lcom/android/camera/IRotateDialogManager;
.source "RotateDialogManager.java"


# static fields
.field static final NAME:Ljava/lang/String; = "Rotate Dialog Manager"


# instance fields
.field private final mDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private m_CurrentDialogHandle:Lcom/android/camera/Handle;

.field private m_Dialog:Landroid/app/Dialog;

.field private m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;


# direct methods
.method protected constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const-string v0, "Rotate Dialog Manager"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/IRotateDialogManager;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V

    new-instance v0, Lcom/android/camera/component/RotateDialogManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/RotateDialogManager$1;-><init>(Lcom/android/camera/component/RotateDialogManager;)V

    iput-object v0, p0, Lcom/android/camera/component/RotateDialogManager;->mDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/RotateDialogManager;)Lcom/android/camera/Handle;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/RotateDialogManager;->m_CurrentDialogHandle:Lcom/android/camera/Handle;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/component/RotateDialogManager;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/RotateDialogManager;->m_CurrentDialogHandle:Lcom/android/camera/Handle;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/component/RotateDialogManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/RotateDialogManager;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/component/RotateDialogManager;Lcom/android/camera/rotate/RotateRelativeLayout;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/component/RotateDialogManager;Lcom/android/camera/Handle;Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/component/RotateDialogManager;->showDialog(Lcom/android/camera/Handle;Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/RotateDialogManager;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/RotateDialogManager;->m_Dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/component/RotateDialogManager;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/RotateDialogManager;->m_Dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private rotateDialog(Lcom/android/camera/rotate/UIRotation;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget v1, p1, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    const/16 v2, 0x190

    new-instance v3, Lcom/android/camera/component/RotateDialogManager$3;

    invoke-direct {v3, p0, p1}, Lcom/android/camera/component/RotateDialogManager$3;-><init>(Lcom/android/camera/component/RotateDialogManager;Lcom/android/camera/rotate/UIRotation;)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/AnimationManager;->showAlphaRotateAnimation(Landroid/view/View;IILcom/android/camera/AnimationManager$AlphaRotateAnimationCallback;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0
.end method

.method private showDialog(Lcom/android/camera/Handle;Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)V
    .locals 6

    const/4 v5, -0x1

    invoke-virtual {p0}, Lcom/android/camera/component/RotateDialogManager;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "showDialog() - Component is not running"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "showDialog() - Handle : "

    invoke-static {v3, v4, p1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/camera/component/RotateDialogManager;->m_CurrentDialogHandle:Lcom/android/camera/Handle;

    invoke-virtual {p0, v3}, Lcom/android/camera/component/RotateDialogManager;->hideDialog(Lcom/android/camera/Handle;)V

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    new-instance v3, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0}, Lcom/android/camera/component/RotateDialogManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v3, 0x1020002

    invoke-virtual {p2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "showDialog(), child is null"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/android/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v3, v0, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0}, Lcom/android/camera/component/RotateDialogManager;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    if-eqz p4, :cond_2

    iget-object v3, p0, Lcom/android/camera/component/RotateDialogManager;->mDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_2
    new-instance v3, Lcom/android/camera/component/RotateDialogManager$5;

    invoke-direct {v3, p0, p3}, Lcom/android/camera/component/RotateDialogManager$5;-><init>(Lcom/android/camera/component/RotateDialogManager;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p2, p0, Lcom/android/camera/component/RotateDialogManager;->m_Dialog:Landroid/app/Dialog;

    iput-object p1, p0, Lcom/android/camera/component/RotateDialogManager;->m_CurrentDialogHandle:Lcom/android/camera/Handle;

    iget-object v3, p0, Lcom/android/camera/IRotateDialogManager;->hasDialog:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/RotateDialogManager;->m_CurrentDialogHandle:Lcom/android/camera/Handle;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/RotateDialogManager;->hideDialog(Lcom/android/camera/Handle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-super {p0}, Lcom/android/camera/IRotateDialogManager;->deinitializeOverride()V

    return-void
.end method

.method public hideDialog(Lcom/android/camera/Handle;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "hideDialog() - Null handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/RotateDialogManager;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "hideDialog() - Called from another thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/component/RotateDialogManager$6;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/component/RotateDialogManager$6;-><init>(Lcom/android/camera/component/RotateDialogManager;Lcom/android/camera/Handle;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/component/RotateDialogManager;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "hideDialog() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/component/RotateDialogManager;->m_CurrentDialogHandle:Lcom/android/camera/Handle;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/RotateDialogManager;->m_Dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/RotateDialogManager;->m_Dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :cond_3
    iput-object v2, p0, Lcom/android/camera/component/RotateDialogManager;->m_CurrentDialogHandle:Lcom/android/camera/Handle;

    iput-object v2, p0, Lcom/android/camera/component/RotateDialogManager;->m_DialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/component/RotateDialogManager;->m_Dialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/camera/IRotateDialogManager;->hasDialog:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected initializeOverride()V
    .locals 5

    invoke-super {p0}, Lcom/android/camera/IRotateDialogManager;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/RotateDialogManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/RotateDialogManager$2;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/RotateDialogManager$2;-><init>(Lcom/android/camera/component/RotateDialogManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onEnteringFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/RotateDialogManager;->rotateDialog(Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method protected onExitingFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/camera/component/RotateDialogManager;->rotateDialog(Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method protected onUIRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/camera/component/RotateDialogManager;->rotateDialog(Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method public showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)Lcom/android/camera/Handle;
    .locals 6

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "showDialog(), dialog is null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/android/camera/SessionHandle;

    const-string v0, "RotateDialog"

    invoke-direct {v2, v0}, Lcom/android/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "showDialog() - Create handle : "

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/component/RotateDialogManager;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/camera/component/RotateDialogManager;->showDialog(Lcom/android/camera/Handle;Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "showDialog() - Called from another thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/component/RotateDialogManager$4;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/RotateDialogManager$4;-><init>(Lcom/android/camera/component/RotateDialogManager;Lcom/android/camera/SessionHandle;Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)V

    invoke-virtual {p0, v0}, Lcom/android/camera/component/RotateDialogManager;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
