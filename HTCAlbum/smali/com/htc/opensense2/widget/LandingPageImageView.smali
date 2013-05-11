.class public Lcom/htc/opensense2/widget/LandingPageImageView;
.super Landroid/widget/ImageView;
.source "LandingPageImageView.java"


# instance fields
.field private mBgDrawble:Landroid/graphics/drawable/Drawable;

.field private mImageId:I

.field private mImageViewSizeChange:Z

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    iput-object v0, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mRes:Landroid/content/res/Resources;

    .line 13
    iput-object v0, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mBgDrawble:Landroid/graphics/drawable/Drawable;

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mImageId:I

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mImageViewSizeChange:Z

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mRes:Landroid/content/res/Resources;

    .line 21
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 26
    iget-boolean v6, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mImageViewSizeChange:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mBgDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/LandingPageImageView;->getWidth()I

    move-result v5

    .line 29
    .local v5, viewWidth:I
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/LandingPageImageView;->getHeight()I

    move-result v4

    .line 30
    .local v4, viewHeight:I
    iget-object v6, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mBgDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 31
    .local v3, drawbleWidht:I
    iget-object v6, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mBgDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 32
    .local v2, drawbleHeight:I
    sub-int v6, v5, v3

    div-int/lit8 v1, v6, 0x2

    .line 33
    .local v1, diffwidth:I
    sub-int v6, v4, v2

    div-int/lit8 v0, v6, 0x2

    .line 35
    .local v0, diffheight:I
    iget-object v6, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mBgDrawble:Landroid/graphics/drawable/Drawable;

    add-int v7, v1, v3

    add-int v8, v0, v2

    invoke-virtual {v6, v1, v0, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 36
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mImageViewSizeChange:Z

    .line 39
    .end local v0           #diffheight:I
    .end local v1           #diffwidth:I
    .end local v2           #drawbleHeight:I
    .end local v3           #drawbleWidht:I
    .end local v4           #viewHeight:I
    .end local v5           #viewWidth:I
    :cond_0
    iget-object v6, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mBgDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 41
    iget-object v6, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mBgDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 44
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 45
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 66
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mImageViewSizeChange:Z

    .line 69
    return-void
.end method

.method public setBackgroundFixImageView(I)V
    .locals 1
    .parameter "imageId"

    .prologue
    .line 49
    if-nez p1, :cond_1

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mBgDrawble:Landroid/graphics/drawable/Drawable;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mImageViewSizeChange:Z

    .line 60
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/LandingPageImageView;->invalidate()V

    .line 61
    return-void

    .line 54
    :cond_1
    iget v0, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mImageId:I

    if-eq v0, p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mBgDrawble:Landroid/graphics/drawable/Drawable;

    .line 57
    iput p1, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mImageId:I

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mImageViewSizeChange:Z

    goto :goto_0
.end method
