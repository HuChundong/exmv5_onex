.class Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$5;
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
    .line 2727
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 11

    .prologue
    const/4 v7, -0x1

    const/4 v10, 0x0

    const v9, 0x7f7fffff

    .line 2740
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getLastVisiblePosition()I

    move-result v3

    .line 2741
    .local v3, lastParent:I
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildLastVisiblePosition()I

    move-result v2

    .line 2743
    .local v2, lastChild:I
    if-eq v3, v7, :cond_0

    if-ne v2, v7, :cond_1

    .line 2789
    :cond_0
    return-void

    .line 2751
    :cond_1
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v6, v6, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 2752
    add-int/lit8 v1, v2, 0x1

    .local v1, i:I
    :goto_0
    if-gt v1, v3, :cond_0

    .line 2753
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v6, v6, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2754
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget-object v5, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    .line 2755
    .local v5, tempSView:Lcom/htc/sunnyCore/view/SView;
    invoke-virtual {v5}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v4

    .line 2756
    .local v4, tempPos:Lcom/htc/sunnyCore/view/Vector3F;
    iget v6, v4, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget v7, v4, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mParentExpandOutMoveDistance:I
    invoke-static {v8}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1100(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget v8, v4, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2757
    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mParentExpandOutMoveDistance:I
    invoke-static {v7}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1100(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    .line 2759
    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v7, v7, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewHeight:I

    neg-int v7, v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_2

    .line 2760
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->unlink()V

    .line 2761
    invoke-virtual {v5, v9, v9, v10}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2762
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v6, v6, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 2763
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v6, v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->addCellToRecycler(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)V

    .line 2764
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v6, v6, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-lt v6, v1, :cond_2

    .line 2765
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    add-int/lit8 v7, v1, -0x1

    iput v7, v6, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    .line 2752
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2771
    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v1           #i:I
    .end local v4           #tempPos:Lcom/htc/sunnyCore/view/Vector3F;
    .end local v5           #tempSView:Lcom/htc/sunnyCore/view/SView;
    :cond_3
    add-int/lit8 v1, v2, 0x1

    .restart local v1       #i:I
    :goto_1
    if-gt v1, v3, :cond_0

    .line 2772
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v6, v6, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2773
    .restart local v0       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget-object v5, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    .line 2774
    .restart local v5       #tempSView:Lcom/htc/sunnyCore/view/SView;
    invoke-virtual {v5}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v4

    .line 2775
    .restart local v4       #tempPos:Lcom/htc/sunnyCore/view/Vector3F;
    iget v6, v4, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mParentExpandOutMoveDistance:I
    invoke-static {v7}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1100(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, v4, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget v8, v4, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2776
    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mParentExpandOutMoveDistance:I
    invoke-static {v7}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1100(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    .line 2778
    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v7, v7, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewWidth:I

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_4

    .line 2779
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->unlink()V

    .line 2780
    invoke-virtual {v5, v9, v9, v10}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2781
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v6, v6, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 2782
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v6, v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->addCellToRecycler(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)V

    .line 2783
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v6, v6, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-lt v6, v1, :cond_4

    .line 2784
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$5;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    add-int/lit8 v7, v1, -0x1

    iput v7, v6, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    .line 2771
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onAnimationStart()V
    .locals 0

    .prologue
    .line 2733
    return-void
.end method
