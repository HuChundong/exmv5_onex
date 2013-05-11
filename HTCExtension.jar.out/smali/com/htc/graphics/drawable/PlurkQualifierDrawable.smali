.class public Lcom/htc/graphics/drawable/PlurkQualifierDrawable;
.super Landroid/graphics/drawable/NinePatchDrawable;
.source "PlurkQualifierDrawable.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final MARGIN_WIDTH:I = 0x4

.field public static NOCOLOR:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final QUALIFIER_FORETEXT_COLOR:I = -0x1

.field private static sMarginHeight:I

.field private static sTextBoundLeft:I

.field private static sTextBoundRight:I


# instance fields
.field private mColor:I

.field private mFontBounds:Landroid/graphics/Paint$FontMetricsInt;

.field private mFontDimension:F

.field private mFontXDimension:F

.field private mFontYDimension:F

.field private mIntrinsicBounds:Landroid/graphics/Rect;

.field private mIsV2mode:Z

.field private mText:Ljava/lang/String;

.field private mTextBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    sput v0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->NOCOLOR:I

    .line 36
    const-class v0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/String;FFF)V
    .locals 8
    .parameter "context"
    .parameter "bitmap"
    .parameter "color"
    .parameter "text"
    .parameter "font_dimension"
    .parameter "font_x_dimension"
    .parameter "font_y_dimension"

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v4, Landroid/graphics/NinePatch;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, p2, v5, v6}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    invoke-direct {p0, v1, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V

    .line 49
    iput-boolean v3, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mIsV2mode:Z

    .line 73
    iput-object p4, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mText:Ljava/lang/String;

    .line 74
    iput p3, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mColor:I

    .line 75
    iget v1, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mColor:I

    sget v4, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->NOCOLOR:I

    if-eq v1, v4, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mIsV2mode:Z

    .line 76
    iput p5, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mFontDimension:F

    .line 77
    iput p6, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mFontXDimension:F

    .line 78
    iput p7, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mFontYDimension:F

    .line 79
    sput v7, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->sMarginHeight:I

    .line 80
    sput v3, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->sTextBoundLeft:I

    .line 81
    sput v7, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->sTextBoundRight:I

    .line 83
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 84
    .local v0, paint:Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 86
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget v1, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mFontDimension:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 88
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mIsV2mode:Z

    if-eqz v1, :cond_0

    .line 89
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v4, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 91
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mFontBounds:Landroid/graphics/Paint$FontMetricsInt;

    .line 100
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mTextBounds:Landroid/graphics/Rect;

    .line 101
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p4, v3, v1, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 108
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mTextBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sget v4, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->sTextBoundLeft:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mFontBounds:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sget v5, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->sMarginHeight:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mTextBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sget v6, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->sTextBoundRight:I

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mFontBounds:Landroid/graphics/Paint$FontMetricsInt;

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sget v7, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->sMarginHeight:I

    add-int/2addr v6, v7

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mIntrinsicBounds:Landroid/graphics/Rect;

    .line 117
    iget-object v1, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mIntrinsicBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 118
    invoke-virtual {p0, v2}, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->setFilterBitmap(Z)V

    .line 119
    return-void

    .end local v0           #paint:Landroid/graphics/Paint;
    :cond_1
    move v1, v3

    .line 75
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;F)V
    .locals 8
    .parameter "context"
    .parameter "bitmap"
    .parameter "text"
    .parameter "font_dimension"

    .prologue
    const/4 v6, 0x0

    .line 61
    sget v3, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->NOCOLOR:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/String;FFF)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;FFF)V
    .locals 8
    .parameter "context"
    .parameter "bitmap"
    .parameter "text"
    .parameter "font_dimension"
    .parameter "font_x_dimension"
    .parameter "font_y_dimension"

    .prologue
    .line 66
    sget v3, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->NOCOLOR:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/String;FFF)V

    .line 67
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 128
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mIsV2mode:Z

    if-eqz v1, :cond_0

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 133
    .local v0, paint:Landroid/graphics/Paint;
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 135
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 136
    iget v1, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mFontDimension:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 138
    iget-object v1, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mText:Ljava/lang/String;

    const/high16 v2, 0x4080

    iget v3, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mFontXDimension:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mFontYDimension:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 139
    return-void

    .line 131
    .end local v0           #paint:Landroid/graphics/Paint;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .restart local v0       #paint:Landroid/graphics/Paint;
    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mIntrinsicBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mIntrinsicBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mIntrinsicBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/graphics/drawable/PlurkQualifierDrawable;->mIntrinsicBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method
