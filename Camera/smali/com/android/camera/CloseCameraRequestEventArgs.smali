.class public Lcom/android/camera/CloseCameraRequestEventArgs;
.super Lcom/android/camera/event/SingleHandlerEventArgs;
.source "CloseCameraRequestEventArgs.java"


# instance fields
.field public final camera:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/event/SingleHandlerEventArgs;-><init>()V

    iput-object p1, p0, Lcom/android/camera/CloseCameraRequestEventArgs;->camera:Landroid/hardware/Camera;

    return-void
.end method
