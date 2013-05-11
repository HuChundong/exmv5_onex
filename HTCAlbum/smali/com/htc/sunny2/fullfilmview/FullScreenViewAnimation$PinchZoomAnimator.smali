.class public Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "FullScreenViewAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PinchZoomAnimator"
.end annotation


# static fields
.field private static final BOUNCE_BACK_ZOOMING:I = 0x2

.field private static final INIT:I = 0x0

.field private static final LTAG:Ljava/lang/String; = "PinchZoomAnimator"

.field private static final NORMAL_ZOOMING:I = 0x1


# instance fields
.field private alignSteps:I

.field private imageZoomCenterRX:F

.field private imageZoomCenterRY:F

.field private interpolationSteps:I

.field private isZoomEnd:Z

.field private itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

.field private state:I

.field private tapX:F

.field private tapY:F

.field private targetZoomFactor:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .parameter "host"
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    .line 151
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->isZoomEnd:Z

    .line 153
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->tapX:F

    .line 154
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->tapY:F

    .line 155
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->imageZoomCenterRX:F

    .line 156
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->imageZoomCenterRY:F

    .line 158
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->targetZoomFactor:F

    .line 159
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->interpolationSteps:I

    .line 160
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->alignSteps:I

    .line 173
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->state:I

    .line 174
    return-void
.end method


