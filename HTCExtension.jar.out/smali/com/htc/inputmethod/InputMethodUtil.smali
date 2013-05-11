.class public Lcom/htc/inputmethod/InputMethodUtil;
.super Ljava/lang/Object;
.source "InputMethodUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InputMethodUtil"

.field public static final TYPE_PHONE_VARIATION_PIN_KEYBOARD:I = 0x900

.field public static final TYPE_TEXT_FLAG_SPELL_CHECKER:I = 0x800000

.field public static final TYPE_TEXT_VARIATION_POST_SPELLING:I = 0x800000

.field private static mDivWidth:I

.field private static mGetHWRResource:Z

.field private static mPanelLineMarginH:I

.field private static mPanelLineMarginV:I

.field private static mPanelRectOffset:Landroid/graphics/Rect;

.field private static mPanelRectRadius:F

.field private static mPanelStrokeWidth:F

.field private static mSipBgColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 188
    sput v0, Lcom/htc/inputmethod/InputMethodUtil;->mPanelRectRadius:F

    .line 189
    sput v1, Lcom/htc/inputmethod/InputMethodUtil;->mPanelLineMarginV:I

    .line 190
    sput v1, Lcom/htc/inputmethod/InputMethodUtil;->mPanelLineMarginH:I

    .line 191
    sput v0, Lcom/htc/inputmethod/InputMethodUtil;->mPanelStrokeWidth:F

    .line 192
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/htc/inputmethod/InputMethodUtil;->mPanelRectOffset:Landroid/graphics/Rect;

    .line 193
    sput v1, Lcom/htc/inputmethod/InputMethodUtil;->mDivWidth:I

    .line 194
    const/high16 v0, -0x100

    sput v0, Lcom/htc/inputmethod/InputMethodUtil;->mSipBgColor:I

    .line 195
    sput-boolean v1, Lcom/htc/inputmethod/InputMethodUtil;->mGetHWRResource:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawHWRPanel(Landroid/content/Context;Landroid/graphics/Canvas;Z)Landroid/graphics/Rect;
    .locals 21
    .parameter "context"
    .parameter "canvas"
    .parameter "drawBg"

    .prologue
    .line 231
    sget-boolean v4, Lcom/htc/inputmethod/InputMethodUtil;->mGetHWRResource:Z

    if-nez v4, :cond_0

    .line 232
    invoke-static/range {p0 .. p0}, Lcom/htc/inputmethod/InputMethodUtil;->getHWRResource(Landroid/content/Context;)V

    .line 233
    const/4 v4, 0x1

    sput-boolean v4, Lcom/htc/inputmethod/InputMethodUtil;->mGetHWRResource:Z

    .line 236
    :cond_0
    new-instance v18, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    int-to-float v10, v10

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5, v6, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 237
    .local v18, gesPicBG:Landroid/graphics/RectF;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 238
    .local v7, bgWidth:F
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v8

    .line 239
    .local v8, bgHeight:F
    sget v4, Lcom/htc/inputmethod/InputMethodUtil;->mDivWidth:I

    div-int/lit8 v19, v4, 0x2

    .line 240
    .local v19, halfDivWidth:I
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 243
    .local v9, paint:Landroid/graphics/Paint;
    if-eqz p2, :cond_1

    .line 244
    sget v4, Lcom/htc/inputmethod/InputMethodUtil;->mSipBgColor:I

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 246
    const v4, -0xf4f4f6

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v0, v19

    int-to-float v14, v0

    move-object/from16 v10, p1

    move v13, v7

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 248
    const v4, -0xb0b0b4

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    const/4 v11, 0x0

    move/from16 v0, v19

    int-to-float v12, v0

    sget v4, Lcom/htc/inputmethod/InputMethodUtil;->mDivWidth:I

    int-to-float v14, v4

    move-object/from16 v10, p1

    move v13, v7

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 252
    :cond_1
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 253
    const/16 v4, 0xff

    const/16 v5, 0x75

    const/16 v6, 0x75

    const/16 v10, 0x70

    invoke-virtual {v9, v4, v5, v6, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 254
    sget v20, Lcom/htc/inputmethod/InputMethodUtil;->mPanelRectRadius:F

    .line 255
    .local v20, radius:F
    const/high16 v4, 0x4000

    mul-float v4, v4, v20

    const/high16 v5, 0x3f80

    sub-float v17, v4, v5

    .line 257
    .local v17, diameter:F
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sget v5, Lcom/htc/inputmethod/InputMethodUtil;->mPanelLineMarginH:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, v18

    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 258
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->top:F

    sget v5, Lcom/htc/inputmethod/InputMethodUtil;->mPanelLineMarginV:I

    sget v6, Lcom/htc/inputmethod/InputMethodUtil;->mDivWidth:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, v18

    iput v4, v0, Landroid/graphics/RectF;->top:F

    .line 259
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sget v5, Lcom/htc/inputmethod/InputMethodUtil;->mPanelLineMarginH:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v18

    iput v4, v0, Landroid/graphics/RectF;->right:F

    .line 260
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sget v5, Lcom/htc/inputmethod/InputMethodUtil;->mPanelLineMarginV:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v18

    iput v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 262
    new-instance v16, Landroid/graphics/RectF;

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sget-object v5, Lcom/htc/inputmethod/InputMethodUtil;->mPanelRectOffset:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/RectF;->top:F

    sget-object v6, Lcom/htc/inputmethod/InputMethodUtil;->mPanelRectOffset:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/RectF;->right:F

    sget-object v10, Lcom/htc/inputmethod/InputMethodUtil;->mPanelRectOffset:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    add-float/2addr v6, v10

    move-object/from16 v0, v18

    iget v10, v0, Landroid/graphics/RectF;->bottom:F

    sget-object v11, Lcom/htc/inputmethod/InputMethodUtil;->mPanelRectOffset:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5, v6, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 264
    .local v16, arcRect:Landroid/graphics/RectF;
    sget v4, Lcom/htc/inputmethod/InputMethodUtil;->mPanelStrokeWidth:F

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 265
    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 268
    new-instance v11, Landroid/graphics/RectF;

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/RectF;->left:F

    add-float v6, v6, v17

    move-object/from16 v0, v16

    iget v10, v0, Landroid/graphics/RectF;->top:F

    add-float v10, v10, v17

    invoke-direct {v11, v4, v5, v6, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v12, 0x4334

    const/high16 v13, 0x42b4

    const/4 v14, 0x0

    move-object/from16 v10, p1

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 270
    new-instance v11, Landroid/graphics/RectF;

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float v4, v4, v17

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v16

    iget v10, v0, Landroid/graphics/RectF;->top:F

    add-float v10, v10, v17

    invoke-direct {v11, v4, v5, v6, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v12, 0x4387

    const/high16 v13, 0x42b4

    const/4 v14, 0x0

    move-object/from16 v10, p1

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 272
    new-instance v11, Landroid/graphics/RectF;

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v5, v5, v17

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/RectF;->left:F

    add-float v6, v6, v17

    move-object/from16 v0, v16

    iget v10, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v11, v4, v5, v6, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v12, 0x42b4

    const/high16 v13, 0x42b4

    const/4 v14, 0x0

    move-object/from16 v10, p1

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 274
    new-instance v11, Landroid/graphics/RectF;

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float v4, v4, v17

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v5, v5, v17

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v16

    iget v10, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v11, v4, v5, v6, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v12, 0x0

    const/high16 v13, 0x42b4

    const/4 v14, 0x0

    move-object/from16 v10, p1

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 276
    move/from16 v0, v19

    int-to-float v4, v0

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 277
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 279
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->left:F

    add-float v4, v4, v20

    const/high16 v5, 0x3f80

    sub-float v11, v4, v5

    move-object/from16 v0, v18

    iget v12, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float v4, v4, v20

    const/high16 v5, 0x3f80

    add-float v13, v4, v5

    move-object/from16 v0, v18

    iget v14, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v10, p1

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 281
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->left:F

    add-float v4, v4, v20

    const/high16 v5, 0x3f80

    sub-float v11, v4, v5

    move-object/from16 v0, v18

    iget v12, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float v4, v4, v20

    const/high16 v5, 0x3f80

    add-float v13, v4, v5

    move-object/from16 v0, v18

    iget v14, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v10, p1

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 283
    move-object/from16 v0, v18

    iget v11, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float v4, v4, v20

    const/high16 v5, 0x3f80

    sub-float v12, v4, v5

    move-object/from16 v0, v18

    iget v13, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v4, v20

    const/high16 v5, 0x3f80

    add-float v14, v4, v5

    move-object/from16 v10, p1

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 285
    move-object/from16 v0, v18

    iget v11, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float v4, v4, v20

    const/high16 v5, 0x3f80

    sub-float v12, v4, v5

    move-object/from16 v0, v18

    iget v13, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v4, v20

    const/high16 v5, 0x3f80

    add-float v14, v4, v5

    move-object/from16 v10, p1

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 287
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 288
    const/16 v4, 0x4d

    const/16 v5, 0x4c

    const/16 v6, 0x4c

    const/16 v10, 0x4c

    invoke-virtual {v9, v4, v5, v6, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 289
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 292
    new-instance v4, Landroid/graphics/Rect;

    sget v5, Lcom/htc/inputmethod/InputMethodUtil;->mPanelLineMarginH:I

    mul-int/lit8 v5, v5, 0x2

    sget v6, Lcom/htc/inputmethod/InputMethodUtil;->mDivWidth:I

    add-int/2addr v5, v6

    sget v6, Lcom/htc/inputmethod/InputMethodUtil;->mPanelLineMarginV:I

    mul-int/lit8 v6, v6, 0x2

    sget v10, Lcom/htc/inputmethod/InputMethodUtil;->mDivWidth:I

    add-int/2addr v6, v10

    sget v10, Lcom/htc/inputmethod/InputMethodUtil;->mPanelLineMarginH:I

    mul-int/lit8 v10, v10, 0x2

    sget v11, Lcom/htc/inputmethod/InputMethodUtil;->mDivWidth:I

    add-int/2addr v10, v11

    sget v11, Lcom/htc/inputmethod/InputMethodUtil;->mPanelLineMarginV:I

    mul-int/lit8 v11, v11, 0x2

    sget v12, Lcom/htc/inputmethod/InputMethodUtil;->mDivWidth:I

    add-int/2addr v11, v12

    invoke-direct {v4, v5, v6, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public static focusIn(Landroid/view/View;Landroid/content/Context;)V
    .locals 2
    .parameter "view"
    .parameter "context"

    .prologue
    .line 54
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 58
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static getDigitsKeyListenerInstance(ZZZ)Landroid/text/method/DigitsKeyListener;
    .locals 1
    .parameter "sign"
    .parameter "decimal"
    .parameter "phone"

    .prologue
    .line 95
    invoke-static {p0, p1, p2}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static getFrameworkView(Landroid/content/Context;ILandroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "id"
    .parameter "contentView"

    .prologue
    const/4 v1, 0x0

    .line 63
    if-nez p0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-object v1

    .line 66
    :cond_1
    const/4 v0, 0x0

    .line 67
    .local v0, inflater:Landroid/view/LayoutInflater;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 69
    :pswitch_0
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #inflater:Landroid/view/LayoutInflater;
    check-cast v0, Landroid/view/LayoutInflater;

    .line 70
    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    if-eqz v0, :cond_0

    .line 71
    const v2, 0x4030002

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 74
    :pswitch_1
    if-eqz p2, :cond_0

    .line 75
    const/high16 v1, 0x411

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 78
    :pswitch_2
    if-eqz p2, :cond_0

    .line 79
    const v1, 0x4110001

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 82
    :pswitch_3
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #inflater:Landroid/view/LayoutInflater;
    check-cast v0, Landroid/view/LayoutInflater;

    .line 83
    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    if-eqz v0, :cond_0

    .line 84
    const v2, 0x4030003

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getHWRResource(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 199
    const-string v2, "com.htc.android.htcime"

    .line 202
    .local v2, htcimePkgName:Ljava/lang/String;
    :try_start_0
    const-string v4, "com.htc.android.htcime"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 207
    .local v1, htcimeContext:Landroid/content/Context;
    :goto_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 208
    .local v3, res:Landroid/content/res/Resources;
    const-string v4, "SV_PANEL_RECT_RADIUS"

    const-string v5, "dimen"

    const-string v6, "com.htc.android.htcime"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sput v4, Lcom/htc/inputmethod/InputMethodUtil;->mPanelRectRadius:F

    .line 209
    const-string v4, "SV_PANEL_LINE_MARGIN_V"

    const-string v5, "integer"

    const-string v6, "com.htc.android.htcime"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/htc/inputmethod/InputMethodUtil;->mPanelLineMarginV:I

    .line 210
    const-string v4, "SV_PANEL_LINE_MARGIN_H"

    const-string v5, "integer"

    const-string v6, "com.htc.android.htcime"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/htc/inputmethod/InputMethodUtil;->mPanelLineMarginH:I

    .line 211
    const-string v4, "SV_PANEL_STROKE_WIDTH"

    const-string v5, "dimen"

    const-string v6, "com.htc.android.htcime"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sput v4, Lcom/htc/inputmethod/InputMethodUtil;->mPanelStrokeWidth:F

    .line 212
    sget-object v4, Lcom/htc/inputmethod/InputMethodUtil;->mPanelRectOffset:Landroid/graphics/Rect;

    const-string v5, "SV_PANEL_RECT_OFFSET_LEFT"

    const-string v6, "integer"

    const-string v7, "com.htc.android.htcime"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 213
    sget-object v4, Lcom/htc/inputmethod/InputMethodUtil;->mPanelRectOffset:Landroid/graphics/Rect;

    const-string v5, "SV_PANEL_RECT_OFFSET_TOP"

    const-string v6, "integer"

    const-string v7, "com.htc.android.htcime"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 214
    sget-object v4, Lcom/htc/inputmethod/InputMethodUtil;->mPanelRectOffset:Landroid/graphics/Rect;

    const-string v5, "SV_PANEL_RECT_OFFSET_RIGHT"

    const-string v6, "integer"

    const-string v7, "com.htc.android.htcime"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 215
    sget-object v4, Lcom/htc/inputmethod/InputMethodUtil;->mPanelRectOffset:Landroid/graphics/Rect;

    const-string v5, "SV_PANEL_RECT_OFFSET_BOTTOM"

    const-string v6, "integer"

    const-string v7, "com.htc.android.htcime"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 216
    const-string v4, "div_width"

    const-string v5, "integer"

    const-string v6, "com.htc.android.htcime"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/htc/inputmethod/InputMethodUtil;->mDivWidth:I

    .line 217
    const-string v4, "ime_sip_bg_color"

    const-string v5, "color"

    const-string v6, "com.htc.android.htcime"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sput v4, Lcom/htc/inputmethod/InputMethodUtil;->mSipBgColor:I

    .line 218
    return-void

    .line 203
    .end local v1           #htcimeContext:Landroid/content/Context;
    .end local v3           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .restart local v1       #htcimeContext:Landroid/content/Context;
    goto/16 :goto_0
.end method

.method public static getSelectionEnd(Landroid/view/inputmethod/InputConnection;)I
    .locals 3
    .parameter "ic"

    .prologue
    .line 116
    :try_start_0
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->getSelectionEnd()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 121
    :goto_0
    return v1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "InputMethodUtil"

    const-string v2, "getSelectionEnd()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSelectionStart(Landroid/view/inputmethod/InputConnection;)I
    .locals 3
    .parameter "ic"

    .prologue
    .line 103
    :try_start_0
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->getSelectionStart()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 108
    :goto_0
    return v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "InputMethodUtil"

    const-string v2, "getSelectionStart()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSubText(Landroid/view/inputmethod/InputConnection;II)Ljava/lang/CharSequence;
    .locals 3
    .parameter "ic"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 142
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getSubText(II)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 147
    :goto_0
    return-object v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "InputMethodUtil"

    const-string v2, "getSubText()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    const-string v1, ""

    goto :goto_0
.end method

.method public static getText(Landroid/view/inputmethod/InputConnection;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "ic"

    .prologue
    .line 129
    :try_start_0
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->getText()Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 134
    :goto_0
    return-object v1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "InputMethodUtil"

    const-string v2, "getText()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    const-string v1, ""

    goto :goto_0
.end method

.method public static getTextAfterCursor(Landroid/view/inputmethod/InputConnection;III)Ljava/lang/CharSequence;
    .locals 3
    .parameter "ic"
    .parameter "n"
    .parameter "flags"
    .parameter "waitTime"

    .prologue
    .line 179
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(III)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 184
    :goto_0
    return-object v1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "InputMethodUtil"

    const-string v2, "getTextAfterCursor()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    const-string v1, ""

    goto :goto_0
.end method

.method public static getTextBeforeCursor(Landroid/view/inputmethod/InputConnection;III)Ljava/lang/CharSequence;
    .locals 3
    .parameter "ic"
    .parameter "n"
    .parameter "flags"
    .parameter "waitTime"

    .prologue
    .line 166
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(III)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 171
    :goto_0
    return-object v1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "InputMethodUtil"

    const-string v2, "getTextBeforeCursor()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    const-string v1, ""

    goto :goto_0
.end method

.method public static replaceText(Landroid/view/inputmethod/InputConnection;IILjava/lang/CharSequence;)V
    .locals 3
    .parameter "ic"
    .parameter "start"
    .parameter "end"
    .parameter "text"

    .prologue
    .line 155
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->replaceText(IILjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "InputMethodUtil"

    const-string v2, "replaceText()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static showSoftInputUnchecked(ILandroid/os/ResultReceiver;Landroid/content/Context;)V
    .locals 2
    .parameter "flags"
    .parameter "resultReceiver"
    .parameter "context"

    .prologue
    .line 42
    if-nez p2, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string v1, "input_method"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 46
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p0, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    goto :goto_0
.end method
