.class final Lcom/android/camera/debug/OperationTimeoutController;
.super Lcom/android/camera/debug/IOperationTimeoutController;
.source "OperationTimeoutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;
    }
.end annotation


# static fields
.field private static final MSG_TIMEOUT:I = 0x2711

.field static final NAME:Ljava/lang/String; = "Operation Timeout Controller"


# instance fields
.field private final m_TimerHandles:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "Operation Timeout Controller"

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/android/camera/debug/IOperationTimeoutController;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;Z)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/debug/OperationTimeoutController;->m_TimerHandles:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/debug/OperationTimeoutController;->m_TimerHandles:Ljava/util/Collection;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/debug/OperationTimeoutController;->m_TimerHandles:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/android/camera/debug/IOperationTimeoutController;->deinitializeOverride()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 5

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/debug/IOperationTimeoutController;->handleAsyncMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;

    iget-object v2, p0, Lcom/android/camera/debug/OperationTimeoutController;->m_TimerHandles:Ljava/util/Collection;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/debug/OperationTimeoutController;->m_TimerHandles:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Timeout] Name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Timeout] Start time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;->startTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Timeout] Timeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;->timeout:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Timeout] Call-back executor : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;->callbackExecutor:Lcom/android/camera/IAsyncOperationExecutor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;->callbackExecutor:Lcom/android/camera/IAsyncOperationExecutor;

    new-instance v2, Lcom/android/camera/debug/OperationTimeoutController$1;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/debug/OperationTimeoutController$1;-><init>(Lcom/android/camera/debug/OperationTimeoutController;Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;)V

    invoke-interface {v1, v2}, Lcom/android/camera/IAsyncOperationExecutor;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "[Timeout] Cannot notify call-back by given executor"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method public startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;
    .locals 10

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "startTimer() - No name specified"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-nez p4, :cond_1

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "startTimer() - No call-back specified"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-nez p5, :cond_2

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "startTimer() - No call-back executor specified"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/debug/OperationTimeoutController;->threadAccessCheck()V

    invoke-virtual {p0}, Lcom/android/camera/debug/OperationTimeoutController;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "startTimer() - Component is not running"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/debug/OperationTimeoutController$TimerHandle;-><init>(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "startTimer() - Handle : "

    const-string v3, ", timeout : "

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/android/camera/debug/OperationTimeoutController;->m_TimerHandles:Ljava/util/Collection;

    monitor-enter v9

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/debug/OperationTimeoutController;->m_TimerHandles:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x2711

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v5, v0

    move-wide v6, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/camera/debug/OperationTimeoutController;->sendAsyncMessage(IIILjava/lang/Object;JZ)Z

    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopTimer(Lcom/android/camera/Handle;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "stopTimer() - Null handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "stopTimer() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/debug/OperationTimeoutController;->m_TimerHandles:Ljava/util/Collection;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/debug/OperationTimeoutController;->m_TimerHandles:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2711

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/debug/OperationTimeoutController;->removeAsyncMessages(ILjava/lang/Object;)V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
