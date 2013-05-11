.class public abstract Lcom/android/camera/IToastManager;
.super Lcom/android/camera/component/ServiceCameraComponent;
.source "IToastManager.java"


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
.method public abstract cancelToast(Lcom/android/camera/Handle;)V
.end method

.method public final showToast(I)Lcom/android/camera/Handle;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/IToastManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/IToastManager;->showToast(Ljava/lang/String;)Lcom/android/camera/Handle;

    move-result-object v0

    return-object v0
.end method

.method public abstract showToast(Ljava/lang/String;)Lcom/android/camera/Handle;
.end method
