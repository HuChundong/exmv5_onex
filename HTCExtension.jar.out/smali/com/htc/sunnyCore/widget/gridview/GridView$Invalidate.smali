.class Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;
.super Lcom/htc/sunnyCore/RenderThreadHandler;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Invalidate"
.end annotation


# static fields
.field private static final ACTION_NAME:Ljava/lang/String; = "NotifyDataInvalidate"


# instance fields
.field final synthetic this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/RenderThread;)V
    .locals 1
    .parameter
    .parameter "render"

    .prologue
    .line 3176
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    .line 3177
    const-string v0, "NotifyDataInvalidate"

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/sunnyCore/RenderThreadHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/RenderThread;)V

    .line 3178
    return-void
.end method

.method private draw(I)V
    .locals 3
    .parameter "drawIdx"

    .prologue
    .line 3180
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v2, v2, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 3181
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 3186
    :goto_0
    return-void

    .line 3183
    :cond_0
    iget-object v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    .line 3184
    .local v1, viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->unbindMediaData()V

    .line 3185
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v2, v2, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v2, p1}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->bindMediaData(ILcom/htc/sunnyCore/IMediaData;)V

    goto :goto_0
.end method


# virtual methods
.method public onDoActionIRT(IJ)Z
    .locals 10
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3188
    iget-object v6, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v4

    .line 3189
    .local v4, isEmpty:Z
    if-eqz v4, :cond_0

    .line 3190
    invoke-virtual {p0, v9}, Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 3224
    :goto_0
    return v8

    .line 3194
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3196
    .local v2, draws:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v8}, Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 3197
    const/4 v1, 0x0

    .line 3198
    .local v1, drawAll:Z
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 3199
    iget-object v6, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;

    .line 3201
    .local v5, m:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    iget v6, v5, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->what:I

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_3

    .line 3202
    const/4 v1, 0x1

    .line 3203
    iget-object v6, p0, Lcom/htc/sunnyCore/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 3212
    .end local v5           #m:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    :cond_2
    if-ne v8, v1, :cond_4

    .line 3213
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v0, v6, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .local v0, draw:I
    :goto_2
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v6, v6, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v6, v6, 0x1

    if-ge v0, v6, :cond_5

    .line 3214
    invoke-direct {p0, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;->draw(I)V

    .line 3213
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3207
    .end local v0           #draw:I
    .restart local v5       #m:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    :cond_3
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v6, v6, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    iget v7, v5, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->what:I

    if-gt v6, v7, :cond_1

    iget v6, v5, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->what:I

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v7, v7, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-gt v6, v7, :cond_1

    .line 3208
    iget v6, v5, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->what:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3218
    .end local v5           #m:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3219
    .local v0, draw:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;->draw(I)V

    goto :goto_3

    .line 3223
    .end local v0           #draw:Ljava/lang/Integer;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_5
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v6, v6, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iput-boolean v8, v6, Lcom/htc/sunnyCore/RenderThread;->forceRenderOnce:Z

    goto :goto_0
.end method
