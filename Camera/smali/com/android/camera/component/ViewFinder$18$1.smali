.class Lcom/android/camera/component/ViewFinder$18$1;
.super Ljava/lang/Object;
.source "ViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ViewFinder$18;->onEnter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/ViewFinder$18;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ViewFinder$18;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ViewFinder$18$1;->this$1:Lcom/android/camera/component/ViewFinder$18;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder$18$1;->this$1:Lcom/android/camera/component/ViewFinder$18;

    iget-object v0, v0, Lcom/android/camera/component/ViewFinder$18;->this$0:Lcom/android/camera/component/ViewFinder;

    #calls: Lcom/android/camera/component/ViewFinder;->setupCameraThreadEventHandlers()V
    invoke-static {v0}, Lcom/android/camera/component/ViewFinder;->access$2100(Lcom/android/camera/component/ViewFinder;)V

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder$18$1;->this$1:Lcom/android/camera/component/ViewFinder$18;

    iget-object v0, v0, Lcom/android/camera/component/ViewFinder$18;->this$0:Lcom/android/camera/component/ViewFinder;

    #getter for: Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSyncRoot:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/camera/component/ViewFinder;->access$700(Lcom/android/camera/component/ViewFinder;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder$18$1;->this$1:Lcom/android/camera/component/ViewFinder$18;

    iget-object v2, v0, Lcom/android/camera/component/ViewFinder$18;->this$0:Lcom/android/camera/component/ViewFinder;

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder$18$1;->this$1:Lcom/android/camera/component/ViewFinder$18;

    iget-object v0, v0, Lcom/android/camera/component/ViewFinder$18;->this$0:Lcom/android/camera/component/ViewFinder;

    invoke-virtual {v0}, Lcom/android/camera/component/ViewFinder;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/imaging/Size;

    #setter for: Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSize:Lcom/android/camera/imaging/Size;
    invoke-static {v2, v0}, Lcom/android/camera/component/ViewFinder;->access$802(Lcom/android/camera/component/ViewFinder;Lcom/android/camera/imaging/Size;)Lcom/android/camera/imaging/Size;

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder$18$1;->this$1:Lcom/android/camera/component/ViewFinder$18;

    iget-object v0, v0, Lcom/android/camera/component/ViewFinder$18;->this$0:Lcom/android/camera/component/ViewFinder;

    #calls: Lcom/android/camera/component/ViewFinder;->setupPreviewBuffers()V
    invoke-static {v0}, Lcom/android/camera/component/ViewFinder;->access$900(Lcom/android/camera/component/ViewFinder;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
