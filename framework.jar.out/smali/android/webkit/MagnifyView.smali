.class Landroid/webkit/MagnifyView;
.super Landroid/view/View;
.source "MagnifyView.java"


# instance fields
.field final SCALE_RATIO:F

.field background:Landroid/graphics/drawable/Drawable;

.field bgID:I

.field bgPadding:Landroid/graphics/Rect;

.field centerX:F

.field centerY:F

.field clip:Landroid/graphics/RectF;

.field contentH:I

.field contentScale:F

.field contentScrollX:I

.field contentScrollY:I

.field contentW:I

.field densityFactor:F

.field dirty:Landroid/graphics/Rect;

.field drawing:Z

.field halfH:F

.field halfW:F

.field invContentScale:F

.field mBMPcanvas:Landroid/graphics/Canvas;

.field mContentBMP:Landroid/graphics/Bitmap;

.field magnifyRatio:F

.field magnifyWindow:Landroid/widget/PopupWindow;

.field ml:Landroid/widget/FrameLayout;

.field mll:Landroid/widget/FrameLayout$LayoutParams;

.field offsetX:F

.field offsetY:F

.field parentXOffset:I

.field parentYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    const/high16 v0, 0x3fc0

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    iput v1, p0, Landroid/webkit/MagnifyView;->contentScale:F

    .line 24
    iput v1, p0, Landroid/webkit/MagnifyView;->invContentScale:F

    .line 30
    iput-boolean v2, p0, Landroid/webkit/MagnifyView;->drawing:Z

    .line 33
    iput v0, p0, Landroid/webkit/MagnifyView;->SCALE_RATIO:F

    .line 34
    iput v0, p0, Landroid/webkit/MagnifyView;->magnifyRatio:F

    .line 40
    iput v2, p0, Landroid/webkit/MagnifyView;->bgID:I

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/MagnifyView;->bgPadding:Landroid/graphics/Rect;

    .line 44
    iput v1, p0, Landroid/webkit/MagnifyView;->densityFactor:F

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/webkit/MagnifyView;->clip:Landroid/graphics/RectF;

    .line 46
    iput v2, p0, Landroid/webkit/MagnifyView;->parentXOffset:I

    .line 47
    iput v2, p0, Landroid/webkit/MagnifyView;->parentYOffset:I

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/MagnifyView;->dirty:Landroid/graphics/Rect;

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/MagnifyView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/MagnifyView;->ml:Landroid/widget/FrameLayout;

    .line 57
    iget-object v0, p0, Landroid/webkit/MagnifyView;->ml:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 59
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/webkit/MagnifyView;->ml:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/webkit/MagnifyView;->magnifyWindow:Landroid/widget/PopupWindow;

    .line 60
    iget-object v0, p0, Landroid/webkit/MagnifyView;->magnifyWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 62
    invoke-virtual {p0}, Landroid/webkit/MagnifyView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Landroid/webkit/MagnifyView;->mll:Landroid/widget/FrameLayout$LayoutParams;

    .line 63
    iget-object v0, p0, Landroid/webkit/MagnifyView;->mll:Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 65
    iget-object v0, p0, Landroid/webkit/MagnifyView;->mll:Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/webkit/MagnifyView;->densityFactor:F

    .line 72
    return-void
.end method


# virtual methods
.method beginDrawContent()Landroid/graphics/Canvas;
    .locals 6

    .prologue
    .line 197
    iget-boolean v2, p0, Landroid/webkit/MagnifyView;->drawing:Z

    if-eqz v2, :cond_0

    .line 198
    const/4 v0, 0x0

    .line 224
    :goto_0
    return-object v0

    .line 200
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/MagnifyView;->drawing:Z

    .line 206
    iget-object v2, p0, Landroid/webkit/MagnifyView;->mBMPcanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 207
    iget-object v0, p0, Landroid/webkit/MagnifyView;->mBMPcanvas:Landroid/graphics/Canvas;

    .line 209
    .local v0, canvas:Landroid/graphics/Canvas;
    iget v2, p0, Landroid/webkit/MagnifyView;->centerX:F

    iget v3, p0, Landroid/webkit/MagnifyView;->contentScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/webkit/MagnifyView;->contentScrollX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/webkit/MagnifyView;->parentXOffset:I

    int-to-float v3, v3

    add-float v1, v2, v3

    .line 210
    .local v1, viewCenter:F
    iget-object v2, p0, Landroid/webkit/MagnifyView;->clip:Landroid/graphics/RectF;

    iget v3, p0, Landroid/webkit/MagnifyView;->halfW:F

    sub-float v3, v1, v3

    iget-object v4, p0, Landroid/webkit/MagnifyView;->bgPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 211
    iget-object v2, p0, Landroid/webkit/MagnifyView;->dirty:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkit/MagnifyView;->clip:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/MagnifyView;->dirty:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/MagnifyView;->clip:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/MagnifyView;->dirty:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 214
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/webkit/MagnifyView;->clip:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 217
    iget v2, p0, Landroid/webkit/MagnifyView;->offsetX:F

    neg-float v2, v2

    iget v3, p0, Landroid/webkit/MagnifyView;->offsetY:F

    neg-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 220
    iget v2, p0, Landroid/webkit/MagnifyView;->magnifyRatio:F

    iget v3, p0, Landroid/webkit/MagnifyView;->magnifyRatio:F

    iget v4, p0, Landroid/webkit/MagnifyView;->centerX:F

    iget v5, p0, Landroid/webkit/MagnifyView;->centerY:F

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_0
.end method

