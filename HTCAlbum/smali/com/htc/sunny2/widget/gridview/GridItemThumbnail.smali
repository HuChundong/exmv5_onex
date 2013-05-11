.class public Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
.super Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
.source "GridItemThumbnail.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemOverlayState;
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemPickerable;


# static fields
.field private static final FLAG_DRM:I = 0x2

.field private static final FLAG_PLAYABLE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "GridItemThumbnail"

.field private static final SPRITE_LAYER_ARROW_DOWN:I = 0x3

.field private static final SPRITE_LAYER_BACKGROUND:I = 0x0

.field private static final SPRITE_LAYER_BACKGROUND_LIGHT:I = 0x1

.field private static final SPRITE_LAYER_BESTSHOT:I = 0x10

.field private static final SPRITE_LAYER_BOTTOM_TEXT:I = 0x2

.field private static final SPRITE_LAYER_BURSTSHOT:I = 0xf

.field private static final SPRITE_LAYER_CENTER_TEXT:I = 0x4

.field private static final SPRITE_LAYER_COUNT:I = 0x11

.field private static final SPRITE_LAYER_DELETE:I = 0xb

.field private static final SPRITE_LAYER_DRM:I = 0xa

.field private static final SPRITE_LAYER_DRM_CORRUPT:I = 0x7

.field private static final SPRITE_LAYER_IMAGE_CORRUPT:I = 0x5

.field private static final SPRITE_LAYER_INKED:I = 0xd

.field private static final SPRITE_LAYER_IS_3D:I = 0xe

.field private static final SPRITE_LAYER_PICKER:I = 0xb

.field private static final SPRITE_LAYER_PLAYABLE:I = 0x9

.field private static final SPRITE_LAYER_SELECTOR:I = 0xc

.field protected static final SPRITE_LAYER_THUMBNAIL:I = 0x8

.field private static final SPRITE_LAYER_VIDEO_CORRUPT:I = 0x6


# instance fields
.field private mBackgroundItemH:I

.field private mBackgroundItemW:I

.field private mBackgroundResId:I

.field protected mBgTexture:Lcom/htc/sunnyCore/Texture;

.field protected mBottomTexture:Lcom/htc/sunnyCore/Texture;

.field protected mBottomView:Landroid/view/View;

.field protected mCenterTextTexture:Lcom/htc/sunnyCore/Texture;

.field protected mCenterTextView:Landroid/widget/TextView;

.field protected mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

.field protected mInit3DLayer:Z

.field protected mInitArrowDown:Z

.field protected mInitBurstLayer:Z

.field protected mInitDrm:Z

.field protected mInitDrmCorrupted:Z

.field protected mInitImageCorrupted:Z

.field protected mInitInkedLayer:Z

.field protected mInitLightBkg:Z

.field protected mInitPlayerLayer:Z

.field protected mInitPressLayer:Z

.field protected mInitVideoCorrupted:Z

.field protected mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

.field private mPrivateFlag:I

.field protected mShareTextureKey:Ljava/lang/String;

