.class public Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
.super Lcom/htc/sunnyCore/view/SView;
.source "FilmstripViewChildItem.java"

# interfaces
.implements Lcom/htc/sunnyCore/ViewItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunnyCore/view/SView;",
        "Lcom/htc/sunnyCore/ViewItem",
        "<",
        "Lcom/htc/opensense2/album/sunny/IMediaDataGallery;",
        ">;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final FIXED_CHILD_HEIGHT:I = 0x0

.field private static final FIXED_SHADOW_HEIGHT:I = 0x4c

.field private static LOG_TAG:Ljava/lang/String; = null

.field protected static final SPRITE_LAYER_COUNT:I = 0x5

.field protected static final SPRITE_LAYER_DRM:I = 0x4

.field protected static final SPRITE_LAYER_DRM_CORRUPT:I = 0x2

.field protected static final SPRITE_LAYER_IMAGE_CORRUPT:I = 0x0

.field protected static final SPRITE_LAYER_MAIN_BACKGROUND:I = 0x0

.field protected static final SPRITE_LAYER_MAIN_COUNT:I = 0x2

.field protected static final SPRITE_LAYER_MAIN_IMAGE:I = 0x1

.field protected static final SPRITE_LAYER_PLAYABLE:I = 0x3

.field protected static final SPRITE_LAYER_VIDEO_CORRUPT:I = 0x1

.field private static sTextureManager:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isDrm:Z

.field private isPlayable:Z

.field protected mCenterXOffset:I

.field protected mCenterYOffset:I

.field private mEnableShadow:Z

.field protected mFrame:Landroid/graphics/Rect;

.field protected mItemHeight:I

.field private mItemRoot:Lcom/htc/sunnyCore/SceneNode;

.field protected mItemWidth:I

.field protected mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

.field protected mOriginX:I

.field protected mOriginY:I

.field private mScale:F

.field private mShadowRatio:F

.field private mShowShadow:Z

.field private mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

.field private mSpriteMain:Lcom/htc/sunnyCore/Sprite;

.field protected mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

.field private mTextureHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    .line 34
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->FILMSTRIPVIEW_ITEM_HEIGHT:I

    sput v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V
    .locals 2
    .parameter "context"
    .parameter "sContext"

    .prologue
    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/view/SView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 66
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    .line 67
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isPlayable:Z

    .line 73
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mEnableShadow:Z

    .line 75
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mScale:F

    .line 76
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mShadowRatio:F

    .line 95
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->WIDTH_VIDEO:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    .line 96
    sget v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    .line 97
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterXOffset:I

    .line 98
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterYOffset:I

    .line 99
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    .line 100
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginY:I

    .line 101
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mShowShadow:Z

    .line 102
    return-void
.end method


# virtual methods
.method public attachToScene(Lcom/htc/sunnyCore/SceneNode;)Z
    .locals 1
    .parameter "sceneNode"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {p1, v0}, Lcom/htc/sunnyCore/SceneNode;->addSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 377
    const/4 v0, 0x1

    return v0
.end method

.method public attachToSceneNode(Lcom/htc/sunnyCore/SceneNode;)V
    .locals 0
    .parameter "parentSceneNode"

    .prologue
    .line 809
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->attachToScene(Lcom/htc/sunnyCore/SceneNode;)Z

    .line 810
    return-void
.end method

