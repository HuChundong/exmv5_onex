.class public Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;
.super Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;
.source "ImageGetterPreparatorImpl.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;


# instance fields
.field protected mInValue:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    const-string v0, "ImageGetterPreparatorImpl"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mInValue:Landroid/os/Bundle;

    .line 27
    return-void
.end method


# virtual methods
.method protected decodeOriginalFile(J)Z
    .locals 9
    .parameter "limitedTimeMillis"

    .prologue
    const/4 v6, 0x1

    .line 59
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v5, v7}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    .line 60
    .local v3, mediaItem:Lcom/htc/sunnyCore/IMediaData;
    if-nez v3, :cond_0

    .line 61
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    .line 62
    .local v1, itemCount:I
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decodeOriginalFile: MediaItem is null, index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", identifier "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", preparator list count "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", media list count "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    .line 64
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    move v5, v6

    .line 107
    .end local v1           #itemCount:I
    :goto_0
    return v5

    .line 68
    :cond_0
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    if-eqz v5, :cond_2

    invoke-interface {v3}, Lcom/htc/sunnyCore/IMediaData;->hasSubList()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    invoke-interface {v3}, Lcom/htc/sunnyCore/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v2

    .line 70
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunnyCore/IMediaData;>;"
    if-eqz v2, :cond_1

    .line 71
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    check-cast v3, Lcom/htc/sunnyCore/IMediaData;

    .line 72
    .restart local v3       #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    if-nez v3, :cond_2

    .line 73
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    .line 74
    .restart local v1       #itemCount:I
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decodeOriginalFile: MediaItem is null, index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", subIdx "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", identifier "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", preparator list count "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", media list count "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    .line 76
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    move v5, v6

    .line 77
    goto :goto_0

    .line 80
    .end local v1           #itemCount:I
    :cond_1
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    .line 81
    .restart local v1       #itemCount:I
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decodeOriginalFile: MediaDataList is null, index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", subIdx "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", identifier "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", preparator list count "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", media list count "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    .line 83
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    move v5, v6

    .line 84
    goto/16 :goto_0

    .line 88
    .end local v1           #itemCount:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunnyCore/IMediaData;>;"
    :cond_2
    invoke-interface {v3}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageSourceType()I

    move-result v4

    .line 89
    .local v4, sourceType:I
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->isDecodedSourceType(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 91
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    .line 92
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    move v5, v6

    .line 93
    goto/16 :goto_0

    .line 96
    :cond_3
    const/4 v0, 0x0

    .line 97
    .local v0, isVideo:Z
    instance-of v5, v3, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v5, :cond_6

    move-object v5, v3

    .line 98
    check-cast v5, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v5}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v0

    .line 102
    :cond_4
    :goto_1
    if-eqz v0, :cond_7

    .line 103
    sget-boolean v5, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->HTC_DEBUG:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decodeOriginalFile: decodeItem index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", subIdx "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", filePath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isVideo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_5
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setupCurrentTaskToMediaDecodeThread(Lcom/htc/sunnyCore/IMediaData;)V

    move v5, v6

    .line 105
    goto/16 :goto_0

    .line 99
    :cond_6
    instance-of v5, v3, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;

    if-eqz v5, :cond_4

    move-object v5, v3

    .line 100
    check-cast v5, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;

    invoke-interface {v5}, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;->isVideo()Z

    move-result v0

    goto :goto_1

    .line 107
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->decodeOriginalFile(J)Z

    move-result v5

    goto/16 :goto_0
.end method

