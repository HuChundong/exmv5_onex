.class public Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;
.super Ljava/lang/Object;
.source "EventGridView.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/EventGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EventsScrollerItemInfoGetter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;


# direct methods
.method protected constructor <init>(Lcom/htc/sunny2/widget/gridview/EventGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomBouncePosition()I
    .locals 3

    .prologue
    .line 658
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mOrientation:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$2600(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 660
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mPaddingBottom:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$2700(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #calls: Lcom/htc/sunny2/widget/gridview/EventGridView;->getExtraPaddingRear()I
    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$2800(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v2

    add-int v0, v1, v2

    .line 666
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mPaddingRight:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$2900(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #calls: Lcom/htc/sunny2/widget/gridview/EventGridView;->getExtraPaddingRear()I
    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$3000(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v2

    add-int v0, v1, v2

    goto :goto_0
.end method

.method public getFirstVisibleItemIndex()I
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mFirstIdx:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$2200(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v0

    return v0
.end method

.method public getFirstVisibleItemOffset()I
    .locals 3

    .prologue
    .line 608
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$1700(Lcom/htc/sunny2/widget/gridview/EventGridView;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mFirstIdx:I
    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$1600(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 609
    .local v0, first:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$1800(Lcom/htc/sunny2/widget/gridview/EventGridView;)Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 611
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mOrientation:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$1900(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 613
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mFirstIdx:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$2000(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v1

    if-nez v1, :cond_0

    .line 616
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mPaddingTop:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$2100(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v1

    neg-int v1, v1

    iget v2, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    if-le v1, v2, :cond_1

    .line 618
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->onScrollerReachTop()V

    .line 627
    :cond_0
    :goto_0
    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    .line 634
    :goto_1
    return v1

    .line 623
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->onScrollerLeaveTop()V

    goto :goto_0

    .line 631
    :cond_2
    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    neg-int v1, v1

    goto :goto_1

    .line 634
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mListItemCount:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$1500(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v0

    return v0
.end method

.method public getItemLength(I)I
    .locals 3
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 588
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$1200(Lcom/htc/sunny2/widget/gridview/EventGridView;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 589
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$1300(Lcom/htc/sunny2/widget/gridview/EventGridView;)Landroid/util/SparseArray;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 590
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mOrientation:I
    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$1400(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 591
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v1

    .line 598
    :cond_0
    :goto_0
    return v1

    .line 594
    :cond_1
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v1

    goto :goto_0
.end method

.method public getItemSpacing()I
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mOrientation:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$900(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 579
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mHorizontalSpacing:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$1000(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v0

    .line 582
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mVerticalSpacing:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$1100(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v0

    goto :goto_0
.end method

.method public getItemsInASet()I
    .locals 1

    .prologue
    .line 540
    const/4 v0, -0x1

    return v0
.end method

.method public getLastVisibleItemIndex()I
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mLastIdx:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$800(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v0

    return v0
.end method

.method public getLastVisibleItemOffset()I
    .locals 3

    .prologue
    .line 555
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$500(Lcom/htc/sunny2/widget/gridview/EventGridView;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mLastIdx:I
    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$400(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 556
    .local v0, last:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$600(Lcom/htc/sunny2/widget/gridview/EventGridView;)Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 558
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mOrientation:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$700(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 560
    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    .line 568
    :goto_0
    return v1

    .line 564
    :cond_0
    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    neg-int v1, v1

    goto :goto_0

    .line 568
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLayoutHeight()I
    .locals 4

    .prologue
    .line 673
    const/4 v0, 0x0

    .line 674
    .local v0, nHeight:I
    const/4 v1, 0x0

    .line 675
    .local v1, nOrientation:I
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mGLViewWidth:I
    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$3100(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mGLViewHeight:I
    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$3200(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 676
    const/4 v1, 0x1

    .line 681
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPrototypeFactory:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    invoke-interface {v2, v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;->getLayoutHeight(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 684
    :goto_1
    return v0

    .line 678
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 683
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getTopBouncePosition()I
    .locals 3

    .prologue
    .line 644
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mOrientation:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$2300(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 646
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mPaddingTop:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$2400(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v0

    .line 652
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mPaddingLeft:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$2500(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v0

    goto :goto_0
.end method

.method public getViewPortLength()I
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mOrientation:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$100(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 546
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mGLViewHeight:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$200(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v0

    .line 550
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mGLViewWidth:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$300(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v0

    goto :goto_0
.end method
