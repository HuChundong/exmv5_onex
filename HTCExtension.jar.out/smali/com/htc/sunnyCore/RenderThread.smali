.class public Lcom/htc/sunnyCore/RenderThread;
.super Lcom/htc/sunnyCore/IterationThread;
.source "RenderThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/RenderThread$EventListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final CPU_LOCK_TIMEOUT:J

.field private TAG:Ljava/lang/String;

.field private actions:Lcom/htc/sunnyCore/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunnyCore/Queue",
            "<",
            "Lcom/htc/sunnyCore/RenderThreadAction;",
            ">;"
        }
    .end annotation
.end field

.field private actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

.field private actionsToProcess:Lcom/htc/sunnyCore/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunnyCore/Queue",
            "<",
            "Lcom/htc/sunnyCore/RenderThreadAction;",
            ">;"
        }
    .end annotation
.end field

.field private actionsToRestore:Lcom/htc/sunnyCore/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunnyCore/Queue",
            "<",
            "Lcom/htc/sunnyCore/RenderThreadAction;",
            ">;"
        }
    .end annotation
.end field

.field private currentInterruption:Lcom/htc/sunnyCore/RenderThreadInterruption;

.field private eventListener:Lcom/htc/sunnyCore/RenderThread$EventListener;

.field private events:Lcom/htc/sunnyCore/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunnyCore/Queue",
            "<",
            "Lcom/htc/sunnyCore/RenderThreadEvent;",
            ">;"
        }
    .end annotation
.end field

.field private eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

.field private eventsToProcess:Lcom/htc/sunnyCore/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunnyCore/Queue",
            "<",
            "Lcom/htc/sunnyCore/RenderThreadEvent;",
            ">;"
        }
    .end annotation
.end field

.field private forceDisableRenderingTimeMillis:J

.field public forceRender:Z

.field public forceRenderOnce:Z

.field private frameIndex:I

.field private isRenderThreadExpired:Z

.field private isRenderThreadReady:Z

.field private iterationCount:I

.field private lastPresentTimeMillis:J

.field private lastTimeRequestRenderThreadRunning:J

.field private mContextForLockCPU:Landroid/content/Context;

.field private mHtcCpuCtrlWrapFreq:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

.field private mHtcCpuCtrlWrapFreqAcquired:Z

.field private mHtcCpuCtrlWrapNum:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

.field private mHtcCpuCtrlWrapNumAcquired:Z

.field private mHtcWrapPowerManager:Lcom/htc/wrap/android/os/HtcWrapPowerManager;

.field private needLockCPUDueToAction:Z

.field private needRenderDueToAction:Z

.field private needRenderDueToEvent:Z

.field private needRenderDueToInterruption:Z

.field private pauseRenderFlag:Z

.field private preparations:Lcom/htc/sunnyCore/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunnyCore/Queue",
            "<",
            "Lcom/htc/sunnyCore/RenderThreadPreparation;",
            ">;"
        }
    .end annotation
.end field

.field private preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

.field private preparationsToProcess:Lcom/htc/sunnyCore/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunnyCore/Queue",
            "<",
            "Lcom/htc/sunnyCore/RenderThreadPreparation;",
            ">;"
        }
    .end annotation
.end field

.field private preparationsToRestore:Lcom/htc/sunnyCore/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunnyCore/Queue",
            "<",
            "Lcom/htc/sunnyCore/RenderThreadPreparation;",
            ">;"
        }
    .end annotation
.end field

.field private renderCount:I

.field private renderWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private runInterruptionLocker:Ljava/lang/Integer;

.field private taskRequestRenderThreadRunning:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/htc/sunnyCore/RenderThread$EventListener;)V
    .locals 6
    .parameter "threadName"
    .parameter "listener"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 114
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/IterationThread;-><init>(Ljava/lang/String;)V

    .line 25
    const-string v0, "SunnyRT"

    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    .line 45
    iput-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->eventListener:Lcom/htc/sunnyCore/RenderThread$EventListener;

    .line 47
    iput-boolean v2, p0, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady:Z

    .line 48
    iput-boolean v2, p0, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadExpired:Z

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThread;->renderWindows:Ljava/util/ArrayList;

    .line 52
    iput v2, p0, Lcom/htc/sunnyCore/RenderThread;->frameIndex:I

    .line 54
    iput-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->currentInterruption:Lcom/htc/sunnyCore/RenderThreadInterruption;

    .line 55
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThread;->runInterruptionLocker:Ljava/lang/Integer;

    .line 57
    iput-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->events:Lcom/htc/sunnyCore/Queue;

    .line 58
    iput-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->eventsToProcess:Lcom/htc/sunnyCore/Queue;

    .line 59
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    .line 61
    iput-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actions:Lcom/htc/sunnyCore/Queue;

    .line 62
    iput-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actionsToProcess:Lcom/htc/sunnyCore/Queue;

    .line 63
    iput-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actionsToRestore:Lcom/htc/sunnyCore/Queue;

    .line 64
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    .line 66
    iput-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparations:Lcom/htc/sunnyCore/Queue;

    .line 67
    iput-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsToProcess:Lcom/htc/sunnyCore/Queue;

    .line 68
    iput-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsToRestore:Lcom/htc/sunnyCore/Queue;

    .line 69
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    .line 71
    iput-wide v4, p0, Lcom/htc/sunnyCore/RenderThread;->lastPresentTimeMillis:J

    .line 73
    iput-boolean v2, p0, Lcom/htc/sunnyCore/RenderThread;->needRenderDueToInterruption:Z

    .line 74
    iput-boolean v2, p0, Lcom/htc/sunnyCore/RenderThread;->needRenderDueToEvent:Z

    .line 75
    iput-boolean v2, p0, Lcom/htc/sunnyCore/RenderThread;->needRenderDueToAction:Z

    .line 76
    iput-boolean v2, p0, Lcom/htc/sunnyCore/RenderThread;->needLockCPUDueToAction:Z

    .line 78
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/htc/sunnyCore/RenderThread;->CPU_LOCK_TIMEOUT:J

    .line 79
    iput-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->mContextForLockCPU:Landroid/content/Context;

    .line 80
    iput-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcWrapPowerManager:Lcom/htc/wrap/android/os/HtcWrapPowerManager;

    .line 81
    iput-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreq:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    .line 82
    iput-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNum:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    .line 83
    iput-boolean v2, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreqAcquired:Z

    .line 84
    iput-boolean v2, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNumAcquired:Z

    .line 89
    iput-boolean v2, p0, Lcom/htc/sunnyCore/RenderThread;->forceRenderOnce:Z

    .line 94
    iput-boolean v2, p0, Lcom/htc/sunnyCore/RenderThread;->forceRender:Z

    .line 96
    iput-boolean v2, p0, Lcom/htc/sunnyCore/RenderThread;->taskRequestRenderThreadRunning:Z

    .line 97
    iput-wide v4, p0, Lcom/htc/sunnyCore/RenderThread;->lastTimeRequestRenderThreadRunning:J

    .line 99
    iput v2, p0, Lcom/htc/sunnyCore/RenderThread;->iterationCount:I

    .line 100
    iput v2, p0, Lcom/htc/sunnyCore/RenderThread;->renderCount:I

    .line 102
    iput-boolean v2, p0, Lcom/htc/sunnyCore/RenderThread;->pauseRenderFlag:Z

    .line 104
    iput-wide v4, p0, Lcom/htc/sunnyCore/RenderThread;->forceDisableRenderingTimeMillis:J

    .line 116
    iput-object p2, p0, Lcom/htc/sunnyCore/RenderThread;->eventListener:Lcom/htc/sunnyCore/RenderThread$EventListener;

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunnyCore/RenderThread;->lastTimeRequestRenderThreadRunning:J

    .line 119
    return-void
.end method

