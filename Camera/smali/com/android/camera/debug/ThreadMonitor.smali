.class public final Lcom/android/camera/debug/ThreadMonitor;
.super Ljava/lang/Object;
.source "ThreadMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/debug/ThreadMonitor$EntryRunnable;,
        Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final ENABLED:Z = false

.field private static final MONITOR_INTERVAL:I = 0xbb8

.field private static final MSG_THREAD_ACK_REQUEST:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String; = "ThreadMonitor"


# instance fields
.field private volatile m_Abort:Z

.field private final m_MonitorThread:Ljava/lang/Thread;

.field private final m_Targets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/camera/debug/ThreadMonitor;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    sget-boolean v0, Lcom/android/camera/debug/ThreadMonitor;->ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/debug/ThreadMonitor$EntryRunnable;

    invoke-direct {v1, p0}, Lcom/android/camera/debug/ThreadMonitor$EntryRunnable;-><init>(Lcom/android/camera/debug/ThreadMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/debug/ThreadMonitor;->m_MonitorThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/camera/debug/ThreadMonitor;->m_MonitorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/debug/ThreadMonitor;->m_MonitorThread:Ljava/lang/Thread;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/debug/ThreadMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/debug/ThreadMonitor;->ack()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/debug/ThreadMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/debug/ThreadMonitor;->monitorThreadEntry()V

    return-void
.end method

.method private ack()V
    .locals 8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ThreadMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ack("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") - start"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;

    iget-object v4, v1, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;->thread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v2, v4, :cond_0

    iget v4, v1, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;->pendingAcks:I

    if-lez v4, :cond_2

    iget v4, v1, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;->pendingAcks:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v1, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;->pendingAcks:I

    iget v4, v1, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;->pendingAcks:I

    const/16 v6, 0xa

    if-ge v4, v6, :cond_1

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;->ignore:Z

    :cond_1
    :goto_0
    const-string v4, "ThreadMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ack("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") - end"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    :goto_1
    return-void

    :cond_2
    const-string v4, "ThreadMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid ACK from thread ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "ThreadMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid ACK from thread ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "ThreadMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ack("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") - end"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private monitorThreadEntry()V
    .locals 10

    const-string v6, "ThreadMonitor"

    const-string v7, "***** START *****"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean v6, p0, Lcom/android/camera/debug/ThreadMonitor;->m_Abort:Z

    if-nez v6, :cond_1

    const-wide/16 v6, 0xbb8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v7, p0, Lcom/android/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_1
    iget-object v6, p0, Lcom/android/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;

    iget-object v6, v4, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;->thread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    iget-object v1, v4, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;->handler:Landroid/os/Handler;

    if-eqz v5, :cond_0

    iget v6, v4, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;->pendingAcks:I

    if-lez v6, :cond_3

    iget-boolean v6, v4, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;->ignore:Z

    if-nez v6, :cond_0

    const-string v6, "ThreadMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Thread ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] is not responding, pending ACKs = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;->pendingAcks:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/camera/debug/ThreadMonitor;->printStackTrace(Ljava/lang/Thread;)V

    iget v6, v4, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;->pendingAcks:I

    const/16 v8, 0xa

    if-ne v6, v8, :cond_3

    const-string v6, "ThreadMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Too many pending ACKs, cancel checking thread ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;->ignore:Z

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    :catch_0
    move-exception v0

    iget-boolean v6, p0, Lcom/android/camera/debug/ThreadMonitor;->m_Abort:Z

    if-eqz v6, :cond_2

    :cond_1
    iget-object v7, p0, Lcom/android/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_2
    iget-object v6, p0, Lcom/android/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v6, "ThreadMonitor"

    const-string v7, "***** END *****"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v6, "ThreadMonitor"

    const-string v7, "***** INTERRUPTED *****"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const v6, 0x7fffffff

    :try_start_3
    invoke-virtual {v1, v6, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v6, "ThreadMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot create message for thread ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "ThreadMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot send message to thread ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    iget v6, v4, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;->pendingAcks:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;->pendingAcks:I

    goto/16 :goto_1

    :cond_6
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_1
    move-exception v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6
.end method

.method private static printStackTrace(Ljava/lang/Thread;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-string v2, "ThreadMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack trace for thread ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    const-string v2, "ThreadMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-static {v4, v5, v5}, Lcom/android/camera/debug/Debugger;->getStackTraceElementString(Ljava/lang/StackTraceElement;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/debug/ThreadMonitor;->m_Abort:Z

    iget-object v0, p0, Lcom/android/camera/debug/ThreadMonitor;->m_MonitorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/debug/ThreadMonitor;->m_MonitorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public startMonitorCurrentThread()V
    .locals 6

    iget-boolean v3, p0, Lcom/android/camera/debug/ThreadMonitor;->m_Abort:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/camera/debug/ThreadMonitor;->ENABLED:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;

    iget-object v3, v1, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;->thread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_2

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;

    invoke-direct {v5, v2}, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;-><init>(Ljava/lang/Thread;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public stopMonitorCurrentThread()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;

    iget-object v2, v2, Lcom/android/camera/debug/ThreadMonitor$MonitorTarget;->thread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/debug/ThreadMonitor;->m_Targets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    monitor-exit v3

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
