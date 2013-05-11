.class Lcom/android/camera/CameraThread$11;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread;->stopVideoRecording(Lcom/android/camera/CaptureHandle;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;

.field final synthetic val$handle:Lcom/android/camera/CaptureHandle;

.field final synthetic val$localSemaphore:Ljava/util/concurrent/Semaphore;

.field final synthetic val$playShutterSound:Z


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;Ljava/util/concurrent/Semaphore;Lcom/android/camera/CaptureHandle;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread$11;->this$0:Lcom/android/camera/CameraThread;

    iput-object p2, p0, Lcom/android/camera/CameraThread$11;->val$localSemaphore:Ljava/util/concurrent/Semaphore;

    iput-object p3, p0, Lcom/android/camera/CameraThread$11;->val$handle:Lcom/android/camera/CaptureHandle;

    iput-boolean p4, p0, Lcom/android/camera/CameraThread$11;->val$playShutterSound:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/CameraThread$11;->val$localSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v0, p0, Lcom/android/camera/CameraThread$11;->this$0:Lcom/android/camera/CameraThread;

    iget-object v1, p0, Lcom/android/camera/CameraThread$11;->val$handle:Lcom/android/camera/CaptureHandle;

    iget-boolean v2, p0, Lcom/android/camera/CameraThread$11;->val$playShutterSound:Z

    const/4 v3, 0x0

    #calls: Lcom/android/camera/CameraThread;->stopVideoRecordingInternal(Lcom/android/camera/CaptureHandle;ZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraThread;->access$900(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;ZZ)V

    return-void
.end method