.method private doCancelTask(Lcom/htc/sunnyCore/RenderThreadTask;Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 1
    .parameter "task"
    .parameter "cancelReason"

    .prologue
    .line 1178
    if-nez p1, :cond_1

    .line 1189
    :cond_0
    :goto_0
    return-void

    .line 1183
    :cond_1
    iget-boolean v0, p1, Lcom/htc/sunnyCore/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v0, :cond_0

    .line 1185
    invoke-virtual {p1, p2}, Lcom/htc/sunnyCore/RenderThreadTask;->onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V

    .line 1186
    invoke-virtual {p1}, Lcom/htc/sunnyCore/RenderThreadTask;->onRemovedIRT()V

    .line 1187
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/htc/sunnyCore/RenderThreadTask;->isInRenderThreadQueue:Z

    goto :goto_0
.end method

.method private doFinishTask(Lcom/htc/sunnyCore/RenderThreadTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 1164
    if-nez p1, :cond_1

    .line 1174
    :cond_0
    :goto_0
    return-void

    .line 1169
    :cond_1
    iget-boolean v0, p1, Lcom/htc/sunnyCore/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v0, :cond_0

    .line 1171
    invoke-virtual {p1}, Lcom/htc/sunnyCore/RenderThreadTask;->onRemovedIRT()V

    .line 1172
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/htc/sunnyCore/RenderThreadTask;->isInRenderThreadQueue:Z

    goto :goto_0
.end method

.method private doRemoveAllTaskIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 6
    .parameter "cancelReason"

    .prologue
    const/4 v5, 0x0

    .line 1195
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "Clear events"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1200
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->events:Lcom/htc/sunnyCore/Queue;

    if-eqz v3, :cond_0

    .line 1202
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->events:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/RenderThreadEvent;

    .line 1203
    .local v1, event:Lcom/htc/sunnyCore/RenderThreadEvent;
    if-nez v1, :cond_9

    .line 1207
    .end local v1           #event:Lcom/htc/sunnyCore/RenderThreadEvent;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->eventsToProcess:Lcom/htc/sunnyCore/Queue;

    if-eqz v3, :cond_1

    .line 1209
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->eventsToProcess:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/RenderThreadEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1210
    .restart local v1       #event:Lcom/htc/sunnyCore/RenderThreadEvent;
    if-nez v1, :cond_b

    .line 1217
    .end local v1           #event:Lcom/htc/sunnyCore/RenderThreadEvent;
    :cond_1
    sget-object v3, Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;

    if-ne p1, v3, :cond_2

    .line 1219
    iput-object v5, p0, Lcom/htc/sunnyCore/RenderThread;->events:Lcom/htc/sunnyCore/Queue;

    .line 1220
    iput-object v5, p0, Lcom/htc/sunnyCore/RenderThread;->eventsToProcess:Lcom/htc/sunnyCore/Queue;

    .line 1223
    :cond_2
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1228
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "Clear actions"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1233
    :goto_2
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actions:Lcom/htc/sunnyCore/Queue;

    if-eqz v3, :cond_3

    .line 1235
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actions:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/RenderThreadAction;

    .line 1236
    .local v0, action:Lcom/htc/sunnyCore/RenderThreadAction;
    if-nez v0, :cond_c

    .line 1240
    .end local v0           #action:Lcom/htc/sunnyCore/RenderThreadAction;
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actionsToProcess:Lcom/htc/sunnyCore/Queue;

    if-eqz v3, :cond_4

    .line 1242
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actionsToProcess:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/RenderThreadAction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1243
    .restart local v0       #action:Lcom/htc/sunnyCore/RenderThreadAction;
    if-nez v0, :cond_e

    .line 1250
    .end local v0           #action:Lcom/htc/sunnyCore/RenderThreadAction;
    :cond_4
    sget-object v3, Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;

    if-ne p1, v3, :cond_5

    .line 1252
    iput-object v5, p0, Lcom/htc/sunnyCore/RenderThread;->actions:Lcom/htc/sunnyCore/Queue;

    .line 1253
    iput-object v5, p0, Lcom/htc/sunnyCore/RenderThread;->actionsToProcess:Lcom/htc/sunnyCore/Queue;

    .line 1254
    iput-object v5, p0, Lcom/htc/sunnyCore/RenderThread;->actionsToRestore:Lcom/htc/sunnyCore/Queue;

    .line 1257
    :cond_5
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1262
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "Clear preparations"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1267
    :goto_4
    :try_start_2
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparations:Lcom/htc/sunnyCore/Queue;

    if-eqz v3, :cond_6

    .line 1269
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparations:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunnyCore/RenderThreadPreparation;

    .line 1270
    .local v2, preparation:Lcom/htc/sunnyCore/RenderThreadPreparation;
    if-nez v2, :cond_f

    .line 1274
    .end local v2           #preparation:Lcom/htc/sunnyCore/RenderThreadPreparation;
    :cond_6
    :goto_5
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsToProcess:Lcom/htc/sunnyCore/Queue;

    if-eqz v3, :cond_7

    .line 1276
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsToProcess:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunnyCore/RenderThreadPreparation;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1277
    .restart local v2       #preparation:Lcom/htc/sunnyCore/RenderThreadPreparation;
    if-nez v2, :cond_11

    .line 1284
    .end local v2           #preparation:Lcom/htc/sunnyCore/RenderThreadPreparation;
    :cond_7
    sget-object v3, Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;

    if-ne p1, v3, :cond_8

    .line 1286
    iput-object v5, p0, Lcom/htc/sunnyCore/RenderThread;->preparations:Lcom/htc/sunnyCore/Queue;

    .line 1287
    iput-object v5, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsToProcess:Lcom/htc/sunnyCore/Queue;

    .line 1288
    iput-object v5, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsToRestore:Lcom/htc/sunnyCore/Queue;

    .line 1291
    :cond_8
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1293
    return-void

    .line 1205
    .restart local v1       #event:Lcom/htc/sunnyCore/RenderThreadEvent;
    :cond_9
    :try_start_3
    invoke-direct {p0, v1, p1}, Lcom/htc/sunnyCore/RenderThread;->doCancelTask(Lcom/htc/sunnyCore/RenderThreadTask;Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1217
    .end local v1           #event:Lcom/htc/sunnyCore/RenderThreadEvent;
    :catchall_0
    move-exception v3

    sget-object v4, Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;

    if-ne p1, v4, :cond_a

    .line 1219
    iput-object v5, p0, Lcom/htc/sunnyCore/RenderThread;->events:Lcom/htc/sunnyCore/Queue;

    .line 1220
    iput-object v5, p0, Lcom/htc/sunnyCore/RenderThread;->eventsToProcess:Lcom/htc/sunnyCore/Queue;

    .line 1223
    :cond_a
    iget-object v4, p0, Lcom/htc/sunnyCore/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 1212
    .restart local v1       #event:Lcom/htc/sunnyCore/RenderThreadEvent;
    :cond_b
    :try_start_4
    invoke-direct {p0, v1, p1}, Lcom/htc/sunnyCore/RenderThread;->doCancelTask(Lcom/htc/sunnyCore/RenderThreadTask;Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 1238
    .end local v1           #event:Lcom/htc/sunnyCore/RenderThreadEvent;
    .restart local v0       #action:Lcom/htc/sunnyCore/RenderThreadAction;
    :cond_c
    :try_start_5
    invoke-direct {p0, v0, p1}, Lcom/htc/sunnyCore/RenderThread;->doCancelTask(Lcom/htc/sunnyCore/RenderThreadTask;Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 1250
    .end local v0           #action:Lcom/htc/sunnyCore/RenderThreadAction;
    :catchall_1
    move-exception v3

    sget-object v4, Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;

    if-ne p1, v4, :cond_d

    .line 1252
    iput-object v5, p0, Lcom/htc/sunnyCore/RenderThread;->actions:Lcom/htc/sunnyCore/Queue;

    .line 1253
    iput-object v5, p0, Lcom/htc/sunnyCore/RenderThread;->actionsToProcess:Lcom/htc/sunnyCore/Queue;

    .line 1254
    iput-object v5, p0, Lcom/htc/sunnyCore/RenderThread;->actionsToRestore:Lcom/htc/sunnyCore/Queue;

    .line 1257
    :cond_d
    iget-object v4, p0, Lcom/htc/sunnyCore/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 1245
    .restart local v0       #action:Lcom/htc/sunnyCore/RenderThreadAction;
    :cond_e
    :try_start_6
    invoke-direct {p0, v0, p1}, Lcom/htc/sunnyCore/RenderThread;->doCancelTask(Lcom/htc/sunnyCore/RenderThreadTask;Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_3

    .line 1272
    .end local v0           #action:Lcom/htc/sunnyCore/RenderThreadAction;
    .restart local v2       #preparation:Lcom/htc/sunnyCore/RenderThreadPreparation;
    :cond_f
    :try_start_7
    invoke-direct {p0, v2, p1}, Lcom/htc/sunnyCore/RenderThread;->doCancelTask(Lcom/htc/sunnyCore/RenderThreadTask;Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    .line 1284
    .end local v2           #preparation:Lcom/htc/sunnyCore/RenderThreadPreparation;
    :catchall_2
    move-exception v3

    sget-object v4, Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;

    if-ne p1, v4, :cond_10

    .line 1286
    iput-object v5, p0, Lcom/htc/sunnyCore/RenderThread;->preparations:Lcom/htc/sunnyCore/Queue;

    .line 1287
    iput-object v5, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsToProcess:Lcom/htc/sunnyCore/Queue;

    .line 1288
    iput-object v5, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsToRestore:Lcom/htc/sunnyCore/Queue;

    .line 1291
    :cond_10
    iget-object v4, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 1279
    .restart local v2       #preparation:Lcom/htc/sunnyCore/RenderThreadPreparation;
    :cond_11
    :try_start_8
    invoke-direct {p0, v2, p1}, Lcom/htc/sunnyCore/RenderThread;->doCancelTask(Lcom/htc/sunnyCore/RenderThreadTask;Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_5
.end method

.method private processActions(IJ)Z
    .locals 9
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    const/4 v4, 0x1

    .line 986
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actions:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 988
    const/4 v3, 0x0

    .line 1076
    :goto_0
    return v3

    .line 993
    :cond_0
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 995
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actionsToProcess:Lcom/htc/sunnyCore/Queue;

    iget-object v5, p0, Lcom/htc/sunnyCore/RenderThread;->actions:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Queue;->swapWith(Lcom/htc/sunnyCore/Queue;)V

    .line 997
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1005
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actionsToProcess:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/RenderThreadAction;

    .line 1006
    .local v1, action:Lcom/htc/sunnyCore/RenderThreadAction;
    if-nez v1, :cond_3

    .line 1051
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1054
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actions:Lcom/htc/sunnyCore/Queue;

    iget-object v5, p0, Lcom/htc/sunnyCore/RenderThread;->actionsToRestore:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Queue;->swapWith(Lcom/htc/sunnyCore/Queue;)V

    .line 1058
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actionsToRestore:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunnyCore/RenderThreadAction;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1059
    if-nez v1, :cond_9

    .line 1073
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v3, v4

    .line 1076
    goto :goto_0

    .line 1013
    :cond_3
    iget v3, v1, Lcom/htc/sunnyCore/RenderThreadAction;->firstFrameIndex:I

    if-nez v3, :cond_4

    iget-wide v5, v1, Lcom/htc/sunnyCore/RenderThreadAction;->firstFrameTimeMillis:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_4

    .line 1015
    iput p1, v1, Lcom/htc/sunnyCore/RenderThreadAction;->firstFrameIndex:I

    .line 1016
    iput-wide p2, v1, Lcom/htc/sunnyCore/RenderThreadAction;->firstFrameTimeMillis:J

    .line 1019
    :cond_4
    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/sunnyCore/RenderThreadAction;->onDoActionIRT(IJ)Z

    move-result v2

    .line 1021
    .local v2, needRestore:Z
    iget-boolean v3, v1, Lcom/htc/sunnyCore/RenderThreadTask;->alwaysNeedRenderAfterProcess:Z

    if-eqz v3, :cond_5

    .line 1023
    iput-boolean v4, p0, Lcom/htc/sunnyCore/RenderThread;->needRenderDueToAction:Z

    .line 1025
    :cond_5
    iget-boolean v3, v1, Lcom/htc/sunnyCore/RenderThreadTask;->alwaysRequestRenderThreadRunningAfterProcess:Z

    if-eqz v3, :cond_6

    .line 1027
    iput-boolean v4, p0, Lcom/htc/sunnyCore/RenderThread;->taskRequestRenderThreadRunning:Z

    .line 1029
    :cond_6
    iget-boolean v3, v1, Lcom/htc/sunnyCore/RenderThreadAction;->needLockCPU:Z

    if-eqz v3, :cond_7

    .line 1031
    iput-boolean v4, p0, Lcom/htc/sunnyCore/RenderThread;->needLockCPUDueToAction:Z

    .line 1034
    :cond_7
    if-nez v2, :cond_8

    .line 1036
    invoke-direct {p0, v1}, Lcom/htc/sunnyCore/RenderThread;->doFinishTask(Lcom/htc/sunnyCore/RenderThreadTask;)V

    goto :goto_1

    .line 1042
    :cond_8
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actionsToRestore:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3, v1}, Lcom/htc/sunnyCore/Queue;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1044
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v5, "Save action to restore NG"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    sget-object v3, Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;->QUEUE_OPERATION_ERROR:Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, v1, v3}, Lcom/htc/sunnyCore/RenderThread;->doCancelTask(Lcom/htc/sunnyCore/RenderThreadTask;Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V

    goto :goto_1

    .line 1064
    .end local v2           #needRestore:Z
    :cond_9
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actions:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3, v1}, Lcom/htc/sunnyCore/Queue;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1066
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v5, "Restore action NG."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    sget-object v3, Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;->QUEUE_OPERATION_ERROR:Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, v1, v3}, Lcom/htc/sunnyCore/RenderThread;->doCancelTask(Lcom/htc/sunnyCore/RenderThreadTask;Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1073
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/htc/sunnyCore/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method private processEvents()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 943
    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->events:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 945
    const/4 v1, 0x0

    .line 979
    :cond_0
    return v1

    .line 950
    :cond_1
    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 952
    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->eventsToProcess:Lcom/htc/sunnyCore/Queue;

    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->events:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Queue;->swapWith(Lcom/htc/sunnyCore/Queue;)V

    .line 954
    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 960
    :goto_0
    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->eventsToProcess:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/RenderThreadEvent;

    .line 961
    .local v0, event:Lcom/htc/sunnyCore/RenderThreadEvent;
    if-eqz v0, :cond_0

    .line 966
    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThreadEvent;->onProcessEventIRT()V

    .line 967
    iget-boolean v2, v0, Lcom/htc/sunnyCore/RenderThreadTask;->alwaysNeedRenderAfterProcess:Z

    if-eqz v2, :cond_2

    .line 969
    iput-boolean v1, p0, Lcom/htc/sunnyCore/RenderThread;->needRenderDueToEvent:Z

    .line 971
    :cond_2
    iget-boolean v2, v0, Lcom/htc/sunnyCore/RenderThreadTask;->alwaysRequestRenderThreadRunningAfterProcess:Z

    if-eqz v2, :cond_3

    .line 973
    iput-boolean v1, p0, Lcom/htc/sunnyCore/RenderThread;->taskRequestRenderThreadRunning:Z

    .line 976
    :cond_3
    invoke-direct {p0, v0}, Lcom/htc/sunnyCore/RenderThread;->doFinishTask(Lcom/htc/sunnyCore/RenderThreadTask;)V

    goto :goto_0
.end method

.method private processPreparations(J)Z
    .locals 6
    .parameter "limitedTimeMillis"

    .prologue
    const/4 v4, 0x1

    .line 1083
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparations:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1085
    const/4 v3, 0x0

    .line 1159
    :goto_0
    return v3

    .line 1090
    :cond_0
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1092
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsToProcess:Lcom/htc/sunnyCore/Queue;

    iget-object v5, p0, Lcom/htc/sunnyCore/RenderThread;->preparations:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Queue;->swapWith(Lcom/htc/sunnyCore/Queue;)V

    .line 1094
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1102
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsToProcess:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunnyCore/RenderThreadPreparation;

    .line 1103
    .local v2, preparation:Lcom/htc/sunnyCore/RenderThreadPreparation;
    if-nez v2, :cond_3

    .line 1134
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1137
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparations:Lcom/htc/sunnyCore/Queue;

    iget-object v5, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsToRestore:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Queue;->swapWith(Lcom/htc/sunnyCore/Queue;)V

    .line 1141
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsToRestore:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunnyCore/RenderThreadPreparation;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    if-nez v2, :cond_6

    .line 1156
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v3, v4

    .line 1159
    goto :goto_0

    .line 1110
    :cond_3
    invoke-virtual {v2, p1, p2}, Lcom/htc/sunnyCore/RenderThreadPreparation;->onProcessPreparationIRT(J)Z

    move-result v1

    .line 1112
    .local v1, needRestore:Z
    iget-boolean v3, v2, Lcom/htc/sunnyCore/RenderThreadTask;->alwaysRequestRenderThreadRunningAfterProcess:Z

    if-eqz v3, :cond_4

    .line 1114
    iput-boolean v4, p0, Lcom/htc/sunnyCore/RenderThread;->taskRequestRenderThreadRunning:Z

    .line 1117
    :cond_4
    if-nez v1, :cond_5

    .line 1119
    invoke-direct {p0, v2}, Lcom/htc/sunnyCore/RenderThread;->doFinishTask(Lcom/htc/sunnyCore/RenderThreadTask;)V

    goto :goto_1

    .line 1125
    :cond_5
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsToRestore:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3, v2}, Lcom/htc/sunnyCore/Queue;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1127
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v5, "Save preparation to restore NG"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    sget-object v3, Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;->QUEUE_OPERATION_ERROR:Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, v2, v3}, Lcom/htc/sunnyCore/RenderThread;->doCancelTask(Lcom/htc/sunnyCore/RenderThreadTask;Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V

    goto :goto_1

    .line 1147
    .end local v1           #needRestore:Z
    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparations:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3, v2}, Lcom/htc/sunnyCore/Queue;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1149
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v5, "Restore preparation NG."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    sget-object v3, Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;->QUEUE_OPERATION_ERROR:Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, v2, v3}, Lcom/htc/sunnyCore/RenderThread;->doCancelTask(Lcom/htc/sunnyCore/RenderThreadTask;Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1156
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method private pushAction(Lcom/htc/sunnyCore/RenderThreadAction;)Z
    .locals 5
    .parameter "action"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 834
    if-nez p1, :cond_0

    .line 836
    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushAction() NG - null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :goto_0
    return v1

    .line 840
    :cond_0
    iget-boolean v3, p1, Lcom/htc/sunnyCore/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v3, :cond_1

    .line 842
    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pushAction() NG - already in queue, action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/sunnyCore/RenderThreadAction;->GetName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 848
    :cond_1
    const/4 v0, 0x0

    .line 850
    .local v0, pushOK:Z
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 853
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actions:Lcom/htc/sunnyCore/Queue;

    if-eqz v3, :cond_3

    .line 855
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actions:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3, p1}, Lcom/htc/sunnyCore/Queue;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 857
    if-eqz v0, :cond_2

    .line 859
    const/4 v3, 0x0

    iput v3, p1, Lcom/htc/sunnyCore/RenderThreadAction;->firstFrameIndex:I

    .line 860
    const-wide/16 v3, 0x0

    iput-wide v3, p1, Lcom/htc/sunnyCore/RenderThreadAction;->firstFrameTimeMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 873
    if-nez v0, :cond_4

    .line 875
    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushAction() NG"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 865
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "pushAction() NG - null actions"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 870
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 881
    :cond_4
    iput-boolean v2, p1, Lcom/htc/sunnyCore/RenderThreadTask;->isInRenderThreadQueue:Z

    move v1, v2

    .line 883
    goto :goto_0
.end method

.method private pushEvent(Lcom/htc/sunnyCore/RenderThreadEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 784
    if-nez p1, :cond_0

    .line 786
    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushEvent() NG - null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :goto_0
    return v1

    .line 790
    :cond_0
    iget-boolean v3, p1, Lcom/htc/sunnyCore/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v3, :cond_1

    .line 792
    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushEvent() NG - already in queue"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 798
    :cond_1
    const/4 v0, 0x0

    .line 800
    .local v0, pushOK:Z
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 803
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->events:Lcom/htc/sunnyCore/Queue;

    if-eqz v3, :cond_2

    .line 805
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->events:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3, p1}, Lcom/htc/sunnyCore/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 814
    :goto_1
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 817
    if-nez v0, :cond_3

    .line 819
    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushEvent() NG"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 809
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "pushEvent() NG - events null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 814
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 825
    :cond_3
    iput-boolean v2, p1, Lcom/htc/sunnyCore/RenderThreadTask;->isInRenderThreadQueue:Z

    move v1, v2

    .line 827
    goto :goto_0
.end method

.method private pushPreparation(Lcom/htc/sunnyCore/RenderThreadPreparation;)Z
    .locals 5
    .parameter "preparation"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 890
    if-nez p1, :cond_0

    .line 892
    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushPreparation() NG - null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :goto_0
    return v1

    .line 896
    :cond_0
    iget-boolean v3, p1, Lcom/htc/sunnyCore/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v3, :cond_1

    .line 898
    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushPreparation() NG - already in queue"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 904
    :cond_1
    const/4 v0, 0x0

    .line 906
    .local v0, pushOK:Z
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 909
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparations:Lcom/htc/sunnyCore/Queue;

    if-eqz v3, :cond_2

    .line 911
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparations:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3, p1}, Lcom/htc/sunnyCore/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 920
    :goto_1
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 923
    if-nez v0, :cond_3

    .line 925
    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushPreparation() NG"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 915
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "pushPreparation() NG - null preparations."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 920
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 931
    :cond_3
    iput-boolean v2, p1, Lcom/htc/sunnyCore/RenderThreadTask;->isInRenderThreadQueue:Z

    move v1, v2

    .line 933
    goto :goto_0
.end method


# virtual methods
.method public cancelForceDisableRenderingBeforeTimeMillis()V
    .locals 2

    .prologue
    .line 1602
    sget-boolean v0, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "cancelForceDisableRenderingBeforeTimeMillis() +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunnyCore/RenderThread;->forceDisableRenderingTimeMillis:J

    .line 1604
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/RenderThread;->forceRenderOnce:Z

    .line 1605
    return-void
.end method

.method public endThread()V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadExpired:Z

    .line 271
    invoke-super {p0}, Lcom/htc/sunnyCore/IterationThread;->endThread()V

    .line 272
    return-void
.end method

.method public findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;
    .locals 4
    .parameter "actionHost"
    .parameter "actionName"

    .prologue
    const/4 v2, 0x0

    .line 416
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actions:Lcom/htc/sunnyCore/Queue;

    if-nez v3, :cond_1

    move-object v1, v2

    .line 433
    :cond_0
    :goto_0
    return-object v1

    .line 419
    :cond_1
    new-instance v0, Lcom/htc/sunnyCore/RenderThread$1ActionComparator;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunnyCore/RenderThread$1ActionComparator;-><init>(Lcom/htc/sunnyCore/RenderThread;Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    .local v0, actionComparator:Lcom/htc/sunnyCore/RenderThread$1ActionComparator;
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actions:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3, v0}, Lcom/htc/sunnyCore/Queue;->find(Lcom/htc/sunnyCore/Queue$ItemComparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/RenderThreadAction;

    .line 422
    .local v1, actionFound:Lcom/htc/sunnyCore/RenderThreadAction;
    if-nez v1, :cond_0

    .line 425
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actionsToProcess:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3, v0}, Lcom/htc/sunnyCore/Queue;->find(Lcom/htc/sunnyCore/Queue$ItemComparator;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #actionFound:Lcom/htc/sunnyCore/RenderThreadAction;
    check-cast v1, Lcom/htc/sunnyCore/RenderThreadAction;

    .line 426
    .restart local v1       #actionFound:Lcom/htc/sunnyCore/RenderThreadAction;
    if-nez v1, :cond_0

    .line 429
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actionsToRestore:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3, v0}, Lcom/htc/sunnyCore/Queue;->find(Lcom/htc/sunnyCore/Queue$ItemComparator;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #actionFound:Lcom/htc/sunnyCore/RenderThreadAction;
    check-cast v1, Lcom/htc/sunnyCore/RenderThreadAction;

    .line 430
    .restart local v1       #actionFound:Lcom/htc/sunnyCore/RenderThreadAction;
    if-nez v1, :cond_0

    move-object v1, v2

    .line 433
    goto :goto_0
.end method

.method public isRenderThreadReady()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady:Z

    return v0
.end method

.method public iterate()Z
    .locals 23

    .prologue
    .line 1306
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunnyCore/RenderThread;->taskRequestRenderThreadRunning:Z

    .line 1310
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunnyCore/RenderThread;->needRenderDueToInterruption:Z

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->currentInterruption:Lcom/htc/sunnyCore/RenderThreadInterruption;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->currentInterruption:Lcom/htc/sunnyCore/RenderThreadInterruption;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunnyCore/RenderThreadInterruption;->onProcessInterruptionIRT()V

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->currentInterruption:Lcom/htc/sunnyCore/RenderThreadInterruption;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/htc/sunnyCore/RenderThreadTask;->alwaysNeedRenderAfterProcess:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 1318
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunnyCore/RenderThread;->needRenderDueToInterruption:Z

    .line 1320
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->currentInterruption:Lcom/htc/sunnyCore/RenderThreadInterruption;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/htc/sunnyCore/RenderThreadTask;->alwaysRequestRenderThreadRunningAfterProcess:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1322
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunnyCore/RenderThread;->taskRequestRenderThreadRunning:Z

    .line 1325
    :cond_1
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunnyCore/RenderThread;->currentInterruption:Lcom/htc/sunnyCore/RenderThreadInterruption;

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->eventListener:Lcom/htc/sunnyCore/RenderThread$EventListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->eventListener:Lcom/htc/sunnyCore/RenderThread$EventListener;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/htc/sunnyCore/RenderThread$EventListener;->onInterruptionEndIRT()V

    .line 1334
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1336
    .local v3, currentFrameTimeMillis:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunnyCore/RenderThread;->lastPresentTimeMillis:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x5

    add-long v19, v19, v21

    cmp-long v19, v3, v19

    if-gez v19, :cond_3

    .line 1338
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/sunnyCore/RenderThread;->lastPresentTimeMillis:J

    .line 1343
    :cond_3
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunnyCore/RenderThread;->needRenderDueToEvent:Z

    .line 1345
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunnyCore/RenderThread;->processEvents()Z

    .line 1349
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunnyCore/RenderThread;->needRenderDueToAction:Z

    .line 1350
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunnyCore/RenderThread;->needLockCPUDueToAction:Z

    .line 1352
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/RenderThread;->frameIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v3, v4}, Lcom/htc/sunnyCore/RenderThread;->processActions(IJ)Z

    .line 1356
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunnyCore/RenderThread;->needRenderDueToInterruption:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunnyCore/RenderThread;->needRenderDueToEvent:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunnyCore/RenderThread;->needRenderDueToAction:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunnyCore/RenderThread;->forceRenderOnce:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunnyCore/RenderThread;->forceRender:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    :cond_4
    const/4 v13, 0x1

    .line 1357
    .local v13, needRender:Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/htc/sunnyCore/RenderThread;->forceRenderOnce:Z

    .line 1359
    .local v6, hasRequestOfForceRenderOnce:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunnyCore/RenderThread;->needRenderDueToAction:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunnyCore/RenderThread;->needLockCPUDueToAction:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    const/4 v12, 0x1

    .line 1360
    .local v12, needLockCPU:Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunnyCore/RenderThread;->needRenderDueToAction:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    const/4 v14, 0x1

    .line 1361
    .local v14, needUnlockCPU:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreq:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 1363
    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreqAcquired:Z

    move/from16 v19, v0

    if-nez v19, :cond_f

    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreq:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->isHeld()Z

    move-result v19

    if-nez v19, :cond_5

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreq:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x7530

    invoke-virtual/range {v19 .. v21}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->acquire(J)V

    .line 1368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "iterate() mHtcCpuCtrlWrapFreq acquired. "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    :cond_5
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreqAcquired:Z

    .line 1390
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNum:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 1392
    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNumAcquired:Z

    move/from16 v19, v0

    if-nez v19, :cond_11

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNum:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->isHeld()Z

    move-result v19

    if-nez v19, :cond_7

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNum:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x7530

    invoke-virtual/range {v19 .. v21}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->acquire(J)V

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "iterate() mHtcCpuCtrlWrapNum acquired. "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    :cond_7
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNumAcquired:Z

    .line 1419
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunnyCore/RenderThread;->pauseRenderFlag:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 1421
    const/4 v13, 0x0

    .line 1422
    const/4 v6, 0x0

    .line 1425
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunnyCore/RenderThread;->forceDisableRenderingTimeMillis:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-lez v19, :cond_a

    .line 1427
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunnyCore/RenderThread;->forceDisableRenderingTimeMillis:J

    move-wide/from16 v19, v0

    cmp-long v19, v3, v19

    if-gtz v19, :cond_13

    .line 1429
    const/4 v13, 0x0

    .line 1437
    :cond_a
    :goto_5
    if-eqz v13, :cond_14

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->renderWindows:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 1440
    .local v17, w:Ljava/lang/Integer;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 1441
    .local v18, window:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->eventListener:Lcom/htc/sunnyCore/RenderThread$EventListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->eventListener:Lcom/htc/sunnyCore/RenderThread$EventListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/htc/sunnyCore/RenderThread$EventListener;->onRenderToWindowIRT(I)V

    .line 1444
    :cond_b
    invoke-static/range {v18 .. v18}, Lcom/htc/sunnyCore/SunnyCore;->Window_RenderWithoutPresent(I)V

    goto :goto_6

    .line 1356
    .end local v6           #hasRequestOfForceRenderOnce:Z
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v12           #needLockCPU:Z
    .end local v13           #needRender:Z
    .end local v14           #needUnlockCPU:Z
    .end local v17           #w:Ljava/lang/Integer;
    .end local v18           #window:I
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1359
    .restart local v6       #hasRequestOfForceRenderOnce:Z
    .restart local v13       #needRender:Z
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1360
    .restart local v12       #needLockCPU:Z
    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1372
    .restart local v14       #needUnlockCPU:Z
    :cond_f
    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreqAcquired:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreq:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->isHeld()Z

    move-result v19

    if-eqz v19, :cond_10

    .line 1378
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreq:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->release()V

    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "iterate() mHtcCpuCtrlWrapFreq released. "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1386
    :cond_10
    :goto_7
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreqAcquired:Z

    goto/16 :goto_3

    .line 1381
    :catch_0
    move-exception v5

    .line 1383
    .local v5, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "iterate() mHtcCpuCtrlWrapFreq release failed: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1401
    .end local v5           #e:Ljava/lang/Exception;
    :cond_11
    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNumAcquired:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 1403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNum:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->isHeld()Z

    move-result v19

    if-eqz v19, :cond_12

    .line 1407
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNum:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->release()V

    .line 1408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "iterate() mHtcCpuCtrlWrapNum released. "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1415
    :cond_12
    :goto_8
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNumAcquired:Z

    goto/16 :goto_4

    .line 1410
    :catch_1
    move-exception v5

    .line 1412
    .restart local v5       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "iterate() mHtcCpuCtrlWrapNum release failed: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1433
    .end local v5           #e:Ljava/lang/Exception;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/RenderThread;->cancelForceDisableRenderingBeforeTimeMillis()V

    goto/16 :goto_5

    .line 1458
    :cond_14
    const-wide/16 v10, 0x0

    .line 1459
    .local v10, limitedTimeMillis:J
    if-eqz v13, :cond_15

    .line 1461
    const-wide/16 v19, 0xd

    add-long v10, v3, v19

    .line 1468
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/htc/sunnyCore/RenderThread;->processPreparations(J)Z

    .line 1472
    const/4 v7, 0x0

    .line 1474
    .local v7, hasWindowPresented:Z
    if-eqz v13, :cond_18

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->renderWindows:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_16

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 1477
    .restart local v17       #w:Ljava/lang/Integer;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/htc/sunnyCore/SunnyCore;->Window_Present(I)V

    .line 1478
    const/4 v7, 0x1

    goto :goto_a

    .line 1465
    .end local v7           #hasWindowPresented:Z
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v17           #w:Ljava/lang/Integer;
    :cond_15
    const-wide/16 v19, 0x10

    add-long v10, v3, v19

    goto :goto_9

    .line 1488
    .restart local v7       #hasWindowPresented:Z
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_16
    if-eqz v6, :cond_17

    .line 1490
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunnyCore/RenderThread;->forceRenderOnce:Z

    .line 1492
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/RenderThread;->frameIndex:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunnyCore/RenderThread;->frameIndex:I

    .line 1495
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_18
    if-eqz v7, :cond_22

    .line 1497
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/RenderThread;->renderCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunnyCore/RenderThread;->renderCount:I

    .line 1518
    :cond_19
    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/sunnyCore/RenderThread;->lastPresentTimeMillis:J

    .line 1522
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunnyCore/RenderThread;->taskRequestRenderThreadRunning:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1a

    .line 1524
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/sunnyCore/RenderThread;->lastTimeRequestRenderThreadRunning:J

    .line 1527
    :cond_1a
    const/4 v9, 0x1

    .line 1529
    .local v9, keepRunning:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/RenderThread;->iterationCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunnyCore/RenderThread;->iterationCount:I

    .line 1530
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/RenderThread;->iterationCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    rem-int/lit16 v0, v0, 0x12c

    move/from16 v19, v0

    if-nez v19, :cond_1c

    .line 1532
    sget-boolean v19, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v19, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RenderThread is running "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->renderWindows:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/RenderThread;->renderCount:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :cond_1b
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunnyCore/RenderThread;->renderCount:I

    .line 1535
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunnyCore/RenderThread;->lastTimeRequestRenderThreadRunning:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x2710

    add-long v19, v19, v21

    cmp-long v19, v3, v19

    if-lez v19, :cond_1c

    .line 1537
    const/4 v9, 0x0

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "RenderThread decides to pause."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunnyCore/RenderThread;->taskRequestRenderThreadRunning:Z

    move/from16 v19, v0

    if-nez v19, :cond_1d

    .line 1546
    const/4 v9, 0x0

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "RenderThread: No running request."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreq:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1f

    if-nez v9, :cond_1f

    .line 1552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreq:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->isHeld()Z

    move-result v19

    if-eqz v19, :cond_1e

    .line 1556
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreq:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->release()V

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "iterate() mHtcCpuCtrlWrapFreq released. "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1564
    :cond_1e
    :goto_c
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreqAcquired:Z

    .line 1566
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNum:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_21

    if-nez v9, :cond_21

    .line 1568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNum:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->isHeld()Z

    move-result v19

    if-eqz v19, :cond_20

    .line 1572
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNum:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->release()V

    .line 1573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "iterate() mHtcCpuCtrlWrapNum released. "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 1580
    :cond_20
    :goto_d
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNumAcquired:Z

    .line 1585
    :cond_21
    return v9

    .line 1501
    .end local v9           #keepRunning:Z
    :cond_22
    const-wide/16 v19, 0x10

    add-long v19, v19, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v15, v19, v21

    .line 1502
    .local v15, sleepTime:J
    const-wide/16 v19, 0x0

    cmp-long v19, v15, v19

    if-lez v19, :cond_19

    .line 1504
    const-wide/16 v19, 0x3c

    cmp-long v19, v15, v19

    if-lez v19, :cond_23

    .line 1506
    const-wide/16 v15, 0x3c

    .line 1511
    :cond_23
    :try_start_4
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_b

    .line 1513
    :catch_2
    move-exception v19

    goto/16 :goto_b

    .line 1559
    .end local v15           #sleepTime:J
    .restart local v9       #keepRunning:Z
    :catch_3
    move-exception v5

    .line 1561
    .restart local v5       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "iterate() mHtcCpuCtrlWrapFreq release failed: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1575
    .end local v5           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v5

    .line 1577
    .restart local v5       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "iterate() mHtcCpuCtrlWrapNum release failed: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public onThreadBegin()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/sunnyCore/RenderThread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    .line 132
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/sunnyCore/RenderThread;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    :goto_0
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RenderThread begin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v1, 0x0

    .line 145
    .local v1, initFailed:Z
    :try_start_1
    new-instance v3, Lcom/htc/sunnyCore/Queue;

    const-string v4, "SunnyRT E"

    invoke-direct {v3, v4}, Lcom/htc/sunnyCore/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->events:Lcom/htc/sunnyCore/Queue;

    .line 146
    new-instance v3, Lcom/htc/sunnyCore/Queue;

    const-string v4, "SunnyRT EP"

    invoke-direct {v3, v4}, Lcom/htc/sunnyCore/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->eventsToProcess:Lcom/htc/sunnyCore/Queue;

    .line 148
    new-instance v3, Lcom/htc/sunnyCore/Queue;

    const-string v4, "SunnyRT A"

    invoke-direct {v3, v4}, Lcom/htc/sunnyCore/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actions:Lcom/htc/sunnyCore/Queue;

    .line 149
    new-instance v3, Lcom/htc/sunnyCore/Queue;

    const-string v4, "SunnyRT AP"

    invoke-direct {v3, v4}, Lcom/htc/sunnyCore/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actionsToProcess:Lcom/htc/sunnyCore/Queue;

    .line 150
    new-instance v3, Lcom/htc/sunnyCore/Queue;

    const-string v4, "SunnyRT AR"

    invoke-direct {v3, v4}, Lcom/htc/sunnyCore/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->actionsToRestore:Lcom/htc/sunnyCore/Queue;

    .line 152
    new-instance v3, Lcom/htc/sunnyCore/Queue;

    const-string v4, "SunnyRT P"

    invoke-direct {v3, v4}, Lcom/htc/sunnyCore/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparations:Lcom/htc/sunnyCore/Queue;

    .line 153
    new-instance v3, Lcom/htc/sunnyCore/Queue;

    const-string v4, "SunnyRT PP"

    invoke-direct {v3, v4}, Lcom/htc/sunnyCore/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsToProcess:Lcom/htc/sunnyCore/Queue;

    .line 154
    new-instance v3, Lcom/htc/sunnyCore/Queue;

    const-string v4, "SunnyRT PR"

    invoke-direct {v3, v4}, Lcom/htc/sunnyCore/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsToRestore:Lcom/htc/sunnyCore/Queue;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    :goto_1
    if-nez v1, :cond_0

    .line 166
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->eventListener:Lcom/htc/sunnyCore/RenderThread$EventListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->eventListener:Lcom/htc/sunnyCore/RenderThread$EventListener;

    invoke-interface {v3}, Lcom/htc/sunnyCore/RenderThread$EventListener;->onRenderStartIRT()Z

    move-result v3

    if-nez v3, :cond_0

    .line 168
    const/4 v1, 0x1

    .line 169
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "onThreadBegin() NG - cancel"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    if-eqz v1, :cond_1

    .line 177
    iput-object v6, p0, Lcom/htc/sunnyCore/RenderThread;->events:Lcom/htc/sunnyCore/Queue;

    .line 178
    iput-object v6, p0, Lcom/htc/sunnyCore/RenderThread;->eventsToProcess:Lcom/htc/sunnyCore/Queue;

    .line 180
    iput-object v6, p0, Lcom/htc/sunnyCore/RenderThread;->actions:Lcom/htc/sunnyCore/Queue;

    .line 181
    iput-object v6, p0, Lcom/htc/sunnyCore/RenderThread;->actionsToProcess:Lcom/htc/sunnyCore/Queue;

    .line 182
    iput-object v6, p0, Lcom/htc/sunnyCore/RenderThread;->actionsToRestore:Lcom/htc/sunnyCore/Queue;

    .line 184
    iput-object v6, p0, Lcom/htc/sunnyCore/RenderThread;->preparations:Lcom/htc/sunnyCore/Queue;

    .line 185
    iput-object v6, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsToProcess:Lcom/htc/sunnyCore/Queue;

    .line 186
    iput-object v6, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsToRestore:Lcom/htc/sunnyCore/Queue;

    .line 188
    iput-boolean v2, p0, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadExpired:Z

    .line 190
    const/4 v2, 0x0

    .line 197
    :goto_2
    return v2

    .line 156
    :catch_0
    move-exception v0

    .line 158
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    .line 159
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "onThreadBegin() NG - exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 195
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    iput-boolean v2, p0, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady:Z

    goto :goto_2

    .line 134
    .end local v1           #initFailed:Z
    :catch_1
    move-exception v3

    goto/16 :goto_0
.end method

.method public onThreadEnd()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 205
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "onThreadEnd() +"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreq:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreq:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    invoke-virtual {v1}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreq:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    invoke-virtual {v1}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->release()V

    .line 214
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "onThreadEnd() mHtcCpuCtrlWrapFreq released. "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNum:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNum:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    invoke-virtual {v1}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    :try_start_1
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNum:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    invoke-virtual {v1}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->release()V

    .line 230
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "onThreadEnd() mHtcCpuCtrlWrapNum released. "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 239
    :cond_1
    :goto_1
    iput-boolean v5, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNumAcquired:Z

    .line 240
    iput-boolean v5, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreqAcquired:Z

    .line 241
    iput-object v4, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNum:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    .line 242
    iput-object v4, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreq:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    .line 243
    iput-object v4, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcWrapPowerManager:Lcom/htc/wrap/android/os/HtcWrapPowerManager;

    .line 244
    iput-object v4, p0, Lcom/htc/sunnyCore/RenderThread;->mContextForLockCPU:Landroid/content/Context;

    .line 248
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadExpired:Z

    .line 252
    iput-object v4, p0, Lcom/htc/sunnyCore/RenderThread;->currentInterruption:Lcom/htc/sunnyCore/RenderThreadInterruption;

    .line 256
    sget-object v1, Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, v1}, Lcom/htc/sunnyCore/RenderThread;->doRemoveAllTaskIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V

    .line 260
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->eventListener:Lcom/htc/sunnyCore/RenderThread$EventListener;

    if-eqz v1, :cond_2

    .line 262
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->eventListener:Lcom/htc/sunnyCore/RenderThread$EventListener;

    invoke-interface {v1}, Lcom/htc/sunnyCore/RenderThread$EventListener;->onRenderStopIRT()V

    .line 265
    :cond_2
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "onThreadEnd() -"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RenderThread end "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onThreadEnd() mHtcCpuCtrlWrapFreq release failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 234
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onThreadEnd() mHtcCpuCtrlWrapNum release failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public pauseRender()V
    .locals 1

    .prologue
    .line 770
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/RenderThread;->pauseRenderFlag:Z

    return-void
.end method

.method public pushActionIHT(Lcom/htc/sunnyCore/RenderThreadAction;)Z
    .locals 3
    .parameter "action"

    .prologue
    const/4 v0, 0x0

    .line 718
    invoke-virtual {p0}, Lcom/htc/sunnyCore/RenderThread;->waitForRenderThreadReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 720
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "pushActionIHT() NG - render thread expired."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :goto_0
    return v0

    .line 726
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/RenderThread;->pushAction(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 728
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "pushActionIHT() NG"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 734
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunnyCore/RenderThread;->resumeThread()V

    .line 736
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z
    .locals 2
    .parameter "action"

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/RenderThread;->pushAction(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "pushActionIRT() NG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v0, 0x0

    .line 376
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 690
    invoke-virtual {p0}, Lcom/htc/sunnyCore/RenderThread;->waitForRenderThreadReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 692
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "pushEventIHT() NG - render thread expired."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :goto_0
    return v0

    .line 698
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/RenderThread;->pushEvent(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 700
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "pushEventIHT() NG"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 706
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunnyCore/RenderThread;->resumeThread()V

    .line 708
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pushEventIRT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushEventIRT () "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/sunnyCore/RenderThreadEvent;->GetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/RenderThread;->pushEvent(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "pushEventIRT() NG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v0, 0x0

    .line 362
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pushPreparationIHT(Lcom/htc/sunnyCore/RenderThreadPreparation;)Z
    .locals 3
    .parameter "preparation"

    .prologue
    const/4 v0, 0x0

    .line 746
    invoke-virtual {p0}, Lcom/htc/sunnyCore/RenderThread;->waitForRenderThreadReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 748
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "pushPreparationIHT() NG - render thread expired."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :goto_0
    return v0

    .line 754
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/RenderThread;->pushPreparation(Lcom/htc/sunnyCore/RenderThreadPreparation;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 756
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "pushPreparationIHT() NG"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 762
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunnyCore/RenderThread;->resumeThread()V

    .line 764
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pushPreparationIRT(Lcom/htc/sunnyCore/RenderThreadPreparation;)Z
    .locals 2
    .parameter "preparation"

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/RenderThread;->pushPreparation(Lcom/htc/sunnyCore/RenderThreadPreparation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "pushPreparationIRT() NG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v0, 0x0

    .line 390
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerRenderWindowIRT(I)Z
    .locals 4
    .parameter "window"

    .prologue
    const/4 v0, 0x0

    .line 291
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerRenderWindowIRT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    if-nez p1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "registerRenderWindow() NG - null window"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_0
    return v0

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->renderWindows:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerRenderWindow() NG - has window = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 304
    :cond_1
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->renderWindows:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 306
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "registerRenderWindow() NG - add window"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 310
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z
    .locals 3
    .parameter "action"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 441
    if-nez p1, :cond_1

    .line 443
    sget-boolean v1, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "removeActionIRT() NG - null action"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    :goto_0
    return v0

    .line 447
    :cond_1
    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->actions:Lcom/htc/sunnyCore/Queue;

    if-nez v2, :cond_2

    .line 448
    sget-boolean v1, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "removeActionIRT() NG - null actions queue"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 452
    :cond_2
    iget-boolean v2, p1, Lcom/htc/sunnyCore/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v2, :cond_0

    .line 457
    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->actions:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v2, p1}, Lcom/htc/sunnyCore/Queue;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v1, :cond_3

    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->actionsToProcess:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v2, p1}, Lcom/htc/sunnyCore/Queue;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v1, :cond_3

    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->actionsToRestore:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v2, p1}, Lcom/htc/sunnyCore/Queue;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 461
    :cond_3
    sget-object v0, Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;->MANUAL_REMOVE:Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, p1, v0}, Lcom/htc/sunnyCore/RenderThread;->doCancelTask(Lcom/htc/sunnyCore/RenderThreadTask;Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V

    move v0, v1

    .line 462
    goto :goto_0
.end method

.method public removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 7
    .parameter "actionHost"
    .parameter "actionName"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 473
    const-string v3, "SET_CONTEXT_FOR_LOCK_CPU"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 475
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreq:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    if-eqz v3, :cond_0

    .line 477
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreq:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    invoke-virtual {v3}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 481
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreq:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    invoke-virtual {v3}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->release()V

    .line 482
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "removeActionIRT() mHtcCpuCtrlWrapFreq released. "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNum:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    if-eqz v3, :cond_1

    .line 493
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNum:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    invoke-virtual {v3}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 497
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNum:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    invoke-virtual {v3}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->release()V

    .line 498
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "removeActionIRT() mHtcCpuCtrlWrapNum released. "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 507
    :cond_1
    :goto_1
    iput-boolean v2, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNumAcquired:Z

    .line 508
    iput-boolean v2, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreqAcquired:Z

    .line 509
    iput-object v6, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNum:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    .line 510
    iput-object v6, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreq:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    .line 511
    iput-object v6, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcWrapPowerManager:Lcom/htc/wrap/android/os/HtcWrapPowerManager;

    .line 512
    iput-object v6, p0, Lcom/htc/sunnyCore/RenderThread;->mContextForLockCPU:Landroid/content/Context;

    .line 514
    instance-of v2, p1, Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 516
    check-cast p1, Landroid/content/Context;

    .end local p1
    iput-object p1, p0, Lcom/htc/sunnyCore/RenderThread;->mContextForLockCPU:Landroid/content/Context;

    .line 518
    :cond_2
    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->mContextForLockCPU:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 520
    new-instance v2, Lcom/htc/wrap/android/os/HtcWrapPowerManager;

    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->mContextForLockCPU:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/wrap/android/os/HtcWrapPowerManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcWrapPowerManager:Lcom/htc/wrap/android/os/HtcWrapPowerManager;

    .line 523
    :try_start_2
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe1

    if-ne v2, v3, :cond_5

    .line 525
    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcWrapPowerManager:Lcom/htc/wrap/android/os/HtcWrapPowerManager;

    const/16 v3, 0x100

    const/4 v4, 0x3

    const-string v5, "SunnyCore RenderThread CPUFreq"

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/wrap/android/os/HtcWrapPowerManager;->newHtcCpuCtrlWrap(IILjava/lang/String;)Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreq:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    .line 531
    :goto_2
    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcWrapPowerManager:Lcom/htc/wrap/android/os/HtcWrapPowerManager;

    const/16 v3, 0x400

    const/4 v4, 0x2

    const-string v5, "SunnyCore RenderThread CPUNum"

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/wrap/android/os/HtcWrapPowerManager;->newHtcCpuCtrlWrap(IILjava/lang/String;)Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNum:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    .line 532
    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "removeActionIRT() get HtcCpuCtrlWrap. "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 541
    :cond_3
    :goto_3
    const/4 v2, 0x1

    .line 550
    :cond_4
    :goto_4
    return v2

    .line 484
    .restart local p1
    :catch_0
    move-exception v1

    .line 486
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeActionIRT() mHtcCpuCtrlWrapFreq release failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 500
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 502
    .restart local v1       #e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeActionIRT() mHtcCpuCtrlWrapNum release failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 529
    .end local v1           #e:Ljava/lang/Exception;
    .end local p1
    :cond_5
    :try_start_3
    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcWrapPowerManager:Lcom/htc/wrap/android/os/HtcWrapPowerManager;

    const/16 v3, 0x100

    const/4 v4, 0x2

    const-string v5, "SunnyCore RenderThread CPUFreq"

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/wrap/android/os/HtcWrapPowerManager;->newHtcCpuCtrlWrap(IILjava/lang/String;)Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreq:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 534
    :catch_2
    move-exception v1

    .line 536
    .local v1, e:Landroid/os/RemoteException;
    iput-object v6, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapNum:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    .line 537
    iput-object v6, p0, Lcom/htc/sunnyCore/RenderThread;->mHtcCpuCtrlWrapFreq:Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    .line 538
    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "removeActionIRT() NG - can\'t get HtcCpuCtrlWrap. "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 544
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local p1
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v0

    .line 545
    .local v0, action:Lcom/htc/sunnyCore/RenderThreadAction;
    if-eqz v0, :cond_4

    .line 550
    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    move-result v2

    goto :goto_4
.end method

.method public removeAllTaskIRT()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "removeAllTaskIRT()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    sget-object v0, Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;->MANUAL_REMOVE:Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, v0}, Lcom/htc/sunnyCore/RenderThread;->doRemoveAllTaskIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V

    .line 347
    return-void
.end method

.method public removePreparationIRT(Lcom/htc/sunnyCore/RenderThreadPreparation;)Z
    .locals 3
    .parameter "preparation"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 558
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 559
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t call removePreparationIRT in non-RenderThread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_0
    if-nez p1, :cond_2

    .line 564
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "removePreparationIRT() NG - null action"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_1
    :goto_0
    return v0

    .line 568
    :cond_2
    iget-boolean v2, p1, Lcom/htc/sunnyCore/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v2, :cond_1

    .line 573
    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->preparations:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v2, p1}, Lcom/htc/sunnyCore/Queue;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v1, :cond_3

    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsToProcess:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v2, p1}, Lcom/htc/sunnyCore/Queue;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v1, :cond_3

    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->preparationsToRestore:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v2, p1}, Lcom/htc/sunnyCore/Queue;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 577
    :cond_3
    sget-object v2, Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;->MANUAL_REMOVE:Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, p1, v2}, Lcom/htc/sunnyCore/RenderThread;->doCancelTask(Lcom/htc/sunnyCore/RenderThreadTask;Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V

    .line 578
    sget-object v2, Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;->MANUAL_REMOVE:Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;

    invoke-virtual {p1, v2}, Lcom/htc/sunnyCore/RenderThreadPreparation;->onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V

    .line 579
    invoke-virtual {p1}, Lcom/htc/sunnyCore/RenderThreadPreparation;->onRemovedIRT()V

    .line 580
    iput-boolean v0, p1, Lcom/htc/sunnyCore/RenderThreadTask;->isInRenderThreadQueue:Z

    move v0, v1

    .line 582
    goto :goto_0
.end method

.method public requestForceDisableRenderingBeforeTimeMillis(J)V
    .locals 2
    .parameter "timeMillis"

    .prologue
    .line 1593
    sget-boolean v0, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "requestForceDisableRenderingBeforeTimeMillis() +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/htc/sunnyCore/RenderThread;->forceDisableRenderingTimeMillis:J

    .line 1595
    return-void
.end method

.method public resumeRender()V
    .locals 1

    .prologue
    .line 775
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/RenderThread;->pauseRenderFlag:Z

    return-void
.end method

.method public runInterruptionIHT(Lcom/htc/sunnyCore/RenderThreadInterruption;)Z
    .locals 3
    .parameter "interruption"

    .prologue
    const/4 v0, 0x0

    .line 642
    invoke-virtual {p0}, Lcom/htc/sunnyCore/RenderThread;->waitForRenderThreadReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 644
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "runInterruptionIHT() NG - render thread expired."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :goto_0
    return v0

    .line 650
    :cond_0
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->currentInterruption:Lcom/htc/sunnyCore/RenderThreadInterruption;

    if-eqz v1, :cond_1

    .line 652
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "runInterruptionIHT() NG - already has interruption."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Run interruptionIHT in RenderThread - current thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iput-object p1, p0, Lcom/htc/sunnyCore/RenderThread;->currentInterruption:Lcom/htc/sunnyCore/RenderThreadInterruption;

    .line 662
    invoke-virtual {p0}, Lcom/htc/sunnyCore/RenderThread;->resumeThread()V

    .line 666
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for interruption finish. +  RenderThread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :goto_1
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThread;->currentInterruption:Lcom/htc/sunnyCore/RenderThreadInterruption;

    if-eqz v0, :cond_2

    .line 672
    const-wide/16 v0, 0x1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 674
    :catch_0
    move-exception v0

    goto :goto_1

    .line 678
    :cond_2
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for interruption finish. -  RenderThread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public unregisterRenderWindowIRT(I)Z
    .locals 7
    .parameter "window"

    .prologue
    const/4 v3, 0x0

    .line 318
    iget-object v4, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregisterRenderWindowIRT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    if-nez p1, :cond_0

    .line 322
    iget-object v4, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v5, "unregisterRenderWindow() NG - null window"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :goto_0
    return v3

    .line 326
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/htc/sunnyCore/RenderThread;->renderWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, s:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 328
    iget-object v4, p0, Lcom/htc/sunnyCore/RenderThread;->renderWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 329
    .local v2, w:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 331
    iget-object v3, p0, Lcom/htc/sunnyCore/RenderThread;->renderWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 332
    const/4 v3, 0x1

    goto :goto_0

    .line 326
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 336
    .end local v2           #w:Ljava/lang/Integer;
    :cond_2
    iget-object v4, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v5, "unregisterRenderWindow() NG - can not find the window"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public waitForRenderThreadReady()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 597
    iget-boolean v2, p0, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady:Z

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadExpired:Z

    if-nez v2, :cond_0

    .line 630
    :goto_0
    return v0

    .line 604
    :cond_0
    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "waitForRenderThreadReady() +"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_1
    iget-boolean v2, p0, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady:Z

    if-nez v2, :cond_2

    .line 610
    const-wide/16 v2, 0x1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :goto_1
    iget-boolean v2, p0, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadExpired:Z

    if-eqz v2, :cond_1

    .line 617
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "waitForRenderThreadReady() - expired"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 618
    goto :goto_0

    .line 622
    :cond_2
    iget-boolean v2, p0, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadExpired:Z

    if-eqz v2, :cond_3

    .line 624
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "waitForRenderThreadReady() - expired"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 625
    goto :goto_0

    .line 628
    :cond_3
    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "waitForRenderThreadReady() -"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 612
    :catch_0
    move-exception v2

    goto :goto_1
.end method
