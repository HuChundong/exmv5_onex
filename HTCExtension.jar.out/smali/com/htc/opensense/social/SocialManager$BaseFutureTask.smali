.class abstract Lcom/htc/opensense/social/SocialManager$BaseFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "SocialManager.java"

# interfaces
.implements Lcom/htc/opensense/social/SocialManagerFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/social/SocialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseFutureTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/social/SocialManager$BaseFutureTask$Response;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TT;>;",
        "Lcom/htc/opensense/social/SocialManagerFuture",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final mCallback:Lcom/htc/opensense/social/SocialManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/opensense/social/SocialManagerCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field public final mResponse:Lcom/htc/opensense/social/ISocialManagerResponse;

.field final synthetic this$0:Lcom/htc/opensense/social/SocialManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/social/SocialManager;Landroid/os/Handler;Lcom/htc/opensense/social/SocialManagerCallback;)V
    .locals 1
    .parameter
    .parameter "handler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/htc/opensense/social/SocialManagerCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 506
    .local p0, this:Lcom/htc/opensense/social/SocialManager$BaseFutureTask;,"Lcom/htc/opensense/social/SocialManager$BaseFutureTask<TT;>;"
    .local p3, callback:Lcom/htc/opensense/social/SocialManagerCallback;,"Lcom/htc/opensense/social/SocialManagerCallback<TT;>;"
    iput-object p1, p0, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->this$0:Lcom/htc/opensense/social/SocialManager;

    .line 507
    new-instance v0, Lcom/htc/opensense/social/SocialManager$BaseFutureTask$1;

    invoke-direct {v0, p1}, Lcom/htc/opensense/social/SocialManager$BaseFutureTask$1;-><init>(Lcom/htc/opensense/social/SocialManager;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 514
    iput-object p2, p0, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->mHandler:Landroid/os/Handler;

    .line 515
    iput-object p3, p0, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->mCallback:Lcom/htc/opensense/social/SocialManagerCallback;

    .line 516
    new-instance v0, Lcom/htc/opensense/social/SocialManager$BaseFutureTask$Response;

    invoke-direct {v0, p0}, Lcom/htc/opensense/social/SocialManager$BaseFutureTask$Response;-><init>(Lcom/htc/opensense/social/SocialManager$BaseFutureTask;)V

    iput-object v0, p0, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->mResponse:Lcom/htc/opensense/social/ISocialManagerResponse;

    .line 517
    return-void
.end method

.method static synthetic access$300(Lcom/htc/opensense/social/SocialManager$BaseFutureTask;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 496
    invoke-virtual {p0, p1}, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/opensense/social/SocialManager$BaseFutureTask;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 496
    invoke-virtual {p0, p1}, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Lcom/htc/opensense/social/PluginException;
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/opensense/social/SocialManager$BaseFutureTask;,"Lcom/htc/opensense/social/SocialManager$BaseFutureTask<TT;>;"
    const/4 v4, 0x1

    .line 581
    invoke-virtual {p0}, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 582
    iget-object v2, p0, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->this$0:Lcom/htc/opensense/social/SocialManager;

    #calls: Lcom/htc/opensense/social/SocialManager;->ensureNotOnMainThread()V
    invoke-static {v2}, Lcom/htc/opensense/social/SocialManager;->access$200(Lcom/htc/opensense/social/SocialManager;)V

    .line 585
    :cond_0
    if-nez p1, :cond_1

    .line 586
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 612
    :goto_0
    invoke-virtual {p0, v4}, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->cancel(Z)Z

    .line 588
    return-object v2

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    :try_start_2
    invoke-virtual {p0, v2, v3, p2}, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto :goto_0

    .line 596
    :catch_0
    move-exception v1

    .line 597
    .local v1, e:Ljava/util/concurrent/ExecutionException;
    :try_start_3
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 598
    .local v0, cause:Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_2

    .line 599
    check-cast v0, Ljava/io/IOException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 612
    .end local v1           #e:Ljava/util/concurrent/ExecutionException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v4}, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->cancel(Z)Z

    throw v2

    .line 600
    .restart local v0       #cause:Ljava/lang/Throwable;
    .restart local v1       #e:Ljava/util/concurrent/ExecutionException;
    :cond_2
    :try_start_4
    instance-of v2, v0, Ljava/lang/UnsupportedOperationException;

    if-eqz v2, :cond_3

    .line 601
    new-instance v2, Lcom/htc/opensense/social/PluginException;

    invoke-direct {v2, v0}, Lcom/htc/opensense/social/PluginException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 602
    :cond_3
    instance-of v2, v0, Lcom/htc/opensense/social/PluginException;

    if-eqz v2, :cond_4

    .line 603
    check-cast v0, Lcom/htc/opensense/social/PluginException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 604
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_4
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_5

    .line 605
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 606
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_5
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_6

    .line 607
    check-cast v0, Ljava/lang/Error;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 609
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 594
    .end local v0           #cause:Ljava/lang/Throwable;
    .end local v1           #e:Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v2

    .line 612
    :goto_1
    invoke-virtual {p0, v4}, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->cancel(Z)Z

    .line 614
    new-instance v2, Landroid/accounts/OperationCanceledException;

    invoke-direct {v2}, Landroid/accounts/OperationCanceledException;-><init>()V

    throw v2

    .line 594
    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_1

    .line 592
    :catch_4
    move-exception v2

    goto :goto_1

    :catch_5
    move-exception v2

    goto :goto_1

    :catch_6
    move-exception v2

    goto :goto_1

    .line 590
    :catch_7
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public abstract bundleToResult(Landroid/os/Bundle;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/PluginException;
        }
    .end annotation
.end method

.method public abstract doWork()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected done()V
    .locals 1

    .prologue
    .line 567
    .local p0, this:Lcom/htc/opensense/social/SocialManager$BaseFutureTask;,"Lcom/htc/opensense/social/SocialManager$BaseFutureTask<TT;>;"
    iget-object v0, p0, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->mCallback:Lcom/htc/opensense/social/SocialManagerCallback;

    if-eqz v0, :cond_0

    .line 568
    new-instance v0, Lcom/htc/opensense/social/SocialManager$BaseFutureTask$2;

    invoke-direct {v0, p0}, Lcom/htc/opensense/social/SocialManager$BaseFutureTask$2;-><init>(Lcom/htc/opensense/social/SocialManager$BaseFutureTask;)V

    invoke-virtual {p0, v0}, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->postRunnableToHandler(Ljava/lang/Runnable;)V

    .line 577
    :cond_0
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Lcom/htc/opensense/social/PluginException;
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/opensense/social/SocialManager$BaseFutureTask;,"Lcom/htc/opensense/social/SocialManager$BaseFutureTask<TT;>;"
    const/4 v0, 0x0

    .line 624
    invoke-direct {p0, v0, v0}, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Lcom/htc/opensense/social/PluginException;
        }
    .end annotation

    .prologue
    .line 630
    .local p0, this:Lcom/htc/opensense/social/SocialManager$BaseFutureTask;,"Lcom/htc/opensense/social/SocialManager$BaseFutureTask<TT;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected postRunnableToHandler(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 536
    .local p0, this:Lcom/htc/opensense/social/SocialManager$BaseFutureTask;,"Lcom/htc/opensense/social/SocialManager$BaseFutureTask<TT;>;"
    iget-object v1, p0, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->this$0:Lcom/htc/opensense/social/SocialManager;

    #getter for: Lcom/htc/opensense/social/SocialManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/opensense/social/SocialManager;->access$100(Lcom/htc/opensense/social/SocialManager;)Landroid/os/Handler;

    move-result-object v0

    .line 537
    .local v0, handler:Landroid/os/Handler;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 538
    return-void

    .line 536
    .end local v0           #handler:Landroid/os/Handler;
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public start()Lcom/htc/opensense/social/SocialManager$BaseFutureTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/opensense/social/SocialManager$BaseFutureTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 545
    .local p0, this:Lcom/htc/opensense/social/SocialManager$BaseFutureTask;,"Lcom/htc/opensense/social/SocialManager$BaseFutureTask<TT;>;"
    invoke-virtual {p0}, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->startTask()V

    .line 546
    return-object p0
.end method

.method protected startTask()V
    .locals 1

    .prologue
    .line 555
    .local p0, this:Lcom/htc/opensense/social/SocialManager$BaseFutureTask;,"Lcom/htc/opensense/social/SocialManager$BaseFutureTask<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->doWork()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :goto_0
    return-void

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
