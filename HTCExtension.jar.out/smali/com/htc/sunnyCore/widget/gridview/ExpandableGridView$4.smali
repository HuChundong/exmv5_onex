.class Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$4;
.super Ljava/lang/Object;
.source "ExpandableGridView.java"

# interfaces
.implements Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 2699
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$4;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2710
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$4;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v1, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    if-ne v1, v2, :cond_0

    .line 2711
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$4;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunnyCore/view/SView;
    invoke-static {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1000(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)Lcom/htc/sunnyCore/view/SView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    .line 2713
    new-instance v0, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    .line 2715
    .local v0, controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 2716
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    .line 2717
    sget-object v1, Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;->EASEOUT_QUARTIC:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 2718
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$4;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunnyCore/view/SView;
    invoke-static {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1000(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)Lcom/htc/sunnyCore/view/SView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/view/SView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 2720
    .end local v0           #controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .prologue
    .line 2703
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$4;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;
    invoke-static {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$900(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)Lcom/htc/sunnyCore/view/SView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    .line 2704
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$4;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;
    invoke-static {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$900(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)Lcom/htc/sunnyCore/view/SView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/SView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 2705
    return-void
.end method
