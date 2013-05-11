.class Lcom/htc/videowidget/videoview/widget/LockScreenView$2;
.super Ljava/lang/Object;
.source "LockScreenView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/widget/LockScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/widget/LockScreenView;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$2;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$2;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    #calls: Lcom/htc/videowidget/videoview/widget/LockScreenView;->hideRing()V
    invoke-static {v0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->access$100(Lcom/htc/videowidget/videoview/widget/LockScreenView;)V

    .line 352
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$2;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->viewScorllToOrigin()V

    .line 353
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$2;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->resetTouchConst()V

    .line 354
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$2;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    #calls: Lcom/htc/videowidget/videoview/widget/LockScreenView;->disableVKLock()V
    invoke-static {v0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->access$200(Lcom/htc/videowidget/videoview/widget/LockScreenView;)V

    .line 355
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$2;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    #calls: Lcom/htc/videowidget/videoview/widget/LockScreenView;->stopMonitor()V
    invoke-static {v0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->access$300(Lcom/htc/videowidget/videoview/widget/LockScreenView;)V

    .line 356
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$2;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$2;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    #getter for: Lcom/htc/videowidget/videoview/widget/LockScreenView;->mListener:Lcom/htc/videowidget/videoview/widget/LockScreenView$OnLockModeChangeListener;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->access$400(Lcom/htc/videowidget/videoview/widget/LockScreenView;)Lcom/htc/videowidget/videoview/widget/LockScreenView$OnLockModeChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$2;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    #getter for: Lcom/htc/videowidget/videoview/widget/LockScreenView;->mListener:Lcom/htc/videowidget/videoview/widget/LockScreenView$OnLockModeChangeListener;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->access$400(Lcom/htc/videowidget/videoview/widget/LockScreenView;)Lcom/htc/videowidget/videoview/widget/LockScreenView$OnLockModeChangeListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/videowidget/videoview/widget/LockScreenView$OnLockModeChangeListener;->lockModeChange(Z)V

    .line 361
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 365
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 369
    return-void
.end method