# virtual methods
.method public isOnBounceBack()Z
    .locals 2

    .prologue
    .line 339
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 3
    .parameter "cancelReason"

    .prologue
    const/4 v2, 0x0

    .line 333
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PinchZoomAnimator"

    const-string v1, "pinch zoom cancel"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0, v2, v2, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setPosition(FFF)V

    .line 335
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoomEnd()V

    .line 336
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 13
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    if-nez v0, :cond_0

    .line 242
    const/4 v0, 0x0

    .line 329
    :goto_0
    return v0

    .line 247
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->firstFrameIndex:I

    if-ne p1, v0, :cond_2

    .line 249
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "PinchZoomAnimator"

    const-string v4, "pinch zoom begin"

    invoke-static {v0, v4}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoomBegin()V

    .line 254
    :cond_2
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->state:I

    if-nez v0, :cond_6

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->isZoomEnd:Z

    .line 305
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_4

    .line 307
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->alignSteps:I

    if-nez v0, :cond_a

    .line 309
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setPosition(FFF)V

    .line 321
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->isZoomEnd:Z

    if-eqz v0, :cond_b

    .line 323
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "PinchZoomAnimator"

    const-string v4, "pinch zoom end"

    invoke-static {v0, v4}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->state:I

    .line 325
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoomEnd()V

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    .line 327
    const/4 v0, 0x0

    goto :goto_0

    .line 258
    :cond_6
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->state:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_8

    .line 260
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getZoomFactor()F

    move-result v8

    .line 262
    .local v8, currentZoomFactor:F
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->targetZoomFactor:F

    .line 264
    .local v1, newZoomFactor:F
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->interpolationSteps:I

    if-lez v0, :cond_7

    .line 266
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->targetZoomFactor:F

    sub-float/2addr v0, v8

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->interpolationSteps:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    add-float v1, v8, v0

    .line 267
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->interpolationSteps:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->interpolationSteps:I

    .line 270
    :cond_7
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageWidth()F

    move-result v0

    mul-float v10, v0, v1

    .line 271
    .local v10, displayImageWidth:F
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageHeight()F

    move-result v0

    mul-float v9, v0, v1

    .line 273
    .local v9, displayImageHeight:F
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->tapX:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->imageZoomCenterRX:F

    mul-float/2addr v4, v10

    sub-float v2, v0, v4

    .line 274
    .local v2, displayImageCenterX:F
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->tapY:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->imageZoomCenterRY:F

    mul-float/2addr v4, v9

    sub-float v3, v0, v4

    .line 276
    .local v3, displayImageCenterY:F
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoom(FFFZZII)V

    goto :goto_1

    .line 278
    .end local v1           #newZoomFactor:F
    .end local v2           #displayImageCenterX:F
    .end local v3           #displayImageCenterY:F
    .end local v8           #currentZoomFactor:F
    .end local v9           #displayImageHeight:F
    .end local v10           #displayImageWidth:F
    :cond_8
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->state:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 281
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getZoomFactor()F

    move-result v8

    .line 283
    .restart local v8       #currentZoomFactor:F
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->targetZoomFactor:F

    .line 285
    .restart local v1       #newZoomFactor:F
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->interpolationSteps:I

    if-lez v0, :cond_9

    .line 287
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->targetZoomFactor:F

    sub-float/2addr v0, v8

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->interpolationSteps:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    add-float v1, v8, v0

    .line 288
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->interpolationSteps:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->interpolationSteps:I

    .line 291
    :cond_9
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageWidth()F

    move-result v0

    mul-float v10, v0, v1

    .line 292
    .restart local v10       #displayImageWidth:F
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageHeight()F

    move-result v0

    mul-float v9, v0, v1

    .line 294
    .restart local v9       #displayImageHeight:F
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->tapX:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->imageZoomCenterRX:F

    mul-float/2addr v4, v10

    sub-float v2, v0, v4

    .line 295
    .restart local v2       #displayImageCenterX:F
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->tapY:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->imageZoomCenterRY:F

    mul-float/2addr v4, v9

    sub-float v3, v0, v4

    .line 297
    .restart local v3       #displayImageCenterY:F
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    const/4 v4, 0x1

    const/4 v5, 0x1

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->interpolationSteps:I

    rsub-int/lit8 v6, v6, 0xc

    const/16 v7, 0xc

    invoke-virtual/range {v0 .. v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoom(FFFZZII)V

    .line 299
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->interpolationSteps:I

    if-gtz v0, :cond_3

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->isZoomEnd:Z

    goto/16 :goto_1

    .line 313
    .end local v1           #newZoomFactor:F
    .end local v2           #displayImageCenterX:F
    .end local v3           #displayImageCenterY:F
    .end local v8           #currentZoomFactor:F
    .end local v9           #displayImageHeight:F
    .end local v10           #displayImageWidth:F
    :cond_a
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v11

    .line 314
    .local v11, positionX:F
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->alignSteps:I

    int-to-float v0, v0

    div-float v0, v11, v0

    sub-float v12, v11, v0

    .line 315
    .local v12, target:F
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v12, v4, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setPosition(FFF)V

    .line 316
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->alignSteps:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->alignSteps:I

    goto/16 :goto_2

    .line 329
    .end local v11           #positionX:F
    .end local v12           #target:F
    :cond_b
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public onScaleBeginIRT(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .parameter "itemFrame"
    .parameter "detector"

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x4000

    .line 181
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    .line 182
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->alignSteps:I

    .line 184
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getZoomFactor()F

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->targetZoomFactor:F

    .line 186
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFrameWidth()F

    move-result v0

    neg-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p2}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->tapX:F

    .line 187
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFrameHeight()F

    move-result v0

    div-float/2addr v0, v2

    invoke-virtual {p2}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->tapY:F

    .line 189
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->tapX:F

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateImageRXOnViewportPoint(F)F

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->imageZoomCenterRX:F

    .line 190
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->tapY:F

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateImageRYOnViewportPoint(F)F

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->imageZoomCenterRY:F

    .line 194
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->state:I

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->isZoomEnd:Z

    .line 196
    return v3
.end method

.method public onScaleEndIRT(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->state:I

    .line 229
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->targetZoomFactor:F

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->adjustZoomFactor(F)F

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->targetZoomFactor:F

    .line 230
    const/16 v0, 0xc

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->interpolationSteps:I

    .line 231
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panBegin()V

    goto :goto_0
.end method

.method public onScaleIRT(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 221
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->onScaleIRT(Landroid/view/ScaleGestureDetector;Z)Z

    move-result v0

    return v0
.end method

.method public onScaleIRT(Landroid/view/ScaleGestureDetector;Z)Z
    .locals 4
    .parameter "detector"
    .parameter "canDoAdjustZoomFactorExtra"

    .prologue
    const/4 v3, 0x1

    .line 201
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    if-nez v1, :cond_0

    .line 216
    :goto_0
    return v3

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 206
    .local v0, scaleFactor:F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    const-string v1, "PinchZoomAnimator"

    const-string v2, "[HtcAlbum][FullScreenViewAnimation][PinchZoomAnimator][onScaleIRT]scaleFactor NaN, fix to 1.0"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/high16 v0, 0x3f80

    .line 212
    :cond_1
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->targetZoomFactor:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->targetZoomFactor:F

    .line 213
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->targetZoomFactor:F

    invoke-virtual {v1, v2, p2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->adjustZoomFactorExtra(FZ)F

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->targetZoomFactor:F

    .line 214
    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->interpolationSteps:I

    goto :goto_0
.end method

.method public setZoomCenterPosition(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    if-nez v0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 345
    :cond_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->tapX:F

    .line 346
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->tapY:F

    .line 347
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->tapX:F

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateImageRXOnViewportPoint(F)F

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->imageZoomCenterRX:F

    .line 348
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->tapY:F

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateImageRYOnViewportPoint(F)F

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->imageZoomCenterRY:F

    goto :goto_0
.end method
