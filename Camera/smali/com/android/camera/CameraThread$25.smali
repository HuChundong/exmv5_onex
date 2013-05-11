.class Lcom/android/camera/CameraThread$25;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread;->takePicture(Z)Lcom/android/camera/CaptureHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;

.field final synthetic val$checkStorage:Z

.field final synthetic val$handle:Lcom/android/camera/CaptureHandle;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread$25;->this$0:Lcom/android/camera/CameraThread;

    iput-object p2, p0, Lcom/android/camera/CameraThread$25;->val$handle:Lcom/android/camera/CaptureHandle;

    iput-boolean p3, p0, Lcom/android/camera/CameraThread$25;->val$checkStorage:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/CameraThread$25;->this$0:Lcom/android/camera/CameraThread;

    iget-object v1, p0, Lcom/android/camera/CameraThread$25;->val$handle:Lcom/android/camera/CaptureHandle;

    iget-boolean v2, p0, Lcom/android/camera/CameraThread$25;->val$checkStorage:Z

    const/4 v3, 0x0

    #calls: Lcom/android/camera/CameraThread;->takePictureInternal(Lcom/android/camera/CaptureHandle;ZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraThread;->access$2800(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;ZZ)V

    return-void
.end method
