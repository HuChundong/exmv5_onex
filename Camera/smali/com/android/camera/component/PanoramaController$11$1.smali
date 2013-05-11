.class Lcom/android/camera/component/PanoramaController$11$1;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PanoramaController$11;->onPictureTaken([BLcom/scalado/camera/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/PanoramaController$11;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaController$11;[B)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaController$11$1;->this$1:Lcom/android/camera/component/PanoramaController$11;

    iput-object p2, p0, Lcom/android/camera/component/PanoramaController$11$1;->val$data:[B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$11$1;->this$1:Lcom/android/camera/component/PanoramaController$11;

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$11;->this$0:Lcom/android/camera/component/PanoramaController;

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$11$1;->this$1:Lcom/android/camera/component/PanoramaController$11;

    iget-object v1, v1, Lcom/android/camera/component/PanoramaController$11;->val$handle:Lcom/android/camera/CaptureHandle;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$11$1;->val$data:[B

    #calls: Lcom/android/camera/component/PanoramaController;->onStitchCompleted(Lcom/android/camera/CaptureHandle;[B)V
    invoke-static {v0, v1, v2}, Lcom/android/camera/component/PanoramaController;->access$600(Lcom/android/camera/component/PanoramaController;Lcom/android/camera/CaptureHandle;[B)V

    return-void
.end method
