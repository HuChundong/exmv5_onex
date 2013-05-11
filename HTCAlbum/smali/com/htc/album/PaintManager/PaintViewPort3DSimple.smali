.class public Lcom/htc/album/PaintManager/PaintViewPort3DSimple;
.super Lcom/htc/painting/engine/ViewPort;
.source "PaintViewPort3DSimple.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mPaintRect:Landroid/graphics/RectF;

.field private mScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/htc/painting/engine/ViewPort;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->mPaintRect:Landroid/graphics/RectF;

    .line 12
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->mScale:F

    return-void
.end method


# virtual methods
.method public getOffsetX()F
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method protected getOriginX()F
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method protected getOriginY()F
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getRectF()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->mPaintRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getRotateDeg()F
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getRotatePivotX()F
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getRotatePivotY()F
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->mScale:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->mScale:F

    return v0
.end method

.method public getScalingPivotX()F
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getScalingPivotY()F
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public setDimension(FF)V
    .locals 2
    .parameter "fWidth"
    .parameter "fHeight"

    .prologue
    const/4 v1, 0x0

    .line 16
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->mPaintRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->mPaintRect:Landroid/graphics/RectF;

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 20
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 21
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->mPaintRect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->right:F

    .line 22
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->mPaintRect:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->bottom:F

    .line 23
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .parameter "fScale"

    .prologue
    .line 26
    iput p1, p0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->mScale:F

    .line 27
    return-void
.end method
