.class public Lcom/htc/sunny2/widget/gridview/GridItemEventLarge;
.super Lcom/htc/sunny2/widget/gridview/GridItemEvents;
.source "GridItemEventLarge.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "GridItemEventLarge"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V
    .locals 1
    .parameter "context"
    .parameter "sContext"
    .parameter "param"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 34
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    if-nez v0, :cond_0

    .line 35
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    .line 37
    :cond_0
    if-eqz p3, :cond_1

    .line 38
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    invoke-virtual {v0, p3}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 39
    :cond_1
    return-void
.end method


# virtual methods
.method public create()Lcom/htc/sunnyCore/ViewItem;
    .locals 4

    .prologue
    .line 57
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->clone(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    move-result-object v1

    .line 58
    .local v1, param:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridItemEventLarge;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-direct {v0, v2, v3, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEventLarge;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 60
    .local v0, item:Lcom/htc/sunny2/widget/gridview/GridItemEventLarge;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    .line 61
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    .line 62
    return-object v0
.end method

.method public getCacheSet()I
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0xe

    return v0
.end method

.method public getIdentifier()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIdentifier()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEventLarge;->getIdentifier()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getRowQuota()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x2

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEventLarge;->setMeasuredDimension(II)V

    .line 47
    return-void
.end method
