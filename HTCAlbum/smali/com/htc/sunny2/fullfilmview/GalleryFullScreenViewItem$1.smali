.class Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;
.super Ljava/lang/Object;
.source "GalleryFullScreenViewItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->addVisibleRangeToTileDecoder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)V
    .locals 0
    .parameter

    .prologue
    .line 1982
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1986
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTileDecodeHelper:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->access$100(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;->getTileDecoder()Lcom/htc/sunny2/fullfilmview/TileDecoder;

    move-result-object v14

    .line 1987
    .local v14, tileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;
    monitor-enter v14

    .line 1989
    :try_start_0
    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1991
    monitor-exit v14

    .line 2059
    :goto_0
    return-void

    .line 1994
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->access$200(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1996
    monitor-exit v14

    goto :goto_0

    .line 2058
    :catchall_0
    move-exception v1

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2000
    :cond_1
    :try_start_1
    const-string v1, "image/jpeg"

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->access$200(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "image/png"

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->access$200(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2002
    monitor-exit v14

    goto :goto_0

    .line 2005
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->access$200(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageSourceType()I

    move-result v1

    if-nez v1, :cond_4

    .line 2007
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->access$200(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->setupRegionDecoder(Ljava/lang/String;)V

    .line 2025
    :cond_3
    :goto_1
    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->isValid()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2027
    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->freeBitmapRegionDecoder()V

    .line 2028
    monitor-exit v14

    goto :goto_0

    .line 2009
    :cond_4
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->access$200(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageSourceType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 2011
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->access$200(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->setupRegionDecoder(Ljava/io/FileDescriptor;)V

    goto :goto_1

    .line 2013
    :cond_5
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->access$200(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageSourceType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 2015
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-boolean v1, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-boolean v1, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->access$300(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2017
    monitor-exit v14

    goto/16 :goto_0

    .line 2021
    :cond_6
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->access$200(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->setupRegionDecoder(Ljava/io/InputStream;)V

    goto :goto_1

    .line 2031
    :cond_7
    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->clearQueue()V

    .line 2032
    const/16 v1, 0xfe

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentLevel:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->access$400(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)I

    move-result v2

    shl-int v13, v1, v2

    .line 2033
    .local v13, size:I
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentLevel:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->access$400(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)I

    move-result v2

    shl-int v11, v1, v2

    .line 2034
    .local v11, borderSize:I
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 2035
    .local v12, rect:Landroid/graphics/Rect;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mVisibleRegion:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->access$500(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    div-int/2addr v2, v13

    mul-int/2addr v2, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v12, Landroid/graphics/Rect;->left:I

    .line 2036
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mVisibleRegion:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->access$500(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    div-int/2addr v2, v13

    mul-int/2addr v2, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v12, Landroid/graphics/Rect;->top:I

    .line 2037
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->access$600(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mVisibleRegion:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->access$500(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v12, Landroid/graphics/Rect;->right:I

    .line 2038
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->access$700(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mVisibleRegion:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->access$500(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v12, Landroid/graphics/Rect;->bottom:I

    .line 2039
    iget v4, v12, Landroid/graphics/Rect;->top:I

    .local v4, i:I
    :goto_2
    iget v1, v12, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v1, :cond_a

    .line 2041
    iget v3, v12, Landroid/graphics/Rect;->left:I

    .local v3, j:I
    :goto_3
    iget v1, v12, Landroid/graphics/Rect;->right:I

    if-ge v3, v1, :cond_9

    .line 2043
    add-int v1, v3, v13

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->access$600(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2044
    .local v5, jLim:I
    add-int v1, v4, v13

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->access$700(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2046
    .local v6, iLim:I
    sub-int v1, v3, v11

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2047
    .local v7, jBorder:I
    sub-int v1, v4, v11

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2048
    .local v8, iBorder:I
    add-int v1, v3, v13

    add-int/2addr v1, v11

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->access$600(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 2049
    .local v9, jLimBorder:I
    add-int v1, v4, v13

    add-int/2addr v1, v11

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->access$700(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 2050
    .local v10, iLimBorder:I
    new-instance v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->access$800(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentLevel:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->access$400(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)I

    move-result v2

    invoke-direct/range {v0 .. v10}, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;-><init>(IIIIIIIIII)V

    .line 2051
    .local v0, item:Lcom/htc/sunny2/fullfilmview/TileDecodeItem;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mActiveTiles:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->access$900(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    .line 2053
    invoke-virtual {v14, v0}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->addDecodeItem(Lcom/htc/sunny2/fullfilmview/TileDecodeItem;)V

    .line 2041
    :cond_8
    add-int/2addr v3, v13

    goto :goto_3

    .line 2039
    .end local v0           #item:Lcom/htc/sunny2/fullfilmview/TileDecodeItem;
    .end local v5           #jLim:I
    .end local v6           #iLim:I
    .end local v7           #jBorder:I
    .end local v8           #iBorder:I
    .end local v9           #jLimBorder:I
    .end local v10           #iLimBorder:I
    :cond_9
    add-int/2addr v4, v13

    goto :goto_2

    .line 2058
    .end local v3           #j:I
    :cond_a
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
