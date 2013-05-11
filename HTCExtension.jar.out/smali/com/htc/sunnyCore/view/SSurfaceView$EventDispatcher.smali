.class public Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;
.super Lcom/htc/sunnyCore/RenderThreadHandler;
.source "SSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/view/SSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventDispatcher"
.end annotation


# static fields
.field static final EVENT_ADD_VIEW:I = 0x2

.field static final EVENT_KEY_EVENT:I = 0x6

.field static final EVENT_REFRESH_RENDER_ORDER:I = 0x4

.field static final EVENT_REMOVE_VIEW:I = 0x3

.field static final EVENT_SET_GLOBAL_BKG:I = 0x5

.field static final EVENT_TOUCH_EVENT:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/htc/sunnyCore/view/SSurfaceView;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/view/SSurfaceView;Ljava/lang/Object;Lcom/htc/sunnyCore/RenderThread;)V
    .locals 1
    .parameter
    .parameter "host"
    .parameter "thread"

    .prologue
    .line 1453
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    .line 1454
    const-string v0, "EventDispatcher"

    invoke-direct {p0, p2, v0, p3}, Lcom/htc/sunnyCore/RenderThreadHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/RenderThread;)V

    .line 1455
    return-void
.end method


# virtual methods
.method public handleMessage(Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1458
    iget v1, p1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1499
    :goto_0
    return-void

    .line 1461
    :pswitch_0
    iget-object v0, p1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    .line 1462
    .local v0, event:Landroid/view/MotionEvent;
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget-object v1, v1, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 1463
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 1469
    .end local v0           #event:Landroid/view/MotionEvent;
    :pswitch_1
    iget-object v0, p1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 1470
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget-object v1, v1, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->dispatchKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 1476
    .end local v0           #event:Landroid/view/KeyEvent;
    :pswitch_2
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget-object v2, v1, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    iget-object v1, p1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v2, v1}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->addView(Lcom/htc/sunnyCore/view/SView;)V

    goto :goto_0

    .line 1482
    :pswitch_3
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget-object v2, v1, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    iget-object v1, p1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v2, v1}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->removeView(Lcom/htc/sunnyCore/view/SView;)V

    goto :goto_0

    .line 1488
    :pswitch_4
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget-object v1, v1, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    iget-object v2, p1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->refreshRenderOrder(Ljava/lang/Object;)V

    goto :goto_0

    .line 1493
    :pswitch_5
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget-object v2, v1, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    iget-object v1, p1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->setGlobalBackgroundResource(I)V

    goto :goto_0

    .line 1458
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method
