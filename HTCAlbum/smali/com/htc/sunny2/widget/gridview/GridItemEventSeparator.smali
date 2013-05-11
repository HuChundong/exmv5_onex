.class public Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;
.super Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
.source "GridItemEventSeparator.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator$TextureSeparator;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GridItemEventSeparator"

#the value of this static final field might be set in the static constructor
.field private static final SEPARATOR_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SEPARATOR_WIDTH_MIN:I = 0x0

.field private static final SEPERATOR_TAG:Ljava/lang/String; = "_S_"

.field protected static final SPRITE_LAYER_BACKGROUND:I = 0x0

.field protected static final SPRITE_LAYER_COUNT:I = 0x2

.field protected static final SPRITE_LAYER_TITLE:I = 0x1


# instance fields
.field private mBGTexture:Lcom/htc/sunnyCore/Texture;

.field protected mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

.field protected mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

.field private mPosX:F

.field private mShareTextureKey:Ljava/lang/String;

.field private mSprite:Lcom/htc/sunnyCore/Sprite;

.field private mTextTextureContainer:Lcom/htc/sunnyCore/Texture;

.field private mTextViewContainer:Landroid/view/View;

.field private mTextViewTitle:Landroid/widget/TextView;

.field private mTextViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->GRID_DIMENSION_W_MIN:I

    sput v0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->SEPARATOR_WIDTH_MIN:I

    .line 40
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->GRID_DIMENSION_W:I

    sput v0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->SEPARATOR_WIDTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V
    .locals 3
    .parameter "context"
    .parameter "sContext"
    .parameter "param"

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 42
    sget v0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->SEPARATOR_WIDTH_MIN:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextViewWidth:I

    .line 44
    sget v0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->SEPARATOR_WIDTH:I

    sget v1, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->SEPARATOR_WIDTH_MIN:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mPosX:F

    .line 56
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    .line 57
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    .line 62
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    if-nez v0, :cond_0

    .line 63
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    .line 65
    :cond_0
    if-eqz p3, :cond_1

    .line 66
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    invoke-virtual {v0, p3}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridItemEventSeparator"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mShareTextureKey:Ljava/lang/String;

    .line 69
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
    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, bIsChanged:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 250
    .end local v0           #bIsChanged:Z
    .local v1, bIsChanged:I
    :goto_0
    return v1

    .line 240
    .end local v1           #bIsChanged:I
    .restart local v0       #bIsChanged:Z
    :cond_0
    invoke-virtual {p1}, Lcom/htc/sunnyCore/Sprite$Layer;->getGeometry()[I

    move-result-object v2

    .line 241
    .local v2, geometry:[I
    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    :cond_1
    move v1, v0

    .line 243
    .restart local v1       #bIsChanged:I
    goto :goto_0

    .line 246
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

    .line 248
    :cond_3
    const/4 v0, 0x1

    :cond_4
    move v1, v0

    .line 250
    .restart local v1       #bIsChanged:I
    goto :goto_0
.end method

.method private setText(Lcom/htc/sunnyCore/IMediaData;)V
    .locals 7
    .parameter "mediaData"

    .prologue
    const/4 v6, 0x0

    .line 176
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 178
    .local v0, spriteText:Lcom/htc/sunnyCore/Sprite$Layer;
    const/4 v3, 0x0

    .line 179
    .local v3, title:Ljava/lang/String;
    instance-of v4, p1, Lcom/htc/sunnyCore/IMediaDataFolder;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 180
    check-cast v4, Lcom/htc/sunnyCore/IMediaDataFolder;

    invoke-interface {v4}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDateName()Ljava/lang/String;

    move-result-object v3

    .line 182
    :cond_0
    if-nez v3, :cond_1

    .line 183
    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 205
    :goto_0
    return-void

    .line 187
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->getView(Lcom/htc/sunnyCore/IMediaData;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 188
    .local v2, textViewContainer:Landroid/view/View;
    if-nez v2, :cond_2

    .line 189
    const-string v4, "GridItemEventSeparator"

    const-string v5, "[setText] textViewContainer is null"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    .line 194
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextTextureContainer:Lcom/htc/sunnyCore/Texture;

    .line 195
    .local v1, textTexture:Lcom/htc/sunnyCore/Texture;
    if-nez v1, :cond_3

    .line 196
    invoke-static {v2}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 197
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextTextureContainer:Lcom/htc/sunnyCore/Texture;

    .line 204
    :goto_1
    invoke-direct {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->setTextThumbnail(Lcom/htc/sunnyCore/Texture;)V

    goto :goto_0

    .line 201
    :cond_3
    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Texture;->setView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private setTextThumbnail(Lcom/htc/sunnyCore/Texture;)V
    .locals 11
    .parameter "texture"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    .line 210
    .local v1, spriteText:Lcom/htc/sunnyCore/Sprite$Layer;
    const/4 v0, 0x0

    invoke-virtual {v1, v0, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 211
    if-nez p1, :cond_0

    .line 212
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 233
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-virtual {p1}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v10

    .line 217
    .local v10, nWidth:I
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextViewWidth:I

    if-ge v0, v10, :cond_1

    .line 219
    sget v0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->SEPARATOR_WIDTH:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextViewWidth:I

    .line 220
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->updateTextViewPosX()V

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->getHeight()I

    move-result v3

    .line 225
    .local v3, nTextNewHeight:I
    const/4 v6, 0x1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextViewWidth:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mPosX:F

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->hasGeometryChanged(Lcom/htc/sunnyCore/Sprite$Layer;IIFF)Z

    move-result v0

    if-ne v6, v0, :cond_2

    .line 227
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextViewWidth:I

    int-to-float v5, v0

    int-to-float v6, v3

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mPosX:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 229
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 231
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    .line 232
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method private updateTextViewPosX()V
    .locals 2

    .prologue
    .line 443
    sget v0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->SEPARATOR_WIDTH:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextViewWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mPosX:F

    .line 444
    return-void
.end method


# virtual methods
.method public bindMediaData(ILcom/htc/sunnyCore/IMediaData;)V
    .locals 4
    .parameter "dataIndex"
    .parameter "mediaData"

    .prologue
    .line 317
    if-nez p2, :cond_1

    .line 319
    const-string v1, "GridItemEventSeparator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][GridItemEventSeparator][bindMediaData]: null:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    const/4 v0, 0x0

    .line 323
    .local v0, mediaDataFolder:Lcom/htc/sunnyCore/IMediaDataFolder;
    instance-of v1, p2, Lcom/htc/sunnyCore/IMediaDataFolder;

    if-eqz v1, :cond_2

    move-object v0, p2

    .line 325
    check-cast v0, Lcom/htc/sunnyCore/IMediaDataFolder;

    .line 335
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    instance-of v1, v1, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v1, p1, v0}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->getViewTexture(ILcom/htc/sunnyCore/IMediaData;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->setTextThumbnail(Lcom/htc/sunnyCore/Texture;)V

    goto :goto_0

    .line 329
    :cond_2
    const-string v1, "GridItemEventSeparator"

    const-string v2, "[HTCAlbum][GridItemEventSeparator][bindMediaData]: not instance of IMediaDataFolder"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public create()Lcom/htc/sunnyCore/ViewItem;
    .locals 4

    .prologue
    .line 90
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->clone(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    move-result-object v1

    .line 91
    .local v1, param:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-direct {v0, v2, v3, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 93
    .local v0, item:Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    .line 94
    return-object v0
.end method

.method public create(Z)Lcom/htc/sunnyCore/ViewItem;
    .locals 1
    .parameter "isChild"

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public createResource()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 114
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->createResource()V

    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v7

    .line 117
    .local v7, sharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    if-nez v7, :cond_0

    .line 119
    new-instance v7, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator$TextureSeparator;

    .end local v7           #sharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_SeparatorTopRest(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v7, p0, v0, v2}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator$TextureSeparator;-><init>(Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;Landroid/content/Context;I)V

    .line 120
    .restart local v7       #sharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    iput v8, v7, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 121
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->setSharedTexture(Ljava/lang/String;Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;)V

    .line 123
    :cond_0
    iget v0, v7, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 125
    const-string v0, "NAME_TEXTURE_BACKGROUND"

    invoke-virtual {v7, v0}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    .line 127
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v0, :cond_1

    .line 128
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    .line 129
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 132
    :cond_1
    const/4 v1, 0x0

    .line 135
    .local v1, layer:Lcom/htc/sunnyCore/Sprite$Layer;
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v8}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    .line 136
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->hasGeometryChanged(Lcom/htc/sunnyCore/Sprite$Layer;IIFF)Z

    move-result v0

    if-ne v9, v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    int-to-float v3, v0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1, v8, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 141
    invoke-virtual {v1, v8}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 144
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v9}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    .line 145
    invoke-virtual {v1, v8}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 146
    return-void
.end method

.method public freeResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextTextureContainer:Lcom/htc/sunnyCore/Texture;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextTextureContainer:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 154
    :cond_0
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextTextureContainer:Lcom/htc/sunnyCore/Texture;

    .line 156
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 158
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 160
    :cond_1
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    .line 162
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v0

    .line 163
    .local v0, sharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    if-eqz v0, :cond_2

    .line 164
    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 165
    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    if-nez v1, :cond_2

    .line 166
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->removeSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    .line 167
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->release()V

    .line 171
    :cond_2
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->freeResource()V

    .line 172
    return-void
.end method

.method public getCacheSet()I
    .locals 1

    .prologue
    .line 350
    const/4 v0, -0x1

    return v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 366
    const/4 v0, -0x1

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 361
    const/4 v0, -0x1

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIdentifier()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->getIdentifier()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPrototypeId()I
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x3

    return v0
.end method

.method public getRowQuota()I
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x4

    return v0
.end method

.method protected getSeperateTextLayout()I
    .locals 1

    .prologue
    .line 447
    const v0, 0x7f030014

    return v0
.end method

.method public getVCropPosition()F
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public getView(Lcom/htc/sunnyCore/IMediaData;Landroid/view/View;)Landroid/view/View;
    .locals 7
    .parameter "mediaData"
    .parameter "viewContainer"

    .prologue
    const/4 v6, 0x0

    .line 403
    const/4 v3, 0x0

    .line 404
    .local v3, title:Ljava/lang/String;
    instance-of v4, p1, Lcom/htc/sunnyCore/IMediaDataFolder;

    if-eqz v4, :cond_3

    move-object v4, p1

    .line 405
    check-cast v4, Lcom/htc/sunnyCore/IMediaDataFolder;

    invoke-interface {v4}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDateName()Ljava/lang/String;

    move-result-object v3

    .line 411
    if-nez p2, :cond_0

    .line 413
    iget-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextViewContainer:Landroid/view/View;

    .line 415
    :cond_0
    if-nez p2, :cond_1

    .line 417
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->getViewResId(Lcom/htc/sunnyCore/IMediaData;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->inflateViewContainer(I)Landroid/view/View;

    move-result-object p2

    .line 418
    const v4, 0x7f090029

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextViewTitle:Landroid/widget/TextView;

    .line 419
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextViewContainer:Landroid/view/View;

    .line 421
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextViewTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 424
    .local v1, measureW:I
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 425
    .local v0, measureH:I
    invoke-virtual {p2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 427
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 428
    .local v2, nWidth:I
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextViewWidth:I

    if-ge v4, v2, :cond_2

    .line 430
    sget v4, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->SEPARATOR_WIDTH:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextViewWidth:I

    .line 431
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->updateTextViewPosX()V

    .line 433
    :cond_2
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextViewWidth:I

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    invoke-virtual {p2, v6, v6, v4, v5}, Landroid/view/View;->layout(IIII)V

    move-object v4, p2

    .line 435
    .end local v0           #measureH:I
    .end local v1           #measureW:I
    .end local v2           #nWidth:I
    :goto_0
    return-object v4

    .line 407
    :cond_3
    const-string v4, "GridItemEventSeparator"

    const-string v5, "[getView] mediaData is not IMediaDataFolder"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getViewId(Lcom/htc/sunnyCore/IMediaData;)Ljava/lang/String;
    .locals 3
    .parameter "mediaData"

    .prologue
    .line 386
    instance-of v1, p1, Lcom/htc/sunnyCore/IMediaDataFolder;

    if-eqz v1, :cond_1

    .line 387
    check-cast p1, Lcom/htc/sunnyCore/IMediaDataFolder;

    .end local p1
    invoke-interface {p1}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDateName()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, viewId:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 389
    const-string v1, "GridItemEventSeparator"

    const-string v2, "[getViewId] viewId is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .end local v0           #viewId:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 391
    .restart local v0       #viewId:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mTextViewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_S_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 396
    .end local v0           #viewId:Ljava/lang/String;
    .restart local p1
    :cond_1
    const-string v1, "GridItemEventSeparator"

    const-string v2, "[getViewId] mediaData null or not IMediaDataFolder"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewResId(Lcom/htc/sunnyCore/IMediaData;)I
    .locals 1
    .parameter "mediaData"

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->getSeperateTextLayout()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    return v0
.end method

.method public inflateViewContainer(I)Landroid/view/View;
    .locals 4
    .parameter "viewResId"

    .prologue
    const/4 v1, 0x0

    .line 375
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->getSeperateTextLayout()I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 377
    const-string v2, "GridItemEventSeparator"

    const-string v3, "[inflateViewContainer] Unsupported view res id"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :goto_0
    return-object v1

    .line 380
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 381
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->setMeasuredDimension(II)V

    .line 75
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 106
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 108
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mSprite:Lcom/htc/sunnyCore/Sprite;

    .line 109
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->release()V

    .line 110
    return-void
.end method

.method public setBackground(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 266
    return-void
.end method

.method public setContentGetter(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;)V
    .locals 0
    .parameter "contentGetter"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    .line 276
    return-void
.end method

.method public setStyle(I)V
    .locals 0
    .parameter "style"

    .prologue
    .line 261
    return-void
.end method

.method public setThumbTexture(Lcom/htc/sunnyCore/Texture;)V
    .locals 0
    .parameter "texture"

    .prologue
    .line 271
    return-void
.end method

.method public unbindMediaData()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method
