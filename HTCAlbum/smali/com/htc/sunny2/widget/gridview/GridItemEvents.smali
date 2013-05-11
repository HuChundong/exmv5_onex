.class public Lcom/htc/sunny2/widget/gridview/GridItemEvents;
.super Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
.source "GridItemEvents.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemOverlayState;


# static fields
#the value of this static final field might be set in the static constructor
.field public static final BOTTOM_GAP_OF_TWO_LINE_H_DIMENSION:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final BOTTOM_TEXTVIEW_PLATE_H_DIMENSION:I = 0x0

.field private static final DIMENSION_BOTTOM_GAP_OF_TWO_LINE_H:[I = null

.field private static final DIMENSION_BOTTOM_TEXTVIEW_PLATE_H:[I = null

.field private static final LOG_TAG:Ljava/lang/String; = "GridItemEvents"

.field protected static final SPRITE_LAYER_BACKGROUND:I = 0x0

.field protected static final SPRITE_LAYER_BACKGROUND_LIGHT:I = 0x2

.field protected static final SPRITE_LAYER_BOTTOM_TEXT:I = 0x5

.field protected static final SPRITE_LAYER_BOTTOM_TEXT_PLATE:I = 0x4

.field private static final SPRITE_LAYER_COUNT:I = 0x6

.field protected static final SPRITE_LAYER_IMAGE_CORRUPT:I = 0x3

.field protected static final SPRITE_LAYER_THUMBNAIL:I = 0x1


# instance fields
.field protected mBgTexture:Lcom/htc/sunnyCore/Texture;

.field protected mBottomTextTexture:Lcom/htc/sunnyCore/Texture;

.field protected mBottomTextView:Landroid/view/View;

.field protected mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

.field protected mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

.field protected mShareTextureKey:Ljava/lang/String;

.field protected mSprite:Lcom/htc/sunnyCore/Sprite;

.field private mTextDateTime:Landroid/widget/TextView;

.field private mTextDateTimeCenter:Landroid/widget/TextView;

.field private mTextName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 41
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->DIMENSION_BOTTOM_TEXTVIEW_PLATE_H:[I

    .line 42
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->DIMENSION_BOTTOM_GAP_OF_TWO_LINE_H:[I

    .line 44
    sget-object v0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->DIMENSION_BOTTOM_TEXTVIEW_PLATE_H:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->BOTTOM_TEXTVIEW_PLATE_H_DIMENSION:I

    .line 45
    sget-object v0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->DIMENSION_BOTTOM_GAP_OF_TWO_LINE_H:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->BOTTOM_GAP_OF_TWO_LINE_H_DIMENSION:I

    return-void

    .line 41
    nop

    :array_0
    .array-data 0x4
        0x11t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
    .end array-data

    .line 42
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfdt 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V
    .locals 2
    .parameter "context"
    .parameter "sContext"

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 64
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTime:Landroid/widget/TextView;

    .line 65
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextName:Landroid/widget/TextView;

    .line 66
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTimeCenter:Landroid/widget/TextView;

    .line 68
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    .line 69
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridItemEvents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mShareTextureKey:Ljava/lang/String;

    .line 93
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;

    invoke-direct {v0}, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->setItemAnimation(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V
    .locals 2
    .parameter "context"
    .parameter "sContext"
    .parameter "param"

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 64
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTime:Landroid/widget/TextView;

    .line 65
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextName:Landroid/widget/TextView;

    .line 66
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTimeCenter:Landroid/widget/TextView;

    .line 68
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    .line 69
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    .line 74
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    if-nez v0, :cond_0

    .line 75
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    .line 77
    :cond_0
    if-eqz p3, :cond_1

    .line 78
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    invoke-virtual {v0, p3}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridItemEvents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mShareTextureKey:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;

    invoke-direct {v0}, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->setItemAnimation(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;)V

    .line 85
    return-void
.end method

.method private getBottomViewPlateHeight()I
    .locals 3

    .prologue
    .line 228
    sget v0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->BOTTOM_TEXTVIEW_PLATE_H_DIMENSION:I

    .line 230
    .local v0, height:I
    sget v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->mBottomViewHeight:I

    if-eqz v1, :cond_1

    .line 232
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->mBottomViewHeight:I

    .line 239
    :cond_0
    :goto_0
    return v0

    .line 234
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->updateBottomViewPlateHeight()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 236
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->mBottomViewHeight:I

    goto :goto_0
.end method

.method private setupGeometryOfBottomText()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x4000

    const/4 v5, 0x0

    .line 207
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v1, :cond_0

    .line 224
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getBottomViewPlateHeight()I

    move-result v6

    .line 212
    .local v6, nTextH:I
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    int-to-float v1, v1

    div-float/2addr v1, v7

    neg-float v3, v1

    .line 213
    .local v3, nTextOriX:F
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    int-to-float v1, v1

    int-to-float v2, v6

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float v4, v1, v2

    .line 215
    .local v4, nTextOriY:F
    const/4 v0, 0x0

    .line 217
    .local v0, layerReference:Lcom/htc/sunnyCore/Sprite$Layer;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemThumbW:I

    int-to-float v1, v1

    int-to-float v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 219
    invoke-virtual {v0, v8}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 221
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemThumbW:I

    int-to-float v1, v1

    int-to-float v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 223
    invoke-virtual {v0, v8}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method private updateBottomViewPlateHeight()Z
    .locals 7

    .prologue
    .line 243
    const/4 v1, 0x0

    .line 245
    .local v1, bIsUpdated:Z
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextName:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTime:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 247
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    .line 248
    .local v3, nameH:I
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTime:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    .line 249
    .local v2, dateH:I
    if-lez v2, :cond_1

    if-lez v3, :cond_1

    .line 251
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    .line 252
    .local v0, M6:I
    add-int v4, v3, v2

    add-int/2addr v4, v0

    sget v5, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->BOTTOM_GAP_OF_TWO_LINE_H_DIMENSION:I

    add-int/2addr v4, v5

    sput v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->mBottomViewHeight:I

    .line 253
    sget v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->mBottomViewHeight:I

    rem-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 255
    sget v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->mBottomViewHeight:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->mBottomViewHeight:I

    .line 257
    :cond_0
    const/4 v1, 0x1

    .line 258
    const-string v4, "GridItemEvents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GridItemEvents][updateBottomViewPlateHeight] new bottom view\'s height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->mBottomViewHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->setupGeometryOfBottomText()V

    .line 264
    .end local v0           #M6:I
    .end local v2           #dateH:I
    .end local v3           #nameH:I
    :cond_1
    return v1
.end method


# virtual methods
.method public bindMediaData(ILcom/htc/sunnyCore/IMediaData;)V
    .locals 4
    .parameter "dataIndex"
    .parameter "mediaData"

    .prologue
    .line 323
    if-nez p2, :cond_0

    .line 325
    const-string v1, "GridItemEvents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][GridItemEvents][bindMediaData]: null:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :goto_0
    return-void

    .line 329
    :cond_0
    const/4 v0, 0x0

    .line 330
    .local v0, mediaDataFolder:Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;
    instance-of v1, p2, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;

    if-eqz v1, :cond_3

    move-object v0, p2

    .line 332
    check-cast v0, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;

    .line 340
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    if-eqz v1, :cond_1

    .line 341
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    invoke-interface {v1, p1, p0, v0}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;->onItemBindMediaDataIRT(ILcom/htc/sunnyCore/widget/gridview/GridViewItem;Lcom/htc/sunnyCore/IMediaData;)V

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    if-eqz v1, :cond_2

    .line 344
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    invoke-interface {v1, p1, v0}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;->getThumbnailImage(ILcom/htc/sunnyCore/IMediaData;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->setThumbTexture(Lcom/htc/sunnyCore/Texture;)V

    .line 345
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    invoke-interface {v1, p1, v0}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;->getViewTexture(ILcom/htc/sunnyCore/IMediaData;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->setBottomTextTexture(Lcom/htc/sunnyCore/Texture;)V

    .line 349
    :cond_2
    invoke-interface {v0}, Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;->isCorrupted()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->setCorrupted(Z)V

    goto :goto_0

    .line 336
    :cond_3
    const-string v1, "GridItemEvents"

    const-string v2, "[HTCAlbum][GridItemEvents][bindMediaData]: not instance of IMediaDataFolder"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public create()Lcom/htc/sunnyCore/ViewItem;
    .locals 4

    .prologue
    .line 313
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->clone(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    move-result-object v1

    .line 314
    .local v1, param:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-direct {v0, v2, v3, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 316
    .local v0, item:Lcom/htc/sunny2/widget/gridview/GridItemEvents;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    .line 317
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    .line 318
    return-object v0
.end method

.method public create(Z)Lcom/htc/sunnyCore/ViewItem;
    .locals 1
    .parameter "isChild"

    .prologue
    .line 506
    const/4 v0, 0x0

    return-object v0
.end method

.method public createResource()V
    .locals 15

    .prologue
    .line 109
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->createResource()V

    .line 111
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v11

    .line 112
    .local v11, sharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    if-nez v11, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getSharedTexture()Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v11

    .line 115
    const/4 v1, 0x0

    iput v1, v11, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 116
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1, v11}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->setSharedTexture(Ljava/lang/String;Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;)V

    .line 118
    :cond_0
    iget v1, v11, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v11, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 120
    const/4 v8, 0x0

    .line 121
    .local v8, isLargeEvents:Z
    instance-of v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventLarge;

    if-eqz v1, :cond_1

    .line 123
    const/4 v8, 0x1

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v10, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 127
    .local v10, nItemW:I
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v9, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 129
    .local v9, nItemH:I
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v7, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemThumbW:I

    .line 130
    .local v7, iThumbnailItemW:I
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v6, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemThumbH:I

    .line 132
    .local v6, iThumbnailItemH:I
    neg-int v1, v10

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float v3, v1, v2

    .line 133
    .local v3, fImgOriginalX:F
    int-to-float v1, v9

    const/high16 v2, 0x4000

    div-float v4, v1, v2

    .line 135
    .local v4, fImgOriginalY:F
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v1, :cond_2

    .line 137
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    .line 138
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 139
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    .line 140
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->setTouchable(Z)V

    .line 142
    :cond_2
    const/4 v0, 0x0

    .line 147
    .local v0, layerReference:Lcom/htc/sunnyCore/Sprite$Layer;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 148
    int-to-float v1, v10

    int-to-float v2, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 153
    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne v8, v1, :cond_4

    const-string v1, "NAME_TEXTURE_BACKGROUND_DARK_BIG"

    :goto_0
    invoke-virtual {v11, v1}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 160
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 161
    int-to-float v1, v10

    int-to-float v2, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 166
    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne v8, v1, :cond_5

    const-string v1, "NAME_TEXTURE_BACKGROUND_LIGHT_BIG"

    :goto_1
    invoke-virtual {v11, v1}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 169
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 174
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 175
    int-to-float v1, v7

    int-to-float v2, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 180
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 185
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getTextPlateType()Ljava/lang/String;

    move-result-object v12

    .line 187
    .local v12, szTextPlateType:Ljava/lang/String;
    invoke-virtual {v11, v12}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v14

    .line 188
    .local v14, texturePlate:Lcom/htc/sunnyCore/Texture;
    if-eqz v12, :cond_3

    if-eqz v14, :cond_3

    .line 190
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v14}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 191
    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setAlpha(I)V

    .line 193
    :cond_3
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->setupGeometryOfBottomText()V

    .line 198
    const-string v1, "NAME_TEXTUREE_IMAGE_CORRUPT"

    invoke-virtual {v11, v1}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v13

    .line 199
    .local v13, textureCorrupt:Lcom/htc/sunnyCore/Texture;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 201
    invoke-virtual {v13}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v13}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 202
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v13}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 203
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 204
    return-void

    .line 153
    .end local v12           #szTextPlateType:Ljava/lang/String;
    .end local v13           #textureCorrupt:Lcom/htc/sunnyCore/Texture;
    .end local v14           #texturePlate:Lcom/htc/sunnyCore/Texture;
    :cond_4
    const-string v1, "NAME_TEXTURE_BACKGROUND_DARK_SMALL"

    goto :goto_0

    .line 166
    :cond_5
    const-string v1, "NAME_TEXTURE_BACKGROUND_LIGHT_SMALL"

    goto :goto_1
.end method

.method public freeResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mBottomTextTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mBottomTextTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 275
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mBottomTextTexture:Lcom/htc/sunnyCore/Texture;

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 280
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v1, :cond_2

    .line 284
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 285
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 286
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    .line 289
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v0

    .line 290
    .local v0, sharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    if-eqz v0, :cond_3

    .line 291
    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 292
    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    if-nez v1, :cond_3

    .line 293
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->removeSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    .line 294
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->release()V

    .line 299
    :cond_3
    :try_start_0
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->freeResource()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected getBottomTextLayout()I
    .locals 1

    .prologue
    .line 447
    const v0, 0x7f030013

    return v0
.end method

.method public getCacheSet()I
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x0

    return v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getHeight()I

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getWidth()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemThumbH:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIdentifier()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getIdentifier()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPrototypeId()I
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getIdentifier()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRowQuota()I
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    return v0
.end method

.method protected getSharedTexture()Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getTextPlateType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    const-string v0, "NAME_TEXTURE_EVENT_PLATE"

    return-object v0
.end method

.method public getVCropPosition()F
    .locals 1

    .prologue
    .line 535
    const/high16 v0, 0x3f00

    return v0
.end method

.method public getView(Lcom/htc/sunnyCore/IMediaData;Landroid/view/View;)Landroid/view/View;
    .locals 9
    .parameter "mediaData"
    .parameter "viewContainer"

    .prologue
    const/high16 v8, 0x4000

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 582
    if-nez p1, :cond_0

    .line 618
    :goto_0
    return-object v5

    .line 584
    :cond_0
    if-nez p2, :cond_1

    .line 586
    iget-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mBottomTextView:Landroid/view/View;

    .line 588
    :cond_1
    if-nez p2, :cond_2

    .line 590
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getViewResId(Lcom/htc/sunnyCore/IMediaData;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->inflateViewContainer(I)Landroid/view/View;

    move-result-object p2

    .line 591
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextName:Landroid/widget/TextView;

    .line 592
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTime:Landroid/widget/TextView;

    .line 593
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTimeCenter:Landroid/widget/TextView;

    .line 594
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mBottomTextView:Landroid/view/View;

    .line 596
    :cond_2
    invoke-virtual {p0, p2, p1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->updateBottomViewContent(Landroid/view/View;Ljava/lang/Object;)V

    .line 598
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getWidth()I

    move-result v4

    .line 599
    .local v4, nNewItemW:I
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getBottomViewPlateHeight()I

    move-result v3

    .line 601
    .local v3, nNewItemH:I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 602
    .local v1, measureW:I
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 603
    .local v0, measureH:I
    invoke-virtual {p2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 604
    invoke-virtual {p2, v7, v7, v4, v3}, Landroid/view/View;->layout(IIII)V

    .line 609
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getBottomViewPlateHeight()I

    move-result v2

    .line 610
    .local v2, nNewBottomViewHeight:I
    if-eq v3, v2, :cond_3

    .line 612
    move v3, v2

    .line 613
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 614
    invoke-virtual {p2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 615
    invoke-virtual {p2, v7, v7, v4, v3}, Landroid/view/View;->layout(IIII)V

    :cond_3
    move-object v5, p2

    .line 618
    goto :goto_0
.end method

.method public getViewId(Lcom/htc/sunnyCore/IMediaData;)Ljava/lang/String;
    .locals 5
    .parameter "mediaData"

    .prologue
    .line 567
    instance-of v3, p1, Lcom/htc/sunnyCore/IMediaDataFolder;

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 568
    check-cast v0, Lcom/htc/sunnyCore/IMediaDataFolder;

    .line 569
    .local v0, mediaDataFolder:Lcom/htc/sunnyCore/IMediaDataFolder;
    invoke-interface {v0}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 570
    .local v1, viewId1:Ljava/lang/String;
    invoke-interface {v0}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDateName()Ljava/lang/String;

    move-result-object v2

    .line 571
    .local v2, viewId2:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 572
    const-string v3, "GridItemEvents"

    const-string v4, "[getViewId] viewId is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getPrototypeId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 577
    .end local v0           #mediaDataFolder:Lcom/htc/sunnyCore/IMediaDataFolder;
    .end local v1           #viewId1:Ljava/lang/String;
    .end local v2           #viewId2:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 576
    :cond_1
    const-string v3, "GridItemEvents"

    const-string v4, "[getViewId] mediaData null or not IMediaDataFolder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getViewResId(Lcom/htc/sunnyCore/IMediaData;)I
    .locals 1
    .parameter "mediaData"

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getBottomTextLayout()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemThumbW:I

    return v0
.end method

.method public inflateViewContainer(I)Landroid/view/View;
    .locals 6
    .parameter "viewResId"

    .prologue
    const/4 v0, 0x0

    .line 551
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getBottomTextLayout()I

    move-result v4

    if-eq p1, v4, :cond_0

    .line 553
    const-string v4, "GridItemEvents"

    const-string v5, "[inflateViewContainer] Unsupported view res id"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :goto_0
    return-object v0

    .line 556
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getWidth()I

    move-result v3

    .line 557
    .local v3, nNewItemW:I
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getBottomViewPlateHeight()I

    move-result v2

    .line 559
    .local v2, nNewItemH:I
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 560
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 561
    .local v0, bottomTextView:Landroid/view/View;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->setMeasuredDimension(II)V

    .line 102
    return-void
.end method

.method public setBackground(I)V
    .locals 5
    .parameter "resId"

    .prologue
    const/4 v4, 0x0

    .line 408
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v2, :cond_0

    .line 410
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    .line 420
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v2, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2, v4, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 421
    return-void

    .line 414
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 415
    .local v1, opt:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 416
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 417
    .local v0, bmp:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2, v0}, Lcom/htc/sunnyCore/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 418
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected setBottomTextTexture(Lcom/htc/sunnyCore/Texture;)V
    .locals 6
    .parameter "texture"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 490
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 491
    .local v0, spriteText:Lcom/htc/sunnyCore/Sprite$Layer;
    invoke-virtual {v0, v3, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 492
    if-eqz p1, :cond_0

    .line 494
    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 495
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 502
    :goto_0
    return-void

    .line 499
    :cond_0
    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 500
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method public setContentGetter(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;)V
    .locals 0
    .parameter "contentGetter"

    .prologue
    .line 440
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    .line 441
    return-void
.end method

.method public setCorrupted(Z)V
    .locals 5
    .parameter "isCorrupted"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 635
    if-eqz p1, :cond_0

    .line 637
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 638
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 645
    :goto_0
    return-void

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 643
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method public setDrm(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 0
    .parameter "mediaData"

    .prologue
    .line 650
    return-void
.end method

.method public setInked(Z)V
    .locals 0
    .parameter "isInked"

    .prologue
    .line 655
    return-void
.end method

.method public setIs3D(Z)V
    .locals 0
    .parameter "is3d"

    .prologue
    .line 661
    return-void
.end method

.method public setPlayable(Z)V
    .locals 0
    .parameter "isPlayable"

    .prologue
    .line 630
    return-void
.end method

.method public setStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    if-eq v0, p1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iput p1, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    .line 405
    :cond_0
    return-void
.end method

.method public setThumbTexture(Lcom/htc/sunnyCore/Texture;)V
    .locals 4
    .parameter "texture"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 425
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 426
    .local v0, spriteThumbnail:Lcom/htc/sunnyCore/Sprite$Layer;
    invoke-virtual {v0, v2, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 427
    if-eqz p1, :cond_0

    .line 429
    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 430
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 437
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 435
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method public unbindMediaData()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 365
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v1, :cond_1

    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, isLargeEvents:Z
    instance-of v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventLarge;

    if-eqz v1, :cond_0

    .line 370
    const/4 v0, 0x1

    .line 373
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->setThumbTexture(Lcom/htc/sunnyCore/Texture;)V

    .line 374
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureRotate(I)V

    .line 375
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 376
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 377
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 378
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v3

    if-ne v0, v5, :cond_2

    const-string v1, "NAME_TEXTURE_BACKGROUND_DARK_BIG"

    :goto_0
    invoke-virtual {v3, v1}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 382
    .end local v0           #isLargeEvents:Z
    :cond_1
    return-void

    .line 378
    .restart local v0       #isLargeEvents:Z
    :cond_2
    const-string v1, "NAME_TEXTURE_BACKGROUND_DARK_SMALL"

    goto :goto_0
.end method

.method protected updateBottomViewContent(Landroid/view/View;Ljava/lang/Object;)V
    .locals 6
    .parameter "view"
    .parameter "object"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 451
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, p2

    .line 454
    check-cast v2, Lcom/htc/sunnyCore/IMediaDataFolder;

    .line 455
    .local v2, mediaDataFolder:Lcom/htc/sunnyCore/IMediaDataFolder;
    invoke-interface {v2}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, displayName:Ljava/lang/String;
    invoke-interface {v2}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDateName()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, dataTime:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextName:Landroid/widget/TextView;

    if-nez v3, :cond_2

    .line 459
    const v3, 0x7f090036

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextName:Landroid/widget/TextView;

    .line 462
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTimeCenter:Landroid/widget/TextView;

    if-nez v3, :cond_3

    .line 464
    const v3, 0x7f090037

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTimeCenter:Landroid/widget/TextView;

    .line 467
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTime:Landroid/widget/TextView;

    if-nez v3, :cond_4

    .line 469
    const v3, 0x7f090038

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTime:Landroid/widget/TextView;

    .line 472
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 474
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTime:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTime:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 478
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTimeCenter:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 482
    :cond_5
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTime:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 484
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTimeCenter:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEvents;->mTextDateTimeCenter:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
