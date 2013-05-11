.class public Lcom/htc/album/PaintManager/PaintViewPort3D;
.super Lcom/htc/painting/engine/ViewPort;
.source "PaintViewPort3D.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

.field private mIsZoomIn:Z

.field private mOffsetBaseX:F

.field private mOffsetBaseY:F

.field private mOffsetX:F

.field private mOffsetY:F

.field private mOriginX:F

.field private mOriginY:F

.field private mPaintRect:Landroid/graphics/RectF;

.field private mRotate:F

.field private mScale:F

.field private mScaleOffset:F

.field private mfHeight:F

.field private mfWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/htc/album/PaintManager/PaintViewPort3D;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/PaintManager/PaintViewPort3D;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/htc/painting/engine/ViewPort;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    .line 15
    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    .line 17
    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfWidth:F

    .line 18
    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfHeight:F

    .line 20
    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mCenterX:F

    .line 21
    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mCenterY:F

    .line 23
    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOriginX:F

    .line 24
    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOriginY:F

    .line 26
    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mRotate:F

    .line 27
    iput v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    .line 28
    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScaleOffset:F

    .line 30
    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetX:F

    .line 31
    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetY:F

    .line 32
    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetBaseX:F

    .line 33
    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetBaseY:F

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIsZoomIn:Z

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    .line 41
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 42
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 43
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 44
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 46
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfWidth:F

    .line 47
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfHeight:F

    .line 48
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mMatrix:Landroid/graphics/Matrix;

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public getIdentity()Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 5

    .prologue
    const/high16 v3, 0x4000

    .line 216
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 221
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mMatrix:Landroid/graphics/Matrix;

    .line 263
    :goto_0
    return-object v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->getWidth()F

    move-result v1

    neg-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-virtual {v2}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->getHeight()F

    move-result v2

    neg-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 231
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mRotate:F

    iget v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOriginX:F

    iget v3, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOriginY:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 238
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    iget v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    iget v3, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOriginX:F

    iget v4, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOriginY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 248
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetX:F

    iget v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 263
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mMatrix:Landroid/graphics/Matrix;

    goto :goto_0
.end method

.method public getOffsetX()F
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetBaseX:F

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetBaseY:F

    return v0
.end method

.method protected getOriginX()F
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOriginX:F

    return v0
.end method

.method protected getOriginY()F
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOriginY:F

    return v0
.end method

.method public getRectF()Landroid/graphics/RectF;
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/album/PaintManager/PaintViewPort3D;->getOffsetX()F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 278
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/album/PaintManager/PaintViewPort3D;->getOffsetY()F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 279
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfWidth:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 280
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfHeight:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 281
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getRotateDeg()F
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public getRotatePivotX()F
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public getRotatePivotY()F
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mRotate:F

    return v0
.end method

.method protected getScale()F
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    return v0
.end method

.method public getScalingPivotX()F
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public getScalingPivotY()F
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public initRectangle(IIII)V
    .locals 2
    .parameter "nLeft"
    .parameter "nTop"
    .parameter "nRight"
    .parameter "nBottom"

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 139
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 140
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    sub-int v1, p3, p1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 141
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    sub-int v1, p4, p2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 142
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfWidth:F

    .line 143
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfHeight:F

    .line 145
    return-void
.end method

.method public initRotation(F)V
    .locals 2
    .parameter "fRotation"

    .prologue
    .line 148
    iput p1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mRotate:F

    .line 150
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    if-nez v0, :cond_0

    .line 151
    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfWidth:F

    iget v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfHeight:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/album/PaintManager/PaintViewPort3D;->setIdentity(FFF)V

    .line 152
    :cond_0
    return-void
.end method

.method public initScale(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 189
    iput p1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    .line 190
    return-void
.end method

.method public matrixEnd(Z)V
    .locals 4
    .parameter "bIsRotate"

    .prologue
    const/high16 v3, 0x4000

    .line 111
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    if-eqz v0, :cond_1

    .line 114
    const/high16 v0, 0x42b4

    iget v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mRotate:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/high16 v0, -0x3d4c

    iget v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mRotate:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/high16 v0, 0x4387

    iget v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mRotate:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/high16 v0, -0x3c79

    iget v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mRotate:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 118
    :cond_0
    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfHeight:F

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->getWidth()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    .line 119
    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetBaseX:F

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->getHeight()F

    move-result v1

    iget v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetX:F

    .line 120
    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetBaseY:F

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetY:F

    .line 130
    :goto_0
    sget-object v0, Lcom/htc/album/PaintManager/PaintViewPort3D;->LOG_TAG:Ljava/lang/String;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[HTCAlbum][PaintViewPort3D][matrixEnd]: scale: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\n[HTCAlbum][PaintViewPort3D][matrixEnd]: rotate: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mRotate:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "\n[HTCAlbum][PaintViewPort3D][matrixEnd]: offset: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, " : "

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :cond_1
    return-void

    .line 124
    :cond_2
    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfWidth:F

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->getWidth()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    .line 125
    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetBaseX:F

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetX:F

    .line 126
    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetBaseY:F

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->getHeight()F

    move-result v1

    iget v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetY:F

    goto :goto_0
.end method

.method public matrixbegin()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public printfMatrix(Ljava/lang/String;)V
    .locals 0
    .parameter "szTag"

    .prologue
    .line 212
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 92
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 93
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 94
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 95
    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfWidth:F

    .line 96
    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfHeight:F

    .line 98
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    .line 99
    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mRotate:F

    .line 101
    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetBaseX:F

    .line 102
    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetBaseY:F

    .line 104
    return-void
.end method

.method public setIdentity(FFF)V
    .locals 4
    .parameter "fRotation"
    .parameter "fWidth"
    .parameter "fHeight"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-direct {v0}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;-><init>()V

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    .line 58
    const-wide v0, 0x4056800000000000L

    float-to-double v2, p1

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    const-wide v0, -0x3fa9800000000000L

    float-to-double v2, p1

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    const-wide v0, 0x4070e00000000000L

    float-to-double v2, p1

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    const-wide v0, -0x3f8f200000000000L

    float-to-double v2, p1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-virtual {v0, p3, p2}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->setDimension(FF)V

    .line 73
    :goto_1
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->getCenterX()F

    move-result v0

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mCenterX:F

    .line 74
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->getCenterY()F

    move-result v0

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mCenterY:F

    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-virtual {v0, p2, p3}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->setDimension(FF)V

    goto :goto_1
.end method

.method public setRectangle(IIII)V
    .locals 2
    .parameter "nLeft"
    .parameter "nTop"
    .parameter "nRight"
    .parameter "nBottom"

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 156
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 157
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    sub-int v1, p3, p1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 158
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    sub-int v1, p4, p2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 159
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfWidth:F

    .line 160
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfHeight:F

    .line 161
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .parameter "fRotation"

    .prologue
    .line 169
    iput p1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mRotate:F

    .line 170
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 194
    iput p1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    .line 195
    return-void
.end method

.method public setTranslation(II)V
    .locals 1
    .parameter "nLeft"
    .parameter "nTop"

    .prologue
    .line 173
    int-to-float v0, p1

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetBaseX:F

    .line 174
    int-to-float v0, p2

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetBaseY:F

    .line 175
    return-void
.end method
