.class public abstract Lcom/android/camera/debug/IOperationTimeoutController;
.super Lcom/android/camera/component/ServiceCameraComponent;
.source "IOperationTimeoutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;
    }
.end annotation


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
.method public abstract startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;
.end method

.method public abstract stopTimer(Lcom/android/camera/Handle;)V
.end method
