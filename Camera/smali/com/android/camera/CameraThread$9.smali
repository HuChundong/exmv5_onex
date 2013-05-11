.class Lcom/android/camera/CameraThread$9;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread;->restartPreview(Lcom/android/camera/CameraType;)Lcom/android/camera/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;

.field final synthetic val$cameraType:Lcom/android/camera/CameraType;

.field final synthetic val$handle:Lcom/android/camera/SessionHandle;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;Lcom/android/camera/SessionHandle;Lcom/android/camera/CameraType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread$9;->this$0:Lcom/android/camera/CameraThread;

    iput-object p2, p0, Lcom/android/camera/CameraThread$9;->val$handle:Lcom/android/camera/SessionHandle;

    iput-object p3, p0, Lcom/android/camera/CameraThread$9;->val$cameraType:Lcom/android/camera/CameraType;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/CameraThread$9;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->stopPreview()V

    iget-object v0, p0, Lcom/android/camera/CameraThread$9;->this$0:Lcom/android/camera/CameraThread;

    iget-object v1, p0, Lcom/android/camera/CameraThread$9;->val$handle:Lcom/android/camera/SessionHandle;

    iget-object v2, p0, Lcom/android/camera/CameraThread$9;->val$cameraType:Lcom/android/camera/CameraType;

    #calls: Lcom/android/camera/CameraThread;->startPreviewInternal(Lcom/android/camera/Handle;Lcom/android/camera/CameraType;)Lcom/android/camera/CameraPreviewStartResult;
    invoke-static {v0, v1, v2}, Lcom/android/camera/CameraThread;->access$500(Lcom/android/camera/CameraThread;Lcom/android/camera/Handle;Lcom/android/camera/CameraType;)Lcom/android/camera/CameraPreviewStartResult;

    return-void
.end method
