.class Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$1;
.super Ljava/lang/Object;
.source "GridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;)V
    .locals 0
    .parameter

    .prologue
    .line 4946
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$1;->this$1:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4949
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$1;->this$1:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    #setter for: Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mRenderOrder:I
    invoke-static {v3, v4}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->access$2902(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;I)I

    .line 4950
    const/4 v0, 0x0

    .local v0, key:I
    :goto_0
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$1;->this$1:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mPoolSize:I
    invoke-static {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->access$3000(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;)I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 4951
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$1;->this$1:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mResourcePool:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->access$3100(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;

    .line 4952
    .local v1, r:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v3, :cond_0

    .line 4953
    iget-object v2, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mSprite:Lcom/htc/sunnyCore/Sprite;

    .line 4954
    .local v2, s:Lcom/htc/sunnyCore/Sprite;
    invoke-virtual {v2, v4}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    .line 4950
    .end local v2           #s:Lcom/htc/sunnyCore/Sprite;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4957
    .end local v1           #r:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;
    :cond_1
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$1;->this$1:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mFastScroller:Lcom/htc/widget/AbsFastScroller;
    invoke-static {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->access$3200(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;)Lcom/htc/widget/AbsFastScroller;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$1;->this$1:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mFastScroller:Lcom/htc/widget/AbsFastScroller;
    invoke-static {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->access$3200(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;)Lcom/htc/widget/AbsFastScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/AbsFastScroller;->getState()I

    move-result v3

    if-eqz v3, :cond_2

    .line 4958
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$1;->this$1:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    iget-object v3, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v3, v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunnyCore/SceneNode;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/SceneNode;->setVisibility(Z)V

    .line 4959
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$1;->this$1:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mFastScroller:Lcom/htc/widget/AbsFastScroller;
    invoke-static {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->access$3200(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;)Lcom/htc/widget/AbsFastScroller;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$1;->this$1:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v4}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->access$3300(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;)Landroid/graphics/Canvas;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/AbsFastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 4964
    :goto_1
    return-void

    .line 4962
    :cond_2
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$1;->this$1:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    iget-object v3, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v3, v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/SceneNode;->setVisibility(Z)V

    goto :goto_1
.end method
