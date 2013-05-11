.class public Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;
.super Lcom/htc/sunny2/widget/gridview/EventGridView;
.source "EventGridViewWithPrepNotify.java"

# interfaces
.implements Lcom/htc/sunnyCore/Preparator$UpdateListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EventGridViewWithPrepNotify"


# instance fields
.field private mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

.field private mViewTopMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V
    .locals 1
    .parameter "context"
    .parameter "sContext"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/EventGridView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mViewTopMargin:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    .line 28
    return-void
.end method

.method private onUpdateScreenControl(Z)V
    .locals 9
    .parameter "bForceUpdate"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 96
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    if-nez v5, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const/4 v2, 0x0

    .line 102
    .local v2, nFirstBottom:I
    const/4 v1, 0x0

    .line 103
    .local v1, firstCell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mFirstIdx:I

    .local v4, nIndex2:I
    :goto_1
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mLastIdx:I

    if-lt v5, v4, :cond_0

    .line 105
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #firstCell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .restart local v1       #firstCell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-nez v1, :cond_3

    .line 103
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 108
    :cond_3
    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->getY()I

    move-result v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mHorizontalSpacing:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->getHeight()I

    move-result v6

    add-int v3, v5, v6

    .line 109
    .local v3, nFirstTop:I
    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->getY()I

    move-result v5

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v6

    sub-int v2, v5, v6

    .line 112
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->getBreakMarginBot()I

    move-result v5

    if-gt v5, v3, :cond_2

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->getBreakMarginTop()I

    move-result v5

    if-le v5, v2, :cond_2

    .line 115
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 116
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-ne v7, p1, :cond_4

    .line 117
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    invoke-virtual {v5, v4, v8, v7}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->onUpdateChange(ILcom/htc/sunnyCore/view/SViewGroup;Z)V

    goto :goto_0

    .line 119
    :cond_4
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    invoke-virtual {v5, v4, v8}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->onUpdateChange(ILcom/htc/sunnyCore/view/SViewGroup;)V

    goto :goto_0
.end method


# virtual methods
.method public attachScreenControl(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridViewScreenControl;)V
    .locals 0
    .parameter "control"

    .prologue
    .line 41
    check-cast p1, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    .end local p1
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    .line 42
    return-void
.end method

.method public createResource()V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->createResource()V

    .line 47
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mRootNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0, v1, p0, v2}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->attachIRT(Landroid/content/Context;Lcom/htc/sunnyCore/view/SViewGroup;Lcom/htc/sunnyCore/SceneNode;)V

    .line 49
    :cond_0
    return-void
.end method

.method public freeResource()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->detachIRT()V

    .line 60
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    .line 61
    invoke-super {p0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->freeResource()V

    .line 62
    return-void
.end method

.method public notifyMediaDataChange()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->notifyMediaDataChange()V

    .line 91
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->onUpdateScreenControl(Z)V

    .line 93
    return-void
.end method

.method public onExpired(IILandroid/os/Bundle;)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 158
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->notifyMediaDataInvalidate(I)V

    .line 159
    return-void
.end method

.method public onFailed(IILandroid/os/Bundle;)V
    .locals 5
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 139
    if-eqz p3, :cond_0

    .line 140
    const-string v2, "BUNDLE_FLAG"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 141
    .local v0, flag:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 154
    .end local v0           #flag:I
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v2, p2}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    .line 148
    .local v1, mediaItem:Lcom/htc/sunnyCore/IMediaData;
    instance-of v2, v1, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;

    if-eqz v2, :cond_1

    .line 150
    const-string v2, "EventGridViewWithPrepNotify"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onFailed] file corrupted, item index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;

    .end local v1           #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;->fileCorrupted()V

    .line 153
    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->notifyMediaDataInvalidate(I)V

    goto :goto_0
.end method

.method protected onLayout(ZFFFII)V
    .locals 4
    .parameter "changed"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 65
    invoke-super/range {p0 .. p6}, Lcom/htc/sunny2/widget/gridview/EventGridView;->onLayout(ZFFFII)V

    .line 66
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mGLViewWidth:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mGLViewHeight:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mViewTopMargin:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->onLayout(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->detachIRT()V

    .line 72
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mRootNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0, v1, p0, v2}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->attachIRT(Landroid/content/Context;Lcom/htc/sunnyCore/view/SViewGroup;Lcom/htc/sunnyCore/SceneNode;)V

    .line 74
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->onUpdateScreenControl(Z)V

    goto :goto_0
.end method

.method public onReady(IILandroid/os/Bundle;)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 133
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->notifyMediaDataInvalidate(I)V

    .line 134
    return-void
.end method

.method protected onScrollerLeaveTop()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->setVisibility(Z)V

    goto :goto_0
.end method

.method protected onScrollerReachTop()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->setVisibility(Z)V

    goto :goto_0
.end method

.method protected reportScrollStateChange(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->reportScrollStateChange(I)V

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->onUpdateScreenControl(Z)V

    .line 55
    return-void
.end method

.method public setPrototypeFactory(Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;)V
    .locals 1
    .parameter "factoryLayout"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->setPrototypeFactory(Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;)V

    .line 36
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mScreenControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->setPrototypeFactory(Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;)V

    .line 38
    :cond_0
    return-void
.end method

.method public setViewTopMargin(I)V
    .locals 0
    .parameter "nMargin"

    .prologue
    .line 31
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->mViewTopMargin:I

    .line 32
    return-void
.end method