.field protected mSprite:Lcom/htc/sunnyCore/Sprite;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V
    .locals 2
    .parameter "context"
    .parameter "sContext"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 87
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    .line 88
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    .line 90
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitPlayerLayer:Z

    .line 91
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitArrowDown:Z

    .line 92
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitPressLayer:Z

    .line 93
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInit3DLayer:Z

    .line 94
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitInkedLayer:Z

    .line 95
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitImageCorrupted:Z

    .line 96
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitVideoCorrupted:Z

    .line 97
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitDrmCorrupted:Z

    .line 98
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitDrm:Z

    .line 99
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitLightBkg:Z

    .line 100
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitBurstLayer:Z

    .line 868
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBackgroundResId:I

    .line 869
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBackgroundItemW:I

    .line 870
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBackgroundItemH:I

    .line 122
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridItemThumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    .line 127
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;

    invoke-direct {v0}, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setItemAnimation(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V
    .locals 2
    .parameter "context"
    .parameter "sContext"
    .parameter "param"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 87
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    .line 88
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    .line 90
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitPlayerLayer:Z

    .line 91
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitArrowDown:Z

    .line 92
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitPressLayer:Z

    .line 93
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInit3DLayer:Z

    .line 94
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitInkedLayer:Z

    .line 95
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitImageCorrupted:Z

    .line 96
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitVideoCorrupted:Z

    .line 97
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitDrmCorrupted:Z

    .line 98
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitDrm:Z

    .line 99
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitLightBkg:Z

    .line 100
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitBurstLayer:Z

    .line 868
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBackgroundResId:I

    .line 869
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBackgroundItemW:I

    .line 870
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBackgroundItemH:I

    .line 105
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    if-nez v0, :cond_0

    .line 106
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    .line 108
    :cond_0
    if-eqz p3, :cond_1

    .line 109
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    invoke-virtual {v0, p3}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 112
    :cond_1
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridItemThumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    .line 117
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;

    invoke-direct {v0}, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setItemAnimation(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;)V

    .line 118
    return-void
.end method

.method private initBurstRelativeLayer()V
    .locals 21

    .prologue
    .line 1162
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitBurstLayer:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1202
    :goto_0
    return-void

    .line 1164
    :cond_0
    const/4 v4, 0x0

    .line 1165
    .local v4, fGeoPosX:F
    const/4 v5, 0x0

    .line 1166
    .local v5, fGeoPosY:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    move/from16 v19, v0

    .line 1167
    .local v19, nItemH:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v20

    .line 1172
    .local v20, sharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    .line 1173
    .local v1, spriteLayerBurstShot:Lcom/htc/sunnyCore/Sprite$Layer;
    const-string v2, "NAME_TEXTUREE_BURSTSHOT"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v17

    .line 1174
    .local v17, burstTexture:Lcom/htc/sunnyCore/Texture;
    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v18

    .line 1175
    .local v18, burstWidth:I
    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v16

    .line 1176
    .local v16, burstHeight:I
    move/from16 v0, v18

    int-to-float v2, v0

    neg-float v2, v2

    const/high16 v3, 0x4000

    div-float v4, v2, v3

    .line 1177
    move/from16 v0, v19

    int-to-float v2, v0

    move/from16 v0, v16

    int-to-float v3, v0

    const/high16 v7, 0x4000

    div-float/2addr v3, v7

    sub-float v5, v2, v3

    .line 1178
    move/from16 v0, v18

    int-to-float v2, v0

    move/from16 v0, v16

    int-to-float v3, v0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 1179
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 1180
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v6

    .line 1186
    .local v6, spriteLayerBestShot:Lcom/htc/sunnyCore/Sprite$Layer;
    const-string v2, "NAME_TEXTUREE_BESTSHOT"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v14

    .line 1187
    .local v14, bestTexture:Lcom/htc/sunnyCore/Texture;
    invoke-virtual {v14}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v15

    .line 1188
    .local v15, bestWidth:I
    invoke-virtual {v14}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v13

    .line 1189
    .local v13, bestHeight:I
    int-to-float v2, v15

    neg-float v2, v2

    const/high16 v3, 0x4000

    div-float v4, v2, v3

    .line 1190
    move/from16 v0, v19

    int-to-float v2, v0

    int-to-float v3, v13

    const/high16 v7, 0x4000

    div-float/2addr v3, v7

    sub-float v5, v2, v3

    .line 1191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 1193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 1194
    .local v12, M6:F
    sub-float/2addr v4, v12

    .line 1195
    sub-float/2addr v5, v12

    .line 1197
    .end local v12           #M6:F
    :cond_1
    int-to-float v7, v15

    int-to-float v8, v13

    const/4 v11, 0x0

    move v9, v4

    move v10, v5

    invoke-virtual/range {v6 .. v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 1198
    const/4 v2, 0x0

    invoke-virtual {v6, v2, v14}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 1199
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 1201
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitBurstLayer:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public bindMediaData(ILcom/htc/sunnyCore/IMediaData;)V
    .locals 11
    .parameter "dataIndex"
    .parameter "mediaData"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 388
    if-nez p2, :cond_1

    .line 390
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "GridItemThumbnail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Sunny2Framework][GridItemThumbnail][bindMediaData]: null:  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    const/4 v3, 0x0

    .line 395
    .local v3, mediaDataGallery:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    instance-of v7, p2, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v7, :cond_c

    move-object v3, p2

    .line 397
    check-cast v3, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 405
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v5

    .line 406
    .local v5, thumbnailLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    const/16 v7, 0xff

    invoke-virtual {v5, v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setAlpha(I)V

    .line 408
    const/4 v2, 0x0

    .line 409
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    instance-of v7, p2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v7, :cond_2

    move-object v2, p2

    .line 410
    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 413
    :cond_2
    if-eqz v2, :cond_4

    .line 414
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBurstPhoto()Z

    move-result v7

    if-ne v9, v7, :cond_3

    .line 415
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->initBurstRelativeLayer()V

    .line 416
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v10, 0xf

    invoke-virtual {v7, v10}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 418
    :cond_3
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v7

    if-ne v9, v7, :cond_4

    .line 419
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->initBurstRelativeLayer()V

    .line 420
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v10, 0x10

    invoke-virtual {v7, v10}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 424
    :cond_4
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    if-eqz v7, :cond_5

    .line 425
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    invoke-interface {v7, p1, p0, p2}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;->onItemBindMediaDataIRT(ILcom/htc/sunnyCore/widget/gridview/GridViewItem;Lcom/htc/sunnyCore/IMediaData;)V

    .line 427
    :cond_5
    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isPlayable()Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_6
    move v7, v9

    :goto_1
    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setPlayable(Z)V

    .line 428
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setDrm(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    .line 429
    if-eqz v2, :cond_7

    .line 430
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setInked(Z)V

    .line 434
    :cond_7
    if-eqz v2, :cond_8

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v7

    if-eqz v7, :cond_8

    move v8, v9

    :cond_8
    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setIs3D(Z)V

    .line 436
    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setCorrupted(Z)V

    .line 438
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    if-ne v9, v7, :cond_9

    .line 440
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v6

    .line 441
    .local v6, useLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    invoke-virtual {v6, v9}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 444
    .end local v6           #useLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    :cond_9
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    if-eqz v7, :cond_a

    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v7

    if-nez v7, :cond_a

    .line 445
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    invoke-interface {v7, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;->getThumbnailImage(ILcom/htc/sunnyCore/IMediaData;)Lcom/htc/sunnyCore/Texture;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setThumbTexture(Lcom/htc/sunnyCore/Texture;)V

    .line 447
    :cond_a
    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v4

    .line 448
    .local v4, rotateDegrees:I
    rem-int/lit16 v4, v4, 0x168

    .line 449
    if-gez v4, :cond_b

    .line 450
    add-int/lit16 v4, v4, 0x168

    .line 452
    :cond_b
    invoke-virtual {v5, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureRotate(I)V

    .line 454
    instance-of v7, p2, Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;

    if-eqz v7, :cond_0

    move-object v1, p2

    .line 456
    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;

    .line 458
    .local v1, dlnaData:Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;
    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setCenterText(Ljava/lang/String;)V

    .line 460
    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;->getCenterText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setBottomText(Ljava/lang/Object;)V

    .line 462
    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;->getBackground()I

    move-result v0

    .line 463
    .local v0, bgResId:I
    if-eqz v0, :cond_0

    .line 465
    const v7, 0x7f020001

    if-ne v0, v7, :cond_e

    .line 467
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    const-string v8, "gallery_bg_loading"

    invoke-static {v7, v8, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setBackground(I)V

    goto/16 :goto_0

    .line 401
    .end local v0           #bgResId:I
    .end local v1           #dlnaData:Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v4           #rotateDegrees:I
    .end local v5           #thumbnailLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    :cond_c
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "GridItemThumbnail"

    const-string v8, "[Sunny2Framework][GridItemThumbnail][bindMediaData]: not instance of IMediaDataGallery"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v5       #thumbnailLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    :cond_d
    move v7, v8

    .line 427
    goto/16 :goto_1

    .line 471
    .restart local v0       #bgResId:I
    .restart local v1       #dlnaData:Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;
    .restart local v4       #rotateDegrees:I
    :cond_e
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setBackground(I)V

    goto/16 :goto_0
.end method

.method public create()Lcom/htc/sunnyCore/ViewItem;
    .locals 4

    .prologue
    .line 379
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 381
    .local v0, item:Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    iput-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    .line 382
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    iput-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    .line 383
    return-object v0
.end method

.method public create(Z)Lcom/htc/sunnyCore/ViewItem;
    .locals 1
    .parameter "isChild"

    .prologue
    .line 1207
    const/4 v0, 0x0

    return-object v0
.end method

.method public createResource()V
    .locals 28

    .prologue
    .line 143
    invoke-super/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->createResource()V

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v22

    .line 146
    .local v22, sharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    if-nez v22, :cond_0

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture()Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v22

    .line 149
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput v2, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setSharedTexture(Ljava/lang/String;Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;)V

    .line 152
    :cond_0
    move-object/from16 v0, v22

    iget v2, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v22

    iput v2, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    move/from16 v21, v0

    .line 155
    .local v21, nItemW:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    move/from16 v20, v0

    .line 157
    .local v20, nItemH:I
    move/from16 v0, v21

    neg-int v2, v0

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float v4, v2, v3

    .line 158
    .local v4, fImgOriginalX:F
    move/from16 v0, v20

    int-to-float v2, v0

    const/high16 v3, 0x4000

    div-float v5, v2, v3

    .line 160
    .local v5, fImgOriginalY:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v2, :cond_1

    .line 162
    const/16 v2, 0x11

    invoke-static {v2}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v5, v3}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->setTouchable(Z)V

    .line 171
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    .line 172
    .local v1, spriteLayerBackground:Lcom/htc/sunnyCore/Sprite$Layer;
    move/from16 v0, v21

    int-to-float v2, v0

    move/from16 v0, v20

    int-to-float v3, v0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 173
    const/4 v2, 0x0

    const-string v3, "NAME_TEXTURE_BACKGROUND_DARK"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    .line 180
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 181
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitLightBkg:Z

    .line 183
    const/16 v18, 0x0

    .line 184
    .local v18, fGeoPosX:F
    const/16 v19, 0x0

    .line 188
    .local v19, fGeoPosY:F
    const/16 v25, 0x0

    .line 190
    .local v25, spriteLayerCorrupt:Lcom/htc/sunnyCore/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v25

    .line 191
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 192
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitImageCorrupted:Z

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v25

    .line 195
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 196
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitVideoCorrupted:Z

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v25

    .line 199
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 200
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitDrmCorrupted:Z

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v6

    .line 206
    .local v6, spriteLayerThumb:Lcom/htc/sunnyCore/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemThumbW:I

    int-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemThumbH:I

    int-to-float v8, v2

    const/4 v11, 0x0

    move v9, v4

    move v10, v5

    invoke-virtual/range {v6 .. v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 207
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 212
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitPlayerLayer:Z

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 219
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitInkedLayer:Z

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v24

    .line 223
    .local v24, spriteLayerBurstShot:Lcom/htc/sunnyCore/Sprite$Layer;
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v23

    .line 226
    .local v23, spriteLayerBestShot:Lcom/htc/sunnyCore/Sprite$Layer;
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 227
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitBurstLayer:Z

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 233
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInit3DLayer:Z

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 239
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitDrm:Z

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v7

    .line 245
    .local v7, spriteLayerPicker:Lcom/htc/sunnyCore/Sprite$Layer;
    const/16 v27, 0x0

    .line 246
    .local v27, texturePicked:Lcom/htc/sunnyCore/Texture;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    if-ne v2, v3, :cond_2

    .line 248
    const-string v2, "NAME_TEXTUREE_UNPICKED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v27

    .line 249
    move/from16 v0, v21

    int-to-float v2, v0

    neg-float v2, v2

    invoke-virtual/range {v27 .. v27}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v8, 0x4000

    div-float/2addr v3, v8

    add-float/2addr v2, v3

    sget v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_INIDICATOR_MARGIN_X:I

    int-to-float v3, v3

    add-float v10, v2, v3

    .line 251
    .end local v18           #fGeoPosX:F
    .local v10, fGeoPosX:F
    move/from16 v0, v20

    int-to-float v2, v0

    invoke-virtual/range {v27 .. v27}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v8, 0x4000

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    sget v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_INIDICATOR_MARGIN_Y:I

    int-to-float v3, v3

    sub-float v11, v2, v3

    .line 253
    .end local v19           #fGeoPosY:F
    .local v11, fGeoPosY:F
    invoke-virtual/range {v27 .. v27}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v2

    int-to-float v8, v2

    invoke-virtual/range {v27 .. v27}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v2

    int-to-float v9, v2

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 254
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v7, v2, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 262
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 268
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitPressLayer:Z

    .line 273
    const/16 v26, 0x0

    .line 274
    .local v26, spriteLayerText:Lcom/htc/sunnyCore/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v26

    .line 275
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v26

    .line 278
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 284
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitArrowDown:Z

    .line 293
    return-void

    .line 256
    .end local v10           #fGeoPosX:F
    .end local v11           #fGeoPosY:F
    .end local v26           #spriteLayerText:Lcom/htc/sunnyCore/Sprite$Layer;
    .restart local v18       #fGeoPosX:F
    .restart local v19       #fGeoPosY:F
    :cond_2
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    if-ne v2, v3, :cond_3

    .line 258
    const-string v2, "NAME_TEXTUREE_DELETE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v27

    .line 259
    invoke-virtual/range {v27 .. v27}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v2

    int-to-float v13, v2

    invoke-virtual/range {v27 .. v27}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v2

    int-to-float v14, v2

    const/16 v17, 0x0

    move-object v12, v7

    move v15, v4

    move/from16 v16, v5

    invoke-virtual/range {v12 .. v17}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 260
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v7, v2, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    :cond_3
    move/from16 v11, v19

    .end local v19           #fGeoPosY:F
    .restart local v11       #fGeoPosY:F
    move/from16 v10, v18

    .end local v18           #fGeoPosX:F
    .restart local v10       #fGeoPosX:F
    goto :goto_0
.end method

.method protected enableLayerArrowDown()Z
    .locals 1

    .prologue
    .line 1018
    const/4 v0, 0x1

    return v0
.end method

.method public freeResource()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 298
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mCenterTextTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mCenterTextTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 300
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mCenterTextTexture:Lcom/htc/sunnyCore/Texture;

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBottomTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v1, :cond_1

    .line 304
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBottomTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 305
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBottomTexture:Lcom/htc/sunnyCore/Texture;

    .line 308
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v1, :cond_2

    .line 309
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 310
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    .line 312
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBackgroundItemH:I

    .line 313
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBackgroundItemW:I

    .line 314
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBackgroundResId:I

    .line 323
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v1, :cond_3

    .line 324
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 325
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 326
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    .line 329
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v0

    .line 330
    .local v0, sharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    if-eqz v0, :cond_4

    .line 331
    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 332
    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    if-nez v1, :cond_4

    .line 333
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->removeSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    .line 334
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->release()V

    .line 338
    :cond_4
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->freeResource()V

    .line 339
    return-void
.end method

.method protected getBottomLayerOriginPosY(F)F
    .locals 2
    .parameter "fOriginPosY"

    .prologue
    .line 1033
    const/high16 v1, 0x40c0

    sub-float v0, p1, v1

    .line 1034
    .local v0, fPosY:F
    return v0
.end method

.method protected getBottomTextLayer()Lcom/htc/sunnyCore/Sprite$Layer;
    .locals 3

    .prologue
    .line 1022
    const/4 v0, 0x0

    .line 1023
    .local v0, layer:Lcom/htc/sunnyCore/Sprite$Layer;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 1024
    return-object v0
.end method

.method protected getBottomTextLayout()I
    .locals 1

    .prologue
    .line 1011
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    const v0, 0x7f03000f

    .line 1014
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f03000e

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    return v0
.end method

.method protected getSharedTexture()Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setMeasuredDimension(II)V

    .line 136
    return-void
.end method

.method public setBackground(I)V
    .locals 10
    .parameter "resId"

    .prologue
    const/4 v9, 0x0

    .line 873
    if-nez p1, :cond_0

    .line 874
    const-string v7, "GridItemThumbnail"

    const-string v8, "[GridItemThumbnail][setBackground]The input resId is 0!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :goto_0
    return-void

    .line 878
    :cond_0
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v5, v7, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 879
    .local v5, itemW:I
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v4, v7, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 880
    .local v4, itemH:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBackgroundResId:I

    if-ne v7, p1, :cond_1

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBackgroundItemW:I

    if-ne v7, v5, :cond_1

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBackgroundItemH:I

    if-eq v7, v4, :cond_4

    .line 882
    :cond_1
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 883
    .local v2, d:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 884
    .local v3, isNinePatchDrawable:Z
    instance-of v7, v2, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v7, :cond_3

    .line 885
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_2

    .line 886
    const-string v7, "GridItemThumbnail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[GridItemThumbnail][setBackground]itemW "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " itemH "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 889
    :cond_2
    const/4 v3, 0x1

    .line 892
    :cond_3
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v7, :cond_6

    .line 894
    if-eqz v3, :cond_5

    .line 895
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-static {v7, p1, v5, v4}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    .line 920
    :goto_1
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBackgroundResId:I

    .line 921
    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBackgroundItemW:I

    .line 922
    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBackgroundItemH:I

    .line 925
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #isNinePatchDrawable:Z
    :cond_4
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v7, v9}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v7, v9, v8}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    goto :goto_0

    .line 897
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    .restart local v3       #isNinePatchDrawable:Z
    :cond_5
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-static {v7, p1}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    goto :goto_1

    .line 901
    :cond_6
    const/4 v0, 0x0

    .line 903
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_7

    .line 904
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 905
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 907
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {v2, v9, v9, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 908
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 916
    .end local v1           #c:Landroid/graphics/Canvas;
    :goto_2
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBgTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v7, v0}, Lcom/htc/sunnyCore/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 917
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 911
    :cond_7
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 912
    .local v6, opt:Landroid/graphics/BitmapFactory$Options;
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 913
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, p1, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2
.end method

.method protected setBottomText(Ljava/lang/Object;)V
    .locals 28
    .parameter "object"

    .prologue
    .line 1038
    const/16 v24, 0x0

    .line 1039
    .local v24, spriteText:Lcom/htc/sunnyCore/Sprite$Layer;
    const/4 v2, 0x0

    .line 1041
    .local v2, spriteArrowDown:Lcom/htc/sunnyCore/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    move/from16 v20, v0

    .line 1042
    .local v20, nItemW:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v0, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    move/from16 v19, v0

    .line 1044
    .local v19, nItemH:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getBottomTextLayer()Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v24

    .line 1045
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->enableLayerArrowDown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1046
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    .line 1048
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitArrowDown:Z

    if-nez v3, :cond_2

    .line 1049
    move/from16 v0, v20

    neg-int v3, v0

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v14, v3, v4

    .line 1050
    .local v14, fImgOriginalX:F
    move/from16 v0, v19

    int-to-float v3, v0

    const/high16 v4, 0x4000

    div-float v15, v3, v4

    .line 1052
    .local v15, fImgOriginalY:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v3

    const-string v4, "NAME_TEXTUREE_ARROW_DOWN"

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v26

    .line 1053
    .local v26, textureDown:Lcom/htc/sunnyCore/Texture;
    move v5, v14

    .line 1054
    .local v5, fGeoPosX:F
    invoke-virtual/range {v26 .. v26}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f07001f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float v6, v3, v4

    .line 1056
    .local v6, fGeoPosY:F
    const/4 v3, 0x0

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_0

    move/from16 v0, v19

    int-to-float v3, v0

    cmpl-float v3, v6, v3

    if-lez v3, :cond_1

    .line 1057
    :cond_0
    const-string v3, "GridItemThumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(fGeoPosX, fGeoPosY) = ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    move v6, v15

    .line 1061
    :cond_1
    invoke-virtual/range {v26 .. v26}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {v26 .. v26}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 1062
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v2, v3, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 1064
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitArrowDown:Z

    .line 1069
    .end local v5           #fGeoPosX:F
    .end local v6           #fGeoPosY:F
    .end local v14           #fImgOriginalX:F
    .end local v15           #fImgOriginalY:F
    .end local v26           #textureDown:Lcom/htc/sunnyCore/Texture;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBottomView:Landroid/view/View;

    .line 1070
    .local v13, bottomView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBottomTexture:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v25, v0

    .line 1073
    .local v25, texture:Lcom/htc/sunnyCore/Texture;
    move/from16 v21, v20

    .line 1075
    .local v21, nNewItemW:I
    if-eqz p1, :cond_9

    .line 1077
    if-nez v13, :cond_3

    .line 1079
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 1080
    .local v16, inflater:Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getBottomTextLayout()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 1081
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    move/from16 v0, v21

    invoke-direct {v3, v0, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1082
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBottomView:Landroid/view/View;

    .line 1084
    .end local v16           #inflater:Landroid/view/LayoutInflater;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v13, v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->updateBottomViewContent(Landroid/view/View;Ljava/lang/Object;)V

    .line 1087
    const/high16 v3, 0x4000

    move/from16 v0, v21

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 1088
    .local v18, measureW:I
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 1089
    .local v17, measureH:I
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1090
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    move/from16 v0, v21

    invoke-virtual {v13, v3, v4, v0, v7}, Landroid/view/View;->layout(IIII)V

    .line 1092
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v27

    .line 1094
    .local v27, viewH:I
    move/from16 v0, v20

    neg-int v3, v0

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v10, v3, v4

    .line 1095
    .local v10, mImgOriginalX:F
    div-int/lit8 v3, v27, 0x2

    sub-int v3, v19, v3

    int-to-float v11, v3

    .line 1097
    .local v11, mImgOriginalY:F
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1099
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v11, v3

    .line 1107
    :goto_0
    const/4 v3, 0x0

    cmpg-float v3, v11, v3

    if-ltz v3, :cond_4

    move/from16 v0, v19

    int-to-float v3, v0

    cmpl-float v3, v11, v3

    if-lez v3, :cond_5

    .line 1109
    :cond_4
    const-string v3, "GridItemThumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setBottomText] mImgOriginalY = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", nItemH = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", viewH/2 = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v7, v27, 0x2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", M1="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07001f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    div-int/lit8 v3, v27, 0x2

    sub-int v3, v19, v3

    int-to-float v11, v3

    .line 1113
    :cond_5
    move/from16 v0, v21

    int-to-float v8, v0

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v9, v3

    const/4 v12, 0x0

    move-object/from16 v7, v24

    invoke-virtual/range {v7 .. v12}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 1114
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 1116
    if-nez v25, :cond_8

    .line 1118
    invoke-static {v13}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunnyCore/Texture;

    move-result-object v25

    .line 1120
    const/4 v3, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 1122
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBottomTexture:Lcom/htc/sunnyCore/Texture;

    .line 1129
    :goto_1
    invoke-virtual/range {v25 .. v25}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v23

    .line 1130
    .local v23, nTextTextureW:I
    invoke-virtual/range {v25 .. v25}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v22

    .line 1133
    .local v22, nTextTextureH:I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v21

    int-to-float v7, v0

    move/from16 v0, v23

    int-to-float v8, v0

    div-float/2addr v7, v8

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    move/from16 v0, v22

    int-to-float v9, v0

    div-float/2addr v8, v9

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4, v7, v8}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureCoordinatesBy2P(FFFF)V

    .line 1134
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 1135
    if-eqz v2, :cond_6

    .line 1136
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 1144
    .end local v10           #mImgOriginalX:F
    .end local v11           #mImgOriginalY:F
    .end local v17           #measureH:I
    .end local v18           #measureW:I
    .end local v22           #nTextTextureH:I
    .end local v23           #nTextTextureW:I
    .end local v27           #viewH:I
    :cond_6
    :goto_2
    return-void

    .line 1104
    .restart local v10       #mImgOriginalX:F
    .restart local v11       #mImgOriginalY:F
    .restart local v17       #measureH:I
    .restart local v18       #measureW:I
    .restart local v27       #viewH:I
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getBottomLayerOriginPosY(F)F

    move-result v11

    goto/16 :goto_0

    .line 1126
    :cond_8
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lcom/htc/sunnyCore/Texture;->setView(Landroid/view/View;)V

    goto :goto_1

    .line 1140
    .end local v10           #mImgOriginalX:F
    .end local v11           #mImgOriginalY:F
    .end local v17           #measureH:I
    .end local v18           #measureW:I
    .end local v27           #viewH:I
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 1141
    if-eqz v2, :cond_6

    .line 1142
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_2
.end method

.method protected setCenterText(Ljava/lang/String;)V
    .locals 18
    .parameter "text"

    .prologue
    .line 954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    .line 955
    .local v1, layer:Lcom/htc/sunnyCore/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mCenterTextView:Landroid/widget/TextView;

    .line 956
    .local v14, tView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mCenterTextTexture:Lcom/htc/sunnyCore/Texture;

    .line 958
    .local v15, texture:Lcom/htc/sunnyCore/Texture;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v11, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 959
    .local v11, nItemW:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v10, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 961
    .local v10, nItemH:I
    if-eqz p1, :cond_3

    .line 963
    if-nez v14, :cond_0

    .line 965
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 966
    .local v7, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 967
    const v2, 0x7f03000f

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .end local v14           #tView:Landroid/widget/TextView;
    check-cast v14, Landroid/widget/TextView;

    .line 970
    .restart local v14       #tView:Landroid/widget/TextView;
    :goto_0
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v11, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 971
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mCenterTextView:Landroid/widget/TextView;

    .line 973
    .end local v7           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 975
    const/high16 v2, 0x4000

    invoke-static {v11, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 976
    .local v9, measureW:I
    const/high16 v2, -0x8000

    invoke-static {v10, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 977
    .local v8, measureH:I
    invoke-virtual {v14, v9, v8}, Landroid/widget/TextView;->measure(II)V

    .line 978
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {v14, v2, v3, v11, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 980
    neg-int v2, v11

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float v4, v2, v3

    .line 981
    .local v4, mImgOriginalX:F
    int-to-float v2, v10

    const/high16 v3, 0x4000

    div-float v5, v2, v3

    .line 982
    .local v5, mImgOriginalY:F
    int-to-float v2, v11

    invoke-virtual {v14}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 983
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 985
    if-nez v15, :cond_2

    .line 987
    invoke-static {v14}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunnyCore/Texture;

    move-result-object v15

    .line 989
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v15}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 991
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mCenterTextTexture:Lcom/htc/sunnyCore/Texture;

    .line 998
    :goto_1
    invoke-virtual {v15}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v13

    .line 999
    .local v13, nTextTextureW:I
    invoke-virtual {v15}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v12

    .line 1001
    .local v12, nTextTextureH:I
    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v6, v11

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v6, v6, v16

    invoke-virtual {v14}, Landroid/widget/TextView;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    int-to-float v0, v12

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v1, v2, v3, v6, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureCoordinatesBy2P(FFFF)V

    .line 1008
    .end local v4           #mImgOriginalX:F
    .end local v5           #mImgOriginalY:F
    .end local v8           #measureH:I
    .end local v9           #measureW:I
    .end local v12           #nTextTextureH:I
    .end local v13           #nTextTextureW:I
    :goto_2
    return-void

    .line 969
    .restart local v7       #inflater:Landroid/view/LayoutInflater;
    :cond_1
    const v2, 0x7f03000e

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .end local v14           #tView:Landroid/widget/TextView;
    check-cast v14, Landroid/widget/TextView;

    .restart local v14       #tView:Landroid/widget/TextView;
    goto/16 :goto_0

    .line 995
    .end local v7           #inflater:Landroid/view/LayoutInflater;
    .restart local v4       #mImgOriginalX:F
    .restart local v5       #mImgOriginalY:F
    .restart local v8       #measureH:I
    .restart local v9       #measureW:I
    :cond_2
    invoke-virtual {v15, v14}, Lcom/htc/sunnyCore/Texture;->setView(Landroid/view/View;)V

    goto :goto_1

    .line 1006
    .end local v4           #mImgOriginalX:F
    .end local v5           #mImgOriginalY:F
    .end local v8           #measureH:I
    .end local v9           #measureW:I
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_2
.end method

.method public setContentGetter(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;)V
    .locals 0
    .parameter "contentGetter"

    .prologue
    .line 947
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    .line 948
    return-void
.end method

.method public setCorrupted(Z)V
    .locals 14
    .parameter "isCorrupted"

    .prologue
    .line 583
    if-eqz p1, :cond_2

    .line 585
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 586
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 587
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 588
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 589
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 590
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 591
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 592
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 594
    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitLightBkg:Z

    if-nez v1, :cond_0

    .line 595
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v12, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 596
    .local v12, nItemW:I
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v11, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 598
    .local v11, nItemH:I
    neg-int v1, v12

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float v3, v1, v2

    .line 599
    .local v3, fImgOriginalX:F
    int-to-float v1, v11

    const/high16 v2, 0x4000

    div-float v4, v1, v2

    .line 601
    .local v4, fImgOriginalY:F
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 602
    .local v0, spriteLayerBackground:Lcom/htc/sunnyCore/Sprite$Layer;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v2

    const-string v6, "NAME_TEXTURE_BACKGROUND_LIGHT"

    invoke-virtual {v2, v6}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 603
    int-to-float v1, v12

    int-to-float v2, v11

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 604
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitLightBkg:Z

    .line 607
    .end local v0           #spriteLayerBackground:Lcom/htc/sunnyCore/Sprite$Layer;
    .end local v3           #fImgOriginalX:F
    .end local v4           #fImgOriginalY:F
    .end local v11           #nItemH:I
    .end local v12           #nItemW:I
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 614
    :goto_0
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 616
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v5

    .line 618
    .local v5, spriteLayerCorrupt:Lcom/htc/sunnyCore/Sprite$Layer;
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitVideoCorrupted:Z

    if-nez v1, :cond_1

    .line 619
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float v3, v1, v2

    .line 620
    .restart local v3       #fImgOriginalX:F
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float v4, v1, v2

    .line 622
    .restart local v4       #fImgOriginalY:F
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v1

    const-string v2, "NAME_TEXTUREE_VIDEO_CORRUPT"

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v13

    .line 623
    .local v13, textureCorrupt:Lcom/htc/sunnyCore/Texture;
    invoke-virtual {v13}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {v13}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v1

    int-to-float v7, v1

    const/4 v10, 0x0

    move v8, v3

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 624
    const/4 v1, 0x0

    invoke-virtual {v5, v1, v13}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 626
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitVideoCorrupted:Z

    .line 629
    .end local v3           #fImgOriginalX:F
    .end local v4           #fImgOriginalY:F
    .end local v13           #textureCorrupt:Lcom/htc/sunnyCore/Texture;
    :cond_1
    invoke-virtual {v5, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 649
    :goto_1
    return-void

    .line 611
    .end local v5           #spriteLayerCorrupt:Lcom/htc/sunnyCore/Sprite$Layer;
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    .line 633
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v5

    .line 635
    .restart local v5       #spriteLayerCorrupt:Lcom/htc/sunnyCore/Sprite$Layer;
    const/4 v1, 0x1

    if-ne v1, p1, :cond_4

    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitImageCorrupted:Z

    if-nez v1, :cond_4

    .line 636
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float v3, v1, v2

    .line 637
    .restart local v3       #fImgOriginalX:F
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float v4, v1, v2

    .line 639
    .restart local v4       #fImgOriginalY:F
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v1

    const-string v2, "NAME_TEXTUREE_IMAGE_CORRUPT"

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v13

    .line 640
    .restart local v13       #textureCorrupt:Lcom/htc/sunnyCore/Texture;
    invoke-virtual {v13}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {v13}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v1

    int-to-float v7, v1

    const/4 v10, 0x0

    move v8, v3

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 641
    const/4 v1, 0x0

    invoke-virtual {v5, v1, v13}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 643
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitImageCorrupted:Z

    .line 646
    .end local v3           #fImgOriginalX:F
    .end local v4           #fImgOriginalY:F
    .end local v13           #textureCorrupt:Lcom/htc/sunnyCore/Texture;
    :cond_4
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_1
.end method

.method public setDrm(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 18
    .parameter "mediaData"

    .prologue
    .line 684
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "video/x-wmv-drm"

    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    const/4 v14, 0x1

    .line 685
    .local v14, isDrm:Z
    :goto_0
    if-eqz v14, :cond_8

    .line 687
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    .line 688
    const/4 v15, 0x0

    .line 689
    .local v15, isStateSuccess:Z
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    if-eqz v2, :cond_1

    .line 691
    check-cast p1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->isDrmStateSuccess()Z

    move-result v15

    .line 694
    :cond_1
    if-eqz v15, :cond_6

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    .line 698
    .local v1, spriteLayerDRM:Lcom/htc/sunnyCore/Sprite$Layer;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitDrm:Z

    if-nez v2, :cond_3

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v2

    const-string v3, "NAME_TEXTUREE_DRM"

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v17

    .line 701
    .local v17, textureDRM:Lcom/htc/sunnyCore/Texture;
    const/4 v4, 0x0

    .line 702
    .local v4, fGeoPosX:F
    const/4 v5, 0x0

    .line 704
    .local v5, fGeoPosY:F
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 706
    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v13

    .line 707
    .local v13, DRMTextureWidth:I
    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v12

    .line 708
    .local v12, DRMTextureHeight:I
    int-to-float v2, v13

    neg-float v2, v2

    const/high16 v3, 0x4000

    div-float v4, v2, v3

    .line 709
    int-to-float v2, v12

    const/high16 v3, 0x4000

    div-float v5, v2, v3

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v4, v2

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v5, v2

    .line 721
    .end local v12           #DRMTextureHeight:I
    .end local v13           #DRMTextureWidth:I
    :cond_2
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 722
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 723
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 724
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitDrm:Z

    .line 727
    .end local v4           #fGeoPosX:F
    .end local v5           #fGeoPosY:F
    .end local v17           #textureDRM:Lcom/htc/sunnyCore/Texture;
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 759
    .end local v1           #spriteLayerDRM:Lcom/htc/sunnyCore/Sprite$Layer;
    .end local v15           #isStateSuccess:Z
    :goto_2
    return-void

    .line 684
    .end local v14           #isDrm:Z
    .restart local p1
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 718
    .end local p1
    .restart local v1       #spriteLayerDRM:Lcom/htc/sunnyCore/Sprite$Layer;
    .restart local v4       #fGeoPosX:F
    .restart local v5       #fGeoPosY:F
    .restart local v14       #isDrm:Z
    .restart local v15       #isStateSuccess:Z
    .restart local v17       #textureDRM:Lcom/htc/sunnyCore/Texture;
    :cond_5
    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    neg-float v2, v2

    const/high16 v3, 0x4000

    div-float v4, v2, v3

    .line 719
    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float v5, v2, v3

    goto :goto_1

    .line 732
    .end local v1           #spriteLayerDRM:Lcom/htc/sunnyCore/Sprite$Layer;
    .end local v4           #fGeoPosX:F
    .end local v5           #fGeoPosY:F
    .end local v17           #textureDRM:Lcom/htc/sunnyCore/Texture;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v6

    .line 740
    .local v6, spriteLayerCorrupt:Lcom/htc/sunnyCore/Sprite$Layer;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitDrmCorrupted:Z

    if-nez v2, :cond_7

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float v9, v2, v3

    .line 742
    .local v9, fImgOriginalX:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float v10, v2, v3

    .line 744
    .local v10, fImgOriginalY:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v2

    const-string v3, "NAME_TEXTUREE_DRM_CORRUPT"

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v16

    .line 745
    .local v16, textureCorrupt:Lcom/htc/sunnyCore/Texture;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v2

    int-to-float v7, v2

    invoke-virtual/range {v16 .. v16}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v2

    int-to-float v8, v2

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 746
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v6, v2, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 748
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitDrmCorrupted:Z

    .line 750
    .end local v9           #fImgOriginalX:F
    .end local v10           #fImgOriginalY:F
    .end local v16           #textureCorrupt:Lcom/htc/sunnyCore/Texture;
    :cond_7
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_2

    .line 755
    .end local v6           #spriteLayerCorrupt:Lcom/htc/sunnyCore/Sprite$Layer;
    .end local v15           #isStateSuccess:Z
    .restart local p1
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    and-int/lit8 v2, v2, -0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_2
.end method

.method public setInked(Z)V
    .locals 12
    .parameter "isInked"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v5, 0x4000

    .line 762
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 764
    .local v0, spriteLayerInk:Lcom/htc/sunnyCore/Sprite$Layer;
    if-ne v11, p1, :cond_1

    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitInkedLayer:Z

    if-nez v1, :cond_1

    .line 765
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v9, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 767
    .local v9, nItemH:I
    const/4 v3, 0x0

    .line 768
    .local v3, fGeoPosX:F
    const/4 v4, 0x0

    .line 770
    .local v4, fGeoPosY:F
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v1

    const-string v2, "NAME_TEXTUREE_INKED"

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v7

    .line 771
    .local v7, inkedTexture:Lcom/htc/sunnyCore/Texture;
    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v8

    .line 772
    .local v8, inkedWidth:I
    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v6

    .line 773
    .local v6, inkedHeight:I
    int-to-float v1, v8

    neg-float v1, v1

    div-float v3, v1, v5

    .line 774
    int-to-float v1, v9

    int-to-float v2, v6

    div-float/2addr v2, v5

    sub-float v4, v1, v2

    .line 775
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 777
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v3, v1

    .line 778
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v4, v1

    .line 780
    :cond_0
    int-to-float v1, v8

    int-to-float v2, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 781
    invoke-virtual {v0, v10, v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 782
    invoke-virtual {v0, v10}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 784
    iput-boolean v11, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitInkedLayer:Z

    .line 787
    .end local v3           #fGeoPosX:F
    .end local v4           #fGeoPosY:F
    .end local v6           #inkedHeight:I
    .end local v7           #inkedTexture:Lcom/htc/sunnyCore/Texture;
    .end local v8           #inkedWidth:I
    .end local v9           #nItemH:I
    :cond_1
    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 788
    return-void
.end method

.method public setIs3D(Z)V
    .locals 12
    .parameter "is3D"

    .prologue
    const/4 v11, 0x1

    const/high16 v5, 0x4000

    .line 791
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 793
    .local v0, spriteLayer3D:Lcom/htc/sunnyCore/Sprite$Layer;
    if-ne v11, p1, :cond_1

    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInit3DLayer:Z

    if-nez v1, :cond_1

    .line 794
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v9, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 796
    .local v9, nItemW:I
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v1

    const-string v2, "NAME_TEXTUREE_3D"

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v10

    .line 798
    .local v10, texture3D:Lcom/htc/sunnyCore/Texture;
    const/4 v3, 0x0

    .line 799
    .local v3, fGeoPosX:F
    const/4 v4, 0x0

    .line 801
    .local v4, fGeoPosY:F
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 803
    invoke-virtual {v10}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v8

    .line 804
    .local v8, ThreeDTextureWidth:I
    invoke-virtual {v10}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v7

    .line 805
    .local v7, ThreeDTextureHeight:I
    neg-int v1, v9

    int-to-float v1, v1

    int-to-float v2, v8

    div-float/2addr v2, v5

    add-float v3, v1, v2

    .line 806
    int-to-float v1, v7

    div-float v4, v1, v5

    .line 807
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 809
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 810
    .local v6, M2:F
    add-float/2addr v3, v6

    .line 811
    add-float/2addr v4, v6

    .line 819
    .end local v6           #M2:F
    .end local v7           #ThreeDTextureHeight:I
    .end local v8           #ThreeDTextureWidth:I
    :cond_0
    :goto_0
    invoke-virtual {v10}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v10}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 820
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v10}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 822
    iput-boolean v11, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInit3DLayer:Z

    .line 825
    .end local v3           #fGeoPosX:F
    .end local v4           #fGeoPosY:F
    .end local v9           #nItemW:I
    .end local v10           #texture3D:Lcom/htc/sunnyCore/Texture;
    :cond_1
    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 826
    return-void

    .line 816
    .restart local v3       #fGeoPosX:F
    .restart local v4       #fGeoPosY:F
    .restart local v9       #nItemW:I
    .restart local v10       #texture3D:Lcom/htc/sunnyCore/Texture;
    :cond_2
    invoke-virtual {v10}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    int-to-float v2, v9

    sub-float/2addr v1, v2

    sget v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_3D_OFFSET_X:I

    int-to-float v2, v2

    add-float v3, v1, v2

    .line 817
    invoke-virtual {v10}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    sget v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_3D_OFFSET_Y:I

    int-to-float v2, v2

    sub-float v4, v1, v2

    goto :goto_0
.end method

.method public setPicked(ZLcom/htc/sunnyCore/view/animation/SAnimationController;)V
    .locals 8
    .parameter "isSelected"
    .parameter "controller"

    .prologue
    const/16 v7, 0xff

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 527
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v0

    .line 529
    .local v0, sharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    .line 531
    .local v2, useLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    packed-switch v3, :pswitch_data_0

    .line 570
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setAlpha(I)V

    .line 571
    invoke-virtual {v2, v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 534
    :pswitch_0
    const/4 v1, 0x0

    .line 535
    .local v1, temp:Lcom/htc/sunnyCore/Texture;
    if-eqz p1, :cond_1

    .line 537
    const-string v3, "NAME_TEXTUREE_PICKED"

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 543
    :goto_1
    if-eqz v1, :cond_0

    .line 545
    invoke-virtual {v2, v6, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    goto :goto_0

    .line 541
    :cond_1
    const-string v3, "NAME_TEXTUREE_UNPICKED"

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    goto :goto_1

    .line 559
    .end local v1           #temp:Lcom/htc/sunnyCore/Texture;
    :pswitch_1
    if-eqz p1, :cond_2

    .line 561
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    const/16 v4, 0x7f

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setAlpha(I)V

    .line 567
    :goto_2
    invoke-virtual {v2, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    .line 565
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setAlpha(I)V

    goto :goto_2

    .line 531
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPlayable(Z)V
    .locals 11
    .parameter "isPlayable"

    .prologue
    const/4 v10, 0x1

    const/high16 v5, 0x4000

    .line 652
    if-eqz p1, :cond_1

    .line 654
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    .line 661
    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 663
    .local v0, spriteLayerPlayer:Lcom/htc/sunnyCore/Sprite$Layer;
    if-ne v10, p1, :cond_0

    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitPlayerLayer:Z

    if-nez v1, :cond_0

    .line 665
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v9

    .line 666
    .local v9, sharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    const-string v1, "NAME_TEXTUREE_PLAYABLE"

    invoke-virtual {v9, v1}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    .line 668
    .local v8, playTexture:Lcom/htc/sunnyCore/Texture;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v7, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 669
    .local v7, nItemW:I
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v6, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 671
    .local v6, nItemH:I
    neg-int v1, v7

    int-to-float v1, v1

    div-float v3, v1, v5

    .line 672
    .local v3, fImgOriginalX:F
    int-to-float v1, v6

    div-float v4, v1, v5

    .line 674
    .local v4, fImgOriginalY:F
    invoke-virtual {v8}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 675
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v8}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 677
    iput-boolean v10, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitPlayerLayer:Z

    .line 680
    .end local v3           #fImgOriginalX:F
    .end local v4           #fImgOriginalY:F
    .end local v6           #nItemH:I
    .end local v7           #nItemW:I
    .end local v8           #playTexture:Lcom/htc/sunnyCore/Texture;
    .end local v9           #sharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 681
    return-void

    .line 658
    .end local v0           #spriteLayerPlayer:Lcom/htc/sunnyCore/Sprite$Layer;
    :cond_1
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 10
    .parameter "isPressed"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v5, 0x4000

    .line 343
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 345
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemClickAnimation:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;

    if-nez v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 348
    .local v0, spriteLayerFocused:Lcom/htc/sunnyCore/Sprite$Layer;
    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite$Layer;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 350
    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitPressLayer:Z

    if-nez v1, :cond_0

    if-ne v9, p1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v7, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 352
    .local v7, nItemW:I
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v6, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 354
    .local v6, nItemH:I
    neg-int v1, v7

    int-to-float v1, v1

    div-float v3, v1, v5

    .line 355
    .local v3, fImgOriginalX:F
    int-to-float v1, v6

    div-float v4, v1, v5

    .line 357
    .local v4, fImgOriginalY:F
    int-to-float v1, v7

    int-to-float v2, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 358
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v1

    const-string v2, "NAME_TEXTUREE_SELECTED"

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 359
    invoke-virtual {v0, v8}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 361
    iput-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mInitPressLayer:Z

    .line 364
    .end local v3           #fImgOriginalX:F
    .end local v4           #fImgOriginalY:F
    .end local v6           #nItemH:I
    .end local v7           #nItemW:I
    :cond_0
    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 367
    .end local v0           #spriteLayerFocused:Lcom/htc/sunnyCore/Sprite$Layer;
    :cond_1
    return-void
.end method

.method public setStyle(I)V
    .locals 17
    .parameter "style"

    .prologue
    .line 837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_0

    .line 839
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    move/from16 v0, p1

    iput v0, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v15

    .line 842
    .local v15, sharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v2, :cond_1

    .line 866
    .end local v15           #sharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    :cond_0
    :goto_0
    return-void

    .line 844
    .restart local v15       #sharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v14, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 845
    .local v14, nItemW:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v13, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 847
    .local v13, nItemH:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    .line 848
    .local v1, pickerLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    if-ne v2, v3, :cond_2

    .line 850
    const-string v2, "NAME_TEXTUREE_UNPICKED"

    invoke-virtual {v15, v2}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v16

    .line 851
    .local v16, unpickedTexture:Lcom/htc/sunnyCore/Texture;
    int-to-float v2, v14

    neg-float v2, v2

    invoke-virtual/range {v16 .. v16}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x4000

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    sget v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_INIDICATOR_MARGIN_X:I

    int-to-float v3, v3

    add-float v4, v2, v3

    .line 852
    .local v4, pickerX:F
    int-to-float v2, v13

    invoke-virtual/range {v16 .. v16}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x4000

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    sget v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_INIDICATOR_MARGIN_Y:I

    int-to-float v3, v3

    sub-float v5, v2, v3

    .line 854
    .local v5, pickerY:F
    invoke-virtual/range {v16 .. v16}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v16 .. v16}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 855
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    goto :goto_0

    .line 857
    .end local v4           #pickerX:F
    .end local v5           #pickerY:F
    .end local v16           #unpickedTexture:Lcom/htc/sunnyCore/Texture;
    :cond_2
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    if-ne v2, v3, :cond_0

    .line 859
    const-string v2, "NAME_TEXTUREE_DELETE"

    invoke-virtual {v15, v2}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v12

    .line 860
    .local v12, deleteTexture:Lcom/htc/sunnyCore/Texture;
    int-to-float v2, v14

    neg-float v2, v2

    const/high16 v3, 0x4000

    div-float v9, v2, v3

    .line 861
    .local v9, deleteX:F
    int-to-float v2, v13

    const/high16 v3, 0x4000

    div-float v10, v2, v3

    .line 862
    .local v10, deleteY:F
    invoke-virtual {v12}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v2

    int-to-float v7, v2

    invoke-virtual {v12}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v2

    int-to-float v8, v2

    const/4 v11, 0x0

    move-object v6, v1

    invoke-virtual/range {v6 .. v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 863
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v12}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    goto/16 :goto_0
.end method

.method public setThumbTexture(Lcom/htc/sunnyCore/Texture;)V
    .locals 4
    .parameter "texture"

    .prologue
    const/4 v3, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 930
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 932
    if-eqz p1, :cond_0

    .line 934
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 936
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 937
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 944
    :goto_0
    return-void

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 942
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method public unbindMediaData()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 479
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mPrivateFlag:I

    .line 480
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v0, :cond_0

    .line 482
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setThumbTexture(Lcom/htc/sunnyCore/Texture;)V

    .line 483
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureRotate(I)V

    .line 484
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 485
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 486
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 487
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 488
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 489
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 490
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 491
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 492
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 493
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 494
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 495
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 496
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 497
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 504
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v1

    const-string v2, "NAME_TEXTURE_BACKGROUND_DARK"

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 506
    :cond_0
    return-void
.end method

.method protected updateBottomViewContent(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 1028
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mBottomView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    check-cast p2, Ljava/lang/CharSequence;

    .end local p2
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1030
    :cond_0
    return-void
.end method

.method public workaround_SetBestIndicator(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 1154
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1155
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->initBurstRelativeLayer()V

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 1158
    return-void
.end method

.method public workaround_SetBurstIndicator(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 1147
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1148
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->initBurstRelativeLayer()V

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 1151
    return-void
.end method
