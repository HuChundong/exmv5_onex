.class public Lcom/htc/graphics/util/HtcBitmapUtils;
.super Ljava/lang/Object;
.source "HtcBitmapUtils.java"


# static fields
.field public static final ALIGNMENT_BOTTOM_CENTER:I = 0x3ef

.field public static final ALIGNMENT_BOTTOM_LEFT:I = 0x3ee

.field public static final ALIGNMENT_BOTTOM_RIGHT:I = 0x3f0

.field public static final ALIGNMENT_MIDDLE_CENTER:I = 0x3ec

.field public static final ALIGNMENT_MIDDLE_LEFT:I = 0x3eb

.field public static final ALIGNMENT_MIDDLE_RIGHT:I = 0x3ed

.field public static final ALIGNMENT_TOP_CENTER:I = 0x3e9

.field public static final ALIGNMENT_TOP_LEFT:I = 0x3e8

.field public static final ALIGNMENT_TOP_RIGHT:I = 0x3ea

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/htc/graphics/util/HtcBitmapUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/graphics/util/HtcBitmapUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmapFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"
    .parameter "pkg"
    .parameter "res"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 446
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-object v5

    .line 449
    :cond_1
    const/4 v4, 0x0

    .line 450
    .local v4, resId:I
    const/4 v3, 0x0

    .line 452
    .local v3, r:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 453
    const-string v6, "drawable"

    invoke-virtual {v3, p2, v6, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 457
    :goto_1
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 460
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p1, v4, v5}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 461
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v7, v7, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 462
    instance-of v6, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_0

    move-object v0, v1

    .line 463
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 464
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 454
    .end local v0           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v2

    .line 455
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getBitmapWithConfig(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmap"
    .parameter "newConfig"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 140
    invoke-static {p0}, Lcom/htc/graphics/util/HtcBitmapUtils;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object p0, v5

    .line 167
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 144
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 145
    .local v1, oldConfig:Landroid/graphics/Bitmap$Config;
    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 149
    move-object v4, p0

    .line 150
    .local v4, tempBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v6, v7, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 155
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 156
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 157
    .local v2, paint:Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 158
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v3, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 165
    .local v3, rect:Landroid/graphics/Rect;
    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 166
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static getBitmapWithResId(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 475
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getCombinedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "background"
    .parameter "foreground"

    .prologue
    .line 108
    const/16 v0, 0x3ec

    invoke-static {p0, p1, v0}, Lcom/htc/graphics/util/HtcBitmapUtils;->getCombinedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getCombinedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "background"
    .parameter "foreground"
    .parameter "alignment"

    .prologue
    const/4 v10, 0x0

    .line 112
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    move-object p1, v10

    .line 136
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 114
    .restart local p1
    :cond_1
    if-eqz p0, :cond_0

    .line 116
    if-nez p1, :cond_2

    move-object p1, p0

    .line 117
    goto :goto_0

    .line 120
    :cond_2
    const/4 v1, 0x0

    .line 121
    .local v1, combinedBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 122
    .local v5, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 123
    .local v3, height:I
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 125
    invoke-static {p2}, Lcom/htc/graphics/util/HtcBitmapUtils;->getHorizontalAlignment(I)I

    move-result v2

    .line 126
    .local v2, hAlign:I
    invoke-static {p2}, Lcom/htc/graphics/util/HtcBitmapUtils;->getVerticalAlignment(I)I

    move-result v4

    .line 128
    .local v4, vAlign:I
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 129
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    sub-int v11, v5, v11

    mul-int/2addr v11, v2

    div-int/lit8 v6, v11, 0x2

    .line 130
    .local v6, xBackMargin:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int v11, v3, v11

    mul-int/2addr v11, v4

    div-int/lit8 v8, v11, 0x2

    .line 131
    .local v8, yBackMargin:I
    int-to-float v11, v6

    int-to-float v12, v8

    invoke-virtual {v0, p0, v11, v12, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    sub-int v11, v5, v11

    mul-int/2addr v11, v2

    div-int/lit8 v7, v11, 0x2

    .line 133
    .local v7, xForeMargin:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int v11, v3, v11

    mul-int/2addr v11, v4

    div-int/lit8 v9, v11, 0x2

    .line 134
    .local v9, yForeMargin:I
    int-to-float v11, v7

    int-to-float v12, v9

    invoke-virtual {v0, p1, v11, v12, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p1, v1

    .line 136
    goto :goto_0
.end method

.method public static getCroppedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "oldBitmap"
    .parameter "newBitmapWidth"
    .parameter "newBitmapHeight"

    .prologue
    .line 38
    const/16 v0, 0x3ec

    invoke-static {p0, p1, p2, v0}, Lcom/htc/graphics/util/HtcBitmapUtils;->getCroppedBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getCroppedBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "oldBitmap"
    .parameter "newBitmapWidth"
    .parameter "newBitmapHeight"
    .parameter "alignment"

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v6, 0x0

    .line 57
    :goto_0
    return-object v6

    .line 46
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 47
    .local v2, oldBitmapWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 48
    .local v1, oldBitmapHeight:I
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 49
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 51
    invoke-static {p3}, Lcom/htc/graphics/util/HtcBitmapUtils;->getHorizontalAlignment(I)I

    move-result v0

    .line 52
    .local v0, hAlign:I
    invoke-static {p3}, Lcom/htc/graphics/util/HtcBitmapUtils;->getVerticalAlignment(I)I

    move-result v3

    .line 54
    .local v3, vAlign:I
    sub-int v6, v2, p1

    mul-int/2addr v6, v0

    div-int/lit8 v4, v6, 0x2

    .line 55
    .local v4, xMargin:I
    sub-int v6, v1, p2

    mul-int/2addr v6, v3

    div-int/lit8 v5, v6, 0x2

    .line 57
    .local v5, yMargin:I
    invoke-static {p0, v4, v5, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0
.end method

.method private static getHorizontalAlignment(I)I
    .locals 2
    .parameter "alignment"

    .prologue
    .line 183
    add-int/lit16 v1, p0, -0x3e8

    rem-int/lit8 v0, v1, 0x3

    .line 184
    .local v0, align:I
    if-ltz v0, :cond_0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 185
    :cond_0
    const/4 v0, 0x0

    .line 187
    :cond_1
    return v0
.end method

.method public static getMaskedBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "res"
    .parameter "oldBitmap"
    .parameter "maskBitmapResId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 75
    if-nez p1, :cond_0

    move-object v2, v4

    .line 103
    :goto_0
    return-object v2

    .line 79
    :cond_0
    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 80
    .local v1, maskBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 86
    .local v2, newBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 87
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 88
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {v0, p1, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 89
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 90
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 91
    .local v3, p:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v0, v1, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 98
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 102
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v3           #p:Landroid/graphics/Paint;
    :cond_1
    sget-object v4, Lcom/htc/graphics/util/HtcBitmapUtils;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[getMaskedBitmap] The dimension of foreground bitmap is greater than background one"

    invoke-static {v4, v5}, Lcom/htc/opensense/widget/SNLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "oldBitmap"
    .parameter "maskBitmap"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 290
    invoke-static {p1}, Lcom/htc/graphics/util/HtcBitmapUtils;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 349
    .end local p0
    :goto_0
    return-object p0

    .line 293
    .restart local p0
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 294
    .local v0, alphaBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 299
    .local v3, newBitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 300
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 302
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, p0, v5, v6, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 336
    :cond_1
    :goto_1
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 337
    .local v4, paint:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 339
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v0, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 345
    if-eqz v0, :cond_2

    .line 346
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 347
    const/4 v0, 0x0

    :cond_2
    move-object p0, v3

    .line 349
    goto :goto_0

    .line 309
    .end local v4           #paint:Landroid/graphics/Paint;
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v5, v6, v7}, Lcom/htc/graphics/util/HtcBitmapUtils;->getScaledAndCenterCroppedBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 315
    .local v2, intermediateBitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 316
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2, v5, v6, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 332
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method

.method public static getNinePatchBitmapFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "context"
    .parameter "pkg"
    .parameter "res"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 391
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/graphics/util/HtcBitmapUtils;->getNinePatchBitmapFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getNinePatchBitmapFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "context"
    .parameter "pkg"
    .parameter "res"
    .parameter "width"
    .parameter "height"
    .parameter "skinnable"

    .prologue
    .line 398
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 399
    :cond_0
    const/4 v8, 0x0

    .line 437
    :goto_0
    return-object v8

    .line 401
    :cond_1
    const/4 v9, 0x0

    .line 402
    .local v9, resId:I
    const/4 v1, 0x0

    .line 404
    .local v1, r:Landroid/content/res/Resources;
    if-eqz p5, :cond_2

    .line 405
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 406
    invoke-static {p0, p2, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    .line 412
    :cond_2
    if-nez v9, :cond_4

    .line 413
    if-eqz p5, :cond_3

    .line 414
    sget-object v4, Lcom/htc/graphics/util/HtcBitmapUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getNinePatchBitmapFromPackage] skin not found for: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense/widget/SNLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 417
    const-string v4, "drawable"

    invoke-virtual {v1, p2, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 422
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    if-nez v9, :cond_6

    .line 423
    :cond_5
    const/4 v8, 0x0

    goto :goto_0

    .line 419
    :catch_0
    move-exception v7

    .line 420
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 425
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    invoke-static {v1, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 426
    .local v2, original:Landroid/graphics/Bitmap;
    if-nez v2, :cond_7

    .line 427
    const/4 v8, 0x0

    goto :goto_0

    .line 429
    :cond_7
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    .line 430
    .local v3, chunk:[B
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 431
    .local v0, np:Landroid/graphics/drawable/NinePatchDrawable;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, p3, p4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 433
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 434
    .local v8, output:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 435
    .local v6, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public static getScaledAndCenterCroppedBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "oldBitmap"
    .parameter "newBitmapWidth"
    .parameter "newBitmapHeight"
    .parameter "newBitmapConfig"

    .prologue
    .line 195
    if-nez p0, :cond_1

    .line 196
    const/4 v8, 0x0

    .line 282
    :cond_0
    :goto_0
    return-object v8

    .line 198
    :cond_1
    if-nez p3, :cond_2

    .line 199
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 201
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 202
    .local v10, oldBitmapWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 203
    .local v9, oldBitmapHeight:I
    int-to-float v14, v10

    move/from16 v0, p1

    int-to-float v15, v0

    div-float v12, v14, v15

    .line 204
    .local v12, xRatio:F
    int-to-float v14, v9

    move/from16 v0, p2

    int-to-float v15, v0

    div-float v13, v14, v15

    .line 205
    .local v13, yRatio:F
    cmpg-float v14, v12, v13

    if-gtz v14, :cond_3

    .line 207
    move v5, v10

    .line 208
    .local v5, intermediateBitmapWidth:I
    move/from16 v0, p2

    int-to-float v14, v0

    mul-float/2addr v14, v12

    float-to-int v4, v14

    .line 209
    .local v4, intermediateBitmapHeight:I
    sub-int v14, v9, v4

    div-int/lit8 v7, v14, 0x2

    .line 211
    .local v7, intermediateYOffset:I
    move-object/from16 v0, p3

    invoke-static {v5, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 216
    .local v3, intermediateBitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 217
    .local v2, canvas:Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 218
    .local v11, paint:Landroid/graphics/Paint;
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    add-int v16, v7, v4

    move/from16 v0, v16

    invoke-direct {v14, v15, v7, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Rect;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v15, v0, v1, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v14, v15, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 234
    const/4 v14, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v3, v0, v1, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 240
    .local v8, newBitmap:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 241
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 246
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #intermediateBitmap:Landroid/graphics/Bitmap;
    .end local v4           #intermediateBitmapHeight:I
    .end local v5           #intermediateBitmapWidth:I
    .end local v7           #intermediateYOffset:I
    .end local v8           #newBitmap:Landroid/graphics/Bitmap;
    .end local v11           #paint:Landroid/graphics/Paint;
    :cond_3
    move/from16 v0, p1

    int-to-float v14, v0

    mul-float/2addr v14, v13

    float-to-int v5, v14

    .line 247
    .restart local v5       #intermediateBitmapWidth:I
    move v4, v9

    .line 248
    .restart local v4       #intermediateBitmapHeight:I
    sub-int v14, v10, v5

    div-int/lit8 v6, v14, 0x2

    .line 250
    .local v6, intermediateXOffset:I
    move-object/from16 v0, p3

    invoke-static {v5, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 255
    .restart local v3       #intermediateBitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 256
    .restart local v2       #canvas:Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 257
    .restart local v11       #paint:Landroid/graphics/Paint;
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    add-int v16, v6, v5

    move/from16 v0, v16

    invoke-direct {v14, v6, v15, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Rect;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v15, v0, v1, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v14, v15, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 273
    const/4 v14, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v3, v0, v1, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 279
    .restart local v8       #newBitmap:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 280
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method private static getVerticalAlignment(I)I
    .locals 2
    .parameter "alignment"

    .prologue
    .line 175
    add-int/lit16 v1, p0, -0x3e8

    div-int/lit8 v0, v1, 0x3

    .line 176
    .local v0, align:I
    if-ltz v0, :cond_0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 177
    :cond_0
    const/4 v0, 0x0

    .line 179
    :cond_1
    return v0
.end method

.method public static final isValidBitmap(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 171
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static roundifyBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "context"
    .parameter "bitmap"
    .parameter "recycleOriginal"

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x0

    const/high16 v10, 0x4100

    .line 356
    const/high16 v0, 0x4100

    .line 358
    .local v0, ROUND_RADIUS:F
    invoke-static {p1}, Lcom/htc/graphics/util/HtcBitmapUtils;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 359
    move-object v2, p1

    .line 360
    .local v2, intermediateBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 365
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 366
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 367
    .local v3, paint:Landroid/graphics/Paint;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 368
    const v7, -0xbdbdbe

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 369
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v11, v11, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 375
    .local v4, rect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 376
    .local v5, rectf:Landroid/graphics/RectF;
    invoke-virtual {v1, v5, v10, v10, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 377
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 378
    invoke-virtual {v1, v2, v6, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 379
    if-eqz p2, :cond_0

    .line 380
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    move-object v6, p1

    .line 384
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #intermediateBitmap:Landroid/graphics/Bitmap;
    .end local v3           #paint:Landroid/graphics/Paint;
    .end local v4           #rect:Landroid/graphics/Rect;
    .end local v5           #rectf:Landroid/graphics/RectF;
    :cond_1
    return-object v6
.end method
