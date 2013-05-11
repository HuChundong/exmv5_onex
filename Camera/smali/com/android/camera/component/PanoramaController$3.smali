.class Lcom/android/camera/component/PanoramaController$3;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/PanoramaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PanoramaController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Lcom/android/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stitch timeout"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$500(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/CaptureHandle;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/android/camera/component/PanoramaController;->onStitchCompleted(Lcom/android/camera/CaptureHandle;[B)V
    invoke-static {v0, v1, v2}, Lcom/android/camera/component/PanoramaController;->access$600(Lcom/android/camera/component/PanoramaController;Lcom/android/camera/CaptureHandle;[B)V

    return-void
.end method
