.class public Lcom/android/camera/CaptureHandle;
.super Lcom/android/camera/SessionHandle;
.source "CaptureHandle.java"


# instance fields
.field public final cameraMode:Lcom/android/camera/CameraMode;

.field public final captureTime:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraMode;)V
    .locals 3

    const-string v0, "Capture"

    invoke-direct {p0, v0}, Lcom/android/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/CaptureHandle;->cameraMode:Lcom/android/camera/CameraMode;

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/camera/SessionHandle;->creationTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/android/camera/CaptureHandle;->captureTime:Ljava/util/Date;

    return-void
.end method
