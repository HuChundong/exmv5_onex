.class public Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;
.super Ljava/lang/Object;
.source "GridView.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ScrollerItemInfoGetter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;


# direct methods
.method protected constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomBouncePosition()I
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingBottom:I
    invoke-static {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$200(Lcom/htc/sunnyCore/widget/gridview/GridView;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getExtraPaddingRear()I

    move-result v1

    add-int/2addr v0, v1

    .line 412
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingRight:I
    invoke-static {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$300(Lcom/htc/sunnyCore/widget/gridview/GridView;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getExtraPaddingRear()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getFirstVisibleItemIndex()I
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    return v0
.end method

.method public getFirstVisibleItemOffset()I
    .locals 3

    .prologue
    .line 381
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v1, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v2, v2, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 382
    .local v0, first:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v1, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 383
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v1, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 384
    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    .line 390
    :goto_0
    return v1

    .line 387
    :cond_0
    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    neg-int v1, v1

    goto :goto_0

    .line 390
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    return v0
.end method

.method public getItemLength(I)I
    .locals 3
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 361
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v2, v2, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 362
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v2, v2, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 363
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v2, v2, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    if-ne v2, v1, :cond_1

    .line 364
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v1

    .line 371
    :cond_0
    :goto_0
    return v1

    .line 367
    :cond_1
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v1

    goto :goto_0
.end method

.method public getItemSpacing()I
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    .line 355
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVerticalSpacing:I

    goto :goto_0
.end method

.method public getItemsInASet()I
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    .line 316
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    goto :goto_0
.end method

.method public getLastVisibleItemIndex()I
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    return v0
.end method

.method public getLastVisibleItemOffset()I
    .locals 3

    .prologue
    .line 331
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v1, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v2, v2, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 332
    .local v0, last:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v1, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 333
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v1, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 334
    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    .line 341
    :goto_0
    return v1

    .line 337
    :cond_0
    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    neg-int v1, v1

    goto :goto_0

    .line 341
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLayoutHeight()I
    .locals 1

    .prologue
    .line 419
    const/4 v0, -0x1

    return v0
.end method

.method public getTopBouncePosition()I
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 400
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingTop:I
    invoke-static {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$000(Lcom/htc/sunnyCore/widget/gridview/GridView;)I

    move-result v0

    .line 403
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingLeft:I
    invoke-static {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$100(Lcom/htc/sunnyCore/widget/gridview/GridView;)I

    move-result v0

    goto :goto_0
.end method

.method public getViewPortLength()I
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewHeight:I

    .line 325
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewWidth:I

    goto :goto_0
.end method
