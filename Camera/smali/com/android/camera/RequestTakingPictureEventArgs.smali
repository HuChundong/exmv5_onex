.class public Lcom/android/camera/RequestTakingPictureEventArgs;
.super Lcom/android/camera/event/SingleHandlerEventArgs;
.source "RequestTakingPictureEventArgs.java"


# instance fields
.field public final camera:Landroid/hardware/Camera;

.field public final cameraController:Lcom/android/camera/CameraController;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Lcom/android/camera/CameraController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/event/SingleHandlerEventArgs;-><init>()V

    iput-object p1, p0, Lcom/android/camera/RequestTakingPictureEventArgs;->camera:Landroid/hardware/Camera;

    iput-object p2, p0, Lcom/android/camera/RequestTakingPictureEventArgs;->cameraController:Lcom/android/camera/CameraController;

    return-void
.end method
