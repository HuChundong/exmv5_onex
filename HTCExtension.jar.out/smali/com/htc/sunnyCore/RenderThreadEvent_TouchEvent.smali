.class public Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;
.super Lcom/htc/sunnyCore/RenderThreadEvent;
.source "RenderThreadEvent_TouchEvent.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static RecycleEvents:Lcom/htc/sunnyCore/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunnyCore/Queue",
            "<",
            "Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static RecycleEventsLocker:Ljava/lang/Integer;


# instance fields
.field protected mEventName:Ljava/lang/String;

.field private mMotionEvent1:Landroid/view/MotionEvent;

.field private mMotionEvent2:Landroid/view/MotionEvent;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mVariX:F

.field private mVariY:F

.field touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 176
    new-instance v0, Lcom/htc/sunnyCore/Queue;

    const-string v1, "sunnyETE"

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/Queue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->RecycleEvents:Lcom/htc/sunnyCore/Queue;

    .line 177
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->RecycleEventsLocker:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "host"
    .parameter "name"
    .parameter "touchListener"
    .parameter "motionEvent"

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    .line 26
    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent2:Landroid/view/MotionEvent;

    .line 31
    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 33
    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    .line 48
    iput-object p2, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->reset(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/MotionEvent;)V

    .line 50
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 1
    .parameter "host"
    .parameter "name"
    .parameter "touchListener"
    .parameter "motionEvent1"
    .parameter "motionEvent2"
    .parameter "variX"
    .parameter "variY"

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    .line 26
    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent2:Landroid/view/MotionEvent;

    .line 31
    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 33
    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    .line 57
    iput-object p2, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    .line 58
    invoke-direct/range {p0 .. p7}, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->reset(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 59
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .parameter "host"
    .parameter "name"
    .parameter "touchListener"
    .parameter "detector"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    .line 26
    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent2:Landroid/view/MotionEvent;

    .line 31
    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 33
    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->reset(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/ScaleGestureDetector;)V

    .line 42
    return-void
.end method

.method public static Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;
    .locals 4
    .parameter "host"
    .parameter "name"
    .parameter "touchListener"
    .parameter "motionEvent"

    .prologue
    .line 209
    const/4 v1, 0x0

    .line 210
    .local v1, event:Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;
    sget-object v3, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->RecycleEventsLocker:Ljava/lang/Integer;

    monitor-enter v3

    .line 212
    :try_start_0
    sget-object v2, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->RecycleEvents:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;

    move-object v1, v0

    .line 213
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    if-nez v1, :cond_0

    .line 217
    new-instance v1, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;

    .end local v1           #event:Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/MotionEvent;)V

    .line 224
    .restart local v1       #event:Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;
    :goto_0
    return-object v1

    .line 213
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 221
    :cond_0
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->reset(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public static Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;
    .locals 9
    .parameter "host"
    .parameter "name"
    .parameter "touchListener"
    .parameter "motionEvent1"
    .parameter "motionEvent2"
    .parameter "variX"
    .parameter "variY"

    .prologue
    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, event:Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;
    sget-object v3, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->RecycleEventsLocker:Ljava/lang/Integer;

    monitor-enter v3

    .line 237
    :try_start_0
    sget-object v2, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->RecycleEvents:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;

    move-object v1, v0

    .line 238
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    if-nez v1, :cond_0

    .line 242
    new-instance v1, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;

    .end local v1           #event:Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 250
    .restart local v1       #event:Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;
    :goto_0
    return-object v1

    .line 238
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    .line 247
    invoke-direct/range {v1 .. v8}, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->reset(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    goto :goto_0
.end method

.method public static Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/ScaleGestureDetector;)Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;
    .locals 4
    .parameter "host"
    .parameter "name"
    .parameter "touchListener"
    .parameter "detector"

    .prologue
    .line 185
    const/4 v1, 0x0

    .line 186
    .local v1, event:Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;
    sget-object v3, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->RecycleEventsLocker:Ljava/lang/Integer;

    monitor-enter v3

    .line 188
    :try_start_0
    sget-object v2, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->RecycleEvents:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;

    move-object v1, v0

    .line 189
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    if-nez v1, :cond_0

    .line 193
    new-instance v1, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;

    .end local v1           #event:Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/ScaleGestureDetector;)V

    .line 200
    .restart local v1       #event:Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;
    :goto_0
    return-object v1

    .line 189
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 197
    :cond_0
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->reset(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/ScaleGestureDetector;)V

    goto :goto_0
.end method

.method private static Recycle(Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 256
    if-nez p0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 261
    :cond_0
    sget-object v1, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->RecycleEventsLocker:Ljava/lang/Integer;

    monitor-enter v1

    .line 263
    :try_start_0
    sget-object v0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->RecycleEvents:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v0, p0}, Lcom/htc/sunnyCore/Queue;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    const-string v0, "sunnyETE"

    const-string v2, "RecycleEvents.add() NG"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
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

.method private reset(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "host"
    .parameter "name"
    .parameter "touchListener"
    .parameter "motionEvent"

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lcom/htc/sunnyCore/RenderThreadEvent;->reset(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iput-object p2, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    .line 81
    iput-object p4, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    .line 82
    return-void
.end method

.method private reset(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .parameter "host"
    .parameter "name"
    .parameter "touchListener"
    .parameter "motionEvent1"
    .parameter "motionEvent2"
    .parameter "variX"
    .parameter "variY"

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lcom/htc/sunnyCore/RenderThreadEvent;->reset(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iput-object p2, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    .line 69
    iput-object p4, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    .line 70
    iput-object p5, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent2:Landroid/view/MotionEvent;

    .line 71
    iput p6, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mVariX:F

    .line 72
    iput p7, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mVariY:F

    .line 73
    return-void
.end method

.method private reset(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter "host"
    .parameter "name"
    .parameter "touchListener"
    .parameter "detector"

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Lcom/htc/sunnyCore/RenderThreadEvent;->reset(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iput-object p2, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    .line 90
    iput-object p4, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 91
    return-void
.end method


# virtual methods
.method public free()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 101
    iput-object v1, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent2:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent2:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 107
    iput-object v1, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent2:Landroid/view/MotionEvent;

    .line 109
    :cond_1
    iput-object v1, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    .line 110
    iput-object v1, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 111
    invoke-super {p0}, Lcom/htc/sunnyCore/RenderThreadEvent;->free()V

    .line 112
    return-void
.end method

.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 162
    return-void
.end method

.method public onProcessEventIRT()V
    .locals 5

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    if-nez v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onSingleTapUp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/htc/sunnyCore/GLView$TouchListener;->onSingleTapUpIRT(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onLongPress"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/htc/sunnyCore/GLView$TouchListener;->onLongPressIRT(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onScroll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 130
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent2:Landroid/view/MotionEvent;

    iget v3, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mVariX:F

    iget v4, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mVariY:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/htc/sunnyCore/GLView$TouchListener;->onScrollIRT(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0

    .line 131
    :cond_4
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onFling"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent2:Landroid/view/MotionEvent;

    iget v3, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mVariX:F

    iget v4, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mVariY:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/htc/sunnyCore/GLView$TouchListener;->onFlingIRT(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0

    .line 133
    :cond_5
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onShowPress"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 134
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/htc/sunnyCore/GLView$TouchListener;->onShowPressIRT(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 135
    :cond_6
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onDown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 136
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/htc/sunnyCore/GLView$TouchListener;->onDownIRT(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 137
    :cond_7
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onDoubleTap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 138
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/htc/sunnyCore/GLView$TouchListener;->onDoubleTapIRT(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 139
    :cond_8
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onDoubleTapEvent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 140
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/htc/sunnyCore/GLView$TouchListener;->onDoubleTapEventIRT(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 141
    :cond_9
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onSingleTapConfirmed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 142
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/htc/sunnyCore/GLView$TouchListener;->onSingleTapConfirmedIRT(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 143
    :cond_a
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onScale"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 144
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-interface {v0, v1}, Lcom/htc/sunnyCore/GLView$TouchListener;->onScaleIRT(Landroid/view/ScaleGestureDetector;)Z

    goto/16 :goto_0

    .line 145
    :cond_b
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onScaleBegin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 146
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-interface {v0, v1}, Lcom/htc/sunnyCore/GLView$TouchListener;->onScaleBeginIRT(Landroid/view/ScaleGestureDetector;)Z

    goto/16 :goto_0

    .line 147
    :cond_c
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onScaleEnd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 148
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-interface {v0, v1}, Lcom/htc/sunnyCore/GLView$TouchListener;->onScaleEndIRT(Landroid/view/ScaleGestureDetector;)V

    goto/16 :goto_0

    .line 149
    :cond_d
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onUp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 150
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/htc/sunnyCore/GLView$TouchListener;->onUpIRT(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 151
    :cond_e
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mEventName:Ljava/lang/String;

    const-string v1, "onScrollEnd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    iget-object v1, p0, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->mMotionEvent1:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/htc/sunnyCore/GLView$TouchListener;->onScrollEndIRT(Landroid/view/MotionEvent;)V

    goto/16 :goto_0
.end method

.method public onRemovedIRT()V
    .locals 0

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->free()V

    .line 170
    invoke-static {p0}, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->Recycle(Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;)V

    .line 171
    return-void
.end method
