.class public interface abstract Lcom/android/camera/IPhotoCaptureHandler;
.super Ljava/lang/Object;
.source "IPhotoCaptureHandler.java"


# static fields
.field public static final TIMEOUT_JPEG_CALLBACK:J = 0x2710L


# virtual methods
.method public abstract cancelTakingPicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract takePicture(Lcom/android/camera/CaptureHandle;Lcom/android/camera/CameraController;Landroid/hardware/Camera;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
