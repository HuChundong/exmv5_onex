.class Landroid/widget/ListView$1;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/widget/ListView;)V
    .locals 0
    .parameter

    .prologue
    .line 3873
    iput-object p1, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 3876
    iget-object v0, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    #calls: Landroid/widget/ListView;->doAnimFinalize()V
    invoke-static {v0}, Landroid/widget/ListView;->access$200(Landroid/widget/ListView;)V

    .line 3877
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 3885
    iget-object v0, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    iget-object v0, v0, Landroid/widget/ListView;->mBouncingMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 3886
    iget-object v0, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    iget-object v0, v0, Landroid/widget/ListView;->mBouncingMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 3887
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    #calls: Landroid/widget/ListView;->doAnimFinalize()V
    invoke-static {v0}, Landroid/widget/ListView;->access$200(Landroid/widget/ListView;)V

    .line 3888
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 3881
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 3892
    iget-object v0, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    iget-object v0, v0, Landroid/widget/ListView;->mBouncingMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 3893
    iget-object v0, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    iget-object v0, v0, Landroid/widget/ListView;->mBouncingMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 3894
    :cond_0
    return-void
.end method
