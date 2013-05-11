.class public abstract Lcom/android/camera/IProcessingDialogManager;
.super Lcom/android/camera/component/ServiceCameraComponent;
.source "IProcessingDialogManager.java"


# static fields
.field public static final DIALOG_FLAG_CLOSE_WHEN_PAUSING:I = 0x1


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
.method public abstract closeProcessingDialog(Lcom/android/camera/Handle;)V
.end method

.method public final showProcessingDialog(I)Lcom/android/camera/Handle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/IProcessingDialogManager;->showProcessingDialog(II)Lcom/android/camera/Handle;

    move-result-object v0

    return-object v0
.end method

.method public final showProcessingDialog(II)Lcom/android/camera/Handle;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/IProcessingDialogManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/camera/IProcessingDialogManager;->showProcessingDialog(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v0

    return-object v0
.end method

.method public final showProcessingDialog(Ljava/lang/String;)Lcom/android/camera/Handle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/IProcessingDialogManager;->showProcessingDialog(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v0

    return-object v0
.end method

.method public abstract showProcessingDialog(Ljava/lang/String;I)Lcom/android/camera/Handle;
.end method
