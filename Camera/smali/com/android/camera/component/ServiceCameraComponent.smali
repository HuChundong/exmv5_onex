.class public abstract Lcom/android/camera/component/ServiceCameraComponent;
.super Lcom/android/camera/component/CameraCompoment;
.source "ServiceCameraComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;
    }
.end annotation


# instance fields
.field private m_WorkerThread:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;Z)V
    .locals 6

    invoke-virtual {p3}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Z)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Z)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/component/CameraCompoment;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V

    if-eqz p5, :cond_0

    new-instance v0, Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;-><init>(Lcom/android/camera/component/ServiceCameraComponent;)V

    iput-object v0, p0, Lcom/android/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    iget-object v0, p0, Lcom/android/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    invoke-virtual {v0}, Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;->start()V

    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V
    .locals 6

    invoke-virtual {p3}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ServiceCameraComponent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/ServiceCameraComponent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/ServiceCameraComponent;->notifyWorkerThreadRunning()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/ServiceCameraComponent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private notifyWorkerThreadRunning()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/ServiceCameraComponent;->onWorkerThreadRunning()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    invoke-virtual {v0}, Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    :cond_0
    invoke-super {p0}, Lcom/android/camera/component/CameraCompoment;->deinitializeOverride()V

    return-void
.end method

.method protected final getWorkerThread()Lcom/android/camera/WorkerThread;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    return-object v0
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected final hasAsyncMessages(I)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    :cond_0
    return v2
.end method

.method protected final isWorkerThreadRunning()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/WorkerThread;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onWorkerThreadRunning()V
    .locals 0

    return-void
.end method

.method protected final removeAsyncMessages(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method protected final removeAsyncMessages(ILjava/lang/Object;)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected final sendAsyncMessage(I)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/ServiceCameraComponent;->sendAsyncMessage(IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method protected final sendAsyncMessage(IIILjava/lang/Object;)Z
    .locals 8

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/ServiceCameraComponent;->sendAsyncMessage(IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method protected final sendAsyncMessage(IIILjava/lang/Object;JZ)Z
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/android/camera/component/ServiceCameraComponent$InternalWorkerThread;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    if-eqz p7, :cond_2

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    const-wide/16 v3, 0x0

    cmp-long v3, p5, v3

    if-gtz v3, :cond_3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v1, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v3

    goto :goto_0
.end method

.method protected final sendAsyncMessage(IJ)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move-wide v5, p2

    move v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/ServiceCameraComponent;->sendAsyncMessage(IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method protected final sendAsyncMessage(IZ)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/ServiceCameraComponent;->sendAsyncMessage(IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method
