.class Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;
.super Ljava/lang/Object;
.source "FullFilmViewPreparator.java"

# interfaces
.implements Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageCallbackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;


# direct methods
.method private constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)V
    .locals 0
    .parameter

    .prologue
    .line 2036
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2036
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Lcom/htc/sunny2/common/ImageDecoder;III)V
    .locals 16
    .parameter "decoder"
    .parameter "itemIndex"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2041
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-boolean v10, v10, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->bStop:Z

    if-eqz v10, :cond_0

    .line 2095
    :goto_0
    return-void

    .line 2043
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-object v10, v10, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-object v11, v11, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move/from16 v0, p3

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I
    invoke-static {v11, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$502(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move-result v11

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mWidth:I
    invoke-static {v10, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$302(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 2044
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-object v10, v10, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-object v11, v11, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    move/from16 v0, p4

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I
    invoke-static {v11, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$602(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    move-result v11

    #setter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mHeight:I
    invoke-static {v10, v11}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$402(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I

    .line 2045
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-object v10, v10, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mIsScreenQuality:Z
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$1200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2046
    move/from16 v0, p3

    move/from16 v1, p4

    if-lt v0, v1, :cond_2

    .line 2047
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsEnableHalfPreferSize:Z
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->access$1300(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2048
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget v10, v10, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget v11, v11, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lcom/htc/sunny2/common/ImageDecoder;->setPreferSize(II)V

    goto :goto_0

    .line 2050
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget v10, v10, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget v11, v11, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lcom/htc/sunny2/common/ImageDecoder;->setPreferSize(II)V

    goto :goto_0

    .line 2052
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsEnableHalfPreferSize:Z
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->access$1300(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2053
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget v10, v10, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget v11, v11, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lcom/htc/sunny2/common/ImageDecoder;->setPreferSize(II)V

    goto/16 :goto_0

    .line 2055
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget v10, v10, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget v11, v11, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lcom/htc/sunny2/common/ImageDecoder;->setPreferSize(II)V

    goto/16 :goto_0

    .line 2058
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-object v10, v10, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->decodeItem:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_6

    .line 2059
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/16 v11, 0xfa

    if-le v10, v11, :cond_7

    const/4 v9, 0x1

    .line 2060
    .local v9, sourceWidthHeightOverPanoramaThreshold:Z
    :goto_1
    move/from16 v0, p3

    move/from16 v1, p4

    if-le v0, v1, :cond_8

    mul-int/lit8 v10, p4, 0x4

    move/from16 v0, p3

    if-le v0, v10, :cond_8

    const/4 v8, 0x1

    .line 2061
    .local v8, sourceIsWideAndAspectRatioOverPanoramaThreshold:Z
    :goto_2
    move/from16 v0, p4

    move/from16 v1, p3

    if-le v0, v1, :cond_9

    mul-int/lit8 v10, p3, 0x4

    move/from16 v0, p4

    if-le v0, v10, :cond_9

    const/4 v7, 0x1

    .line 2062
    .local v7, sourceIsTallAndAspectRatioOverPanoramaThreshold:Z
    :goto_3
    if-nez v8, :cond_5

    if-eqz v7, :cond_a

    :cond_5
    const/4 v6, 0x1

    .line 2064
    .local v6, sourceAspectRatioOverPanoramaThreshold:Z
    :goto_4
    if-eqz v9, :cond_c

    if-eqz v6, :cond_c

    .line 2065
    const/high16 v3, -0x4080

    .line 2066
    .local v3, maxSizeWidth:F
    const/high16 v2, -0x4080

    .line 2067
    .local v2, maxSizeHeight:F
    sget-boolean v10, Lcom/htc/sunnyCore/common/Constants;->FLAG_NVIDIA:Z

    if-eqz v10, :cond_b

    .line 2069
    const/high16 v3, 0x4500

    .line 2070
    const/high16 v2, 0x4500

    .line 2077
    :goto_5
    move/from16 v0, p3

    int-to-float v10, v0

    div-float v10, v3, v10

    move/from16 v0, p4

    int-to-float v11, v0

    div-float v11, v2, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 2078
    .local v5, scaleRatioLimitDueToTexture:F
    const-wide/high16 v10, 0x4150

    move/from16 v0, p4

    int-to-double v12, v0

    move/from16 v0, p3

    int-to-double v14, v0

    mul-double/2addr v12, v14

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    invoke-static {v5, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 2079
    .local v4, scaleRatio:F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    move/from16 v0, p3

    int-to-float v11, v0

    mul-float/2addr v11, v4

    const/high16 v12, 0x3f80

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-static {v11, v3}, Ljava/lang/Math;->min(FF)F

    move-result v11

    float-to-int v11, v11

    iput v11, v10, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    .line 2080
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    move/from16 v0, p4

    int-to-float v11, v0

    mul-float/2addr v11, v4

    const/high16 v12, 0x3f80

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-static {v11, v2}, Ljava/lang/Math;->min(FF)F

    move-result v11

    float-to-int v11, v11

    iput v11, v10, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    .line 2093
    .end local v2           #maxSizeHeight:F
    .end local v3           #maxSizeWidth:F
    .end local v4           #scaleRatio:F
    .end local v5           #scaleRatioLimitDueToTexture:F
    .end local v6           #sourceAspectRatioOverPanoramaThreshold:Z
    .end local v7           #sourceIsTallAndAspectRatioOverPanoramaThreshold:Z
    .end local v8           #sourceIsWideAndAspectRatioOverPanoramaThreshold:Z
    .end local v9           #sourceWidthHeightOverPanoramaThreshold:Z
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget v10, v10, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget v11, v11, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lcom/htc/sunny2/common/ImageDecoder;->setPreferSize(II)V

    goto/16 :goto_0

    .line 2059
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 2060
    .restart local v9       #sourceWidthHeightOverPanoramaThreshold:Z
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 2061
    .restart local v8       #sourceIsWideAndAspectRatioOverPanoramaThreshold:Z
    :cond_9
    const/4 v7, 0x0

    goto :goto_3

    .line 2062
    .restart local v7       #sourceIsTallAndAspectRatioOverPanoramaThreshold:Z
    :cond_a
    const/4 v6, 0x0

    goto :goto_4

    .line 2074
    .restart local v2       #maxSizeHeight:F
    .restart local v3       #maxSizeWidth:F
    .restart local v6       #sourceAspectRatioOverPanoramaThreshold:Z
    :cond_b
    const/high16 v3, 0x4580

    .line 2075
    const/high16 v2, 0x4580

    goto :goto_5

    .line 2082
    .end local v2           #maxSizeHeight:F
    .end local v3           #maxSizeWidth:F
    :cond_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mIsEnableHalfPreferSize:Z
    invoke-static {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->access$1300(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2084
    move/from16 v0, p3

    move/from16 v1, p4

    if-lt v0, v1, :cond_d

    .line 2085
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget v11, v11, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    iput v11, v10, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    .line 2086
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget v11, v11, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    iput v11, v10, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    goto :goto_6

    .line 2088
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget v11, v11, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenShortDimension:I

    iput v11, v10, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageWidth:I

    .line 2089
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$ImageCallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget v11, v11, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mScreenLongDimension:I

    iput v11, v10, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->mImageHeight:I

    goto :goto_6
.end method
