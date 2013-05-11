.class public Lcom/android/camera/CameraPreviewEventArgs;
.super Lcom/android/camera/event/EventArgs;
.source "CameraPreviewEventArgs.java"


# instance fields
.field public final handle:Lcom/android/camera/Handle;

.field public final startResult:Lcom/android/camera/CameraPreviewStartResult;


# direct methods
.method public constructor <init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraPreviewStartResult;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    iput-object p1, p0, Lcom/android/camera/CameraPreviewEventArgs;->handle:Lcom/android/camera/Handle;

    iput-object p2, p0, Lcom/android/camera/CameraPreviewEventArgs;->startResult:Lcom/android/camera/CameraPreviewStartResult;

    return-void
.end method
