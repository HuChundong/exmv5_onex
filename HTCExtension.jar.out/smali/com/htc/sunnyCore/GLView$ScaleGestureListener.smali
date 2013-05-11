.class Lcom/htc/sunnyCore/GLView$ScaleGestureListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScaleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunnyCore/GLView;


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/GLView;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/htc/sunnyCore/GLView$ScaleGestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .parameter "detector"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$ScaleGestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$ScaleGestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    const-string v1, "onScale"

    iget-object v2, p0, Lcom/htc/sunnyCore/GLView$ScaleGestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunnyCore/GLView;->access$400(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/GLView$TouchListener;

    move-result-object v2

    invoke-static {p0, v1, v2, p1}, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/ScaleGestureDetector;)Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    .line 530
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .parameter "detector"

    .prologue
    const/4 v3, 0x1

    .line 512
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$ScaleGestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #setter for: Lcom/htc/sunnyCore/GLView;->mZoomGesture:Z
    invoke-static {v0, v3}, Lcom/htc/sunnyCore/GLView;->access$502(Lcom/htc/sunnyCore/GLView;Z)Z

    .line 513
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$ScaleGestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$ScaleGestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    const-string v1, "onScaleBegin"

    iget-object v2, p0, Lcom/htc/sunnyCore/GLView$ScaleGestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunnyCore/GLView;->access$400(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/GLView$TouchListener;

    move-result-object v2

    invoke-static {p0, v1, v2, p1}, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/ScaleGestureDetector;)Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    .line 517
    :cond_0
    return v3
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 3
    .parameter "detector"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$ScaleGestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$ScaleGestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunnyCore/GLView;->access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    const-string v1, "onScaleEnd"

    iget-object v2, p0, Lcom/htc/sunnyCore/GLView$ScaleGestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    #getter for: Lcom/htc/sunnyCore/GLView;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunnyCore/GLView;->access$400(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/GLView$TouchListener;

    move-result-object v2

    invoke-static {p0, v1, v2, p1}, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/ScaleGestureDetector;)Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView$ScaleGestureListener;->this$0:Lcom/htc/sunnyCore/GLView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/sunnyCore/GLView;->mZoomGesture:Z
    invoke-static {v0, v1}, Lcom/htc/sunnyCore/GLView;->access$502(Lcom/htc/sunnyCore/GLView;Z)Z

    .line 544
    return-void
.end method
