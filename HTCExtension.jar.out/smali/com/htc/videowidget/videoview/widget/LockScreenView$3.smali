.class Lcom/htc/videowidget/videoview/widget/LockScreenView$3;
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
    .line 373
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$3;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$3;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->startRingShockAnimation()V

    .line 377
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$3;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    #getter for: Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingShockStatus:I
    invoke-static {v0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->access$500(Lcom/htc/videowidget/videoview/widget/LockScreenView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 379
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$3;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->startRingWaveAnimation()V

    .line 381
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 385
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 389
    return-void
.end method
