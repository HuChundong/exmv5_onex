.class public abstract Landroid/view/InputEventReceiver;
.super Ljava/lang/Object;
.source "InputEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputEventReceiver$Factory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InputEventReceiver"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mInputChannel:Landroid/view/InputChannel;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mReceiverPtr:I

.field private final mSeqMap:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 2
    .parameter "inputChannel"
    .parameter "looper"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 46
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    if-nez p2, :cond_1

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "looper must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    iput-object p1, p0, Landroid/view/InputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    .line 70
    invoke-virtual {p2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    .line 71
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    invoke-static {p0, p1, v0}, Landroid/view/InputEventReceiver;->nativeInit(Landroid/view/InputEventReceiver;Landroid/view/InputChannel;Landroid/os/MessageQueue;)I

    move-result v0

    iput v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:I

    .line 73
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private dispatchBatchedInputEventPending()V
    .locals 0

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/view/InputEventReceiver;->onBatchedInputEventPending()V

    .line 191
    return-void
.end method

.method private dispatchInputEvent(ILandroid/view/InputEvent;)V
    .locals 2
    .parameter "seq"
    .parameter "event"

    .prologue
    .line 179
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "dispatchInputEvent"

    invoke-direct {p0, p2, v0}, Landroid/view/InputEventReceiver;->printEventLog(Landroid/view/InputEvent;Ljava/lang/String;)V

    .line 183
    :cond_0
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 184
    invoke-virtual {p0, p2}, Landroid/view/InputEventReceiver;->onInputEvent(Landroid/view/InputEvent;)V

    .line 185
    return-void
.end method

.method private static native nativeConsumeBatchedInputEvents(IJ)V
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeFinishInputEvent(IIZ)V
.end method

.method private static native nativeInit(Landroid/view/InputEventReceiver;Landroid/view/InputChannel;Landroid/os/MessageQueue;)I
.end method

.method private printEventLog(Landroid/view/InputEvent;Ljava/lang/String;)V
    .locals 5
    .parameter "event"
    .parameter "prefix"

    .prologue
    const/4 v3, 0x1

    .line 200
    instance-of v2, p1, Landroid/view/KeyEvent;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 201
    check-cast v0, Landroid/view/KeyEvent;

    .line 202
    .local v0, keyevent:Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-ge v2, v3, :cond_0

    .line 203
    const-string v2, "InputEventReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .end local v0           #keyevent:Landroid/view/KeyEvent;
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    instance-of v2, p1, Landroid/view/MotionEvent;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 206
    check-cast v1, Landroid/view/MotionEvent;

    .line 207
    .local v1, motionevent:Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 208
    :cond_2
    const-string v2, "InputEventReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final consumeBatchedInputEvents(J)V
    .locals 2
    .parameter "frameTimeNanos"

    .prologue
    .line 167
    iget v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:I

    if-nez v0, :cond_0

    .line 168
    const-string v0, "InputEventReceiver"

    const-string v1, "Attempted to consume batched input events but the input event receiver has already been disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iget v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:I

    invoke-static {v0, p1, p2}, Landroid/view/InputEventReceiver;->nativeConsumeBatchedInputEvents(IJ)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 92
    :cond_0
    iget v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:I

    if-eqz v0, :cond_1

    .line 93
    iget v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:I

    invoke-static {v0}, Landroid/view/InputEventReceiver;->nativeDispose(I)V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:I

    .line 96
    :cond_1
    iput-object v1, p0, Landroid/view/InputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    .line 97
    iput-object v1, p0, Landroid/view/InputEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    .line 98
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 79
    :try_start_0
    invoke-virtual {p0}, Landroid/view/InputEventReceiver;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 83
    return-void

    .line 81
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final finishInputEvent(Landroid/view/InputEvent;Z)V
    .locals 4
    .parameter "event"
    .parameter "handled"

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "event must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_0
    iget v2, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:I

    if-nez v2, :cond_1

    .line 136
    const-string v2, "InputEventReceiver"

    const-string v3, "Attempted to finish an input event but the input event receiver has already been disposed."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycleIfNeededAfterDispatch()V

    .line 154
    return-void

    .line 139
    :cond_1
    iget-object v2, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 140
    .local v0, index:I
    if-gez v0, :cond_2

    .line 141
    const-string v2, "InputEventReceiver"

    const-string v3, "Attempted to finish an input event that is not in progress."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :cond_2
    iget-object v2, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 144
    .local v1, seq:I
    iget-object v2, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 146
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_3

    .line 147
    const-string v2, "finishInputEvent"

    invoke-direct {p0, p1, v2}, Landroid/view/InputEventReceiver;->printEventLog(Landroid/view/InputEvent;Ljava/lang/String;)V

    .line 150
    :cond_3
    iget v2, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:I

    invoke-static {v2, v1, p2}, Landroid/view/InputEventReceiver;->nativeFinishInputEvent(IIZ)V

    goto :goto_0
.end method

.method public onBatchedInputEventPending()V
    .locals 2

    .prologue
    .line 121
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/InputEventReceiver;->consumeBatchedInputEvents(J)V

    .line 122
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 110
    return-void
.end method
