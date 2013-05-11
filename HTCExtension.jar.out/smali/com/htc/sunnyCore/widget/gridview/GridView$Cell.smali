.class public Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
.super Ljava/lang/Object;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Cell"
.end annotation


# instance fields
.field protected final defaultLayoutParams:Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;

.field public idx:I

.field private mIsChild:Z

.field final synthetic this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

.field public viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 3776
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3769
    new-instance v0, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->defaultLayoutParams:Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;

    .line 3772
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->idx:I

    .line 3773
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    .line 3774
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    .line 3777
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    .line 3778
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/ViewItem;)V
    .locals 3
    .parameter
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 3786
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3769
    new-instance v0, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->defaultLayoutParams:Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;

    .line 3772
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->idx:I

    .line 3773
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    .line 3774
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    .line 3787
    instance-of v0, p2, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    if-eqz v0, :cond_0

    .line 3788
    check-cast p2, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    .end local p2
    iput-object p2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    .line 3794
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->initViewItem()V

    .line 3795
    return-void

    .line 3791
    .restart local p2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t gey new GridViewItem by create()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/ViewItem;Z)V
    .locals 0
    .parameter
    .parameter "item"
    .parameter "isChild"

    .prologue
    .line 3782
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/ViewItem;)V

    .line 3783
    iput-boolean p3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->mIsChild:Z

    .line 3784
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 3887
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->recycle()V

    .line 3888
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3889
    return-void
.end method

.method public getViewItem()Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
    .locals 1

    .prologue
    .line 3865
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 3798
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 3802
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    return v0
.end method

.method public height()I
    .locals 1

    .prologue
    .line 3869
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public initViewItem()V
    .locals 2

    .prologue
    .line 3806
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mChildNodeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mChildNodeCount:I

    .line 3807
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setParent(Lcom/htc/sunnyCore/view/SViewParent;)V

    .line 3808
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->dispatchResourceCreation(Z)V

    .line 3809
    return-void
.end method

.method public isChild()Z
    .locals 1

    .prologue
    .line 3895
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->mIsChild:Z

    return v0
.end method

.method public link(ILcom/htc/sunnyCore/IMediaData;III)V
    .locals 10
    .parameter "index"
    .parameter "data"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v9, 0x1

    const/high16 v2, -0x8000

    .line 3813
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    .line 3814
    .local v0, item:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v1, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRootNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/SceneNode;->addSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 3816
    invoke-virtual {v0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->bindMediaData(ILcom/htc/sunnyCore/IMediaData;)V

    .line 3819
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mWidth:I
    invoke-static {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$1400(Lcom/htc/sunnyCore/widget/gridview/GridView;)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 3820
    .local v8, measureW:I
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mHeight:I
    invoke-static {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$1500(Lcom/htc/sunnyCore/widget/gridview/GridView;)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 3822
    .local v7, measureH:I
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->getLayoutParams()Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;

    move-result-object v6

    .line 3823
    .local v6, lp:Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;
    if-nez v6, :cond_0

    .line 3824
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->defaultLayoutParams:Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setLayoutParamsWithoutLayout(Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;)V

    .line 3827
    :cond_0
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #calls: Lcom/htc/sunnyCore/widget/gridview/GridView;->measureChild(Lcom/htc/sunnyCore/view/SView;II)V
    invoke-static {v1, v0, v8, v7}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$1600(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/view/SView;II)V

    .line 3829
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->getMeasuredWidth()I

    move-result v4

    .line 3830
    .local v4, w:I
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->getMeasuredHeight()I

    move-result v5

    .line 3832
    .local v5, h:I
    div-int/lit8 v1, v4, 0x2

    add-int/2addr v1, p3

    int-to-float v1, v1

    div-int/lit8 v2, v5, 0x2

    sub-int v2, p4, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->layout(FFFII)V

    .line 3834
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->idx:I

    .line 3835
    iput p3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    .line 3836
    iput p4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    .line 3839
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedHighlightEnabled:Z
    invoke-static {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$1000(Lcom/htc/sunnyCore/widget/gridview/GridView;)Z

    move-result v1

    if-ne v1, v9, :cond_1

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mCurrentHighlightIdx:I
    invoke-static {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$1100(Lcom/htc/sunnyCore/widget/gridview/GridView;)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 3840
    invoke-virtual {v0, v9}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 3849
    :goto_0
    return-void

    .line 3844
    :cond_1
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3845
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->onItemRelease()V

    .line 3846
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPressed(Z)V

    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3877
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    if-eqz v0, :cond_0

    .line 3878
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->dispatchResourceCreation(Z)V

    .line 3879
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setParent(Lcom/htc/sunnyCore/view/SViewParent;)V

    .line 3880
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->release()V

    .line 3881
    iput-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    .line 3882
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mChildNodeCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mChildNodeCount:I

    .line 3884
    :cond_0
    return-void
.end method

.method public setPosition(III)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 3857
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    .line 3858
    iput p2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    .line 3859
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v1

    .line 3860
    .local v1, w:I
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v0

    .line 3861
    .local v0, h:I
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p1

    int-to-float v3, v3

    div-int/lit8 v4, v0, 0x2

    sub-int v4, p2, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 3862
    return-void
.end method

.method public unlink()V
    .locals 2

    .prologue
    .line 3852
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRootNode:Lcom/htc/sunnyCore/SceneNode;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/SceneNode;->removeSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 3853
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->unbindMediaData()V

    .line 3854
    return-void
.end method

.method public width()I
    .locals 1

    .prologue
    .line 3873
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->getWidth()I

    move-result v0

    goto :goto_0
.end method
