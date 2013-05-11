.class final Lcom/android/camera/component/SharedBackgroundWorker;
.super Lcom/android/camera/ISharedBackgroundWorker;
.source "SharedBackgroundWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/SharedBackgroundWorker$TaskHandle;
    }
.end annotation


# static fields
.field private static final MSG_EXECUTE_TASK:I = 0x2711

.field static final NAME:Ljava/lang/String; = "Shared Background Worker"


# instance fields
.field private final m_PendingTasks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/camera/component/SharedBackgroundWorker$TaskHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "Shared Background Worker"

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/android/camera/ISharedBackgroundWorker;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;Z)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/SharedBackgroundWorker;->m_PendingTasks:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "Shared Background Worker"

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/android/camera/ISharedBackgroundWorker;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/SharedBackgroundWorker;->m_PendingTasks:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public cancelTask(Lcom/android/camera/Handle;)Z
    .locals 4

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "cancelTask() - Null handle"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/SharedBackgroundWorker;->getWorkerThread()Lcom/android/camera/WorkerThread;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/camera/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    const/16 v2, 0x2711

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_1
    iget-object v3, p0, Lcom/android/camera/component/SharedBackgroundWorker;->m_PendingTasks:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/component/SharedBackgroundWorker;->m_PendingTasks:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public enqueueTask(Ljava/lang/Runnable;)Lcom/android/camera/Handle;
    .locals 5

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "enqueueTask() - Null callback"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/component/SharedBackgroundWorker$TaskHandle;

    invoke-direct {v0, p1}, Lcom/android/camera/component/SharedBackgroundWorker$TaskHandle;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "enqueueTask() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/camera/component/SharedBackgroundWorker;->m_PendingTasks:Ljava/util/HashSet;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/component/SharedBackgroundWorker;->m_PendingTasks:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/camera/component/SharedBackgroundWorker;->isWorkerThreadRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x2711

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4, v0}, Lcom/android/camera/component/SharedBackgroundWorker;->sendAsyncMessage(IIILjava/lang/Object;)Z

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 5

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/ISharedBackgroundWorker;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/component/SharedBackgroundWorker$TaskHandle;

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Execute task, handle : "

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/camera/component/SharedBackgroundWorker;->m_PendingTasks:Ljava/util/HashSet;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/component/SharedBackgroundWorker;->m_PendingTasks:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task is canceled, handle : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, v0, Lcom/android/camera/component/SharedBackgroundWorker$TaskHandle;->callback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected onWorkerThreadRunning()V
    .locals 6

    iget-object v3, p0, Lcom/android/camera/component/SharedBackgroundWorker;->m_PendingTasks:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/component/SharedBackgroundWorker;->m_PendingTasks:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/SharedBackgroundWorker$TaskHandle;

    const/16 v2, 0x2711

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5, v0}, Lcom/android/camera/component/SharedBackgroundWorker;->sendAsyncMessage(IIILjava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
