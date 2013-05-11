.class Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecoderCallbackListener;
.super Ljava/lang/Object;
.source "GridViewPreparatorImpl.java"

# interfaces
.implements Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecoderCallbackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;


# direct methods
.method private constructor <init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 3679
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecoderCallbackListener;->this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3679
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecoderCallbackListener;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;)V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Lcom/htc/sunny2/common/ImageDecoder;III)V
    .locals 9
    .parameter "decoder"
    .parameter "itemIndex"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, -0x1

    .line 3682
    if-eqz p1, :cond_0

    if-ne p2, v7, :cond_1

    .line 3707
    :cond_0
    :goto_0
    return-void

    .line 3684
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecoderCallbackListener;->this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;

    invoke-virtual {v6, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getPreparatorPrototype(I)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    move-result-object v4

    .line 3685
    .local v4, mPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    if-eqz v4, :cond_0

    .line 3686
    invoke-interface {v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getContentWidth()I

    move-result v1

    .line 3687
    .local v1, contentWidth:I
    invoke-interface {v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;->getContentHeight()I

    move-result v0

    .line 3688
    .local v0, contentHeight:I
    if-eq v1, v7, :cond_0

    if-eq v0, v7, :cond_0

    .line 3690
    :try_start_0
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecoderCallbackListener;->this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecoderCallbackListener;->this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;

    iget-object v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p2, v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->getIMediaDataByIndex(Lcom/htc/sunnyCore/IMediaList;II)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v5

    .line 3691
    .local v5, mediaData:Lcom/htc/sunnyCore/IMediaData;
    instance-of v6, v5, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;

    if-eqz v6, :cond_3

    .line 3692
    check-cast v5, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;

    .end local v5           #mediaData:Lcom/htc/sunnyCore/IMediaData;
    invoke-interface {v5}, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;->getDegreesRotated()I

    move-result v2

    .line 3693
    .local v2, degree:I
    if-eqz v2, :cond_3

    .line 3694
    rem-int/lit16 v2, v2, 0x168

    .line 3695
    if-gez v2, :cond_2

    add-int/lit16 v2, v2, 0x168

    .line 3697
    :cond_2
    invoke-virtual {p1, v2}, Lcom/htc/sunny2/common/ImageDecoder;->setDegree(I)V

    .line 3701
    .end local v2           #degree:I
    :cond_3
    invoke-virtual {p1, v1, v0}, Lcom/htc/sunny2/common/ImageDecoder;->setPreferSize(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3702
    :catch_0
    move-exception v3

    .line 3703
    .local v3, e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecoderCallbackListener;->this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;

    iget-object v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v7, "[onLoadComplete] IMediaData is not sync with previous item. Use default size and orientaion."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
