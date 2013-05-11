.class Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;
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
    .line 2826
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 14

    .prologue
    .line 2836
    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1200()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1300()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "+++ mShrinkAnimListenr, onAnimationEnd +++ mCollapseChildType: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCollapseChildType:I
    invoke-static {v13}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1400(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    :cond_0
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const/4 v12, 0x1

    #setter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewCollapsed:Z
    invoke-static {v11, v12}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$202(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Z)Z

    .line 2845
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v11}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildFirstVisiblePosition()I

    move-result v1

    .line 2846
    .local v1, firstChild:I
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v11}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildLastVisiblePosition()I

    move-result v5

    .line 2850
    .local v5, lastChild:I
    const/4 v11, -0x1

    if-eq v1, v11, :cond_3

    const/4 v11, -0x1

    if-eq v5, v11, :cond_3

    .line 2854
    move v3, v1

    .local v3, i:I
    :goto_0
    if-gt v3, v5, :cond_2

    .line 2855
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v11, v11, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2856
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_1

    .line 2857
    iget-object v10, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    .line 2858
    .local v10, tempSView:Lcom/htc/sunnyCore/view/SView;
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->unlink()V

    .line 2859
    const v11, 0x7f7fffff

    const v12, 0x7f7fffff

    const v13, 0x7f7fffff

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2860
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v11, v11, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 2861
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v11, v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->addCellToRecycler(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)V

    .line 2854
    .end local v10           #tempSView:Lcom/htc/sunnyCore/view/SView;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2865
    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_2
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const/4 v12, 0x0

    #calls: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->clearChildBackground(Z)V
    invoke-static {v11, v12}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$300(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Z)V

    .line 2872
    .end local v3           #i:I
    :cond_3
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v11}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getLastVisiblePosition()I

    move-result v6

    .line 2873
    .local v6, lastParent:I
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v11}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildLastVisiblePosition()I

    move-result v5

    .line 2875
    const/4 v11, -0x1

    if-eq v5, v11, :cond_7

    const/4 v11, -0x1

    if-eq v6, v11, :cond_7

    .line 2877
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v11, v11, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 2878
    add-int/lit8 v3, v5, 0x1

    .restart local v3       #i:I
    :goto_1
    if-gt v3, v6, :cond_7

    .line 2879
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v11, v11, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2880
    .restart local v0       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_4

    .line 2881
    iget-object v10, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    .line 2882
    .restart local v10       #tempSView:Lcom/htc/sunnyCore/view/SView;
    invoke-virtual {v10}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v9

    .line 2883
    .local v9, tempPos:Lcom/htc/sunnyCore/view/Vector3F;
    iget v11, v9, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget v12, v9, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget-object v13, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mBelowParentsCollapseDistance:I
    invoke-static {v13}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1500(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    iget v13, v9, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2884
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setVisibility(Z)V

    .line 2885
    iget v11, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    iget-object v12, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mBelowParentsCollapseDistance:I
    invoke-static {v12}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1500(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    .line 2878
    .end local v9           #tempPos:Lcom/htc/sunnyCore/view/Vector3F;
    .end local v10           #tempSView:Lcom/htc/sunnyCore/view/SView;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2890
    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v3           #i:I
    :cond_5
    add-int/lit8 v3, v5, 0x1

    .restart local v3       #i:I
    :goto_2
    if-gt v3, v6, :cond_7

    .line 2891
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v11, v11, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2892
    .restart local v0       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_6

    .line 2893
    iget-object v10, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    .line 2894
    .restart local v10       #tempSView:Lcom/htc/sunnyCore/view/SView;
    invoke-virtual {v10}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v9

    .line 2895
    .restart local v9       #tempPos:Lcom/htc/sunnyCore/view/Vector3F;
    iget v11, v9, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget-object v12, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mBelowParentsCollapseDistance:I
    invoke-static {v12}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1500(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iget v12, v9, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget v13, v9, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2896
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setVisibility(Z)V

    .line 2897
    iget v11, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    iget-object v12, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mBelowParentsCollapseDistance:I
    invoke-static {v12}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1500(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v12

    sub-int/2addr v11, v12

    iput v11, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    .line 2890
    .end local v9           #tempPos:Lcom/htc/sunnyCore/view/Vector3F;
    .end local v10           #tempSView:Lcom/htc/sunnyCore/view/SView;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2904
    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v3           #i:I
    :cond_7
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v12, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v12, v12, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    #calls: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z
    invoke-static {v11, v12}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1600(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;I)Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I
    invoke-static {v11}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$100(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    iget-object v12, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v12, v12, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ge v11, v12, :cond_b

    .line 2905
    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1200()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1300()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "@@ mShrinkAnimListenr @@ onAnimationEnd, original mFirstIdx: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v13, v13, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    :cond_8
    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1200()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1300()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "@@ mShrinkAnimListenr @@ onAnimationEnd, mClickParentLevelStartIdx: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I
    invoke-static {v13}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1700(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    :cond_9
    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1200()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1300()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "@@ mShrinkAnimListenr @@ onAnimationEnd, mCollapseChildType: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCollapseChildType:I
    invoke-static {v13}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1400(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    :cond_a
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCollapseChildType:I
    invoke-static {v11}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1400(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_10

    .line 2910
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v12, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I
    invoke-static {v12}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1700(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v12

    iget-object v13, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v13, v13, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    add-int/2addr v12, v13

    iput v12, v11, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .line 2915
    :goto_3
    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1200()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1300()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "@@ mShrinkAnimListenr @@ onAnimationEnd, new mFirstIdx: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v13, v13, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    :cond_b
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v12, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v12, v12, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    #calls: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z
    invoke-static {v11, v12}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1600(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;I)Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I
    invoke-static {v11}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$100(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    iget-object v12, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v12, v12, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ne v11, v12, :cond_c

    .line 2919
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v12, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I
    invoke-static {v12}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1800(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    iput v12, v11, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    .line 2926
    :cond_c
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I
    invoke-static {v11}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$100(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    iget-object v12, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v12, v12, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ne v11, v12, :cond_d

    .line 2927
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v12, v11, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    iget-object v13, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I
    invoke-static {v13}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$800(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v13

    sub-int/2addr v12, v13

    iput v12, v11, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    .line 2928
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const/4 v12, 0x0

    #setter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I
    invoke-static {v11, v12}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$802(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;I)I

    .line 2934
    :cond_d
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCollapseChildType:I
    invoke-static {v11}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1400(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v11

    if-nez v11, :cond_12

    .line 2935
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickedParentIdx:I
    invoke-static {v11}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1900(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v11

    iget-object v12, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTempCurrentClickedIndex:I
    invoke-static {v12}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$400(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v12

    if-ne v11, v12, :cond_11

    .line 2936
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;
    invoke-static {v11}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$2000(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    move-result-object v11

    if-eqz v11, :cond_e

    .line 2937
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;
    invoke-static {v11}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$2000(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTempCurrentClickedIndex:I
    invoke-static {v12}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$400(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v12

    invoke-interface {v11, v12}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;->onPrepareReadyIRT(I)V

    .line 2991
    :cond_e
    :goto_4
    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1200()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1300()Ljava/lang/String;

    move-result-object v11

    const-string v12, "--- mShrinkAnimListenr, onAnimationEnd ---"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    :cond_f
    return-void

    .line 2913
    :cond_10
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v12, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I
    invoke-static {v12}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$100(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    goto/16 :goto_3

    .line 2941
    :cond_11
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v12, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTempCurrentClickedIndex:I
    invoke-static {v12}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$400(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v12

    #calls: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->doScrollClickedItemToUpper(I)V
    invoke-static {v11, v12}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$500(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;I)V

    goto :goto_4

    .line 2944
    :cond_12
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCollapseChildType:I
    invoke-static {v11}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1400(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1a

    .line 2945
    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1200()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1300()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "End shrink animation: mClickedParentIdx: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickedParentIdx:I
    invoke-static {v13}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1900(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mTempCurrentClickedIndex: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTempCurrentClickedIndex:I
    invoke-static {v13}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$400(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    :cond_13
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v11, v11, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-eqz v11, :cond_19

    .line 2948
    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1200()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1300()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "End shrink animation, mFirstIdx: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v13, v13, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mLastIdx: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v13, v13, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    :cond_14
    const/4 v8, 0x0

    .line 2951
    .local v8, removeCount:I
    const/4 v2, -0x1

    .line 2952
    .local v2, firstRemoveIdx:I
    const/4 v7, -0x1

    .line 2954
    .local v7, lastRemoveIdx:I
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v3, v11, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .restart local v3       #i:I
    :goto_5
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v11, v11, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-gt v3, v11, :cond_17

    .line 2955
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v11, v11, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2956
    .restart local v0       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-nez v0, :cond_16

    .line 2957
    add-int/lit8 v8, v8, 0x1

    .line 2958
    const/4 v11, -0x1

    if-ne v2, v11, :cond_15

    .line 2959
    move v2, v3

    .line 2961
    :cond_15
    move v7, v3

    .line 2954
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2965
    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_17
    if-lez v8, :cond_19

    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v11, v11, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-ge v7, v11, :cond_19

    .line 2966
    add-int/lit8 v3, v7, 0x1

    const/4 v4, 0x0

    .local v4, j:I
    :goto_6
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v11, v11, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-gt v3, v11, :cond_18

    .line 2967
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v11, v11, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2968
    .restart local v0       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v11, v11, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    add-int v12, v2, v4

    invoke-virtual {v11, v12, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2966
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 2972
    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_18
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v12, v11, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    sub-int/2addr v12, v8

    iput v12, v11, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    .line 2973
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v12, v11, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    sub-int/2addr v12, v8

    iput v12, v11, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    .line 2974
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOriginalDeleteAllParentIdx:I
    invoke-static {v11}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$2100(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v11

    iget-object v12, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I
    invoke-static {v12}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$100(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v12

    if-le v11, v12, :cond_19

    .line 2975
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-static {v11, v8}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$2220(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;I)I

    .line 2982
    .end local v2           #firstRemoveIdx:I
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v7           #lastRemoveIdx:I
    .end local v8           #removeCount:I
    :cond_19
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const/4 v12, 0x1

    #setter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIgnoreChildViewItem:Z
    invoke-static {v11, v12}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$2302(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Z)Z

    .line 2983
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const/4 v12, 0x2

    #calls: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->fitBottomSpace(I)V
    invoke-static {v11, v12}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$2400(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;I)V

    goto/16 :goto_4

    .line 2985
    :cond_1a
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCollapseChildType:I
    invoke-static {v11}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$1400(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_e

    .line 2986
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const/4 v12, 0x0

    #setter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mAnimationRunning:Z
    invoke-static {v11, v12}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$002(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Z)Z

    .line 2987
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOnCollapseChildViewListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;
    invoke-static {v11}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$2500(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    move-result-object v11

    if-eqz v11, :cond_e

    .line 2988
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;->this$0:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOnCollapseChildViewListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;
    invoke-static {v11}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->access$2500(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    move-result-object v11

    invoke-interface {v11}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;->onCollapseChildViewEndIRT()V

    goto/16 :goto_4
.end method

.method public onAnimationStart()V
    .locals 0

    .prologue
    .line 2832
    return-void
.end method
