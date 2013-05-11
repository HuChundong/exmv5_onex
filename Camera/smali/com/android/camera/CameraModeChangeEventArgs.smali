.class public Lcom/android/camera/CameraModeChangeEventArgs;
.super Lcom/android/camera/event/EventArgs;
.source "CameraModeChangeEventArgs.java"


# instance fields
.field public final handle:Lcom/android/camera/Handle;

.field public final targetMode:Lcom/android/camera/CameraMode;


# direct methods
.method public constructor <init>(Lcom/android/camera/Handle;Lcom/android/camera/CameraMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    iput-object p1, p0, Lcom/android/camera/CameraModeChangeEventArgs;->handle:Lcom/android/camera/Handle;

    iput-object p2, p0, Lcom/android/camera/CameraModeChangeEventArgs;->targetMode:Lcom/android/camera/CameraMode;

    return-void
.end method
