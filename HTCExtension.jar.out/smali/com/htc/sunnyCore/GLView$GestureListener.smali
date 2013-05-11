.class Lcom/htc/sunnyCore/GLView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunnyCore/GLView;


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/GLView;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    const-string v1, "onDoubleTap"

    iget-object v2, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunnyCore/GLView;->access$400(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    .line 476
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    const-string v1, "onDoubleTapEvent"

    iget-object v2, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunnyCore/GLView;->access$400(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    .line 484
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    const-string v1, "onDown"

    iget-object v2, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunnyCore/GLView;->access$400(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    .line 468
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 450
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v7

    const-string v1, "onFling"

    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$400(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    move-object v0, p0

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    .line 453
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->mZoomGesture:Z
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$500(Lcom/htc/sunnyCore/GLView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$400(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/GLView$TouchListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 431
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$400(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/GLView$TouchListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/sunnyCore/GLView$TouchListener;->onLongPressIHT(Landroid/view/MotionEvent;)V

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    const-string v1, "onLongPress"

    iget-object v2, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunnyCore/GLView;->access$400(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 441
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v7

    const-string v1, "onScroll"

    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$400(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    move-object v0, p0

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    .line 444
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    const-string v1, "onShowPress"

    iget-object v2, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunnyCore/GLView;->access$400(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    .line 461
    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    .line 489
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$400(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/GLView$TouchListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$400(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/GLView$TouchListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/sunnyCore/GLView$TouchListener;->onSingleTapConfirmedIHT(Landroid/view/MotionEvent;)Z

    move-result v0

    if-ne v4, v0, :cond_1

    .line 496
    :cond_0
    :goto_0
    return v4

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    const-string v1, "onSingleTapConfirmed"

    iget-object v2, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunnyCore/GLView;->access$400(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    .line 417
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$400(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/GLView$TouchListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$400(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/GLView$TouchListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/sunnyCore/GLView$TouchListener;->onSingleTapUpIHT(Landroid/view/MotionEvent;)Z

    move-result v0

    if-ne v4, v0, :cond_1

    .line 424
    :cond_0
    :goto_0
    return v4

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    const-string v1, "onSingleTapUp"

    iget-object v2, p0, Lcom/htc/sunnyCore/GLView$GestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunnyCore/GLView;->access$400(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    goto :goto_0
.end method