.method dismiss()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Landroid/webkit/MagnifyView;->magnifyWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Landroid/webkit/MagnifyView;->magnifyWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 160
    :cond_0
    return-void
.end method

.method endDrawContent()V
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Landroid/webkit/MagnifyView;->drawing:Z

    if-nez v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 231
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/MagnifyView;->drawing:Z

    .line 232
    iget-object v0, p0, Landroid/webkit/MagnifyView;->mBMPcanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method getBGdrawableID()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Landroid/webkit/MagnifyView;->bgID:I

    return v0
.end method

.method getFullHeight()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Landroid/webkit/MagnifyView;->ml:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getFullWidth()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Landroid/webkit/MagnifyView;->ml:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 245
    iget-object v1, p0, Landroid/webkit/MagnifyView;->mContentBMP:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-boolean v1, p0, Landroid/webkit/MagnifyView;->drawing:Z

    if-eqz v1, :cond_2

    .line 249
    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/webkit/MagnifyView;->postInvalidateDelayed(J)V

    goto :goto_0

    .line 251
    :cond_2
    const/4 v1, 0x0

    iget v2, p0, Landroid/webkit/MagnifyView;->parentYOffset:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 252
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 253
    .local v0, saveflag:I
    iget-object v1, p0, Landroid/webkit/MagnifyView;->clip:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 254
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 255
    iget-object v1, p0, Landroid/webkit/MagnifyView;->mContentBMP:Landroid/graphics/Bitmap;

    iget-object v2, p0, Landroid/webkit/MagnifyView;->clip:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Landroid/webkit/MagnifyView;->clip:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 256
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 259
    iget-object v1, p0, Landroid/webkit/MagnifyView;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Landroid/webkit/MagnifyView;->background:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/webkit/MagnifyView;->clip:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Landroid/webkit/MagnifyView;->bgPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/MagnifyView;->clip:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Landroid/webkit/MagnifyView;->bgPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/MagnifyView;->clip:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Landroid/webkit/MagnifyView;->bgPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/MagnifyView;->clip:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Landroid/webkit/MagnifyView;->bgPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 267
    iget-object v1, p0, Landroid/webkit/MagnifyView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 268
    iget-object v1, p0, Landroid/webkit/MagnifyView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 269
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method setBGdrawable(I)V
    .locals 4
    .parameter "resID"

    .prologue
    const/4 v3, 0x0

    .line 75
    iget v1, p0, Landroid/webkit/MagnifyView;->bgID:I

    if-ne v1, p1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 78
    :cond_0
    iput p1, p0, Landroid/webkit/MagnifyView;->bgID:I

    .line 79
    if-lez p1, :cond_1

    .line 81
    :try_start_0
    iget-object v1, p0, Landroid/webkit/MagnifyView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/MagnifyView;->background:Landroid/graphics/drawable/Drawable;

    .line 82
    iget-object v1, p0, Landroid/webkit/MagnifyView;->background:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_1
    iget-object v1, p0, Landroid/webkit/MagnifyView;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 92
    iget-object v1, p0, Landroid/webkit/MagnifyView;->background:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/webkit/MagnifyView;->bgPadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    iput-object v3, p0, Landroid/webkit/MagnifyView;->background:Landroid/graphics/drawable/Drawable;

    .line 85
    const-string v1, "MagnifyView"

    const-string v2, "ERROR!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 88
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_1
    iput-object v3, p0, Landroid/webkit/MagnifyView;->background:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 94
    :cond_2
    iget-object v1, p0, Landroid/webkit/MagnifyView;->bgPadding:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method setContent(FFFIIII)V
    .locals 3
    .parameter "cscale"
    .parameter "cx"
    .parameter "cy"
    .parameter "cw"
    .parameter "ch"
    .parameter "cScrollX"
    .parameter "cScrollY"

    .prologue
    const/high16 v2, 0x4000

    const/high16 v1, 0x3fc0

    .line 167
    iget v0, p0, Landroid/webkit/MagnifyView;->contentScale:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 168
    iput p1, p0, Landroid/webkit/MagnifyView;->contentScale:F

    .line 169
    const/high16 v0, 0x3f80

    div-float/2addr v0, p1

    iput v0, p0, Landroid/webkit/MagnifyView;->invContentScale:F

    .line 172
    iget v0, p0, Landroid/webkit/MagnifyView;->densityFactor:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Landroid/webkit/MagnifyView;->densityFactor:F

    mul-float/2addr v0, v1

    :goto_0
    iput v0, p0, Landroid/webkit/MagnifyView;->magnifyRatio:F

    .line 175
    :cond_0
    iput p2, p0, Landroid/webkit/MagnifyView;->centerX:F

    .line 176
    iput p3, p0, Landroid/webkit/MagnifyView;->centerY:F

    .line 177
    iget v0, p0, Landroid/webkit/MagnifyView;->halfW:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/webkit/MagnifyView;->contentW:I

    .line 178
    iget v0, p0, Landroid/webkit/MagnifyView;->halfH:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {p5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/webkit/MagnifyView;->contentH:I

    .line 179
    iput p6, p0, Landroid/webkit/MagnifyView;->contentScrollX:I

    .line 180
    iput p7, p0, Landroid/webkit/MagnifyView;->contentScrollY:I

    .line 184
    iget v0, p0, Landroid/webkit/MagnifyView;->centerX:F

    iget v1, p0, Landroid/webkit/MagnifyView;->halfW:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/MagnifyView;->offsetX:F

    .line 185
    iget v0, p0, Landroid/webkit/MagnifyView;->centerY:F

    iget v1, p0, Landroid/webkit/MagnifyView;->halfH:F

    iget-object v2, p0, Landroid/webkit/MagnifyView;->bgPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/MagnifyView;->offsetY:F

    .line 194
    return-void

    .line 172
    :cond_1
    iget v0, p0, Landroid/webkit/MagnifyView;->densityFactor:F

    mul-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    const/high16 v0, 0x4010

    iget v1, p0, Landroid/webkit/MagnifyView;->densityFactor:F

    mul-float/2addr v0, v1

    goto :goto_0

    :cond_2
    mul-float v0, v1, p1

    goto :goto_0
.end method

.method setMagnifyContentSize(II)V
    .locals 6
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    const/high16 v1, 0x3f00

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 102
    int-to-float v0, p1

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/MagnifyView;->halfW:F

    .line 103
    int-to-float v0, p2

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/MagnifyView;->halfH:F

    .line 104
    iget-object v0, p0, Landroid/webkit/MagnifyView;->clip:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 105
    iget-object v0, p0, Landroid/webkit/MagnifyView;->dirty:Landroid/graphics/Rect;

    shl-int/lit8 v1, p1, 0x1

    shl-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 107
    iget-object v0, p0, Landroid/webkit/MagnifyView;->ml:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v3}, Landroid/widget/FrameLayout;->measure(II)V

    .line 109
    iget-object v0, p0, Landroid/webkit/MagnifyView;->mContentBMP:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/MagnifyView;->mContentBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/webkit/MagnifyView;->mContentBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 113
    :cond_0
    iget-object v0, p0, Landroid/webkit/MagnifyView;->mContentBMP:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Landroid/webkit/MagnifyView;->mContentBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 116
    :cond_1
    iput-object v5, p0, Landroid/webkit/MagnifyView;->mBMPcanvas:Landroid/graphics/Canvas;

    .line 117
    iput-object v5, p0, Landroid/webkit/MagnifyView;->mContentBMP:Landroid/graphics/Bitmap;

    .line 119
    if-lez p1, :cond_2

    if-lez p2, :cond_2

    .line 120
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/MagnifyView;->mContentBMP:Landroid/graphics/Bitmap;

    .line 121
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/webkit/MagnifyView;->mContentBMP:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/webkit/MagnifyView;->mBMPcanvas:Landroid/graphics/Canvas;

    .line 125
    :cond_2
    return-void
.end method

.method showAtPositon(Landroid/view/View;II)V
    .locals 5
    .parameter "parent"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 136
    iput p2, p0, Landroid/webkit/MagnifyView;->parentXOffset:I

    .line 137
    iput p3, p0, Landroid/webkit/MagnifyView;->parentYOffset:I

    .line 138
    iget-object v2, p0, Landroid/webkit/MagnifyView;->magnifyWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {p0}, Landroid/webkit/MagnifyView;->invalidate()V

    .line 155
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v2, p0, Landroid/webkit/MagnifyView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 146
    .local v0, display:Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 147
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 148
    iget-object v2, p0, Landroid/webkit/MagnifyView;->magnifyWindow:Landroid/widget/PopupWindow;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 151
    iget-object v2, p0, Landroid/webkit/MagnifyView;->magnifyWindow:Landroid/widget/PopupWindow;

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 152
    iget-object v2, p0, Landroid/webkit/MagnifyView;->magnifyWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, p1, v4, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 153
    invoke-virtual {p0}, Landroid/webkit/MagnifyView;->invalidate()V

    goto :goto_0
.end method
