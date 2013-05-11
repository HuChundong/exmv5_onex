.class public Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
.super Lcom/htc/sunnyCore/widget/gridview/GridView;
.source "PreparatorNotifyGridView.java"

# interfaces
.implements Lcom/htc/sunnyCore/Preparator$UpdateListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PreparatorNotifyGridView"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V
    .locals 0
    .parameter "context"
    .parameter "sContext"
    .parameter "itemPrototype"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunnyCore/widget/gridview/GridView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V

    .line 21
    return-void
.end method


# virtual methods
.method public onExpired(IILandroid/os/Bundle;)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 58
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->notifyMediaDataInvalidate(I)V

    .line 59
    return-void
.end method

.method public onFailed(IILandroid/os/Bundle;)V
    .locals 5
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 36
    if-eqz p3, :cond_1

    .line 37
    const-string v2, "BUNDLE_FLAG"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 38
    .local v0, flag:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 54
    .end local v0           #flag:I
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v2, p2}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    .line 45
    .local v1, mediaItem:Lcom/htc/sunnyCore/IMediaData;
    if-eqz v1, :cond_2

    instance-of v2, v1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 46
    check-cast v2, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v2}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    instance-of v2, v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v2, :cond_2

    .line 49
    const-string v2, "PreparatorNotifyGridView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onFail] Set file corrupted, index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", filePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local v1           #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fileCorrupted()V

    .line 53
    :cond_2
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->notifyMediaDataInvalidate(I)V

    goto :goto_0
.end method

.method public onReady(IILandroid/os/Bundle;)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 31
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->notifyMediaDataInvalidate(I)V

    .line 32
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->mItemPrototype:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->mItemPrototype:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->release()V

    .line 64
    :cond_0
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->release()V

    .line 65
    return-void
.end method