.method public bindData(Lcom/htc/sunnyCore/IMediaData;)V
    .locals 12
    .parameter "data"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 387
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eq v6, p1, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->unbindData()V

    .line 390
    check-cast p1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .end local p1
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 393
    :cond_0
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-nez v6, :cond_1

    .line 520
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    .line 398
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isPlayable()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_2
    move v6, v8

    :goto_1
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isPlayable:Z

    .line 400
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v2

    .line 401
    .local v2, rotateDegrees:I
    rem-int/lit16 v2, v2, 0x168

    .line 402
    if-gez v2, :cond_3

    .line 404
    add-int/lit16 v2, v2, 0x168

    .line 407
    :cond_3
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    if-eqz v6, :cond_8

    .line 409
    sget v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    .line 410
    sget v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    .line 495
    :goto_2
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    if-ne v6, v8, :cond_4

    .line 497
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    mul-int/lit8 v6, v6, 0x4

    div-int/lit8 v6, v6, 0x3

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    .line 499
    :cond_4
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_5

    .line 501
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    .line 504
    :cond_5
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setDrm(Z)V

    .line 505
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isPlayable:Z

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setPlayable(Z)V

    .line 506
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setCorrupted(Z)V

    .line 507
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mTextureHeight:I

    .line 508
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mTextureHeight:I

    int-to-float v10, v10

    const/high16 v11, 0x3f80

    invoke-virtual {v6, v9, v10, v11}, Lcom/htc/sunnyCore/Sprite;->setScale(FFF)V

    .line 509
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v6, v8}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureRotate(I)V

    .line 513
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mEnableShadow:Z

    if-eqz v6, :cond_6

    .line 514
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    add-int/lit8 v6, v6, 0x4c

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    .line 516
    :cond_6
    iput-boolean v7, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mShowShadow:Z

    .line 518
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterXOffset:I

    .line 519
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterYOffset:I

    goto/16 :goto_0

    .end local v2           #rotateDegrees:I
    :cond_7
    move v6, v7

    .line 398
    goto :goto_1

    .line 412
    .restart local v2       #rotateDegrees:I
    :cond_8
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 414
    :cond_9
    sget v6, Lcom/htc/album/AlbumCommon/LayoutConstants;->WIDTH_VIDEO:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    .line 415
    sget v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    goto :goto_2

    .line 453
    :cond_a
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->alreadyHasDisplayImageDimension()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 455
    const/4 v5, 0x0

    .line 456
    .local v5, sourceImageWidth:I
    const/4 v4, 0x0

    .line 457
    .local v4, sourceImageHeight:I
    const/16 v6, 0x5a

    if-eq v2, v6, :cond_b

    const/16 v6, 0x10e

    if-ne v2, v6, :cond_e

    .line 459
    :cond_b
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageHeight()I

    move-result v5

    .line 460
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageWidth()I

    move-result v4

    .line 470
    :goto_3
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, mimeType:Ljava/lang/String;
    const/4 v0, 0x1

    .line 472
    .local v0, isJPSFullSideBySide:Z
    if-eqz v1, :cond_c

    const-string v6, "image/jps"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 474
    if-eqz v0, :cond_c

    .line 476
    div-int/lit8 v5, v5, 0x2

    .line 480
    :cond_c
    sget v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    invoke-static {v5, v4, v6}, Lcom/htc/opensense2/album/util/ImageUtils;->countNewSize(III)[I

    move-result-object v3

    .line 482
    .local v3, size:[I
    aget v6, v3, v7

    sget v9, Lcom/htc/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    if-le v6, v9, :cond_d

    .line 483
    sget v6, Lcom/htc/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    aput v6, v3, v7

    .line 485
    :cond_d
    aget v6, v3, v7

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    .line 486
    sget v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    goto/16 :goto_2

    .line 464
    .end local v0           #isJPSFullSideBySide:Z
    .end local v1           #mimeType:Ljava/lang/String;
    .end local v3           #size:[I
    :cond_e
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageWidth()I

    move-result v5

    .line 465
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageHeight()I

    move-result v4

    goto :goto_3

    .line 490
    .end local v4           #sourceImageHeight:I
    .end local v5           #sourceImageWidth:I
    :cond_f
    sget v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    .line 491
    sget v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    goto/16 :goto_2
.end method

.method public bindMediaData(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 0
    .parameter "dataIndex"
    .parameter "mediaData"

    .prologue
    .line 813
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->bindData(Lcom/htc/sunnyCore/IMediaData;)V

    .line 814
    return-void
.end method

.method public bridge synthetic bindMediaData(ILcom/htc/sunnyCore/IMediaData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    check-cast p2, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->bindMediaData(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    return-void
.end method

.method public create()Lcom/htc/sunnyCore/ViewItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/sunnyCore/ViewItem",
            "<",
            "Lcom/htc/opensense2/album/sunny/IMediaDataGallery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 824
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 825
    .local v0, item:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    return-object v0
.end method

.method public create(Z)Lcom/htc/sunnyCore/ViewItem;
    .locals 1
    .parameter "isChild"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/htc/sunnyCore/ViewItem",
            "<",
            "Lcom/htc/opensense2/album/sunny/IMediaDataGallery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 884
    const/4 v0, 0x0

    return-object v0
.end method

.method public create(I)V
    .locals 12
    .parameter "env"

    .prologue
    .line 106
    invoke-static {}, Lcom/htc/sunnyCore/SceneNode;->obtain()Lcom/htc/sunnyCore/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunnyCore/SceneNode;

    .line 108
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    .line 109
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    if-nez v0, :cond_0

    .line 110
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v1, "create mSpriteMain NG"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    .line 154
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 115
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 120
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    .line 125
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;

    .line 126
    .local v10, sharedTexture:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v0

    if-eqz v0, :cond_2

    if-nez v10, :cond_2

    .line 127
    :cond_1
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v1, "create - SunnyContext or shared texture is empty, unable to set share resources to sprite"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunnyCore/SceneNode;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/SceneNode;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 152
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunnyCore/SceneNode;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/SceneNode;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v9

    .line 134
    .local v9, playableLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 136
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v8

    .line 137
    .local v8, drmLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 139
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v6

    .line 140
    .local v6, corruptLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 142
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v7

    .line 143
    .local v7, drmCorruptLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 145
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v11

    .line 146
    .local v11, videoCorruptLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 148
    iget v0, v10, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->referenceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v10, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->referenceCount:I

    goto :goto_1
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 158
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunnyCore/SceneNode;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/SceneNode;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 159
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 164
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunnyCore/SceneNode;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/SceneNode;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 165
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 167
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;

    .line 168
    .local v0, sharedTexture:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 169
    :cond_0
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "SunnyContext or shared texture is empty"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_1
    iget v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->referenceCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->referenceCount:I

    goto :goto_0
.end method

.method public detachFromScene(Lcom/htc/sunnyCore/SceneNode;)V
    .locals 1
    .parameter "sceneNode"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {p1, v0}, Lcom/htc/sunnyCore/SceneNode;->removeSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 383
    return-void
.end method

.method public enableShadow(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/high16 v2, 0x4218

    const/4 v1, 0x0

    .line 569
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mEnableShadow:Z

    .line 571
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mEnableShadow:Z

    if-nez v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1, v1, v1}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    .line 582
    :goto_0
    return-void

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1, v2, v1}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    .line 579
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1, v2, v1}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    goto :goto_0
.end method

.method public getBottom()I
    .locals 2

    .prologue
    .line 202
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginY:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterYOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getData()Lcom/htc/sunnyCore/IMediaData;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    return v0
.end method

.method public getIsCorrupted()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v0}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsVideo()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v0}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCenter()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    return v0
.end method

.method public getItemRootNode()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SceneNode;->getNodeId()I

    move-result v0

    return v0
.end method

.method public getItemScale()F
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mScale:F

    return v0
.end method

.method public getLeft()I
    .locals 2

    .prologue
    .line 187
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterXOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getRight()I
    .locals 2

    .prologue
    .line 197
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterXOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getSprite()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v0

    return v0
.end method

.method public getSpriteIndicator()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v0

    .line 251
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTop()I
    .locals 2

    .prologue
    .line 192
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginY:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterYOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    return v0
.end method

.method public getXCenterOffset()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterXOffset:I

    return v0
.end method

.method public getYCenterOffset()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterYOffset:I

    return v0
.end method

.method public loadResources(Landroid/content/Context;ILcom/htc/sunnyCore/SunnyContext;)V
    .locals 4
    .parameter "context"
    .parameter "env"
    .parameter "sunnyContext"

    .prologue
    .line 729
    iput-object p3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    .line 730
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v1

    if-nez v1, :cond_1

    .line 731
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "loadResources NG - SunnyContext is 0"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;

    .line 735
    .local v0, sharedTexture:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    if-nez v0, :cond_2

    .line 736
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadResources - create sharedTexture for sunnyContext = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;

    .end local v0           #sharedTexture:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;-><init>(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V

    .line 743
    .restart local v0       #sharedTexture:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_GalleryBGLoading(Landroid/content/Context;)I

    move-result v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    invoke-static {p1, v1, v2, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->bgLoadingTexture:Lcom/htc/sunnyCore/Texture;

    .line 745
    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->referenceCount:I

    .line 747
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 749
    :cond_2
    if-eqz v0, :cond_0

    .line 750
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadResources, init referenceCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->referenceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public offsetLeftAndRight(I)V
    .locals 4
    .parameter "x"

    .prologue
    .line 227
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    .line 228
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SceneNode;->getNodeId()I

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginY:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetPosition(IFFF)V

    .line 229
    return-void
.end method

.method public releaseResources()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 756
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v1

    if-nez v1, :cond_1

    .line 757
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "releaseResources NG - SunnyContext is 0"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;

    .line 761
    .local v0, sharedTexture:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    if-eqz v0, :cond_0

    .line 762
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseResources, referenceCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->referenceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iget v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->referenceCount:I

    if-nez v1, :cond_0

    .line 766
    iget-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v1, :cond_2

    .line 768
    iget-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 769
    iput-object v4, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunnyCore/Texture;

    .line 771
    :cond_2
    iget-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->playableTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v1, :cond_3

    .line 773
    iget-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->playableTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 774
    iput-object v4, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->playableTexture:Lcom/htc/sunnyCore/Texture;

    .line 776
    :cond_3
    iget-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->corruptTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v1, :cond_4

    .line 778
    iget-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->corruptTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 779
    iput-object v4, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->corruptTexture:Lcom/htc/sunnyCore/Texture;

    .line 781
    :cond_4
    iget-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmCorruptTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v1, :cond_5

    .line 783
    iget-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmCorruptTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 784
    iput-object v4, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmCorruptTexture:Lcom/htc/sunnyCore/Texture;

    .line 786
    :cond_5
    iget-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->videoCorruptTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v1, :cond_6

    .line 788
    iget-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->videoCorruptTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 789
    iput-object v4, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->videoCorruptTexture:Lcom/htc/sunnyCore/Texture;

    .line 791
    :cond_6
    iget-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->bgLoadingTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v1, :cond_7

    .line 793
    iget-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->bgLoadingTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 794
    iput-object v4, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->bgLoadingTexture:Lcom/htc/sunnyCore/Texture;

    .line 799
    :cond_7
    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->referenceCount:I

    .line 801
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 803
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseResources - Shared texture release for mSunnyContetx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setCorrupted(Z)V
    .locals 4
    .parameter "isCorrupted"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 829
    if-eqz p1, :cond_0

    .line 830
    invoke-virtual {p0, v1, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setLayerVisible(IZ)V

    .line 831
    invoke-virtual {p0, v3, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setLayerVisible(IZ)V

    .line 832
    invoke-virtual {p0, v2, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setLayerVisible(IZ)V

    .line 833
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setLayerVisible(IZ)V

    .line 834
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setLayerVisible(IZ)V

    .line 836
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    if-eqz v0, :cond_1

    .line 837
    invoke-virtual {p0, v3, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setLayerVisible(IZ)V

    .line 843
    :goto_0
    return-void

    .line 838
    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isPlayable:Z

    if-eqz v0, :cond_2

    .line 839
    invoke-virtual {p0, v2, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setLayerVisible(IZ)V

    goto :goto_0

    .line 841
    :cond_2
    invoke-virtual {p0, v1, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setLayerVisible(IZ)V

    goto :goto_0
.end method

.method public setDrm(Z)V
    .locals 14
    .parameter "isDrm"

    .prologue
    const/4 v13, 0x4

    const/high16 v3, 0x4000

    .line 846
    if-eqz p1, :cond_0

    .line 848
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v13}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 849
    .local v0, drmLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite$Layer;->getGeometry()[I

    move-result-object v7

    .line 850
    .local v7, geomertry:[I
    const/4 v1, 0x2

    aget v11, v7, v1

    .line 851
    .local v11, originalX:I
    const/4 v1, 0x3

    aget v10, v7, v1

    .line 852
    .local v10, origianlY:I
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;

    .line 853
    .local v12, sharedTexture:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    if-nez v12, :cond_1

    .line 875
    .end local v0           #drmLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    .end local v7           #geomertry:[I
    .end local v10           #origianlY:I
    .end local v11           #originalX:I
    .end local v12           #sharedTexture:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    :cond_0
    :goto_0
    return-void

    .line 855
    .restart local v0       #drmLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    .restart local v7       #geomertry:[I
    .restart local v10       #origianlY:I
    .restart local v11       #originalX:I
    .restart local v12       #sharedTexture:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    :cond_1
    iget-object v1, v12, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v1, :cond_2

    .line 857
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mContext:Landroid/content/Context;

    const v2, 0x7f02001d

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    iput-object v1, v12, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunnyCore/Texture;

    .line 858
    iget-object v1, v12, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v1

    if-nez v1, :cond_2

    .line 860
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[FilmstripViewChildItem]setDrm() NG - texture drm create failed"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 865
    :cond_2
    iget-object v6, v12, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunnyCore/Texture;

    .line 867
    .local v6, drmTexture:Lcom/htc/sunnyCore/Texture;
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->FILMSTRIP_DRM_LOCK_ICON_X_OFFSET:I

    sub-int v8, v1, v2

    .line 868
    .local v8, newX:I
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    neg-float v1, v1

    float-to-int v1, v1

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->FILMSTRIP_DRM_LOCK_ICON_Y_OFFSET:I

    add-int v9, v1, v2

    .line 869
    .local v9, newY:I
    if-ne v8, v11, :cond_3

    if-eq v9, v10, :cond_4

    .line 870
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 871
    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v8

    int-to-float v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 873
    :cond_4
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v13}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method public setItemScale(FZ)V
    .locals 3
    .parameter "scale"
    .parameter "updateValue"

    .prologue
    const/high16 v1, 0x3f80

    .line 550
    cmpg-float v2, p1, v1

    if-gtz v2, :cond_2

    move v0, v1

    .line 551
    .local v0, newScale:F
    :goto_0
    if-nez p2, :cond_0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_1

    .line 552
    :cond_0
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mScale:F

    .line 554
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v2, v0, v0, v1}, Lcom/htc/sunnyCore/SceneNode;->setScale(FFF)V

    .line 555
    return-void

    .end local v0           #newScale:F
    :cond_2
    move v0, p1

    .line 550
    goto :goto_0
.end method

.method public setLayerVisible(IZ)V
    .locals 12
    .parameter "spriteLayer"
    .parameter "isVisible"

    .prologue
    const/4 v3, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x4000

    const/4 v5, 0x0

    .line 586
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    if-nez v1, :cond_1

    .line 588
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[FilmstripViewChildItem]setLayerVisible() NG - mSpriteIndicator is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    if-nez p2, :cond_2

    .line 593
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, p1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    .line 596
    :cond_2
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    if-nez v1, :cond_3

    .line 598
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[FilmstripViewChildItem]setLayerVisible() NG - sTextureManager is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 601
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    if-nez v1, :cond_4

    .line 603
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[FilmstripViewChildItem]setLayerVisible() NG - mSunnyContext is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :cond_4
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mContext:Landroid/content/Context;

    if-nez v1, :cond_5

    .line 608
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[FilmstripViewChildItem]setLayerVisible() NG - mContext is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 611
    :cond_5
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;

    .line 612
    .local v6, sharedTexture:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    if-nez v6, :cond_6

    .line 614
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[FilmstripViewChildItem]setLayerVisible() NG - sharedTexture not allocated"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 618
    :cond_6
    const/4 v7, 0x0

    .line 619
    .local v7, texture:Lcom/htc/sunnyCore/Texture;
    const/4 v0, 0x0

    .line 620
    .local v0, layer:Lcom/htc/sunnyCore/Sprite$Layer;
    packed-switch p1, :pswitch_data_0

    .line 713
    :goto_1
    if-eqz v7, :cond_0

    if-eqz v0, :cond_0

    .line 714
    if-ne p1, v3, :cond_11

    .line 716
    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v9

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v9

    sub-float/2addr v3, v4

    sget v4, Lcom/htc/album/AlbumCommon/LayoutConstants;->FILMSTRIP_DRM_LOCK_ICON_X_OFFSET:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v9

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    sub-float/2addr v4, v8

    neg-float v4, v4

    sget v8, Lcom/htc/album/AlbumCommon/LayoutConstants;->FILMSTRIP_DRM_LOCK_ICON_Y_OFFSET:I

    int-to-float v8, v8

    add-float/2addr v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 717
    invoke-virtual {v0, v10, v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 724
    :goto_2
    invoke-virtual {v0, v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_0

    .line 623
    :pswitch_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 624
    if-nez v0, :cond_7

    .line 626
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[FilmstripViewChildItem]setLayerVisible() NG - layer drm is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 629
    :cond_7
    iget-object v1, v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v1, :cond_8

    .line 631
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mContext:Landroid/content/Context;

    const v2, 0x7f02001d

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    iput-object v1, v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunnyCore/Texture;

    .line 632
    iget-object v1, v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v1

    if-nez v1, :cond_8

    .line 634
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[FilmstripViewChildItem]setLayerVisible() NG - texture drm create failed"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 638
    :cond_8
    iget-object v7, v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunnyCore/Texture;

    .line 639
    goto :goto_1

    .line 641
    :pswitch_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 642
    if-nez v0, :cond_9

    .line 644
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[FilmstripViewChildItem]setLayerVisible() NG - layer playable is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 647
    :cond_9
    iget-object v1, v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->playableTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v1, :cond_a

    .line 649
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mContext:Landroid/content/Context;

    const v2, 0x2080054

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    iput-object v1, v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->playableTexture:Lcom/htc/sunnyCore/Texture;

    .line 650
    iget-object v1, v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->playableTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v1

    if-nez v1, :cond_a

    .line 652
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[FilmstripViewChildItem]setLayerVisible() NG - texture playable create failed"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 656
    :cond_a
    iget-object v7, v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->playableTexture:Lcom/htc/sunnyCore/Texture;

    .line 657
    goto/16 :goto_1

    .line 659
    :pswitch_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v10}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 660
    if-nez v0, :cond_b

    .line 662
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[FilmstripViewChildItem]setLayerVisible() NG - layer corrupt is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 665
    :cond_b
    iget-object v1, v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->corruptTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v1, :cond_c

    .line 667
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mContext:Landroid/content/Context;

    const v2, 0x7f020024

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    iput-object v1, v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->corruptTexture:Lcom/htc/sunnyCore/Texture;

    .line 668
    iget-object v1, v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->corruptTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v1

    if-nez v1, :cond_c

    .line 670
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[FilmstripViewChildItem]setLayerVisible() NG - texture corrupt create failed"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 674
    :cond_c
    iget-object v7, v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->corruptTexture:Lcom/htc/sunnyCore/Texture;

    .line 675
    goto/16 :goto_1

    .line 677
    :pswitch_3
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 678
    if-nez v0, :cond_d

    .line 680
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[FilmstripViewChildItem]setLayerVisible() NG - layer drm corrupt is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 683
    :cond_d
    iget-object v1, v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmCorruptTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v1, :cond_e

    .line 685
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mContext:Landroid/content/Context;

    const v2, 0x7f02001c

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    iput-object v1, v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmCorruptTexture:Lcom/htc/sunnyCore/Texture;

    .line 686
    iget-object v1, v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmCorruptTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v1

    if-nez v1, :cond_e

    .line 688
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[FilmstripViewChildItem]setLayerVisible() NG - texture drm corrupt create failed"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 692
    :cond_e
    iget-object v7, v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmCorruptTexture:Lcom/htc/sunnyCore/Texture;

    .line 693
    goto/16 :goto_1

    .line 695
    :pswitch_4
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v11}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 696
    if-nez v0, :cond_f

    .line 698
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[FilmstripViewChildItem]setLayerVisible() NG - layer video corrupt is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 701
    :cond_f
    iget-object v1, v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->videoCorruptTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v1, :cond_10

    .line 703
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mContext:Landroid/content/Context;

    const v2, 0x7f020022

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    iput-object v1, v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->videoCorruptTexture:Lcom/htc/sunnyCore/Texture;

    .line 704
    iget-object v1, v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->videoCorruptTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v1

    if-nez v1, :cond_10

    .line 706
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[FilmstripViewChildItem]setLayerVisible() NG - texture video corrupt create failed"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 710
    :cond_10
    iget-object v7, v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->videoCorruptTexture:Lcom/htc/sunnyCore/Texture;

    goto/16 :goto_1

    .line 721
    :cond_11
    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move v3, v5

    move v4, v5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 722
    invoke-virtual {v0, v10, v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    goto/16 :goto_2

    .line 620
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPlayable(Z)V
    .locals 1
    .parameter "isPlayable"

    .prologue
    .line 878
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setLayerVisible(IZ)V

    .line 879
    return-void
.end method

.method public setPosition(IIZ)V
    .locals 4
    .parameter "posX"
    .parameter "posY"
    .parameter "fromLeft"

    .prologue
    .line 256
    if-eqz p3, :cond_0

    .line 257
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterXOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    .line 260
    :goto_0
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginY:I

    .line 262
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SceneNode;->getNodeId()I

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginY:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetPosition(IFFF)V

    .line 265
    return-void

    .line 259
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterXOffset:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    goto :goto_0
.end method

.method public setRenderOrder(I)V
    .locals 1
    .parameter "order"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/SceneNode;->setRenderOrder(I)V

    .line 565
    return-void
.end method

.method public setTexture(Lcom/htc/sunnyCore/Texture;)V
    .locals 17
    .parameter "texture"

    .prologue
    .line 269
    if-eqz p1, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v2, :cond_c

    .line 270
    invoke-virtual/range {p1 .. p1}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v2

    if-eqz v2, :cond_b

    .line 271
    invoke-virtual/range {p1 .. p1}, Lcom/htc/sunnyCore/Texture;->getSourceWidth()I

    move-result v9

    .line 272
    .local v9, imageWidthFromTexture:I
    invoke-virtual/range {p1 .. p1}, Lcom/htc/sunnyCore/Texture;->getSourceHeight()I

    move-result v8

    .line 274
    .local v8, imageHeightFromTexture:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v2}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->alreadyHasDisplayImageDimension()Z

    move-result v2

    if-nez v2, :cond_0

    .line 275
    if-lez v9, :cond_0

    if-lez v8, :cond_0

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v2, v9, v8}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->setDisplayImageDimension(II)V

    .line 282
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v2}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v11

    .line 283
    .local v11, mimeType:Ljava/lang/String;
    const/4 v10, 0x1

    .line 284
    .local v10, isJPSFullSideBySide:Z
    if-eqz v11, :cond_1

    const-string v2, "image/jps"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    if-eqz v10, :cond_1

    .line 288
    div-int/lit8 v9, v9, 0x2

    .line 293
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v2}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v12

    .line 294
    .local v12, rotateDegrees:I
    rem-int/lit16 v12, v12, 0x168

    .line 295
    if-gez v12, :cond_2

    .line 297
    add-int/lit16 v12, v12, 0x168

    .line 299
    :cond_2
    const/16 v2, 0x5a

    if-eq v12, v2, :cond_3

    const/16 v2, 0x10e

    if-ne v12, v2, :cond_4

    .line 302
    :cond_3
    move v15, v9

    .line 303
    .local v15, temp:I
    move v9, v8

    .line 304
    move v8, v15

    .line 306
    .end local v15           #temp:I
    :cond_4
    sget v2, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    invoke-static {v9, v8, v2}, Lcom/htc/opensense2/album/util/ImageUtils;->countNewSize(III)[I

    move-result-object v14

    .line 308
    .local v14, size:[I
    const/4 v2, 0x0

    aget v2, v14, v2

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    if-le v2, v3, :cond_5

    .line 310
    const/4 v2, 0x0

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    aput v3, v14, v2

    .line 313
    :cond_5
    const/4 v2, 0x0

    aget v2, v14, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    .line 314
    sget v2, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    .line 315
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setDrm(Z)V

    .line 316
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isPlayable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setPlayable(Z)V

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v2}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setCorrupted(Z)V

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mTextureHeight:I

    int-to-float v4, v4

    const/high16 v5, 0x3f80

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunnyCore/Sprite;->setScale(FFF)V

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureRotate(I)V

    .line 323
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    if-eqz v2, :cond_9

    .line 324
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;

    .line 325
    .local v13, sharedTexture:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v13, :cond_9

    .line 326
    iget-object v2, v13, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v2, :cond_8

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mContext:Landroid/content/Context;

    if-nez v2, :cond_7

    .line 330
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[FilmstripViewChildItem]setTexture() NG - mContext is null"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .end local v8           #imageHeightFromTexture:I
    .end local v9           #imageWidthFromTexture:I
    .end local v10           #isJPSFullSideBySide:Z
    .end local v11           #mimeType:Ljava/lang/String;
    .end local v12           #rotateDegrees:I
    .end local v13           #sharedTexture:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    .end local v14           #size:[I
    :cond_6
    :goto_0
    return-void

    .line 333
    .restart local v8       #imageHeightFromTexture:I
    .restart local v9       #imageWidthFromTexture:I
    .restart local v10       #isJPSFullSideBySide:Z
    .restart local v11       #mimeType:Ljava/lang/String;
    .restart local v12       #rotateDegrees:I
    .restart local v13       #sharedTexture:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    .restart local v14       #size:[I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mContext:Landroid/content/Context;

    const v3, 0x7f02001d

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    iput-object v2, v13, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunnyCore/Texture;

    .line 334
    iget-object v2, v13, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v2

    if-nez v2, :cond_8

    .line 336
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[FilmstripViewChildItem]setTexture() NG - texture drm create failed"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    .line 342
    .local v1, drmLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    iget-object v7, v13, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunnyCore/Texture;

    .line 343
    .local v7, drmTexture:Lcom/htc/sunnyCore/Texture;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 344
    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    sget v5, Lcom/htc/album/AlbumCommon/LayoutConstants;->FILMSTRIP_DRM_LOCK_ICON_X_OFFSET:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v16, 0x4000

    div-float v6, v6, v16

    sub-float/2addr v5, v6

    neg-float v5, v5

    sget v6, Lcom/htc/album/AlbumCommon/LayoutConstants;->FILMSTRIP_DRM_LOCK_ICON_Y_OFFSET:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 348
    .end local v1           #drmLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    .end local v7           #drmTexture:Lcom/htc/sunnyCore/Texture;
    .end local v13           #sharedTexture:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterXOffset:I

    .line 349
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterYOffset:I

    .line 362
    .end local v8           #imageHeightFromTexture:I
    .end local v9           #imageWidthFromTexture:I
    .end local v10           #isJPSFullSideBySide:Z
    .end local v11           #mimeType:Ljava/lang/String;
    .end local v12           #rotateDegrees:I
    .end local v14           #size:[I
    :cond_a
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v2, :cond_6

    .line 366
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mEnableShadow:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v2}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v2

    if-nez v2, :cond_d

    if-eqz p1, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mShowShadow:Z

    .line 369
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mShowShadow:Z

    if-nez v2, :cond_6

    goto/16 :goto_0

    .line 350
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    if-eqz v2, :cond_a

    .line 351
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setCorrupted(Z)V

    goto :goto_1

    .line 356
    :cond_c
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;

    .line 357
    .restart local v13       #sharedTexture:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v13, :cond_a

    .line 359
    iget-object v0, v13, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->bgLoadingTexture:Lcom/htc/sunnyCore/Texture;

    move-object/from16 p1, v0

    goto :goto_1

    .line 366
    .end local v13           #sharedTexture:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    :cond_d
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public unbindData()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 524
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 525
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setTexture(Lcom/htc/sunnyCore/Texture;)V

    .line 526
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureRotate(I)V

    .line 528
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 529
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 530
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 531
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 532
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 534
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    .line 535
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isPlayable:Z

    .line 536
    return-void
.end method

.method public unbindDataWithoutSetTexture()V
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 541
    return-void
.end method

.method public unbindMediaData()V
    .locals 0

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->unbindData()V

    .line 819
    return-void
.end method
