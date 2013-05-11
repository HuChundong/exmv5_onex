.class Lcom/android/camera/CameraThread$8;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread$8;->this$0:Lcom/android/camera/CameraThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraThread$8;->this$0:Lcom/android/camera/CameraThread;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/CameraThread;->mIsShutterCallbackReceived:Z
    invoke-static {v0, v1}, Lcom/android/camera/CameraThread;->access$402(Lcom/android/camera/CameraThread;Z)Z

    iget-object v0, p0, Lcom/android/camera/CameraThread$8;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->handleCommonShutterCallback()V

    return-void
.end method
