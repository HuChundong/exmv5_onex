.class public abstract Lcom/android/camera/ISharedBackgroundWorker;
.super Lcom/android/camera/component/ServiceCameraComponent;
.source "ISharedBackgroundWorker.java"


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
.method public abstract cancelTask(Lcom/android/camera/Handle;)Z
.end method

.method public abstract enqueueTask(Ljava/lang/Runnable;)Lcom/android/camera/Handle;
.end method
