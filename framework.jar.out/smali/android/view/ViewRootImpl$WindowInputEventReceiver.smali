.class final Landroid/view/ViewRootImpl$WindowInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "inputChannel"
    .parameter "looper"

    .prologue
    .line 4656
    iput-object p1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    .line 4657
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 4658
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 4681
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    .line 4682
    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 4683
    return-void
.end method

.method public onBatchedInputEventPending()V
    .locals 1

    .prologue
    .line 4676
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 4677
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 4662
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p0, v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 4666
    sget-boolean v0, Lcom/htc/utils/PerformanceLogUtil;->Enabled:Z

    if-eqz v0, :cond_0

    .line 4667
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    .line 4668
    check-cast p1, Landroid/view/KeyEvent;

    .end local p1
    invoke-static {p1}, Lcom/htc/utils/PerformanceLogUtil;->logDispatchKeyEvent(Landroid/view/KeyEvent;)V

    .line 4672
    :cond_0
    return-void
.end method
