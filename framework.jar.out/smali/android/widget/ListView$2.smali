.class Landroid/widget/ListView$2;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
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
    .line 4213
    iput-object p1, p0, Landroid/widget/ListView$2;->this$0:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .parameter "animation"

    .prologue
    .line 4215
    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4216
    .local v0, animatedView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 4218
    iget-object v1, p0, Landroid/widget/ListView$2;->this$0:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ListView;->invalidate(IIII)V

    .line 4220
    :cond_0
    return-void
.end method
