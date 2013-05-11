.class public abstract Lcom/android/camera/IBubbleToastManager;
.super Lcom/android/camera/component/ServiceCameraComponent;
.source "IBubbleToastManager.java"


# instance fields
.field private m_TextView:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;Z)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V

    return-void
.end method


# virtual methods
.method public abstract closeBubbleToast(Lcom/android/camera/Handle;)V
.end method

.method public final showBubbleToast(I)Lcom/android/camera/Handle;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/IBubbleToastManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/IBubbleToastManager;->showBubbleToast(Ljava/lang/String;)Lcom/android/camera/Handle;

    move-result-object v0

    return-object v0
.end method

.method public abstract showBubbleToast(Landroid/view/View;)Lcom/android/camera/Handle;
.end method

.method public final showBubbleToast(Ljava/lang/String;)Lcom/android/camera/Handle;
    .locals 3

    iget-object v0, p0, Lcom/android/camera/IBubbleToastManager;->m_TextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/IBubbleToastManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/IBubbleToastManager;->m_TextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/camera/IBubbleToastManager;->m_TextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/IBubbleToastManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    const v2, 0x7f0c0018

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/camera/IBubbleToastManager;->m_TextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/IBubbleToastManager;->m_TextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/camera/IBubbleToastManager;->m_TextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/camera/IBubbleToastManager;->showBubbleToast(Landroid/view/View;)Lcom/android/camera/Handle;

    move-result-object v0

    return-object v0
.end method
