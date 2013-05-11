.class public Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;
.super Lcom/htc/painting/engine/ViewPort;
.source "PaintViewPort3DIdentity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mPaintRect:Landroid/graphics/RectF;

.field private mPaintRectR:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/htc/painting/engine/ViewPort;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    .line 13
    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRectR:Landroid/graphics/RectF;

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRectR:Landroid/graphics/RectF;

    .line 19
    return-void
.end method


# virtual methods
.method public getCenterRotateOffset()F
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, fOffset:F
    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    div-float v0, v1, v3

    .line 59
    :goto_0
    return v0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    div-float v0, v1, v3

    goto :goto_0
.end method

.method public getCenterX()F
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    return v0
.end method

.method public getCenterY()F
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    return v0
.end method

.method public getOffsetX()F
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method protected getOriginX()F
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method protected getOriginY()F
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getRectF()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getRotateDeg()F
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public getRotatePivotX()F
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getRotatePivotY()F
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 97
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 102
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getScaledRotateOffsetX()F
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRectR:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getScaledRotateOffsetY()F
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRectR:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getScalingPivotX()F
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getScalingPivotY()F
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    return v0
.end method

.method public printfMatrix(Ljava/lang/String;)V
    .locals 3
    .parameter "szTag"

    .prologue
    .line 106
    sget-object v0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][PaintViewPort3DIdentity][printfMatrix]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rectF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][PaintViewPort3DIdentity][printfMatrix]: ----------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public setDimension(FF)V
    .locals 2
    .parameter "fWidth"
    .parameter "fHeight"

    .prologue
    const/4 v1, 0x0

    .line 22
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 23
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 24
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->right:F

    .line 25
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->bottom:F

    .line 26
    return-void
.end method

.method public setDimensionRotated(FF)V
    .locals 2
    .parameter "fWidth"
    .parameter "fHeight"

    .prologue
    const/4 v1, 0x0

    .line 29
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRectR:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 30
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRectR:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 31
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRectR:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->right:F

    .line 32
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRectR:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->bottom:F

    .line 33
    return-void
.end method
