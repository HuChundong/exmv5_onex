.class public Lcom/android/camera/CameraDeviceEventArgs;
.super Lcom/android/camera/event/EventArgs;
.source "CameraDeviceEventArgs.java"


# instance fields
.field public final camera:Landroid/hardware/Camera;

.field public final cameraController:Lcom/android/camera/CameraController;

.field public final cameraHandle:Lcom/android/camera/Handle;

.field public final openFailedReason:Lcom/android/camera/CameraOpenFailedReason;


# direct methods
.method public constructor <init>(Lcom/android/camera/Handle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/CameraDeviceEventArgs;-><init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Handle;Landroid/hardware/Camera;Lcom/android/camera/CameraController;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    iput-object p2, p0, Lcom/android/camera/CameraDeviceEventArgs;->camera:Landroid/hardware/Camera;

    iput-object p3, p0, Lcom/android/camera/CameraDeviceEventArgs;->cameraController:Lcom/android/camera/CameraController;

    iput-object p1, p0, Lcom/android/camera/CameraDeviceEventArgs;->cameraHandle:Lcom/android/camera/Handle;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraDeviceEventArgs;->openFailedReason:Lcom/android/camera/CameraOpenFailedReason;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraOpenFailedReason;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraDeviceEventArgs;->camera:Landroid/hardware/Camera;

    iput-object v0, p0, Lcom/android/camera/CameraDeviceEventArgs;->cameraController:Lcom/android/camera/CameraController;

    iput-object p1, p0, Lcom/android/camera/CameraDeviceEventArgs;->cameraHandle:Lcom/android/camera/Handle;

    iput-object p2, p0, Lcom/android/camera/CameraDeviceEventArgs;->openFailedReason:Lcom/android/camera/CameraOpenFailedReason;

    return-void
.end method
