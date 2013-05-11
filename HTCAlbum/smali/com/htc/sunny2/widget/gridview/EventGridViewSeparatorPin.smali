.class public Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;
.super Ljava/lang/Object;
.source "EventGridViewSeparatorPin.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridViewScreenControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;
    }
.end annotation


# static fields
.field private static final EVENT_SEPARATOR_TEXT_QUICKBIND:Ljava/lang/String; = "PostToRenderThread"

.field private static final LOG_TAG:Ljava/lang/String; = "EventGridViewSeparatorPin"

.field private static final RENDERORDER_ABOVEALL:I = 0x1

.field private static final SEPARATOR_HEIGHT:I

.field private static final SEPARATOR_WIDTH:I

.field private static final SEPARATOR_WIDTH_MIN:I


# instance fields
.field private mBreakMarginBot:I

.field private mBreakMarginTop:I

.field private mContext:Landroid/content/Context;

.field private mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

.field private mDateTimeDisplayed:Ljava/lang/String;

.field private mEventLayout:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

.field private mFirstVisibleIndex:I

.field private mHost:Lcom/htc/sunnyCore/widget/gridview/GridView;

.field private mHostH:I

.field private mHostW:I

.field private mIsAttached:Z

.field private mNodeRoot:Lcom/htc/sunnyCore/SceneNode;

.field private mPosX:F

.field private mPosY:F

