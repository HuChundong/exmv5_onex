.class Lcom/htc/sunnyCore/view/SSurfaceView$TouchEventRTEvent;
.super Lcom/htc/sunnyCore/RenderThreadEvent;
.source "SSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/view/SSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchEventRTEvent"
.end annotation


# instance fields
.field private mEvent:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/htc/sunnyCore/view/SSurfaceView;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/view/SSurfaceView;Landroid/view/MotionEvent;)V
    .locals 1
    .parameter
    .parameter "event"

    .prologue
    .line 507
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$TouchEventRTEvent;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    .line 508
    const-string v0, "TouchEvent"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunnyCore/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    iput-object p2, p0, Lcom/htc/sunnyCore/view/SSurfaceView$TouchEventRTEvent;->mEvent:Landroid/view/MotionEvent;

    .line 510
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 516
    return-void
.end method

.method public onProcessEventIRT()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$TouchEventRTEvent;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget-object v0, v0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$TouchEventRTEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 522
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$TouchEventRTEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 523
    return-void
.end method

.method public onRemovedIRT()V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$TouchEventRTEvent;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    #calls: Lcom/htc/sunnyCore/view/SSurfaceView;->recycleTouchEventRTEvent(Lcom/htc/sunnyCore/view/SSurfaceView$TouchEventRTEvent;)V
    invoke-static {v0, p0}, Lcom/htc/sunnyCore/view/SSurfaceView;->access$100(Lcom/htc/sunnyCore/view/SSurfaceView;Lcom/htc/sunnyCore/view/SSurfaceView$TouchEventRTEvent;)V

    .line 534
    return-void
.end method

.method public reset(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$TouchEventRTEvent;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    const-string v1, "TouchEvent"

    invoke-super {p0, v0, v1}, Lcom/htc/sunnyCore/RenderThreadEvent;->reset(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$TouchEventRTEvent;->mEvent:Landroid/view/MotionEvent;

    .line 529
    return-void
.end method
