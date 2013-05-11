.class Lcom/android/camera/CameraThread$12;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread;->startVideoRecording()Lcom/android/camera/CaptureHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;

.field final synthetic val$handle:Lcom/android/camera/CaptureHandle;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread$12;->this$0:Lcom/android/camera/CameraThread;

    iput-object p2, p0, Lcom/android/camera/CameraThread$12;->val$handle:Lcom/android/camera/CaptureHandle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/CameraThread$12;->this$0:Lcom/android/camera/CameraThread;

    iget-object v1, p0, Lcom/android/camera/CameraThread$12;->val$handle:Lcom/android/camera/CaptureHandle;

    const/4 v2, 0x0

    #calls: Lcom/android/camera/CameraThread;->startVideoRecordingInternal(Lcom/android/camera/CaptureHandle;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/camera/CameraThread;->access$800(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;Z)V

    return-void
.end method