.field private mTextViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->GRID_DIMENSION_H:I

    sput v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->SEPARATOR_HEIGHT:I

    .line 35
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->GRID_DIMENSION_W:I

    sput v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->SEPARATOR_WIDTH:I

    .line 36
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->GRID_DIMENSION_W_MIN:I

    sput v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->SEPARATOR_WIDTH_MIN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mEventLayout:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    .line 40
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mContext:Landroid/content/Context;

    .line 41
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHost:Lcom/htc/sunnyCore/widget/gridview/GridView;

    .line 42
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mNodeRoot:Lcom/htc/sunnyCore/SceneNode;

    .line 43
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mFirstVisibleIndex:I

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mDateTimeDisplayed:Ljava/lang/String;

    .line 47
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mIsAttached:Z

    .line 49
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHostW:I

    .line 50
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHostH:I

    .line 51
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mPosX:F

    .line 52
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mPosY:F

    .line 53
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mBreakMarginTop:I

    .line 54
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mBreakMarginBot:I

    .line 55
    sget v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->SEPARATOR_WIDTH_MIN:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mTextViewWidth:I

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private hasGeometryChanged(Lcom/htc/sunnyCore/Sprite$Layer;IIFF)Z
    .locals 5
    .parameter "spriteLayer"
    .parameter "itemW"
    .parameter "itemH"
    .parameter "itemOrigX"
    .parameter "itemOrigY"

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, bIsChanged:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 333
    .end local v0           #bIsChanged:Z
    .local v1, bIsChanged:I
    :goto_0
    return v1

    .line 323
    .end local v1           #bIsChanged:I
    .restart local v0       #bIsChanged:Z
    :cond_0
    invoke-virtual {p1}, Lcom/htc/sunnyCore/Sprite$Layer;->getGeometry()[I

    move-result-object v2

    .line 324
    .local v2, geometry:[I
    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    :cond_1
    move v1, v0

    .line 326
    .restart local v1       #bIsChanged:I
    goto :goto_0

    .line 329
    .end local v1           #bIsChanged:I
    :cond_2
    const/4 v3, 0x0

    aget v3, v2, v3

    if-ne p2, v3, :cond_3

    const/4 v3, 0x1

    aget v3, v2, v3

    if-ne p3, v3, :cond_3

    float-to-int v3, p4

    const/4 v4, 0x2

    aget v4, v2, v4

    if-ne v3, v4, :cond_3

    float-to-int v3, p5

    const/4 v4, 0x3

    aget v4, v2, v4

    if-eq v3, v4, :cond_4

    .line 331
    :cond_3
    const/4 v0, 0x1

    :cond_4
    move v1, v0

    .line 333
    .restart local v1       #bIsChanged:I
    goto :goto_0
.end method

.method private prepareTextLayer(Landroid/view/ViewGroup;)V
    .locals 13
    .parameter "textureSrc"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 268
    if-nez p1, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    const/4 v1, 0x0

    .line 277
    .local v1, layer:Lcom/htc/sunnyCore/Sprite$Layer;
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHostW:I

    if-nez v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHostW:I

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v0, :cond_5

    .line 282
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->SPRITE_LAYER_COUNT:I

    invoke-static {v2}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    .line 283
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mNode:Lcom/htc/sunnyCore/SceneNode;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/SceneNode;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 286
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_SeparatorTopRest(Landroid/content/Context;)I

    move-result v3

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHostW:I

    sget v6, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->SEPARATOR_HEIGHT:I

    invoke-static {v2, v3, v5, v6}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    .line 287
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->SPRITE_LAYER_BACKGROUND:I

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    .line 288
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHostW:I

    sget v3, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->SEPARATOR_HEIGHT:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mPosY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->hasGeometryChanged(Lcom/htc/sunnyCore/Sprite$Layer;IIFF)Z

    move-result v0

    if-ne v12, v0, :cond_3

    .line 290
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHostW:I

    int-to-float v2, v0

    sget v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->SEPARATOR_HEIGHT:I

    int-to-float v3, v0

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mPosY:F

    move v6, v4

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 292
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1, v11, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 293
    invoke-virtual {v1, v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 296
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    invoke-static {p1}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextTexture:Lcom/htc/sunnyCore/Texture;

    .line 297
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->SPRITE_LAYER_TEXT:I

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    .line 298
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mTextViewWidth:I

    sget v8, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->SEPARATOR_HEIGHT:I

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mPosX:F

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mPosY:F

    move-object v5, p0

    move-object v6, v1

    invoke-direct/range {v5 .. v10}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->hasGeometryChanged(Lcom/htc/sunnyCore/Sprite$Layer;IIFF)Z

    move-result v0

    if-ne v12, v0, :cond_4

    .line 300
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mTextViewWidth:I

    int-to-float v6, v0

    sget v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->SEPARATOR_HEIGHT:I

    int-to-float v7, v0

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mPosX:F

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mPosY:F

    move-object v5, v1

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 302
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1, v11, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 303
    invoke-virtual {v1, v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_0

    .line 308
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->SPRITE_LAYER_TEXT:I

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    .line 309
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mTextViewWidth:I

    sget v8, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->SEPARATOR_HEIGHT:I

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mPosX:F

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mPosY:F

    move-object v5, p0

    move-object v6, v1

    invoke-direct/range {v5 .. v10}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->hasGeometryChanged(Lcom/htc/sunnyCore/Sprite$Layer;IIFF)Z

    move-result v0

    if-ne v12, v0, :cond_0

    .line 311
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mTextViewWidth:I

    int-to-float v6, v0

    sget v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->SEPARATOR_HEIGHT:I

    int-to-float v7, v0

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mPosX:F

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mPosY:F

    move-object v5, v1

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    goto/16 :goto_0
.end method

.method private prepareTextView(Ljava/lang/String;)V
    .locals 10
    .parameter "szText"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 337
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewContainer:Landroid/view/ViewGroup;

    if-nez v5, :cond_0

    .line 339
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 340
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    const v5, 0x7f030014

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, v6, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewContainer:Landroid/view/ViewGroup;

    .line 341
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewContainer:Landroid/view/ViewGroup;

    const v7, 0x7f090029

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewTitle:Landroid/widget/TextView;

    .line 343
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewTitle:Landroid/widget/TextView;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 345
    .local v3, measureW:I
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 346
    .local v2, measureH:I
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3, v2}, Landroid/view/ViewGroup;->measure(II)V

    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, bIsWidthSizeChanged:Z
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    .line 350
    .local v4, nWidth:I
    if-gtz v4, :cond_3

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mTextViewWidth:I

    sget v6, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->SEPARATOR_WIDTH_MIN:I

    if-eq v5, v6, :cond_3

    .line 352
    sget v5, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->SEPARATOR_WIDTH_MIN:I

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mTextViewWidth:I

    .line 353
    const/4 v0, 0x1

    .line 365
    :cond_1
    :goto_0
    if-ne v8, v0, :cond_2

    .line 367
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->updateTextViewPosX()V

    .line 368
    sget-boolean v5, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "EventGridViewSeparatorPin"

    new-array v6, v8, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][EventGridViewSeparatorPin][prepareTextView] textview width changed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mTextViewWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    :cond_2
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewContainer:Landroid/view/ViewGroup;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mTextViewWidth:I

    sget v7, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->SEPARATOR_HEIGHT:I

    invoke-virtual {v5, v9, v9, v6, v7}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 372
    return-void

    .line 355
    :cond_3
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mTextViewWidth:I

    if-eq v5, v4, :cond_1

    .line 357
    iput v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mTextViewWidth:I

    .line 358
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mTextViewWidth:I

    rem-int/lit8 v5, v5, 0x2

    if-ne v5, v8, :cond_4

    .line 360
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mTextViewWidth:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mTextViewWidth:I

    .line 362
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setSeparatorPinTextToNextProcess(Ljava/lang/String;)V
    .locals 5
    .parameter "title"

    .prologue
    .line 405
    move-object v0, p1

    .line 406
    .local v0, fTitle:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHost:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v1

    new-instance v2, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$1;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHost:Lcom/htc/sunnyCore/widget/gridview/GridView;

    const-string v4, "PostToRenderThread"

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$1;-><init>(Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/RenderThread;->pushActionIHT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 419
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EventGridViewSeparatorPin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EventGridViewSeparatorPin][setSeparatorPinTextToNextProcess] title: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_0
    return-void
.end method

.method private setText(Ljava/lang/String;)V
    .locals 8
    .parameter "title"

    .prologue
    const/4 v7, 0x1

    .line 377
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHost:Lcom/htc/sunnyCore/widget/gridview/GridView;

    if-nez v0, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHost:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v2

    if-eq v0, v2, :cond_2

    .line 382
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->setSeparatorPinTextToNextProcess(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v0, :cond_0

    .line 389
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->prepareTextView(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->SPRITE_LAYER_TEXT:I

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    .line 392
    .local v1, layer:Lcom/htc/sunnyCore/Sprite$Layer;
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mTextViewWidth:I

    sget v3, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->SEPARATOR_HEIGHT:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mPosX:F

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mPosY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->hasGeometryChanged(Lcom/htc/sunnyCore/Sprite$Layer;IIFF)Z

    move-result v0

    if-ne v7, v0, :cond_3

    .line 394
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mTextViewWidth:I

    int-to-float v2, v0

    sget v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->SEPARATOR_HEIGHT:I

    int-to-float v3, v0

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mPosX:F

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mPosY:F

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 397
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Texture;->setView(Landroid/view/View;)V

    .line 398
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v7}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    .line 399
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->SPRITE_LAYER_BACKGROUND:I

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 400
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->SPRITE_LAYER_TEXT:I

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method private setupDisplayText(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 250
    .local v2, tTimer1:J
    const-string v6, "..."

    invoke-direct {p0, v6}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->prepareTextView(Ljava/lang/String;)V

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 253
    .local v4, tTimer2:J
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 255
    const-string v6, "EventGridViewSeparatorPin"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][EventGridViewSeparatorPin][setupDisplayText]1: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v4, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_0
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v6, v6, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v6}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->prepareTextLayer(Landroid/view/ViewGroup;)V

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 261
    .local v0, tTime3:J
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 263
    const-string v6, "EventGridViewSeparatorPin"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][EventGridViewSeparatorPin][setupDisplayText]2: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v0, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_1
    return-void
.end method

.method private updateTextViewPosX()V
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHostW:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mTextViewWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mPosX:F

    .line 125
    return-void
.end method


# virtual methods
.method public attachIRT(Landroid/content/Context;Lcom/htc/sunnyCore/view/SViewGroup;Lcom/htc/sunnyCore/SceneNode;)V
    .locals 3
    .parameter "context"
    .parameter "host"
    .parameter "rootNode"

    .prologue
    const/4 v2, 0x1

    .line 144
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mContext:Landroid/content/Context;

    .line 145
    check-cast p2, Lcom/htc/sunnyCore/widget/gridview/GridView;

    .end local p2
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHost:Lcom/htc/sunnyCore/widget/gridview/GridView;

    .line 146
    iput-object p3, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mNodeRoot:Lcom/htc/sunnyCore/SceneNode;

    .line 148
    new-instance v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    .line 149
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    invoke-static {}, Lcom/htc/sunnyCore/SceneNode;->obtain()Lcom/htc/sunnyCore/SceneNode;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mNode:Lcom/htc/sunnyCore/SceneNode;

    .line 150
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/SceneNode;->setRenderOrder(I)V

    .line 151
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHost:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->addSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 156
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->setupDisplayText(Landroid/content/Context;)V

    .line 158
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mIsAttached:Z

    .line 161
    return-void
.end method

.method public detachIRT()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mIsAttached:Z

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHost:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->removeSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 171
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mNode:Lcom/htc/sunnyCore/SceneNode;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mNode:Lcom/htc/sunnyCore/SceneNode;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/SceneNode;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 174
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SceneNode;->release()V

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mNode:Lcom/htc/sunnyCore/SceneNode;

    .line 178
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    .line 181
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextTexture:Lcom/htc/sunnyCore/Texture;

    .line 185
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_4

    .line 186
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 187
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    .line 189
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHost:Lcom/htc/sunnyCore/widget/gridview/GridView;

    .line 190
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mNodeRoot:Lcom/htc/sunnyCore/SceneNode;

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mIsAttached:Z

    .line 192
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mFirstVisibleIndex:I

    .line 193
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mDateTimeDisplayed:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBreakMarginBot()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mBreakMarginBot:I

    return v0
.end method

.method public getBreakMarginTop()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mBreakMarginTop:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 136
    sget v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->SEPARATOR_HEIGHT:I

    return v0
.end method

.method public getPosX()F
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mPosX:F

    return v0
.end method

.method public getPosY()F
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mPosY:F

    return v0
.end method

.method public onItemClickIRT(ILcom/htc/sunnyCore/SceneNode;)V
    .locals 0
    .parameter "nIndex"
    .parameter "itemNode"

    .prologue
    .line 201
    return-void
.end method

.method public onLayout(III)Z
    .locals 5
    .parameter "nWidth"
    .parameter "nHeight"
    .parameter "nTopMargin"

    .prologue
    const/high16 v4, 0x4000

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, bResult:Z
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    move v1, v0

    .line 120
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 86
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHostW:I

    if-ne v2, p1, :cond_2

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHostH:I

    if-ne v2, p2, :cond_2

    move v1, v0

    .line 89
    .restart local v1       #bResult:I
    goto :goto_0

    .line 97
    .end local v1           #bResult:I
    :cond_2
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHostW:I

    .line 98
    iput p2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHostH:I

    .line 103
    int-to-float v2, p2

    div-float/2addr v2, v4

    neg-float v2, v2

    int-to-float v3, p3

    add-float/2addr v2, v3

    sget v3, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->SEPARATOR_HEIGHT:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mPosY:F

    .line 108
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->updateTextViewPosX()V

    .line 113
    neg-int v2, p3

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mBreakMarginTop:I

    .line 114
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mBreakMarginTop:I

    sget v3, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->SEPARATOR_HEIGHT:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mBreakMarginBot:I

    .line 115
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mHost:Lcom/htc/sunnyCore/widget/gridview/GridView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/EventGridView;

    sget v3, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->SEPARATOR_HEIGHT:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/EventGridView;->setScrollerExtraPaddingTop(I)V

    .line 119
    const/4 v0, 0x1

    move v1, v0

    .line 120
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public onLayoutChangedIRT(II)V
    .locals 0
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 207
    return-void
.end method

.method public onUpdateChange(ILcom/htc/sunnyCore/view/SViewGroup;)V
    .locals 1
    .parameter "nIndex"
    .parameter "viewItem"

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->onUpdateChange(ILcom/htc/sunnyCore/view/SViewGroup;Z)V

    .line 245
    return-void
.end method

.method public onUpdateChange(ILcom/htc/sunnyCore/view/SViewGroup;Z)V
    .locals 6
    .parameter "nIndex"
    .parameter "viewItem"
    .parameter "bForceUpdate"

    .prologue
    .line 211
    if-nez p3, :cond_1

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mFirstVisibleIndex:I

    if-ne v4, p1, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mFirstVisibleIndex:I

    .line 216
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mEventLayout:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    invoke-interface {v4, p1}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;->getSeparableIndicator(I)J

    move-result-wide v1

    .line 217
    .local v1, lTime:J
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v1

    if-eqz v4, :cond_0

    .line 220
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v2}, Lcom/htc/opensense2/album/util/DateTimeManager;->getEventsMonthString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, szDisplayText:Ljava/lang/String;
    const/4 v0, 0x0

    .line 224
    .local v0, bIsTextChange:Z
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mDateTimeDisplayed:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 226
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mDateTimeDisplayed:Ljava/lang/String;

    .line 227
    const/4 v0, 0x1

    .line 234
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mDateTimeDisplayed:Ljava/lang/String;

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0, v3}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->setText(Ljava/lang/String;)V

    .line 237
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mDateTimeDisplayed:Ljava/lang/String;

    goto :goto_0

    .line 229
    :cond_3
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mDateTimeDisplayed:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 231
    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mDateTimeDisplayed:Ljava/lang/String;

    .line 232
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setPrototypeFactory(Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;)V
    .locals 0
    .parameter "factoryLayout"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mEventLayout:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    .line 77
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .parameter "bVisible"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->mControl:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    goto :goto_0
.end method
