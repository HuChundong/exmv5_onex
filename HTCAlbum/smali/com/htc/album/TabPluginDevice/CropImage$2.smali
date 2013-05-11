.class Lcom/htc/album/TabPluginDevice/CropImage$2;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mFaces:[Landroid/media/FaceDetector$Face;

.field mImageMatrix:Landroid/graphics/Matrix;

.field mNumFaces:I

.field mScale:F

.field mUnion:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/CropImage;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/CropImage;)V
    .locals 1
    .parameter

    .prologue
    .line 1645
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1646
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    .line 1647
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mUnion:Landroid/graphics/RectF;

    .line 1649
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/FaceDetector$Face;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mFaces:[Landroid/media/FaceDetector$Face;

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/album/TabPluginDevice/CropImage$2;Landroid/media/FaceDetector$Face;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1645
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/CropImage$2;->handleFace(Landroid/media/FaceDetector$Face;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/album/TabPluginDevice/CropImage$2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1645
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage$2;->makeDefault()V

    return-void
.end method

.method private handleFace(Landroid/media/FaceDetector$Face;)V
    .locals 13
    .parameter "f"

    .prologue
    .line 1653
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    .line 1655
    .local v7, midPoint:Landroid/graphics/PointF;
    invoke-virtual {p1}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v1

    iget v4, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    mul-int/lit8 v10, v1, 0x2

    .line 1656
    .local v10, r:I
    invoke-virtual {p1, v7}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    .line 1657
    iget v1, v7, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    mul-float/2addr v1, v4

    iput v1, v7, Landroid/graphics/PointF;->x:F

    .line 1658
    iget v1, v7, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    mul-float/2addr v1, v4

    iput v1, v7, Landroid/graphics/PointF;->y:F

    .line 1660
    iget v1, v7, Landroid/graphics/PointF;->x:F

    float-to-int v8, v1

    .line 1661
    .local v8, midX:I
    iget v1, v7, Landroid/graphics/PointF;->y:F

    float-to-int v9, v1

    .line 1663
    .local v9, midY:I
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage$2;->makeHighlightView()Lcom/htc/album/TabPluginDevice/HighlightView;

    move-result-object v0

    .line 1665
    .local v0, hv:Lcom/htc/album/TabPluginDevice/HighlightView;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 1666
    .local v11, width:I
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 1668
    .local v6, height:I
    new-instance v2, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v11, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1670
    .local v2, imageRect:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v8

    int-to-float v4, v9

    int-to-float v5, v8

    int-to-float v12, v9

    invoke-direct {v3, v1, v4, v5, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1671
    .local v3, faceRect:Landroid/graphics/RectF;
    neg-int v1, v10

    int-to-float v1, v1

    neg-int v4, v10

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 1672
    iget v1, v3, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 1673
    iget v1, v3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 1675
    :cond_0
    iget v1, v3, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 1676
    iget v1, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 1678
    :cond_1
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    .line 1679
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 1681
    :cond_2
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    .line 1682
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 1684
    :cond_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mCircleCrop:Z
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1100(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2700(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2800(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 1686
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mUnion:Landroid/graphics/RectF;

    if-nez v1, :cond_5

    .line 1687
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mUnion:Landroid/graphics/RectF;

    .line 1692
    :goto_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->add(Lcom/htc/album/TabPluginDevice/HighlightView;)V

    .line 1693
    return-void

    .line 1684
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 1689
    :cond_5
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mUnion:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_1
.end method

.method private makeDefault()V
    .locals 20

    .prologue
    .line 1700
    invoke-direct/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/CropImage$2;->makeHighlightView()Lcom/htc/album/TabPluginDevice/HighlightView;

    move-result-object v1

    .line 1702
    .local v1, hv:Lcom/htc/album/TabPluginDevice/HighlightView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 1703
    .local v16, width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 1705
    .local v11, height:I
    new-instance v3, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move/from16 v0, v16

    invoke-direct {v3, v2, v5, v0, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1726
    .local v3, imageRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mReturnData:Z
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1800(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1300(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1400(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v5

    mul-int v12, v2, v5

    .line 1729
    .local v12, outputBitmapSize:I
    :goto_0
    const v2, 0x7ef40

    if-le v12, v2, :cond_0

    .line 1731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v5, 0x2

    invoke-static {v2, v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1336(Lcom/htc/album/TabPluginDevice/CropImage;I)I

    .line 1732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v5, 0x2

    invoke-static {v2, v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1436(Lcom/htc/album/TabPluginDevice/CropImage;I)I

    .line 1734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v5, 0x2

    invoke-static {v2, v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2736(Lcom/htc/album/TabPluginDevice/CropImage;I)I

    .line 1735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v5, 0x2

    invoke-static {v2, v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2836(Lcom/htc/album/TabPluginDevice/CropImage;I)I

    .line 1736
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1300(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1400(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v5

    mul-int v12, v2, v5

    goto :goto_0

    .line 1742
    .end local v12           #outputBitmapSize:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mEnableKDDIResizeCrop:Z
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$500(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1744
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2700(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1300(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v5

    if-gt v2, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2800(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1400(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v5

    if-le v2, v5, :cond_2

    .line 1746
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v5, 0x2

    invoke-static {v2, v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2736(Lcom/htc/album/TabPluginDevice/CropImage;I)I

    .line 1747
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v5, 0x2

    invoke-static {v2, v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2836(Lcom/htc/album/TabPluginDevice/CropImage;I)I

    goto :goto_1

    .line 1755
    :cond_2
    move/from16 v8, v16

    .line 1756
    .local v8, cropWidth:I
    move v7, v11

    .line 1758
    .local v7, cropHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2700(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2800(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 1759
    move/from16 v0, v16

    int-to-float v2, v0

    int-to-float v5, v11

    div-float/2addr v2, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2700(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2800(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    cmpg-float v2, v2, v5

    if-gez v2, :cond_9

    .line 1760
    move/from16 v8, v16

    .line 1761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2800(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v2

    mul-int v2, v2, v16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2700(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v5

    div-int v7, v2, v5

    .line 1783
    :cond_3
    :goto_2
    mul-int/lit8 v2, v8, 0x4

    div-int/lit8 v8, v2, 0x5

    .line 1784
    mul-int/lit8 v2, v7, 0x4

    div-int/lit8 v7, v2, 0x5

    .line 1785
    if-gtz v8, :cond_4

    .line 1786
    const/4 v8, 0x1

    .line 1787
    :cond_4
    if-gtz v7, :cond_5

    .line 1788
    const/4 v7, 0x1

    .line 1790
    :cond_5
    sub-int v2, v16, v8

    div-int/lit8 v17, v2, 0x2

    .line 1791
    .local v17, x:I
    sub-int v2, v11, v7

    div-int/lit8 v18, v2, 0x2

    .line 1793
    .local v18, y:I
    new-instance v4, Landroid/graphics/RectF;

    move/from16 v0, v17

    int-to-float v2, v0

    move/from16 v0, v18

    int-to-float v5, v0

    add-int v6, v17, v8

    int-to-float v6, v6

    add-int v19, v18, v7

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v4, v2, v5, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1794
    .local v4, cropRect:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mImageMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mCircleCrop:Z
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1100(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2700(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v6

    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2800(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    :goto_3
    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/TabPluginDevice/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 1795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    invoke-virtual {v2, v1}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->add(Lcom/htc/album/TabPluginDevice/HighlightView;)V

    .line 1797
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mCropType:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2100(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v2

    const/16 v5, 0x7f04

    if-ne v2, v5, :cond_8

    .line 1799
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    .line 1800
    .local v9, display:Landroid/view/Display;
    if-eqz v9, :cond_b

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v13

    .line 1801
    .local v13, rotation:I
    :goto_4
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 1802
    .local v10, displaySize:Landroid/graphics/Point;
    invoke-virtual {v9, v10}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1805
    const/4 v2, 0x1

    if-eq v13, v2, :cond_6

    const/4 v2, 0x3

    if-ne v13, v2, :cond_7

    .line 1806
    :cond_6
    iget v2, v10, Landroid/graphics/Point;->y:I

    iget v5, v10, Landroid/graphics/Point;->x:I

    invoke-virtual {v10, v2, v5}, Landroid/graphics/Point;->set(II)V

    .line 1808
    :cond_7
    iget v2, v10, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1300(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v5

    int-to-float v5, v5

    div-float v14, v2, v5

    .line 1809
    .local v14, spotlightX:F
    iget v2, v10, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1400(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v5

    int-to-float v5, v5

    div-float v15, v2, v5

    .line 1810
    .local v15, spotlightY:F
    invoke-virtual {v1, v14, v15}, Lcom/htc/album/TabPluginDevice/HighlightView;->setSpotlightRatio(FF)V

    .line 1812
    .end local v9           #display:Landroid/view/Display;
    .end local v10           #displaySize:Landroid/graphics/Point;
    .end local v13           #rotation:I
    .end local v14           #spotlightX:F
    .end local v15           #spotlightY:F
    :cond_8
    return-void

    .line 1764
    .end local v4           #cropRect:Landroid/graphics/RectF;
    .end local v17           #x:I
    .end local v18           #y:I
    :cond_9
    move v7, v11

    .line 1765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2700(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v2

    mul-int/2addr v2, v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2800(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v5

    div-int v8, v2, v5

    goto/16 :goto_2

    .line 1794
    .restart local v4       #cropRect:Landroid/graphics/RectF;
    .restart local v17       #x:I
    .restart local v18       #y:I
    :cond_a
    const/4 v6, 0x0

    goto :goto_3

    .line 1800
    .restart local v9       #display:Landroid/view/Display;
    :cond_b
    const/4 v13, 0x0

    goto :goto_4
.end method

.method private makeHighlightView()Lcom/htc/album/TabPluginDevice/HighlightView;
    .locals 2

    .prologue
    .line 1696
    new-instance v0, Lcom/htc/album/TabPluginDevice/HighlightView;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/HighlightView;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method private prepareBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1815
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 1816
    const/4 v7, 0x0

    .line 1827
    :goto_0
    return-object v7

    .line 1820
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v2, 0x100

    if-le v0, v2, :cond_1

    .line 1821
    const/high16 v0, 0x4380

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    .line 1823
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1824
    .local v5, matrix:Landroid/graphics/Matrix;
    iget v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    iget v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1825
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1827
    .local v7, faceBitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1831
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mImageMatrix:Landroid/graphics/Matrix;

    .line 1832
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage$2;->prepareBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1834
    .local v1, faceBitmap:Landroid/graphics/Bitmap;
    const/high16 v2, 0x3f80

    iget v3, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    .line 1835
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mDoFaceDetection:Z
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2900(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1836
    new-instance v0, Landroid/media/FaceDetector;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mFaces:[Landroid/media/FaceDetector$Face;

    array-length v4, v4

    invoke-direct {v0, v2, v3, v4}, Landroid/media/FaceDetector;-><init>(III)V

    .line 1838
    .local v0, detector:Landroid/media/FaceDetector;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mFaces:[Landroid/media/FaceDetector$Face;

    invoke-virtual {v0, v1, v2}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v2

    iput v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mNumFaces:I

    .line 1839
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1840
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numFaces is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mNumFaces:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    .end local v0           #detector:Landroid/media/FaceDetector;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mActivityState:S
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$3000(Lcom/htc/album/TabPluginDevice/CropImage;)S

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 1876
    :goto_1
    return-void

    .line 1842
    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v2, v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1843
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1845
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1851
    :cond_3
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    new-instance v3, Lcom/htc/album/TabPluginDevice/CropImage$2$1;

    invoke-direct {v3, p0}, Lcom/htc/album/TabPluginDevice/CropImage$2$1;-><init>(Lcom/htc/album/TabPluginDevice/CropImage$2;)V

    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAddHVRunnable:Ljava/lang/Runnable;
    invoke-static {v2, v3}, Lcom/htc/album/TabPluginDevice/CropImage;->access$3102(Lcom/htc/album/TabPluginDevice/CropImage;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1875
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAddHVRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/CropImage;->access$3100(Lcom/htc/album/TabPluginDevice/CropImage;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