.method public getThumbnailImage(ILcom/htc/sunnyCore/IMediaData;)Lcom/htc/sunnyCore/Texture;
    .locals 2
    .parameter "index"
    .parameter "mediaData"

    .prologue
    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->get(IILandroid/os/Bundle;)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailImage(ILcom/htc/sunnyCore/IMediaData;I)Lcom/htc/sunnyCore/Texture;
    .locals 2
    .parameter "index"
    .parameter "mediaData"
    .parameter "bkgTextureId"

    .prologue
    .line 33
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    sub-int/2addr p1, v1

    .line 36
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, inValue:Landroid/os/Bundle;
    const-string v1, "SUB_INDEX"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->get(IILandroid/os/Bundle;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    return-object v1
.end method

.method public getViewTexture(ILcom/htc/sunnyCore/IMediaData;)Lcom/htc/sunnyCore/Texture;
    .locals 4
    .parameter "index"
    .parameter "mediaData"

    .prologue
    const/4 v3, 0x0

    .line 47
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mInValue:Landroid/os/Bundle;

    .line 48
    .local v0, inValue:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 50
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mInValue:Landroid/os/Bundle;

    .line 51
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mInValue:Landroid/os/Bundle;

    const-string v2, "TEXTURE_FROM_VIEW"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->mInValue:Landroid/os/Bundle;

    .line 54
    :cond_0
    invoke-virtual {p0, v3, p1, v0}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->get(IILandroid/os/Bundle;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    return-object v1
.end method

.method protected isItemCacheable(Lcom/htc/sunnyCore/IMediaData;)Z
    .locals 3
    .parameter "mediaData"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 194
    instance-of v2, p1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v2, :cond_2

    .line 195
    check-cast p1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .end local p1
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v2

    if-nez v2, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 195
    goto :goto_0

    .line 197
    .restart local p1
    :cond_2
    instance-of v2, p1, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;

    if-eqz v2, :cond_3

    .line 198
    check-cast p1, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;

    .end local p1
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 200
    .restart local p1
    :cond_3
    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isItemCacheable(Lcom/htc/sunnyCore/IMediaData;)Z

    move-result v0

    goto :goto_0
.end method

.method public onProcessPreparationIRT(J)Z
    .locals 3
    .parameter "limitedTimeMillis"

    .prologue
    .line 206
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->onProcessPreparationIRT(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 213
    :goto_0
    return v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected Exception, reset decodeItem and status"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setFailTextureToCurrentTask()V

    .line 211
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 213
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected setupCurrentTaskToMediaDecodeThread(Lcom/htc/sunnyCore/IMediaData;)V
    .locals 14
    .parameter "mediaItem"

    .prologue
    const/4 v13, 0x1

    .line 112
    const/4 v10, 0x0

    .line 113
    .local v10, isVideo:Z
    if-nez p1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "[setupCurrentTaskToMediaDecodeThread] mediaItem is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_0
    return-void

    .line 117
    :cond_0
    instance-of v1, p1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v1, :cond_5

    move-object v1, p1

    .line 118
    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v10

    .line 122
    :cond_1
    :goto_1
    if-eqz v10, :cond_b

    .line 123
    new-instance v0, Lcom/htc/sunny2/common/VideoDecodeItem;

    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->getCacheSet(I)I

    move-result v2

    invoke-interface {p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/htc/sunnyCore/IMediaData;->getDateModified()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/htc/sunnyCore/IMediaData;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/common/VideoDecodeItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    .line 124
    .local v0, item:Lcom/htc/sunny2/common/MediaDecodeItem;
    invoke-interface {p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageSourceType()I

    move-result v11

    .line 125
    .local v11, mediaSourceType:I
    iput v11, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 126
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 127
    const/4 v9, 0x0

    .line 128
    .local v9, hasError:Z
    packed-switch v11, :pswitch_data_0

    .line 158
    invoke-interface {p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v8

    .line 159
    .local v8, filePath:Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 160
    :cond_2
    const/4 v9, 0x1

    .line 164
    .end local v8           #filePath:Ljava/lang/String;
    :cond_3
    :goto_2
    :pswitch_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->getPreparatorPrototype(I)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    move-result-object v12

    .line 165
    .local v12, prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    if-eqz v12, :cond_9

    invoke-interface {v12}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getContentWidth()I

    move-result v1

    if-lez v1, :cond_9

    invoke-interface {v12}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getContentHeight()I

    move-result v1

    if-lez v1, :cond_9

    .line 166
    invoke-interface {v12}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getContentWidth()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 167
    invoke-interface {v12}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getContentHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 172
    :goto_3
    iput-boolean v13, v0, Lcom/htc/sunny2/common/CacheItem;->enableCropCenter:Z

    .line 173
    invoke-interface {p1}, Lcom/htc/sunnyCore/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    .line 175
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    .line 177
    if-nez v9, :cond_a

    move v1, v13

    :goto_4
    if-ne v1, v13, :cond_4

    .line 178
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->addTask(Lcom/htc/sunny2/common/MediaDecodeItem;)V

    .line 180
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v1, v2, v13}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setOffLineDecode(IZ)V

    .line 181
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v1, v2, v13}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setDecodedQuality(II)V

    .line 183
    :cond_4
    invoke-virtual {p0, v9}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    .line 184
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    .line 185
    const/4 v0, 0x0

    .line 186
    goto/16 :goto_0

    .line 119
    .end local v0           #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    .end local v9           #hasError:Z
    .end local v11           #mediaSourceType:I
    .end local v12           #prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    :cond_5
    instance-of v1, p1, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 120
    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;->isVideo()Z

    move-result v10

    goto/16 :goto_1

    .line 130
    .restart local v0       #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    .restart local v9       #hasError:Z
    .restart local v11       #mediaSourceType:I
    :pswitch_1
    invoke-interface {p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 131
    invoke-interface {p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    goto :goto_2

    .line 133
    :cond_6
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "setupCurrentTaskToMediaDecodeThread: MediaData ParcelFileDescriptor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v9, 0x1

    .line 136
    goto :goto_2

    .line 138
    :pswitch_2
    invoke-interface {p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 139
    invoke-interface {p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    goto/16 :goto_2

    .line 141
    :cond_7
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "setupCurrentTaskToMediaDecodeThread: MediaData Uri is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v9, 0x1

    .line 144
    goto/16 :goto_2

    .line 146
    :pswitch_3
    invoke-interface {p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 147
    invoke-interface {p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    goto/16 :goto_2

    .line 149
    :cond_8
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "setupCurrentTaskToMediaDecodeThread: MediaData InputStream is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v9, 0x1

    .line 152
    goto/16 :goto_2

    .line 169
    .restart local v12       #prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    :cond_9
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetWidth()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 170
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    goto/16 :goto_3

    .line 177
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 189
    .end local v0           #item:Lcom/htc/sunny2/common/MediaDecodeItem;
    .end local v9           #hasError:Z
    .end local v11           #mediaSourceType:I
    .end local v12           #prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    :cond_b
    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setupCurrentTaskToMediaDecodeThread(Lcom/htc/sunnyCore/IMediaData;)V

    goto/16 :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
