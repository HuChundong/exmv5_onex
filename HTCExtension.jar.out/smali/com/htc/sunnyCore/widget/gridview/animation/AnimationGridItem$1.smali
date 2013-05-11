.class Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem$1;
.super Ljava/lang/Object;
.source "AnimationGridItem.java"

# interfaces
.implements Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->onClickAnimation(Lcom/htc/sunnyCore/view/SView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;

.field final synthetic val$view:Lcom/htc/sunnyCore/view/SView;


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;Lcom/htc/sunnyCore/view/SView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem$1;->this$0:Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;

    iput-object p2, p0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem$1;->val$view:Lcom/htc/sunnyCore/view/SView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    .line 82
    .local v0, controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem$1;->this$0:Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->mDurationClickAnimOut:I
    invoke-static {v1}, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->access$000(Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    .line 83
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 84
    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->access$100()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v1

    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->access$200()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 85
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem$1;->val$view:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/view/SView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 86
    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method
