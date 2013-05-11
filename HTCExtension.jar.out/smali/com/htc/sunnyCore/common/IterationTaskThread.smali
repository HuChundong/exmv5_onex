.class public Lcom/htc/sunnyCore/common/IterationTaskThread;
.super Lcom/htc/sunnyCore/IterationThread;
.source "IterationTaskThread.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field protected static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IterationTaskThread"

.field public static final TASK_CANCEL:I = 0x4

.field public static final TASK_END:I = 0x3

.field public static final TASK_ITERATE:I = 0x2

.field public static final TASK_RESET:I = 0x5

.field public static final TASK_SETUP:I = 0x1

.field public static final TASK_UNSET:I


# instance fields
.field private final lock:Ljava/lang/Object;

.field private mBeginIdx:I

.field private mEndIdx:I

.field private mStatus:I

.field private mTask:Lcom/htc/sunnyCore/common/IterationTask;

.field private mTaskList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/sunnyCore/common/IterationTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskListToCancel:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/sunnyCore/common/IterationTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/htc/sunnyCore/common/IterationTaskThread;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "threadName"

    .prologue
    const/4 v1, -0x1

    .line 59
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/IterationThread;-><init>(Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTaskListToCancel:Ljava/util/LinkedList;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mStatus:I

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->lock:Ljava/lang/Object;

    .line 52
    iput v1, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mBeginIdx:I

    .line 53
    iput v1, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mEndIdx:I

    .line 60
    return-void
.end method


# virtual methods
.method public addTask(Lcom/htc/sunnyCore/common/IterationTask;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 175
    iget-object v1, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    sget-boolean v0, Lcom/htc/sunnyCore/common/IterationTaskThread;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "IterationTaskThread"

    const-string v2, "[IterationTaskThread][addTask] resumeThread"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 179
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunnyCore/common/IterationTaskThread;->resumeThread(J)V

    .line 183
    return-void

    .line 179
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public cancelAllTask()V
    .locals 6

    .prologue
    .line 199
    iget-object v3, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 200
    :try_start_0
    const-string v2, "IterationTaskThread"

    const-string v4, "[IterationTaskThread][cancelAllTask]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v2, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 202
    iget-object v2, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/common/IterationTask;

    .line 203
    .local v1, task:Lcom/htc/sunnyCore/common/IterationTask;
    if-eqz v1, :cond_0

    .line 204
    sget-boolean v2, Lcom/htc/sunnyCore/common/IterationTaskThread;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "IterationTaskThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[IterationTaskThread][cancel] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1
    iget-object v2, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTaskListToCancel:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {v1}, Lcom/htc/sunnyCore/common/IterationTask;->onCancel()V

    .line 207
    invoke-virtual {v1}, Lcom/htc/sunnyCore/common/IterationTask;->release()V

    goto :goto_0

    .line 213
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #task:Lcom/htc/sunnyCore/common/IterationTask;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 210
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 212
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTaskListToCancel:Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 213
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    return-void
.end method

.method public cancelTask(Lcom/htc/sunnyCore/common/IterationTask;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 189
    iget-object v1, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_0
    sget-boolean v0, Lcom/htc/sunnyCore/common/IterationTaskThread;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "IterationTaskThread"

    const-string v2, "[IterationTaskThread][cancelCurrentTask]"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTaskListToCancel:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 192
    monitor-exit v1

    .line 193
    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTaskCount()I
    .locals 3

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, count:I
    iget-object v2, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 223
    iget-object v1, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 224
    :cond_0
    monitor-exit v2

    .line 225
    return v0

    .line 224
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized isInVisibleRange()Z
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 240
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    iget v0, v1, Lcom/htc/sunnyCore/common/IterationTask;->mIdx:I

    .line 241
    .local v0, idx:I
    if-eq v0, v2, :cond_0

    iget v1, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mBeginIdx:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mEndIdx:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mBeginIdx:I

    if-lt v0, v1, :cond_1

    iget v1, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mEndIdx:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, v1, :cond_1

    .line 243
    :cond_0
    const/4 v1, 0x1

    .line 246
    :goto_0
    monitor-exit p0

    return v1

    .line 245
    :cond_1
    :try_start_1
    sget-boolean v1, Lcom/htc/sunnyCore/common/IterationTaskThread;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "IterationTaskThread"

    const-string v2, "[isInVisibleRange] false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 240
    .end local v0           #idx:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public iterate()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x5

    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    if-nez v0, :cond_6

    .line 102
    iget-object v3, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    sget-boolean v0, Lcom/htc/sunnyCore/common/IterationTaskThread;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "IterationTaskThread"

    const-string v2, "[IterationTaskThread][iterate] Task List is empty"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    monitor-exit v3

    move v0, v1

    .line 168
    :goto_0
    return v0

    .line 117
    :cond_1
    sget-boolean v0, Lcom/htc/sunnyCore/common/IterationTaskThread;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 118
    const-string v0, "IterationTaskThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[IterationTaskThread][iterate] Poll task, list count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/common/IterationTask;

    iput-object v0, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    .line 121
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-object v0, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/IterationTaskThread;->isInVisibleRange()Z

    move-result v0

    if-nez v0, :cond_4

    .line 124
    sget-boolean v0, Lcom/htc/sunnyCore/common/IterationTaskThread;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "IterationTaskThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IterationTaskThread][iterate] cancel task, idx "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    iget v3, v3, Lcom/htc/sunnyCore/common/IterationTask;->mIdx:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/common/IterationTask;->onTaskCancel()V

    .line 126
    iput-object v6, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    move v0, v2

    .line 127
    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 130
    :cond_4
    iput v1, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mStatus:I

    :cond_5
    :goto_1
    move v0, v2

    .line 168
    goto :goto_0

    .line 133
    :cond_6
    iget-object v3, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 134
    :try_start_2
    iget-object v0, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTaskListToCancel:Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 135
    iget v0, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mStatus:I

    if-eq v0, v5, :cond_7

    .line 136
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mStatus:I

    .line 139
    :cond_7
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    iget v0, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mStatus:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 142
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/common/IterationTask;->onTaskSetup()V

    .line 143
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mStatus:I

    goto :goto_1

    .line 139
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 147
    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/common/IterationTask;->onTaskIterate()Z

    move-result v0

    if-nez v0, :cond_5

    .line 148
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mStatus:I

    goto :goto_1

    .line 152
    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/common/IterationTask;->onTaskEnd()V

    .line 153
    iput v5, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mStatus:I

    goto :goto_1

    .line 156
    :pswitch_3
    sget-boolean v0, Lcom/htc/sunnyCore/common/IterationTaskThread;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "IterationTaskThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IterationTaskThread][iterate] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_8
    iget-object v0, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/common/IterationTask;->onTaskCancel()V

    .line 158
    iput v5, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mStatus:I

    goto :goto_1

    .line 162
    :pswitch_4
    iput-object v6, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    .line 163
    iput v1, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mStatus:I

    goto :goto_1

    .line 140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onThreadBegin()Z
    .locals 2

    .prologue
    .line 67
    sget-boolean v0, Lcom/htc/sunnyCore/common/IterationTaskThread;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "IterationTaskThread"

    const-string v1, "[IterationTaskThread][onTreadBegin]+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    sget-boolean v0, Lcom/htc/sunnyCore/common/IterationTaskThread;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "IterationTaskThread"

    const-string v1, "[IterationTaskThread][onTreadBegin]-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onThreadEnd()V
    .locals 5

    .prologue
    .line 77
    sget-boolean v2, Lcom/htc/sunnyCore/common/IterationTaskThread;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "IterationTaskThread"

    const-string v3, "[IterationTaskThread][onTreadEnd]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    if-eqz v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/common/IterationTask;->onCancel()V

    .line 80
    iget-object v2, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/common/IterationTask;->release()V

    .line 81
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTask:Lcom/htc/sunnyCore/common/IterationTask;

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/common/IterationTask;

    .line 84
    .local v1, task:Lcom/htc/sunnyCore/common/IterationTask;
    if-eqz v1, :cond_2

    .line 85
    sget-boolean v2, Lcom/htc/sunnyCore/common/IterationTaskThread;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "IterationTaskThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IterationTaskThread][cancel] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_3
    invoke-virtual {v1}, Lcom/htc/sunnyCore/common/IterationTask;->onCancel()V

    .line 87
    invoke-virtual {v1}, Lcom/htc/sunnyCore/common/IterationTask;->release()V

    goto :goto_0

    .line 90
    .end local v1           #task:Lcom/htc/sunnyCore/common/IterationTask;
    :cond_4
    iget-object v2, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 91
    iget-object v2, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mTaskListToCancel:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 92
    sget-boolean v2, Lcom/htc/sunnyCore/common/IterationTaskThread;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "IterationTaskThread"

    const-string v3, "[IterationTaskThread][onTreadEnd]-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_5
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 254
    sget-boolean v0, Lcom/htc/sunnyCore/common/IterationTaskThread;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "IterationTaskThread"

    const-string v1, "[IterationTaskThread][release]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/IterationTaskThread;->endThread()V

    .line 260
    return-void
.end method

.method public declared-synchronized setVisibleRange(II)V
    .locals 1
    .parameter "beginIdx"
    .parameter "endIdx"

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mBeginIdx:I

    .line 233
    iput p2, p0, Lcom/htc/sunnyCore/common/IterationTaskThread;->mEndIdx:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
