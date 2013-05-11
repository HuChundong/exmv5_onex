.class public Lcom/htc/sunny/SSurfaceView$RenderThread;
.super Ljava/lang/Thread;
.source "SSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny/SSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RenderThread"
.end annotation


# instance fields
.field mFakeObj:Ljava/lang/Object;

.field private mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPause:Z

.field private mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field final synthetic this$0:Lcom/htc/sunny/SSurfaceView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny/SSurfaceView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "threadName"

    .prologue
    const/4 v1, 0x0

    .line 752
    iput-object p1, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->this$0:Lcom/htc/sunny/SSurfaceView;

    .line 753
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 741
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mFakeObj:Ljava/lang/Object;

    .line 743
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 744
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 745
    iput-boolean v1, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mPause:Z

    .line 746
    iput-boolean v1, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mStop:Z

    .line 754
    return-void
.end method


# virtual methods
.method public addOperator(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "operator"

    .prologue
    .line 864
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mStop:Z

    if-ne v0, v1, :cond_1

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 867
    monitor-enter p0

    .line 868
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 869
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pauseWorker()V
    .locals 1

    .prologue
    .line 830
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mPause:Z

    .line 831
    monitor-enter p0

    .line 832
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 833
    monitor-exit p0

    .line 834
    return-void

    .line 833
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public render()V
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-nez v0, :cond_0

    .line 887
    :goto_0
    return-void

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 879
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mFakeObj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 884
    :cond_1
    monitor-enter p0

    .line 885
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 886
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resumeWorker()V
    .locals 1

    .prologue
    .line 841
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mPause:Z

    .line 842
    monitor-enter p0

    .line 843
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 844
    monitor-exit p0

    .line 845
    return-void

    .line 844
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 762
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 765
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 766
    .local v2, runableOP:Ljava/lang/Runnable;
    const/4 v3, 0x0

    .line 767
    .local v3, runableStateOP:Ljava/lang/Runnable;
    const/4 v1, 0x0

    .line 769
    .local v1, render:Ljava/lang/Object;
    iget-boolean v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mStop:Z

    if-ne v5, v4, :cond_3

    .line 770
    const-string v4, "3DGlideMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SSurfaceView] stop work thread"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView$RenderThread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->this$0:Lcom/htc/sunny/SSurfaceView;

    invoke-virtual {v4}, Lcom/htc/sunny/SSurfaceView;->unBindSurfaceR()V

    .line 773
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->this$0:Lcom/htc/sunny/SSurfaceView;

    invoke-virtual {v4}, Lcom/htc/sunny/SSurfaceView;->destroySunnyR()V

    .line 816
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v4, :cond_1

    .line 817
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 819
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v4, :cond_2

    .line 820
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 822
    :cond_2
    const-string v4, "3DGlideMode"

    const-string v5, "[SSurfaceView] 3D Render thread exit."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    return-void

    .line 777
    :cond_3
    iget-boolean v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mPause:Z

    if-ne v5, v4, :cond_4

    .line 778
    monitor-enter p0

    .line 780
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 787
    :cond_4
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 788
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #runableOP:Ljava/lang/Runnable;
    check-cast v2, Ljava/lang/Runnable;

    .line 789
    .restart local v2       #runableOP:Ljava/lang/Runnable;
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 790
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->this$0:Lcom/htc/sunny/SSurfaceView;

    #getter for: Lcom/htc/sunny/SSurfaceView;->mIsSurfaceBinded:Z
    invoke-static {v4}, Lcom/htc/sunny/SSurfaceView;->access$500(Lcom/htc/sunny/SSurfaceView;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 791
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v1

    .line 795
    .end local v1           #render:Ljava/lang/Object;
    :cond_6
    if-nez v2, :cond_8

    if-nez v1, :cond_8

    if-nez v3, :cond_8

    .line 796
    monitor-enter p0

    .line 798
    :try_start_2
    iget-boolean v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mStop:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v5, v4, :cond_7

    .line 799
    :try_start_3
    monitor-exit p0

    goto/16 :goto_0

    .line 806
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 781
    .restart local v1       #render:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 782
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 784
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 801
    .end local v1           #render:Ljava/lang/Object;
    :cond_7
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 802
    :try_start_6
    monitor-exit p0

    goto/16 :goto_0

    .line 803
    :catch_1
    move-exception v0

    .line 804
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 806
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 809
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_8
    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 810
    :cond_9
    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 811
    :cond_a
    if-eqz v1, :cond_0

    .line 812
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->this$0:Lcom/htc/sunny/SSurfaceView;

    #getter for: Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;
    invoke-static {v4}, Lcom/htc/sunny/SSurfaceView;->access$400(Lcom/htc/sunny/SSurfaceView;)Lcom/htc/sunny/SView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunny/SView;->renderAndUpdate3D()V

    .line 813
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->this$0:Lcom/htc/sunny/SSurfaceView;

    invoke-virtual {v4}, Lcom/htc/sunny/SSurfaceView;->render3D()V

    goto/16 :goto_0
.end method

.method public stopWorker()V
    .locals 2

    .prologue
    .line 852
    monitor-enter p0

    .line 853
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mStop:Z

    .line 854
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mFakeObj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 855
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 856
    monitor-exit p0

    .line 857
    return-void

    .line 856
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
