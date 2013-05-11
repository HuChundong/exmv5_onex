.class Lcom/android/camera/component/PanoramaController$6$1;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PanoramaController$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/PanoramaController$6;

.field final synthetic val$eventArgs:Lcom/android/camera/MediaEventArgs;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaController$6;Lcom/android/camera/MediaEventArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iput-object p2, p0, Lcom/android/camera/component/PanoramaController$6$1;->val$eventArgs:Lcom/android/camera/MediaEventArgs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {v0}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mediaDeletedEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v1, v1, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$6$1;->val$eventArgs:Lcom/android/camera/MediaEventArgs;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    return-void
.end method
