.class Lcom/htc/videowidget/videoview/widget/LockScreenView$4;
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
    .line 452
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$4;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$4;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    #getter for: Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingWaveStatus:I
    invoke-static {v0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->access$600(Lcom/htc/videowidget/videoview/widget/LockScreenView;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$4;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    #getter for: Lcom/htc/videowidget/videoview/widget/LockScreenView;->m_RingWaveStatus:I
    invoke-static {v0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->access$600(Lcom/htc/videowidget/videoview/widget/LockScreenView;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 457
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$4;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    #getter for: Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgRingWave:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->access$700(Lcom/htc/videowidget/videoview/widget/LockScreenView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$4;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    invoke-static {v0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->access$608(Lcom/htc/videowidget/videoview/widget/LockScreenView;)I

    .line 459
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$4;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->startRingWaveAnimation()V

    .line 461
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 465
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/LockScreenView$4;->this$0:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    #getter for: Lcom/htc/videowidget/videoview/widget/LockScreenView;->mImgRingWave:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->access$700(Lcom/htc/videowidget/videoview/widget/LockScreenView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 470
    return-void
.end method
