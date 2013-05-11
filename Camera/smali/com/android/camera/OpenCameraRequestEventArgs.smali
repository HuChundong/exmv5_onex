.class public Lcom/android/camera/OpenCameraRequestEventArgs;
.super Lcom/android/camera/event/SingleHandlerEventArgs;
.source "OpenCameraRequestEventArgs.java"


# instance fields
.field public final cameraType:Lcom/android/camera/CameraType;

.field private m_Camera:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraType;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/event/SingleHandlerEventArgs;-><init>()V

    iput-object p1, p0, Lcom/android/camera/OpenCameraRequestEventArgs;->cameraType:Lcom/android/camera/CameraType;

    return-void
.end method


# virtual methods
.method public final getCamera()Landroid/hardware/Camera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/OpenCameraRequestEventArgs;->m_Camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public final setCamera(Landroid/hardware/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/OpenCameraRequestEventArgs;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lcom/android/camera/OpenCameraRequestEventArgs;->setHandled()V

    return-void
.end method
