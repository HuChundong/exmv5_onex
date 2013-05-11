.class public Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
.super Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;
.source "GalleryFullScreenViewItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;,
        Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;,
        Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field protected static final IMAGE_LAYER:I = 0x0

.field protected static final INK_LAYER:I = 0x1

.field public static LTAG:Ljava/lang/String; = null

.field protected static final SPRITE_LAYER_COUNT:I = 0xb

.field protected static final SPRITE_LAYER_DRM:I = 0x6

.field protected static final SPRITE_LAYER_DRM_CORRUPT:I = 0x2

.field protected static final SPRITE_LAYER_DRM_TEXT_PRESSED:I = 0x7

.field protected static final SPRITE_LAYER_DRM_TEXT_UNPRESSED:I = 0x8

.field protected static final SPRITE_LAYER_IMAGE_CORRUPT:I = 0x0

.field protected static final SPRITE_LAYER_IS_3D:I = 0xa

.field protected static final SPRITE_LAYER_LOADING:I = 0x9

#the value of this static final field might be set in the static constructor
.field protected static final SPRITE_LAYER_LONGPRESS_INDICATOR_X_OFFSET:I = 0x0

.field protected static final SPRITE_LAYER_LONGPRESS_INDICATOR_Y_OFFSET:I = 0x0

.field protected static final SPRITE_LAYER_PLAYABLE:I = 0x3

.field protected static final SPRITE_LAYER_PLAYABLE_SMALL:I = 0x4

.field protected static final SPRITE_LAYER_TEXT:I = 0x5

.field protected static final SPRITE_LAYER_VIDEO_CORRUPT:I = 0x1


# instance fields
.field private context:Landroid/content/Context;

.field private dataIndex:I

.field private imageSprite:Lcom/htc/sunnyCore/Sprite;

.field private indicatorSprite:Lcom/htc/sunnyCore/Sprite;

.field private mActiveTiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;",
            ">;"
        }
    .end annotation
.end field

.field private mConsumeRightFlag:Z

.field private mCurrentLevel:I

.field private mCurrentTexture:Lcom/htc/sunnyCore/Texture;

.field private mFrameHeight:F

.field private mFrameWidth:F

.field private mImageCenterX:F

.field private mImageCenterY:F

.field private mImageShownHeight:F

.field private mImageShownWidth:F

.field public mIsAniamtion:Z

.field mIsDrm:Z

.field mIsForwardLock:Z

.field mIsPlayable:Z

.field private mIsReady:Z

.field private mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

.field private mShouldApplyTileDecode:Z

.field private mText:Ljava/lang/String;

.field private mTextTexture:Lcom/htc/sunnyCore/Texture;

.field private mTextView:Landroid/widget/TextView;

.field private mTileDecodeHelper:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;

.field private mTilePool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalLevel:I

.field private mVisibleRegion:Landroid/graphics/Rect;

.field paintTexture:Lcom/htc/sunnyCore/Texture;

.field private rotateDegrees:I

.field private sContext:Lcom/htc/sunnyCore/SunnyContext;

.field shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

.field private sourceImageHeight:I

.field private sourceImageWidth:I

.field private zoomable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    .line 56
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->FILMSTRIP_LONGPRESS_INDICATOR_X_OFFSET:I

    sput v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->SPRITE_LAYER_LONGPRESS_INDICATOR_X_OFFSET:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 182
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;-><init>()V

    .line 66
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    .line 67
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sContext:Lcom/htc/sunnyCore/SunnyContext;

    .line 68
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    .line 69
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mActiveTiles:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTilePool:Ljava/util/ArrayList;

    .line 74
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    .line 75
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    .line 76
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    .line 77
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    .line 79
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 80
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    .line 82
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 83
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    .line 85
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextTexture:Lcom/htc/sunnyCore/Texture;

    .line 87
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    .line 88
    const/high16 v0, 0x4416

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    .line 89
    const/high16 v0, 0x43c8

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    .line 90
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    .line 93
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 94
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsAniamtion:Z

    .line 96
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    .line 98
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentLevel:I

    .line 99
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTotalLevel:I

    .line 100
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageCenterX:F

    .line 101
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageCenterY:F

    .line 102
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageShownWidth:F

    .line 103
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageShownHeight:F

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mVisibleRegion:Landroid/graphics/Rect;

    .line 105
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mShouldApplyTileDecode:Z

    .line 177
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    .line 1027
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTileDecodeHelper:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;

    .line 1176
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    .line 183
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;)V
    .locals 4
    .parameter "context"
    .parameter "shareResources"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 193
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;-><init>()V

    .line 66
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    .line 67
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sContext:Lcom/htc/sunnyCore/SunnyContext;

    .line 68
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    .line 69
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mActiveTiles:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTilePool:Ljava/util/ArrayList;

    .line 74
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    .line 75
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    .line 76
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    .line 77
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    .line 79
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 80
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    .line 82
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 83
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    .line 85
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextTexture:Lcom/htc/sunnyCore/Texture;

    .line 87
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    .line 88
    const/high16 v0, 0x4416

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    .line 89
    const/high16 v0, 0x43c8

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    .line 90
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    .line 93
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 94
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsAniamtion:Z

    .line 96
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    .line 98
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentLevel:I

    .line 99
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTotalLevel:I

    .line 100
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageCenterX:F

    .line 101
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageCenterY:F

    .line 102
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageShownWidth:F

    .line 103
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageShownHeight:F

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mVisibleRegion:Landroid/graphics/Rect;

    .line 105
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mShouldApplyTileDecode:Z

    .line 177
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    .line 1027
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTileDecodeHelper:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;

    .line 1176
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    .line 194
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    .line 195
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V
    .locals 4
    .parameter "context"
    .parameter "sContext"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 187
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;-><init>()V

    .line 66
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    .line 67
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sContext:Lcom/htc/sunnyCore/SunnyContext;

    .line 68
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    .line 69
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mActiveTiles:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTilePool:Ljava/util/ArrayList;

    .line 74
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    .line 75
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    .line 76
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    .line 77
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    .line 79
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 80
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    .line 82
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 83
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    .line 85
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextTexture:Lcom/htc/sunnyCore/Texture;

    .line 87
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    .line 88
    const/high16 v0, 0x4416

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    .line 89
    const/high16 v0, 0x43c8

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    .line 90
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    .line 93
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 94
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsAniamtion:Z

    .line 96
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    .line 98
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentLevel:I

    .line 99
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTotalLevel:I

    .line 100
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageCenterX:F

    .line 101
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageCenterY:F

    .line 102
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageShownWidth:F

    .line 103
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageShownHeight:F

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mVisibleRegion:Landroid/graphics/Rect;

    .line 105
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mShouldApplyTileDecode:Z

    .line 177
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    .line 1027
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTileDecodeHelper:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;

    .line 1176
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    .line 188
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    .line 189
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sContext:Lcom/htc/sunnyCore/SunnyContext;

    .line 190
    return-void
.end method

.method static synthetic access$100(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTileDecodeHelper:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentLevel:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mVisibleRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mActiveTiles:Ljava/util/HashMap;

    return-object v0
.end method

.method public static ceilLog2(F)I
    .locals 2
    .parameter "value"

    .prologue
    .line 1003
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    .line 1005
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, p0

    if-ltz v1, :cond_1

    .line 1007
    :cond_0
    return v0

    .line 1003
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 1022
    if-le p0, p2, :cond_0

    .line 1024
    .end local p2
    :goto_0
    return p2

    .line 1023
    .restart local p2
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 1024
    goto :goto_0
.end method

.method private coordinateTransform([F)[F
    .locals 6
    .parameter "src"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x4000

    .line 1846
    const/4 v1, 0x2

    array-length v2, p1

    if-eq v1, v2, :cond_0

    .line 1848
    const/4 v0, 0x0

    .line 1853
    :goto_0
    return-object v0

    .line 1850
    :cond_0
    array-length v1, p1

    new-array v0, v1, [F

    .line 1851
    .local v0, dst:[F
    aget v1, p1, v4

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    aput v1, v0, v4

    .line 1852
    aget v1, p1, v5

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    neg-float v1, v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    aput v1, v0, v5

    goto :goto_0
.end method

.method public static floorLog2(F)I
    .locals 2
    .parameter "value"

    .prologue
    .line 1013
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    .line 1015
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, p0

    if-lez v1, :cond_1

    .line 1017
    :cond_0
    add-int/lit8 v1, v0, -0x1

    return v1

    .line 1013
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setDisplayFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 1421
    return-void
.end method

.method private setLoading(Z)V
    .locals 2
    .parameter "isLoading"

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v0, :cond_0

    .line 1356
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "setLoading NG - indicatorSprite is null"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    :cond_0
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    .line 1359
    return-void
.end method

.method private setPlayable(Z)V
    .locals 6
    .parameter "isPlayable"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 1194
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v0, :cond_0

    .line 1196
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "setPlayable NG - indicatorSprite is null"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    :cond_0
    if-eqz p1, :cond_2

    .line 1200
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-nez v0, :cond_1

    .line 1202
    invoke-virtual {p0, v3, v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    .line 1203
    invoke-virtual {p0, v4, v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    .line 1216
    :goto_0
    return-void

    .line 1207
    :cond_1
    invoke-virtual {p0, v3, v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    .line 1208
    invoke-virtual {p0, v4, v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    goto :goto_0

    .line 1213
    :cond_2
    invoke-virtual {p0, v3, v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    .line 1214
    invoke-virtual {p0, v4, v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    goto :goto_0
.end method

.method private setupDRMTextPressUnpressRimButton(Lcom/htc/widget/HtcRimButton;)V
    .locals 12
    .parameter "viewRimButton"

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x2

    .line 802
    const/16 v6, 0x11

    invoke-virtual {p1, v6}, Lcom/htc/widget/HtcRimButton;->setGravity(I)V

    .line 803
    invoke-virtual {p1, v10}, Lcom/htc/widget/HtcRimButton;->setLines(I)V

    .line 804
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x2040209

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    .line 806
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 807
    .local v4, resources:Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getRimButtonOuter(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 808
    .local v2, outer:Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getRimButtonPressed(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 809
    .local v3, pressed:Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getRimButtonRest(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 811
    .local v5, rest:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v2, v3, v5}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 812
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v6}, Lcom/htc/widget/HtcRimButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 813
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v7, 0x2030023

    invoke-virtual {p1, v6, v7}, Lcom/htc/widget/HtcRimButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 814
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget v6, v6, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextBGWidth:I

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 815
    .local v1, measureW:I
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget v6, v6, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextBGHeight:I

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 816
    .local v0, measureH:I
    invoke-virtual {p1, v1, v0}, Lcom/htc/widget/HtcRimButton;->measure(II)V

    .line 817
    invoke-virtual {p1}, Lcom/htc/widget/HtcRimButton;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/htc/widget/HtcRimButton;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p1, v9, v9, v6, v7}, Lcom/htc/widget/HtcRimButton;->layout(IIII)V

    .line 819
    invoke-virtual {p1, v10}, Lcom/htc/widget/HtcRimButton;->setFocusable(Z)V

    .line 820
    return-void
.end method

.method private setupIndicator(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 5
    .parameter "mediaData"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1425
    if-eqz p1, :cond_5

    .line 1427
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isPlayable()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    .line 1428
    const-string v1, "video/x-wmv-drm"

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1429
    .local v0, mIsWMDrm:Z
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    .line 1430
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1432
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    invoke-direct {p0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setPlayable(Z)V

    .line 1434
    :cond_3
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setDrm(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    .line 1440
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setCorrupted(Z)V

    .line 1446
    .end local v0           #mIsWMDrm:Z
    :goto_1
    return-void

    :cond_4
    move v1, v2

    .line 1427
    goto :goto_0

    .line 1444
    :cond_5
    sget-object v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v2, "[HtcAlbum][GalleryFullScreenView][setupIndicator]mediaData is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateImageSizeByDefaultOrTextureInfo()V
    .locals 3

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    instance-of v0, v0, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    if-eqz v0, :cond_0

    .line 1561
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v0}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    .line 1562
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v0}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 1565
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    if-gtz v0, :cond_2

    .line 1567
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1569
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->getSourceWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 1570
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->getSourceHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    .line 1572
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v0}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->alreadyHasDisplayImageDimension()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1573
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    if-lez v0, :cond_2

    .line 1574
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    invoke-interface {v0, v1, v2}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->setDisplayImageDimension(II)V

    .line 1580
    :cond_2
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    if-lez v0, :cond_3

    .line 1582
    const/4 v0, 0x0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->ceilLog2(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTotalLevel:I

    .line 1584
    :cond_3
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateImageSizeByDefaultOrTextureInfo] w/h "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    :cond_4
    return-void
.end method

.method private updateImageSizeByDrm()V
    .locals 24

    .prologue
    .line 1589
    sget v21, Lcom/htc/album/AlbumCommon/LayoutConstants;->DRM_THUMBNAIL_SIZE:I

    .line 1590
    .local v21, gridHeight:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    move/from16 v0, v21

    if-ne v3, v0, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    move/from16 v0, v21

    if-eq v3, v0, :cond_1

    .line 1592
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1594
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v0, v3

    move/from16 v20, v0

    .line 1595
    .local v20, cropSize:F
    const/4 v3, 0x0

    cmpl-float v3, v20, v3

    if-lez v3, :cond_1

    .line 1597
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    int-to-float v3, v3

    const/high16 v7, 0x4000

    mul-float/2addr v3, v7

    div-float v22, v20, v3

    .line 1598
    .local v22, ratioX:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    int-to-float v3, v3

    const/high16 v7, 0x4000

    mul-float/2addr v3, v7

    div-float v23, v20, v3

    .line 1599
    .local v23, ratioY:F
    const/high16 v3, 0x3f00

    sub-float v4, v3, v22

    .line 1600
    .local v4, topU:F
    const/high16 v3, 0x3f00

    sub-float v9, v3, v23

    .line 1601
    .local v9, topV:F
    const/high16 v3, 0x3f00

    add-float v6, v3, v22

    .line 1602
    .local v6, bottomU:F
    const/high16 v3, 0x3f00

    add-float v5, v3, v23

    .line 1603
    .local v5, bottomV:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v2

    .line 1604
    .local v2, sprite:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    sparse-switch v3, :sswitch_data_0

    .line 1616
    const/4 v11, 0x0

    move v10, v2

    move v12, v4

    move v13, v9

    move v14, v6

    move v15, v5

    invoke-static/range {v10 .. v15}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    .line 1622
    .end local v2           #sprite:I
    .end local v4           #topU:F
    .end local v5           #bottomV:F
    .end local v6           #bottomU:F
    .end local v9           #topV:F
    .end local v20           #cropSize:F
    .end local v22           #ratioX:F
    .end local v23           #ratioY:F
    :cond_1
    :goto_0
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 1623
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    .line 1625
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    if-lez v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    if-lez v3, :cond_2

    .line 1627
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    div-float/2addr v7, v8

    invoke-static {v7}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->ceilLog2(F)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTotalLevel:I

    .line 1629
    :cond_2
    return-void

    .line 1607
    .restart local v2       #sprite:I
    .restart local v4       #topU:F
    .restart local v5       #bottomV:F
    .restart local v6       #bottomU:F
    .restart local v9       #topV:F
    .restart local v20       #cropSize:F
    .restart local v22       #ratioX:F
    .restart local v23       #ratioY:F
    :sswitch_0
    const/4 v3, 0x0

    move v7, v5

    move v8, v4

    move v10, v6

    move v11, v9

    invoke-static/range {v2 .. v11}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    .line 1610
    :sswitch_1
    const/4 v11, 0x0

    move v10, v2

    move v12, v6

    move v13, v5

    move v14, v6

    move v15, v9

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v4

    move/from16 v19, v9

    invoke-static/range {v10 .. v19}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    .line 1613
    :sswitch_2
    const/4 v11, 0x0

    move v10, v2

    move v12, v6

    move v13, v9

    move v14, v4

    move v15, v9

    move/from16 v16, v6

    move/from16 v17, v5

    move/from16 v18, v4

    move/from16 v19, v5

    invoke-static/range {v10 .. v19}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    .line 1604
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private visibleRegionCoordinateRotateTransform([II)[I
    .locals 6
    .parameter "src"
    .parameter "degrees"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1816
    array-length v2, p1

    if-eq v5, v2, :cond_0

    move-object v0, v1

    .line 1841
    :goto_0
    return-object v0

    .line 1820
    :cond_0
    array-length v2, p1

    new-array v0, v2, [I

    .line 1821
    .local v0, dst:[I
    sparse-switch p2, :sswitch_data_0

    move-object v0, v1

    .line 1839
    goto :goto_0

    .line 1824
    :sswitch_0
    invoke-static {p1, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1827
    :sswitch_1
    aget v1, p1, v4

    aput v1, v0, v3

    .line 1828
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    aget v2, p1, v3

    sub-int/2addr v1, v2

    aput v1, v0, v4

    goto :goto_0

    .line 1831
    :sswitch_2
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    aget v2, p1, v3

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 1832
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    aget v2, p1, v4

    sub-int/2addr v1, v2

    aput v1, v0, v4

    goto :goto_0

    .line 1835
    :sswitch_3
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    aget v2, p1, v4

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 1836
    aget v1, p1, v3

    aput v1, v0, v4

    goto :goto_0

    .line 1821
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private visibleRegionRotateTransform(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 8
    .parameter "srcRect"
    .parameter "degrees"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1040
    if-nez p1, :cond_0

    .line 1041
    const/4 v2, 0x0

    .line 1050
    :goto_0
    return-object v2

    .line 1043
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1044
    .local v2, dstRect:Landroid/graphics/Rect;
    new-array v3, v7, [I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    aput v4, v3, v5

    iget v4, p1, Landroid/graphics/Rect;->top:I

    aput v4, v3, v6

    invoke-direct {p0, v3, p2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->visibleRegionCoordinateRotateTransform([II)[I

    move-result-object v0

    .line 1045
    .local v0, dot_1:[I
    new-array v3, v7, [I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    aput v4, v3, v5

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    aput v4, v3, v6

    invoke-direct {p0, v3, p2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->visibleRegionCoordinateRotateTransform([II)[I

    move-result-object v1

    .line 1046
    .local v1, dot_2:[I
    aget v3, v0, v5

    aget v4, v1, v5

    if-gt v3, v4, :cond_1

    aget v3, v0, v5

    :goto_1
    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 1047
    aget v3, v0, v6

    aget v4, v1, v6

    if-gt v3, v4, :cond_2

    aget v3, v0, v6

    :goto_2
    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1048
    aget v3, v0, v5

    aget v4, v1, v5

    if-le v3, v4, :cond_3

    aget v3, v0, v5

    :goto_3
    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 1049
    aget v3, v0, v6

    aget v4, v1, v6

    if-le v3, v4, :cond_4

    aget v3, v0, v6

    :goto_4
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 1046
    :cond_1
    aget v3, v1, v5

    goto :goto_1

    .line 1047
    :cond_2
    aget v3, v1, v6

    goto :goto_2

    .line 1048
    :cond_3
    aget v3, v1, v5

    goto :goto_3

    .line 1049
    :cond_4
    aget v3, v1, v6

    goto :goto_4
.end method


# virtual methods
.method public addVisibleRangeToTileDecoder()V
    .locals 3

    .prologue
    .line 1979
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTileDecodeHelper:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTileDecodeHelper:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    invoke-interface {v1, v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;->isItemBeingViewed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTileDecodeHelper:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;

    invoke-interface {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;->getTileDecoder()Lcom/htc/sunny2/fullfilmview/TileDecoder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1981
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;-><init>(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2061
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2064
    .end local v0           #thread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public allocateShareResources()V
    .locals 2

    .prologue
    .line 826
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-eqz v0, :cond_0

    .line 828
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "allocateShareResources() NG - already allocated"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :goto_0
    return-void

    .line 832
    :cond_0
    new-instance v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;-><init>(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    goto :goto_0
.end method

.method public attachToSceneNode(Lcom/htc/sunnyCore/SceneNode;)V
    .locals 16
    .parameter "parentSceneNode"

    .prologue
    .line 205
    const/4 v11, 0x2

    invoke-static {v11}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    .line 206
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v11}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v11

    if-nez v11, :cond_0

    .line 208
    sget-object v11, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v12, "create imageSprite NG"

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    .line 281
    :goto_0
    return-void

    .line 213
    :cond_0
    const/16 v11, 0xb

    invoke-static {v11}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    .line 214
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v11}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v11

    if-nez v11, :cond_1

    .line 216
    sget-object v11, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v12, "create indicatorSprite NG"

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    .line 218
    sget-object v11, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v12, "create indicatorSprite NG - release imageSprite"

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v11}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 220
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    goto :goto_0

    .line 226
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/htc/sunnyCore/SceneNode;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/htc/sunnyCore/Sprite;->setupGeometry(FFFF)V

    .line 230
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/htc/sunnyCore/SceneNode;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 232
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 236
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v8

    .line 237
    .local v8, playableLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 239
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v9

    .line 240
    .local v9, playableLayerSmall:Lcom/htc/sunnyCore/Sprite$Layer;
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 242
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v12, 0x6

    invoke-virtual {v11, v12}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    .line 243
    .local v3, drmLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 245
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 247
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    .line 248
    .local v1, corruptLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 250
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    .line 251
    .local v2, drmCorruptLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 253
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v10

    .line 254
    .local v10, videoCorruptLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 256
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v12, 0x9

    invoke-virtual {v11, v12}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v7

    .line 257
    .local v7, loadingLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 259
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v6

    .line 274
    .local v6, is3DLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 276
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v12, 0x7

    invoke-virtual {v11, v12}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v4

    .line 277
    .local v4, drmTextPressedLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 279
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v5

    .line 280
    .local v5, drmTextUnpressedLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_0
.end method

.method public bindMediaData(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 10
    .parameter "dataIndex"
    .parameter "mediaData"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    .line 311
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    .line 312
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 313
    invoke-virtual {p0, v7}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    .line 314
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v5, :cond_8

    .line 316
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-direct {p0, v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setupIndicator(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    .line 318
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v5}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v5}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->alreadyHasDisplayImageDimension()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 320
    :try_start_0
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v5}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageWidth()I

    move-result v5

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 321
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v5}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageHeight()I

    move-result v5

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    if-lez v5, :cond_0

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    if-lez v5, :cond_0

    .line 333
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    div-float/2addr v5, v6

    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->ceilLog2(F)I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTotalLevel:I

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->updateImageSizeByDefaultOrTextureInfo()V

    .line 339
    const/4 v3, 0x0

    .line 342
    .local v3, mimeType:Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v5}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 348
    :goto_1
    const/4 v2, 0x1

    .line 349
    .local v2, isJPSFullSideBySide:Z
    if-eqz v3, :cond_1

    const-string v5, "image/jps"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 351
    if-eqz v2, :cond_1

    .line 353
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 366
    :cond_1
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v5}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v5

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 367
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    rem-int/lit16 v5, v5, 0x168

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 368
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    if-gez v5, :cond_2

    .line 370
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    add-int/lit16 v5, v5, 0x168

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 373
    :cond_2
    iget-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v5, :cond_3

    .line 375
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->updateImageSizeByDrm()V

    .line 383
    :cond_3
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    neg-int v5, v5

    add-int/lit16 v5, v5, 0x168

    rem-int/lit16 v1, v5, 0x168

    .line 384
    .local v1, imageSpriteRotateDegrees:I
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v5

    int-to-float v6, v1

    invoke-static {v5, v9, v9, v6}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetRotate(IFFF)V

    .line 387
    iput-boolean v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    .line 388
    const/4 v4, -0x1

    .line 389
    .local v4, quality:I
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    instance-of v5, v5, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    if-eqz v5, :cond_4

    .line 390
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    check-cast v5, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    invoke-interface {v5}, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;->getMediaQuality()I

    move-result v4

    .line 391
    if-nez v4, :cond_a

    .line 392
    invoke-direct {p0, v7}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLoading(Z)V

    .line 398
    :cond_4
    :goto_2
    iget-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-eqz v5, :cond_6

    :cond_5
    iget-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    if-nez v5, :cond_6

    if-nez v4, :cond_7

    .line 399
    :cond_6
    iput-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    .line 402
    :cond_7
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v5}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageSourceType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_8

    .line 404
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v5}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_b

    .line 405
    invoke-direct {p0, v7}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLoading(Z)V

    .line 410
    .end local v1           #imageSpriteRotateDegrees:I
    .end local v2           #isJPSFullSideBySide:Z
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v4           #quality:I
    :cond_8
    :goto_3
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, e:Ljava/lang/Exception;
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 324
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    goto/16 :goto_0

    .line 327
    .end local v0           #e:Ljava/lang/Exception;
    :cond_9
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 328
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    goto/16 :goto_0

    .line 344
    .restart local v3       #mimeType:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 346
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, ""

    goto/16 :goto_1

    .line 393
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #imageSpriteRotateDegrees:I
    .restart local v2       #isJPSFullSideBySide:Z
    .restart local v4       #quality:I
    :cond_a
    if-ne v4, v7, :cond_4

    .line 394
    invoke-direct {p0, v8}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLoading(Z)V

    goto :goto_2

    .line 407
    :cond_b
    invoke-direct {p0, v8}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLoading(Z)V

    goto :goto_3
.end method

.method public bridge synthetic bindMediaData(ILcom/htc/sunnyCore/IMediaData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    check-cast p2, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->bindMediaData(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    return-void
.end method

.method public calculateVisibleRegion()V
    .locals 12

    .prologue
    const/16 v11, 0x800

    const/4 v8, 0x0

    const/high16 v9, 0x4500

    const/high16 v10, 0x4000

    .line 1902
    const/4 v1, 0x0

    .line 1903
    .local v1, rotatedSourceImageWidth:I
    const/4 v0, 0x0

    .line 1905
    .local v0, rotatedSourceImageHeight:I
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    sparse-switch v7, :sswitch_data_0

    .line 1913
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 1914
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    .line 1918
    :goto_0
    if-le v1, v11, :cond_0

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageShownWidth:F

    cmpl-float v7, v7, v9

    if-gtz v7, :cond_1

    :cond_0
    if-le v0, v11, :cond_2

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageShownHeight:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_2

    :cond_1
    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mShouldApplyTileDecode:Z

    .line 1920
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageShownWidth:F

    int-to-float v9, v1

    div-float v2, v7, v9

    .line 1922
    .local v2, scaleToSource:F
    const/high16 v7, 0x3f80

    div-float/2addr v7, v2

    invoke-static {v7}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->floorLog2(F)I

    move-result v7

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTotalLevel:I

    invoke-static {v7, v8, v9}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->clamp(III)I

    move-result v7

    iput v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentLevel:I

    .line 1924
    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageCenterX:F

    div-float/2addr v8, v2

    sub-float v3, v7, v8

    .line 1925
    .local v3, sourceCenterX:F
    div-int/lit8 v7, v0, 0x2

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageCenterY:F

    div-float/2addr v8, v2

    add-float v4, v7, v8

    .line 1926
    .local v4, sourceCenterY:F
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageShownWidth:F

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    div-float/2addr v7, v10

    div-float v5, v7, v2

    .line 1927
    .local v5, sourceLenX:F
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageShownHeight:F

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    div-float/2addr v7, v10

    div-float v6, v7, v2

    .line 1930
    .local v6, sourceLenY:F
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mVisibleRegion:Landroid/graphics/Rect;

    sub-float v8, v3, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 1931
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mVisibleRegion:Landroid/graphics/Rect;

    sub-float v8, v4, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 1932
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mVisibleRegion:Landroid/graphics/Rect;

    add-float v8, v3, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 1933
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mVisibleRegion:Landroid/graphics/Rect;

    add-float v8, v4, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 1934
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mVisibleRegion:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    invoke-direct {p0, v7, v8}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->visibleRegionRotateTransform(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mVisibleRegion:Landroid/graphics/Rect;

    .line 1940
    return-void

    .line 1909
    .end local v2           #scaleToSource:F
    .end local v3           #sourceCenterX:F
    .end local v4           #sourceCenterY:F
    .end local v5           #sourceLenX:F
    .end local v6           #sourceLenY:F
    :sswitch_0
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    .line 1910
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 1911
    goto/16 :goto_0

    :cond_2
    move v7, v8

    .line 1918
    goto :goto_1

    .line 1905
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
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
    .line 200
    new-instance v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;)V

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
    .line 1694
    const/4 v0, 0x0

    return-object v0
.end method

.method public detachFromScene(Lcom/htc/sunnyCore/SceneNode;)V
    .locals 3
    .parameter "parentSceneNode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 285
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 293
    :cond_1
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    .line 294
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    .line 295
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 298
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextTexture:Lcom/htc/sunnyCore/Texture;

    .line 300
    :cond_2
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextView:Landroid/widget/TextView;

    .line 302
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_3

    .line 304
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 305
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    .line 307
    :cond_3
    return-void
.end method

.method public doTileDecode(Z)V
    .locals 1
    .parameter "isRemoveInvisibleTile"

    .prologue
    .line 1885
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    if-lez v0, :cond_1

    .line 1887
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->calculateVisibleRegion()V

    .line 1888
    if-eqz p1, :cond_0

    .line 1890
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->removeInvisibleTile()V

    .line 1892
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mShouldApplyTileDecode:Z

    if-eqz v0, :cond_1

    .line 1894
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->addVisibleRangeToTileDecoder()V

    .line 1897
    :cond_1
    return-void
.end method

.method public freeShareResources()V
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->release()V

    .line 862
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    .line 864
    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    return v0
.end method

.method public getImageRotateDegrees()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    return v0
.end method

.method public getSourceImageHeight()I
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    return v0
.end method

.method public getSourceImageWidth()I
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    return v0
.end method

.method public hideDRMIndicator()V
    .locals 3

    .prologue
    .line 1679
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v1, :cond_1

    .line 1681
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 1682
    .local v0, drmLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-eqz v1, :cond_1

    .line 1683
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 1685
    .end local v0           #drmLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    :cond_1
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 1178
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    return v0
.end method

.method public isZoomable()Z
    .locals 1

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    return v0
.end method

.method public onDRMPressed(Z)V
    .locals 4
    .parameter "pressed"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1308
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v3, :cond_1

    .line 1310
    sget-object v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v2, "onPressed NG - indicatorSprite is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    :cond_0
    :goto_0
    return-void

    .line 1314
    :cond_1
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v3, :cond_0

    .line 1317
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v3, :cond_3

    move v0, v1

    .line 1318
    .local v0, isDisplayDrmText:Z
    :goto_1
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-eqz v3, :cond_2

    .line 1319
    const/4 v0, 0x0

    .line 1322
    :cond_2
    if-eqz v0, :cond_0

    .line 1325
    const/4 v3, 0x7

    invoke-virtual {p0, v3, p1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    .line 1326
    const/16 v3, 0x8

    if-nez p1, :cond_4

    :goto_2
    invoke-virtual {p0, v3, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    goto :goto_0

    .end local v0           #isDisplayDrmText:Z
    :cond_3
    move v0, v2

    .line 1317
    goto :goto_1

    .restart local v0       #isDisplayDrmText:Z
    :cond_4
    move v1, v2

    .line 1326
    goto :goto_2
.end method

.method public onEnterItemIRT()V
    .locals 0

    .prologue
    .line 1881
    return-void
.end method

.method public onFrameSizeUpdate(FF)V
    .locals 11
    .parameter "frameWidth"
    .parameter "frameHeight"

    .prologue
    const/high16 v5, 0x4000

    .line 868
    const/4 v6, 0x0

    .line 869
    .local v6, adjustLayout:Z
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 871
    :cond_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    .line 872
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    .line 873
    const/4 v6, 0x1

    .line 876
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v6, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-eqz v0, :cond_5

    .line 878
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v0, :cond_4

    .line 880
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    if-nez v0, :cond_3

    .line 882
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v4, 0x7f020029

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    .line 883
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v0

    if-nez v0, :cond_3

    .line 885
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v3, "showDRMIndicator() NG - texture Drm create failed"

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    :cond_2
    :goto_0
    return-void

    .line 889
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v0

    int-to-float v1, v0

    .line 890
    .local v1, drmWidth:F
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v0

    int-to-float v2, v0

    .line 893
    .local v2, drmHeight:F
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->DRM_THUMBNAIL_SIZE:I

    int-to-float v9, v0

    .line 894
    .local v9, gridHeight:F
    div-float v0, v9, v5

    div-float v3, v1, v5

    sub-float/2addr v0, v3

    neg-float v0, v0

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_X_OFFSET:I

    int-to-float v3, v3

    add-float v7, v0, v3

    .line 895
    .local v7, drmX:F
    div-float v0, v9, v5

    div-float v3, v2, v5

    sub-float/2addr v0, v3

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_Y_OFFSET:I

    int-to-float v3, v3

    add-float v8, v0, v3

    .line 896
    .local v8, drmY:F
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    neg-float v3, v7

    neg-float v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 898
    .end local v1           #drmWidth:F
    .end local v2           #drmHeight:F
    .end local v7           #drmX:F
    .end local v8           #drmY:F
    .end local v9           #gridHeight:F
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v0, :cond_5

    .line 900
    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextView:Landroid/widget/TextView;

    .line 901
    .local v10, txtView:Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 902
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setDisplayFileName(Ljava/lang/String;)V

    .line 931
    .end local v10           #txtView:Landroid/widget/TextView;
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method public onImageGeometryUpdate(FFFF)V
    .locals 6
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "imageCenterX"
    .parameter "imageCenterY"

    .prologue
    .line 1055
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFFZ)V

    .line 1056
    return-void
.end method

.method public onImageGeometryUpdate(FFFFZ)V
    .locals 16
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "imageCenterX"
    .parameter "imageCenterY"
    .parameter "isDoTileDecode"

    .prologue
    .line 1061
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageCenterX:F

    .line 1062
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageCenterY:F

    .line 1063
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageShownWidth:F

    .line 1064
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageShownHeight:F

    .line 1066
    const/high16 v5, 0x3f00

    add-float v5, v5, p1

    float-to-int v5, v5

    int-to-float v0, v5

    move/from16 p1, v0

    .line 1067
    const/high16 v5, 0x3f00

    add-float v5, v5, p2

    float-to-int v5, v5

    int-to-float v0, v5

    move/from16 p2, v0

    .line 1068
    move/from16 v0, p1

    float-to-int v5, v0

    rem-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1070
    const/high16 v5, 0x3f00

    add-float p3, p3, v5

    .line 1072
    :cond_0
    move/from16 v0, p2

    float-to-int v5, v0

    rem-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1074
    const/high16 v5, 0x3f00

    add-float p4, p4, v5

    .line 1076
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsAniamtion:Z

    if-nez v5, :cond_2

    .line 1078
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v6, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v5, v0, v1, v6}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    .line 1079
    move/from16 v14, p1

    .line 1080
    .local v14, toScaleWidth:F
    move/from16 v13, p2

    .line 1082
    .local v13, toScaleHeight:F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    sparse-switch v5, :sswitch_data_0

    .line 1092
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v14, v13, v6}, Lcom/htc/sunnyCore/Sprite;->setScale(FFF)V

    .line 1093
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    neg-int v5, v5

    add-int/lit16 v5, v5, 0x168

    rem-int/lit16 v11, v5, 0x168

    .line 1094
    .local v11, imageSpriteRotateDegrees:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-float v15, v11

    invoke-static {v5, v6, v7, v15}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetRotate(IFFF)V

    .line 1097
    .end local v11           #imageSpriteRotateDegrees:I
    .end local v13           #toScaleHeight:F
    .end local v14           #toScaleWidth:F
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v5, :cond_4

    .line 1099
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v5, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    if-nez v5, :cond_3

    .line 1101
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v7, 0x7f020029

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v6

    iput-object v6, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    .line 1102
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v5, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v5

    if-nez v5, :cond_3

    .line 1104
    sget-object v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v6, "showDRMIndicator() NG - texture Drm create failed"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    :goto_1
    return-void

    .line 1086
    .restart local v13       #toScaleHeight:F
    .restart local v14       #toScaleWidth:F
    :sswitch_0
    move/from16 v14, p2

    .line 1087
    move/from16 v13, p1

    .line 1088
    goto :goto_0

    .line 1108
    .end local v13           #toScaleHeight:F
    .end local v14           #toScaleWidth:F
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    .line 1109
    .local v2, drmLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v5, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v5

    int-to-float v3, v5

    .line 1110
    .local v3, drmWidth:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v5, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v5

    int-to-float v4, v5

    .line 1111
    .local v4, drmHeight:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Sprite;->getScale()[F

    move-result-object v10

    .line 1113
    .local v10, imageScale:[F
    const/4 v5, 0x0

    aget v5, v10, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float v6, v3, v6

    sub-float/2addr v5, v6

    neg-float v5, v5

    sget v6, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_X_OFFSET:I

    int-to-float v6, v6

    add-float v8, v5, v6

    .line 1114
    .local v8, drmX:F
    const/4 v5, 0x1

    aget v5, v10, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float v6, v4, v6

    sub-float/2addr v5, v6

    sget v6, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_Y_OFFSET:I

    int-to-float v6, v6

    add-float v9, v5, v6

    .line 1115
    .local v9, drmY:F
    neg-float v5, v8

    neg-float v6, v9

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 1117
    .end local v2           #drmLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    .end local v3           #drmWidth:F
    .end local v4           #drmHeight:F
    .end local v8           #drmX:F
    .end local v9           #drmY:F
    .end local v10           #imageScale:[F
    :cond_4
    if-eqz p5, :cond_5

    .line 1119
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->doTileDecode(Z)V

    goto :goto_1

    .line 1123
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTileDecodeHelper:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;

    invoke-interface {v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;->getTileDecoder()Lcom/htc/sunny2/fullfilmview/TileDecoder;

    move-result-object v12

    .line 1124
    .local v12, tileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;
    invoke-virtual {v12}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->clearQueue()V

    goto :goto_1

    .line 1082
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public onImageGeometryUpdateWithUVAdjust(FFFFF)V
    .locals 18
    .parameter "fitToScreenAspect"
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "imageCenterX"
    .parameter "imageCenterY"

    .prologue
    .line 939
    const/high16 v2, 0x3f00

    add-float v2, v2, p2

    float-to-int v2, v2

    int-to-float v0, v2

    move/from16 p2, v0

    .line 940
    const/high16 v2, 0x3f00

    add-float v2, v2, p3

    float-to-int v2, v2

    int-to-float v0, v2

    move/from16 p3, v0

    .line 941
    move/from16 v0, p2

    float-to-int v2, v0

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 943
    const/high16 v2, 0x3f00

    add-float p4, p4, v2

    .line 945
    :cond_0
    move/from16 v0, p3

    float-to-int v2, v0

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 947
    const/high16 v2, 0x3f00

    add-float p5, p5, v2

    .line 949
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v2

    if-eqz v2, :cond_2

    .line 950
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageCenterX:F

    .line 951
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageCenterY:F

    .line 952
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageShownWidth:F

    .line 953
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageShownHeight:F

    .line 954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x0

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v2, v0, v1, v3}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    .line 956
    move/from16 v16, p2

    .line 957
    .local v16, toScaleWidth:F
    move/from16 v15, p3

    .line 958
    .local v15, toScaleHeight:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    sparse-switch v2, :sswitch_data_0

    .line 969
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    const/high16 v3, 0x3f80

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15, v3}, Lcom/htc/sunnyCore/Sprite;->setScale(FFF)V

    .line 971
    div-float v13, p2, p3

    .line 972
    .local v13, imageAspect:F
    cmpl-float v2, p1, v13

    if-ltz v2, :cond_3

    .line 973
    div-float v17, v13, p1

    .line 974
    .local v17, uSpan:F
    const/high16 v2, 0x3f80

    sub-float v2, v2, v17

    const/high16 v3, 0x4000

    div-float v4, v2, v3

    .line 975
    .local v4, u0:F
    const/high16 v2, 0x3f80

    sub-float v6, v2, v4

    .line 976
    .local v6, u1:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/high16 v7, 0x3f80

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunnyCore/Sprite;->setTextureCoordinatesWithRotate(IFFFF)V

    .line 983
    .end local v4           #u0:F
    .end local v6           #u1:F
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    neg-int v2, v2

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v14, v2, 0x168

    .line 984
    .local v14, imageSpriteRotateDegrees:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    int-to-float v7, v14

    invoke-static {v2, v3, v5, v7}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetRotate(IFFF)V

    .line 986
    .end local v13           #imageAspect:F
    .end local v14           #imageSpriteRotateDegrees:I
    .end local v15           #toScaleHeight:F
    .end local v16           #toScaleWidth:F
    .end local v17           #uSpan:F
    :cond_2
    return-void

    .line 962
    .restart local v15       #toScaleHeight:F
    .restart local v16       #toScaleWidth:F
    :sswitch_0
    move/from16 v16, p3

    .line 963
    move/from16 v15, p2

    .line 964
    goto :goto_0

    .line 978
    .restart local v13       #imageAspect:F
    :cond_3
    div-float v17, p1, v13

    .line 979
    .restart local v17       #uSpan:F
    const/high16 v2, 0x3f80

    sub-float v2, v2, v17

    const/high16 v3, 0x4000

    div-float v10, v2, v3

    .line 980
    .local v10, v0:F
    const/high16 v2, 0x3f80

    sub-float v12, v2, v10

    .line 981
    .local v12, v1:F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v11, 0x3f80

    invoke-virtual/range {v7 .. v12}, Lcom/htc/sunnyCore/Sprite;->setTextureCoordinatesWithRotate(IFFFF)V

    goto :goto_1

    .line 958
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public onImageTextureExpired()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1182
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 1185
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 1186
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 1187
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 1188
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    .line 1190
    :cond_0
    return-void
.end method

.method public onImageTextureReady(Lcom/htc/sunnyCore/Texture;)V
    .locals 8
    .parameter "texture"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1131
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v4, :cond_0

    .line 1133
    if-eqz p1, :cond_0

    .line 1135
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v4, v6}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v6, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 1136
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v4, v6}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 1137
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    .line 1141
    :cond_0
    const/4 v3, 0x0

    .line 1142
    .local v3, sourceImageDimensionWidth:I
    const/4 v2, 0x0

    .line 1143
    .local v2, sourceImageDimensionHeight:I
    const/4 v0, 0x0

    .line 1144
    .local v0, checkTextureSizeUpdate:Z
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v4

    if-eqz v4, :cond_2

    .line 1145
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    .line 1146
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v2

    .line 1147
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    if-lt v4, v3, :cond_1

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    if-ge v4, v2, :cond_2

    .line 1148
    :cond_1
    const/4 v0, 0x1

    .line 1154
    :cond_2
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    if-nez v4, :cond_3

    if-eqz v0, :cond_7

    .line 1156
    :cond_3
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-virtual {p0, v4, v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->refreshMediaSize(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    .line 1162
    :goto_0
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    instance-of v4, v4, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    if-eqz v4, :cond_5

    .line 1163
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    check-cast v4, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;->getMediaQuality()I

    move-result v1

    .line 1164
    .local v1, quality:I
    if-nez v1, :cond_8

    .line 1165
    sget-boolean v4, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v5, "[HtcAlbum][GalleryFullScreenView][onImageTextureReady]setLoading true"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    :cond_4
    invoke-direct {p0, v7}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLoading(Z)V

    .line 1172
    .end local v1           #quality:I
    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    .line 1173
    iput-boolean v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    .line 1174
    :cond_6
    return-void

    .line 1160
    :cond_7
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-direct {p0, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setupIndicator(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    goto :goto_0

    .line 1167
    .restart local v1       #quality:I
    :cond_8
    if-ne v1, v7, :cond_5

    .line 1168
    sget-boolean v4, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v4, :cond_9

    sget-object v4, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v5, "[HtcAlbum][GalleryFullScreenView][onImageTextureReady]setLoading false"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    :cond_9
    invoke-direct {p0, v6}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLoading(Z)V

    goto :goto_1
.end method

.method public onLeaveItemIRT()V
    .locals 7

    .prologue
    .line 2070
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTileDecodeHelper:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;

    invoke-interface {v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;->getTileDecoder()Lcom/htc/sunny2/fullfilmview/TileDecoder;

    move-result-object v4

    .line 2071
    .local v4, tileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;
    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->freeBitmapRegionDecoder()V

    .line 2072
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2074
    .local v1, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;

    .line 2075
    .local v2, mappedTile:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v5, :cond_1

    .line 2077
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v5

    iget-object v6, v2, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_RemoveChild(II)V

    .line 2079
    :cond_1
    if-eqz v2, :cond_0

    .line 2081
    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->release()V

    goto :goto_0

    .line 2085
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #mappedTile:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;
    :cond_2
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 2087
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTilePool:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;

    .line 2089
    .local v3, tile:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;
    if-eqz v3, :cond_3

    .line 2091
    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->release()V

    goto :goto_1

    .line 2095
    .end local v3           #tile:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;
    :cond_4
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTilePool:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2097
    return-void
.end method

.method public onSetImageAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 995
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite;->setAlpha(F)V

    .line 998
    :cond_0
    return-void
.end method

.method public onSetImageVisible(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    .line 989
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    .line 992
    :cond_0
    return-void
.end method

.method public onTileTextureReadyIRT(Lcom/htc/sunny2/fullfilmview/TileDecodeItem;)V
    .locals 27
    .parameter "item"

    .prologue
    .line 1701
    if-nez p1, :cond_1

    .line 1703
    sget-object v22, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v23, "[HTCAlbum][GalleryFullScreenViewItem][onTileTextureReadyIRT]"

    invoke-static/range {v22 .. v23}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    :cond_0
    :goto_0
    return-void

    .line 1707
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1708
    .local v7, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mActiveTiles:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;

    .line 1711
    .local v8, mappedTile:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;
    if-eqz v8, :cond_3

    .line 1713
    iget-object v0, v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 1715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v22

    iget-object v0, v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v23

    invoke-static/range {v22 .. v23}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_RemoveChild(II)V

    .line 1716
    iget-object v0, v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mTexture:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1717
    const/16 v22, 0x0

    move-object/from16 v0, v22

    iput-object v0, v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mTexture:Lcom/htc/sunnyCore/Texture;

    .line 1719
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTilePool:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1722
    :cond_3
    move-object/from16 v0, p1

    iget v14, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->index:I

    .line 1723
    .local v14, tileIndex:I
    move-object/from16 v0, p1

    iget v15, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->level:I

    .line 1724
    .local v15, tileLevel:I
    new-instance v16, Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->top:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->right:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->bottom:I

    move/from16 v25, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1726
    .local v16, tileRegion:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTileDecodeHelper:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTileDecodeHelper:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;->isItemBeingViewed(I)Z

    move-result v22

    if-eqz v22, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentLevel:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v15, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mVisibleRegion:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 1728
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->texture:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 1730
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->texture:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1731
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->texture:Lcom/htc/sunnyCore/Texture;

    goto/16 :goto_0

    .line 1736
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->texture:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 1738
    const/4 v12, 0x0

    .line 1740
    .local v12, tile:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTilePool:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    .line 1741
    .local v6, isTilePoolEmpty:Z
    if-nez v6, :cond_7

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTilePool:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #tile:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;
    check-cast v12, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;

    .line 1745
    .restart local v12       #tile:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;
    :cond_7
    if-nez v6, :cond_8

    if-nez v12, :cond_9

    .line 1747
    :cond_8
    new-instance v12, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;

    .end local v12           #tile:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v12, v0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;-><init>(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;)V

    .line 1748
    .restart local v12       #tile:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v12, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mSprite:Lcom/htc/sunnyCore/Sprite;

    .line 1751
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->texture:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v12, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mTexture:Lcom/htc/sunnyCore/Texture;

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v22, v0

    if-eqz v22, :cond_a

    .line 1755
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 1756
    .local v10, rotatedSourceImageWidth:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    .line 1757
    .local v9, rotatedSourceImageHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_0

    .line 1768
    :goto_1
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    aput v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    aput v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->coordinateTransform([F)[F

    move-result-object v5

    .line 1769
    .local v5, dst:[F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageShownWidth:F

    move/from16 v22, v0

    int-to-float v0, v10

    move/from16 v23, v0

    div-float v11, v22, v23

    .line 1770
    .local v11, scaleToSource:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v22

    iget-object v0, v12, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v23

    invoke-static/range {v22 .. v23}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_AddChild(II)Z

    .line 1773
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->right:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->left:I

    move/from16 v23, v0

    sub-int v17, v22, v23

    .line 1774
    .local v17, tileWidth:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->top:I

    move/from16 v23, v0

    sub-int v13, v22, v23

    .line 1776
    .local v13, tileHeight:I
    iget-object v0, v12, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v22, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v13

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v22 .. v26}, Lcom/htc/sunnyCore/Sprite;->setupGeometry(FFFF)V

    .line 1777
    iget-object v0, v12, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v23, v5, v23

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x4000

    div-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    add-float v23, v23, v24

    const/16 v24, 0x1

    aget v24, v5, v24

    int-to-float v0, v13

    move/from16 v25, v0

    const/high16 v26, 0x4000

    div-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    sub-float v24, v24, v25

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    .line 1779
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_1

    .line 1793
    :goto_2
    iget-object v0, v12, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v22

    const/16 v23, 0x0

    iget-object v0, v12, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mTexture:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 1795
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->leftBorder:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->rightBorder:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->leftBorder:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v18, v22, v23

    .line 1796
    .local v18, u0:F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->top:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->topBorder:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->bottomBorder:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->topBorder:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v20, v22, v23

    .line 1797
    .local v20, v0:F
    const/high16 v22, 0x3f80

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->rightBorder:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->right:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->rightBorder:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->leftBorder:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    sub-float v19, v22, v23

    .line 1798
    .local v19, u1:F
    const/high16 v22, 0x3f80

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->bottomBorder:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->bottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->bottomBorder:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->topBorder:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    sub-float v21, v22, v23

    .line 1799
    .local v21, v1:F
    iget-object v0, v12, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v19

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunnyCore/Sprite;->setTextureCoordinatesBy2P(FFFF)V

    .line 1800
    iget-object v0, v12, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v22, v0

    const v23, 0x7fffffff

    invoke-virtual/range {v22 .. v23}, Lcom/htc/sunnyCore/Sprite;->setRenderOrder(I)V

    .line 1801
    iget-object v0, v12, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    .line 1807
    .end local v5           #dst:[F
    .end local v9           #rotatedSourceImageHeight:I
    .end local v10           #rotatedSourceImageWidth:I
    .end local v11           #scaleToSource:F
    .end local v13           #tileHeight:I
    .end local v17           #tileWidth:I
    .end local v18           #u0:F
    .end local v19           #u1:F
    .end local v20           #v0:F
    .end local v21           #v1:F
    :cond_a
    const/16 p1, 0x0

    .line 1808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mActiveTiles:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1761
    .restart local v9       #rotatedSourceImageHeight:I
    .restart local v10       #rotatedSourceImageWidth:I
    :sswitch_0
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    .line 1762
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 1763
    goto/16 :goto_1

    .line 1783
    .restart local v5       #dst:[F
    .restart local v11       #scaleToSource:F
    .restart local v13       #tileHeight:I
    .restart local v17       #tileWidth:I
    :sswitch_1
    iget-object v0, v12, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageShownWidth:F

    move/from16 v24, v0

    div-float v23, v23, v24

    mul-float v23, v23, v11

    const/high16 v24, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageShownHeight:F

    move/from16 v25, v0

    div-float v24, v24, v25

    mul-float v24, v24, v11

    const/high16 v25, 0x3f80

    invoke-virtual/range {v22 .. v25}, Lcom/htc/sunnyCore/Sprite;->setScale(FFF)V

    goto/16 :goto_2

    .line 1787
    :sswitch_2
    iget-object v0, v12, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageShownHeight:F

    move/from16 v24, v0

    div-float v23, v23, v24

    mul-float v23, v23, v11

    const/high16 v24, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mImageShownWidth:F

    move/from16 v25, v0

    div-float v24, v24, v25

    mul-float v24, v24, v11

    const/high16 v25, 0x3f80

    invoke-virtual/range {v22 .. v25}, Lcom/htc/sunnyCore/Sprite;->setScale(FFF)V

    goto/16 :goto_2

    .line 1757
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch

    .line 1779
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public purgeTileTextures()V
    .locals 8

    .prologue
    .line 2101
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 2102
    .local v3, keys:[Ljava/lang/Object;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 2104
    .local v2, key:Ljava/lang/Object;
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;

    .line 2105
    .local v5, ts:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;
    if-eqz v5, :cond_0

    .line 2107
    iget-object v6, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    .line 2108
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v6

    iget-object v7, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_RemoveChild(II)V

    .line 2110
    :cond_0
    iget-object v6, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2111
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mTexture:Lcom/htc/sunnyCore/Texture;

    .line 2112
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTilePool:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2114
    .end local v2           #key:Ljava/lang/Object;
    .end local v5           #ts:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;
    :cond_1
    return-void
.end method

.method public refreshMediaSize(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 8
    .parameter "itemIndex"
    .parameter "mediaData"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 455
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    .line 456
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 457
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v4, :cond_6

    .line 459
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-direct {p0, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setupIndicator(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    .line 460
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->alreadyHasDisplayImageDimension()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 462
    :try_start_0
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageWidth()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 463
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageHeight()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :goto_0
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    if-lez v4, :cond_0

    .line 475
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    div-float/2addr v4, v5

    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->ceilLog2(F)I

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTotalLevel:I

    .line 486
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 487
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    rem-int/lit16 v4, v4, 0x168

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 488
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    if-gez v4, :cond_1

    .line 490
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    add-int/lit16 v4, v4, 0x168

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 493
    :cond_1
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->updateImageSizeByDefaultOrTextureInfo()V

    .line 496
    const/4 v3, 0x0

    .line 499
    .local v3, mimeType:Ljava/lang/String;
    :try_start_1
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 505
    :goto_1
    const/4 v2, 0x1

    .line 506
    .local v2, isJPSFullSideBySide:Z
    if-eqz v3, :cond_2

    const-string v4, "image/jps"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 508
    if-eqz v2, :cond_2

    .line 510
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 515
    :cond_2
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v4, :cond_3

    .line 517
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->updateImageSizeByDrm()V

    .line 524
    :cond_3
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    neg-int v4, v4

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v1, v4, 0x168

    .line 525
    .local v1, imageSpriteRotateDegrees:I
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v4

    int-to-float v5, v1

    invoke-static {v4, v6, v6, v5}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetRotate(IFFF)V

    .line 528
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    .line 529
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-eqz v4, :cond_5

    :cond_4
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    instance-of v4, v4, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    if-eqz v4, :cond_6

    check-cast p2, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    .end local p2
    invoke-interface {p2}, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;->getMediaQuality()I

    move-result v4

    if-nez v4, :cond_6

    .line 532
    :cond_5
    iput-boolean v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    .line 535
    .end local v1           #imageSpriteRotateDegrees:I
    .end local v2           #isJPSFullSideBySide:Z
    .end local v3           #mimeType:Ljava/lang/String;
    :cond_6
    return-void

    .line 464
    .restart local p2
    :catch_0
    move-exception v0

    .line 465
    .local v0, e:Ljava/lang/Exception;
    iput v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 466
    iput v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    goto/16 :goto_0

    .line 469
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7
    iput v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 470
    iput v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    goto/16 :goto_0

    .line 501
    .restart local v3       #mimeType:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 503
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_1
.end method

.method public removeInvisibleTile()V
    .locals 12

    .prologue
    .line 1945
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1946
    .local v6, tileToRemoveKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1948
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->fromString(Ljava/lang/String;)Lcom/htc/sunny2/fullfilmview/TileDecodeItem;

    move-result-object v3

    .line 1949
    .local v3, tempDI:Lcom/htc/sunny2/fullfilmview/TileDecodeItem;
    iget v4, v3, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->level:I

    .line 1950
    .local v4, tileLevel:I
    new-instance v5, Landroid/graphics/Rect;

    iget v8, v3, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->left:I

    iget v9, v3, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->top:I

    iget v10, v3, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->right:I

    iget v11, v3, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->bottom:I

    invoke-direct {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1951
    .local v5, tileRegion:Landroid/graphics/Rect;
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mShouldApplyTileDecode:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTileDecodeHelper:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTileDecodeHelper:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    invoke-interface {v8, v9}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;->isItemBeingViewed(I)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentLevel:I

    if-ne v4, v8, :cond_2

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mVisibleRegion:Landroid/graphics/Rect;

    invoke-static {v8, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1954
    :cond_2
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1955
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;

    .line 1956
    .local v2, mappedTile:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v8, :cond_0

    .line 1958
    iget-object v8, v2, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    .line 1959
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v8}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v8

    iget-object v9, v2, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v9}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v9

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_RemoveChild(II)V

    goto :goto_0

    .line 1965
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #mappedTile:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;
    .end local v3           #tempDI:Lcom/htc/sunny2/fullfilmview/TileDecodeItem;
    .end local v4           #tileLevel:I
    .end local v5           #tileRegion:Landroid/graphics/Rect;
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1967
    .restart local v1       #key:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;

    .line 1968
    .local v7, ts:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;
    iget-object v8, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v8}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1969
    const/4 v8, 0x0

    iput-object v8, v7, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mTexture:Lcom/htc/sunnyCore/Texture;

    .line 1970
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTilePool:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1974
    .end local v1           #key:Ljava/lang/String;
    .end local v7           #ts:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;
    :cond_4
    return-void
.end method

.method public resetConsumeRightFlag()V
    .locals 1

    .prologue
    .line 1455
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v0, :cond_0

    .line 1457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    .line 1459
    :cond_0
    return-void
.end method

.method public setConsumeRightFlag()V
    .locals 1

    .prologue
    .line 1450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    .line 1451
    return-void
.end method

.method public setCorrupted(Z)V
    .locals 3
    .parameter "isCorrupted"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1331
    if-eqz p1, :cond_0

    .line 1333
    invoke-virtual {p0, v1, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    .line 1334
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    .line 1335
    invoke-virtual {p0, v2, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    .line 1336
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    .line 1337
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    .line 1338
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    .line 1342
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    if-eqz v0, :cond_1

    .line 1344
    invoke-virtual {p0, v2, p1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    .line 1350
    :goto_0
    return-void

    .line 1348
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    goto :goto_0
.end method

.method public setDrm(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 13
    .parameter "mediaData"

    .prologue
    .line 1220
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v3, :cond_0

    .line 1222
    sget-object v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v4, "setDrm NG - indicatorSprite is null"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    :goto_0
    return-void

    .line 1225
    :cond_0
    if-nez p1, :cond_1

    .line 1227
    sget-object v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v4, "setDrm NG - mediaData is null"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1230
    :cond_1
    const-string v3, "video/x-wmv-drm"

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 1231
    .local v11, mIsWMDrm:Z
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v11, :cond_5

    :cond_2
    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    .line 1233
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v3, :cond_d

    .line 1235
    if-nez v11, :cond_3

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getContentType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 1236
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    .line 1241
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 1242
    .local v0, drmLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-eqz v3, :cond_a

    .line 1244
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    if-nez v3, :cond_6

    .line 1246
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v5, 0x7f020029

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    .line 1247
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v3

    if-nez v3, :cond_6

    .line 1249
    sget-object v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v4, "showDRMIndicator() NG - texture Drm create failed"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1231
    .end local v0           #drmLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 1253
    .restart local v0       #drmLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    :cond_6
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 1254
    .local v1, drmWidth:F
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v2, v3

    .line 1255
    .local v2, drmHeight:F
    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->DRM_THUMBNAIL_SIZE:I

    int-to-float v8, v3

    .line 1256
    .local v8, gridHeight:F
    const/high16 v3, 0x4000

    div-float v3, v8, v3

    const/high16 v4, 0x4000

    div-float v4, v1, v4

    sub-float/2addr v3, v4

    neg-float v3, v3

    sget v4, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_X_OFFSET:I

    int-to-float v4, v4

    add-float v6, v3, v4

    .line 1257
    .local v6, drmX:F
    const/high16 v3, 0x4000

    div-float v3, v8, v3

    const/high16 v4, 0x4000

    div-float v4, v2, v4

    sub-float/2addr v3, v4

    sget v4, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_Y_OFFSET:I

    int-to-float v4, v4

    add-float v7, v3, v4

    .line 1258
    .local v7, drmY:F
    neg-float v3, v6

    neg-float v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 1259
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v4, v4, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0, v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 1266
    .end local v1           #drmWidth:F
    .end local v2           #drmHeight:F
    .end local v6           #drmX:F
    .end local v7           #drmY:F
    .end local v8           #gridHeight:F
    :goto_2
    const/4 v10, 0x0

    .line 1267
    .local v10, isStateSuccess:Z
    instance-of v3, p1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    if-eqz v3, :cond_7

    move-object v3, p1

    .line 1268
    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->isDrmStateSuccess()Z

    move-result v10

    .line 1270
    :cond_7
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    .line 1271
    .local v12, text:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    if-eq v3, v12, :cond_8

    .line 1272
    iput-object v12, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    .line 1273
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setDisplayFileName(Ljava/lang/String;)V

    .line 1275
    :cond_8
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v3, :cond_b

    const/4 v9, 0x1

    .line 1276
    .local v9, isDisplayDrmText:Z
    :goto_3
    if-eqz v9, :cond_9

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-eqz v3, :cond_9

    .line 1277
    const/4 v9, 0x0

    .line 1279
    :cond_9
    const/16 v3, 0x8

    invoke-virtual {p0, v3, v9}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    .line 1280
    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    .line 1282
    if-eqz v10, :cond_c

    .line 1283
    const/4 v3, 0x6

    invoke-virtual {p0, v3, v9}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    .line 1284
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    goto/16 :goto_0

    .line 1263
    .end local v9           #isDisplayDrmText:Z
    .end local v10           #isStateSuccess:Z
    .end local v12           #text:Ljava/lang/String;
    :cond_a
    sget-object v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v4, "attachToSceneNode NG - drmLayer_shareResources is null"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1275
    .restart local v10       #isStateSuccess:Z
    .restart local v12       #text:Ljava/lang/String;
    :cond_b
    const/4 v9, 0x0

    goto :goto_3

    .line 1286
    .restart local v9       #isDisplayDrmText:Z
    :cond_c
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    .line 1287
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    .line 1288
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    .line 1289
    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    .line 1290
    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    .line 1292
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    goto/16 :goto_0

    .line 1299
    .end local v0           #drmLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    .end local v9           #isDisplayDrmText:Z
    .end local v10           #isStateSuccess:Z
    .end local v12           #text:Ljava/lang/String;
    :cond_d
    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    .line 1300
    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    .line 1301
    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    .line 1302
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLayerVisible(IZ)V

    goto/16 :goto_0
.end method

.method public setIndicatorSpriteVisibility(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    .line 1689
    return-void
.end method

.method public setItemPaintLayerBMP(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;)V
    .locals 8
    .parameter "itemPaintLayerInfo"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1463
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_0

    .line 1465
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v7, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 1466
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 1467
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1468
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    .line 1471
    :cond_0
    if-eqz p1, :cond_4

    .line 1473
    iget-object v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->bmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 1475
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "setItemPaintLayerBMP - itemPaintLayerInfo.bmp is null"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    :cond_1
    :goto_0
    return-void

    .line 1479
    :cond_2
    iget-object v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    .line 1480
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v0

    if-nez v0, :cond_3

    .line 1482
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "setItemPaintLayerBMP NG - paintTexture.getHandler() == 0"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1484
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    goto :goto_0

    .line 1488
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    iget v1, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->sizeX:F

    iget v2, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->sizeY:F

    iget v3, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->originX:F

    iget v4, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->originY:F

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 1489
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0, v7, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 1490
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 1491
    iget-object v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->paintSetListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;

    if-eqz v0, :cond_1

    .line 1493
    iget-object v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->paintSetListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;->onPaintLayerSetEnd()V

    goto :goto_0

    .line 1498
    :cond_4
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "setItemPaintLayerBMP NG - itemPaintLayerInfo is null"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setItemPaintTransparency(I)V
    .locals 2
    .parameter "transparency"

    .prologue
    .line 1504
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 1506
    :cond_0
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "setItemPaintLayerBMP NG - transparency range incorrect"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    :goto_0
    return-void

    .line 1510
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setAlpha(I)V

    goto :goto_0
.end method

.method public setLayerVisible(IZ)V
    .locals 21
    .parameter "spriteLayer"
    .parameter "isVisible"

    .prologue
    .line 571
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v5, :cond_1

    .line 573
    sget-object v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "setLayerVisible() NG - indicatorSprite is null"

    invoke-static {v5, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    if-nez p2, :cond_2

    .line 579
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    .line 583
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    if-nez v5, :cond_3

    .line 585
    sget-object v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "setLayerVisible() NG - null context"

    invoke-static {v5, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 589
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-nez v5, :cond_4

    .line 591
    sget-object v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "setLayerVisible() NG - shareResources not allocated"

    invoke-static {v5, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 595
    :cond_4
    const/16 v19, 0x0

    .line 596
    .local v19, texture:Lcom/htc/sunnyCore/Texture;
    const/4 v2, 0x0

    .line 597
    .local v2, layer:Lcom/htc/sunnyCore/Sprite$Layer;
    packed-switch p1, :pswitch_data_0

    .line 771
    :goto_1
    :pswitch_0
    if-eqz v19, :cond_0

    if-eqz v2, :cond_0

    .line 772
    const/4 v5, 0x6

    move/from16 v0, p1

    if-ne v0, v5, :cond_17

    .line 774
    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v5

    int-to-float v3, v5

    .line 775
    .local v3, drmWidth:F
    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v5

    int-to-float v4, v5

    .line 776
    .local v4, drmHeight:F
    sget v5, Lcom/htc/album/AlbumCommon/LayoutConstants;->DRM_THUMBNAIL_SIZE:I

    int-to-float v0, v5

    move/from16 v18, v0

    .line 777
    .local v18, gridHeight:F
    const/high16 v5, 0x4000

    div-float v5, v18, v5

    const/high16 v8, 0x4000

    div-float v8, v3, v8

    sub-float/2addr v5, v8

    neg-float v5, v5

    sget v8, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_X_OFFSET:I

    int-to-float v8, v8

    add-float v16, v5, v8

    .line 778
    .local v16, drmX:F
    const/high16 v5, 0x4000

    div-float v5, v18, v5

    const/high16 v8, 0x4000

    div-float v8, v4, v8

    sub-float/2addr v5, v8

    sget v8, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_Y_OFFSET:I

    int-to-float v8, v8

    add-float v17, v5, v8

    .line 779
    .local v17, drmY:F
    move/from16 v0, v16

    neg-float v5, v0

    move/from16 v0, v17

    neg-float v6, v0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 780
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v5, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 797
    .end local v3           #drmWidth:F
    .end local v4           #drmHeight:F
    .end local v16           #drmX:F
    .end local v17           #drmY:F
    .end local v18           #gridHeight:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v5

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_0

    .line 600
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    .line 601
    if-nez v2, :cond_5

    .line 603
    sget-object v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "setLayerVisible() NG - layer corrupt is null"

    invoke-static {v5, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 606
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v5, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureCorrupt:Lcom/htc/sunnyCore/Texture;

    if-nez v5, :cond_6

    .line 608
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v10, 0x20800f0

    invoke-static {v8, v10}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    iput-object v8, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureCorrupt:Lcom/htc/sunnyCore/Texture;

    .line 609
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v5, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureCorrupt:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v5

    if-nez v5, :cond_6

    .line 611
    sget-object v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "setLayerVisible() NG - texture corrupt create failed"

    invoke-static {v5, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 615
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureCorrupt:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v19, v0

    .line 616
    goto/16 :goto_1

    .line 618
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    .line 619
    if-nez v2, :cond_7

    .line 621
    sget-object v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "setLayerVisible() NG - layer videoCorrupt is null"

    invoke-static {v5, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 624
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v5, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureVideoCorrupt:Lcom/htc/sunnyCore/Texture;

    if-nez v5, :cond_8

    .line 626
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v10, 0x7f020021

    invoke-static {v8, v10}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    iput-object v8, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureVideoCorrupt:Lcom/htc/sunnyCore/Texture;

    .line 627
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v5, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureVideoCorrupt:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v5

    if-nez v5, :cond_8

    .line 629
    sget-object v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "setLayerVisible() NG - texture videoCorrupt create failed"

    invoke-static {v5, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 634
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureVideoCorrupt:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v19, v0

    .line 635
    goto/16 :goto_1

    .line 637
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    .line 638
    if-nez v2, :cond_9

    .line 640
    sget-object v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "setLayerVisible() NG - layer DrmCorrupt is null"

    invoke-static {v5, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 643
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v5, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmCorrupt:Lcom/htc/sunnyCore/Texture;

    if-nez v5, :cond_a

    .line 645
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v10, 0x7f02001c

    invoke-static {v8, v10}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    iput-object v8, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmCorrupt:Lcom/htc/sunnyCore/Texture;

    .line 646
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v5, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmCorrupt:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v5

    if-nez v5, :cond_a

    .line 648
    sget-object v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "setLayerVisible() NG - texture DrmCorrupt create failed"

    invoke-static {v5, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 652
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmCorrupt:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v19, v0

    .line 653
    goto/16 :goto_1

    .line 655
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v8, 0x3

    invoke-virtual {v5, v8}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    .line 656
    if-nez v2, :cond_b

    .line 658
    sget-object v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "setupLayer() NG - layer playable is null"

    invoke-static {v5, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 661
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v5, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunnyCore/Texture;

    if-nez v5, :cond_c

    .line 663
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v10, 0x2080054

    invoke-static {v8, v10}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    iput-object v8, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunnyCore/Texture;

    .line 664
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v5, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v5

    if-nez v5, :cond_c

    .line 666
    sget-object v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "setLayerVisible() NG - texture playable create failed"

    invoke-static {v5, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 670
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v19, v0

    .line 671
    goto/16 :goto_1

    .line 673
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    .line 674
    if-nez v2, :cond_d

    .line 676
    sget-object v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "setupLayer() NG - layer playable small is null"

    invoke-static {v5, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 679
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v5, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunnyCore/Texture;

    if-nez v5, :cond_e

    .line 681
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v10, 0x208008b

    invoke-static {v8, v10}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    iput-object v8, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunnyCore/Texture;

    .line 682
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v5, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v5

    if-nez v5, :cond_e

    .line 684
    sget-object v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "setLayerVisible() NG - texture playable small create failed"

    invoke-static {v5, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 688
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v19, v0

    .line 689
    goto/16 :goto_1

    .line 691
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v8, 0x6

    invoke-virtual {v5, v8}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    .line 692
    if-nez v2, :cond_f

    .line 694
    sget-object v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "setupLayer() NG - layer Drm is null"

    invoke-static {v5, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 697
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v5, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    if-nez v5, :cond_10

    .line 699
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v10, 0x7f020029

    invoke-static {v8, v10}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    iput-object v8, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    .line 700
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v5, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v5

    if-nez v5, :cond_10

    .line 702
    sget-object v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "setLayerVisible() NG - texture Drm create failed"

    invoke-static {v5, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 706
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v19, v0

    .line 707
    goto/16 :goto_1

    .line 709
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v8, 0x7

    invoke-virtual {v5, v8}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    .line 710
    if-nez v2, :cond_11

    .line 712
    sget-object v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "setupLayer() NG - layer Drm Text Pressed is null"

    invoke-static {v5, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 715
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v5, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextPressed:Lcom/htc/sunnyCore/Texture;

    if-nez v5, :cond_12

    .line 717
    new-instance v20, Lcom/htc/widget/HtcRimButton;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Lcom/htc/widget/HtcRimButton;-><init>(Landroid/content/Context;)V

    .line 718
    .local v20, viewRimButton:Lcom/htc/widget/HtcRimButton;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setupDRMTextPressUnpressRimButton(Lcom/htc/widget/HtcRimButton;)V

    .line 719
    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcRimButton;->setColorOn(Z)V

    .line 720
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    invoke-static/range {v20 .. v20}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    iput-object v8, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextPressed:Lcom/htc/sunnyCore/Texture;

    .line 722
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v5, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextPressed:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v5

    if-nez v5, :cond_12

    .line 724
    sget-object v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "setLayerVisible() NG - texture drm text pressed create failed"

    invoke-static {v5, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 728
    .end local v20           #viewRimButton:Lcom/htc/widget/HtcRimButton;
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextPressed:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v19, v0

    .line 729
    goto/16 :goto_1

    .line 731
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    .line 732
    if-nez v2, :cond_13

    .line 734
    sget-object v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "setupLayer() NG - layer Drm Text Unpressed is null"

    invoke-static {v5, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 737
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v5, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextUnpressed:Lcom/htc/sunnyCore/Texture;

    if-nez v5, :cond_14

    .line 739
    new-instance v20, Lcom/htc/widget/HtcRimButton;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Lcom/htc/widget/HtcRimButton;-><init>(Landroid/content/Context;)V

    .line 740
    .restart local v20       #viewRimButton:Lcom/htc/widget/HtcRimButton;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setupDRMTextPressUnpressRimButton(Lcom/htc/widget/HtcRimButton;)V

    .line 741
    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcRimButton;->setColorOn(Z)V

    .line 742
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    invoke-static/range {v20 .. v20}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    iput-object v8, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextUnpressed:Lcom/htc/sunnyCore/Texture;

    .line 744
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v5, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextUnpressed:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v5

    if-nez v5, :cond_14

    .line 746
    sget-object v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "setLayerVisible() NG - texture drm text unpressed create failed"

    invoke-static {v5, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 750
    .end local v20           #viewRimButton:Lcom/htc/widget/HtcRimButton;
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextUnpressed:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v19, v0

    .line 751
    goto/16 :goto_1

    .line 753
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v8, 0x9

    invoke-virtual {v5, v8}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    .line 754
    if-nez v2, :cond_15

    .line 756
    sget-object v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "setupLayer() NG - layer loading is null"

    invoke-static {v5, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 759
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v5, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLoading:Lcom/htc/sunnyCore/Texture;

    if-nez v5, :cond_16

    .line 761
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v10, 0x20800f4

    invoke-static {v8, v10}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v8

    iput-object v8, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLoading:Lcom/htc/sunnyCore/Texture;

    .line 762
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v5, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLoading:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v5

    if-nez v5, :cond_16

    .line 764
    sget-object v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v8, "setLayerVisible() NG - texture loading create failed"

    invoke-static {v5, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 768
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLoading:Lcom/htc/sunnyCore/Texture;

    move-object/from16 v19, v0

    goto/16 :goto_1

    .line 782
    :cond_17
    const/4 v5, 0x7

    move/from16 v0, p1

    if-eq v0, v5, :cond_18

    const/16 v5, 0x8

    move/from16 v0, p1

    if-ne v0, v5, :cond_19

    .line 784
    :cond_18
    sget v5, Lcom/htc/album/AlbumCommon/LayoutConstants;->DRM_THUMBNAIL_SIZE:I

    int-to-float v5, v5

    const/high16 v8, 0x4000

    div-float/2addr v5, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f07001f

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    add-float/2addr v5, v8

    sget v8, Lcom/htc/album/AlbumCommon/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float v9, v5, v8

    .line 786
    .local v9, DRM_TEXT_SHIFT_Y:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget v5, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextBGWidth:I

    int-to-float v6, v5

    .line 787
    .local v6, w:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget v5, v5, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextBGHeight:I

    int-to-float v7, v5

    .line 788
    .local v7, h:F
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, v2

    invoke-virtual/range {v5 .. v10}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 789
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v5, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 790
    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v6, v10

    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v7, v11

    invoke-virtual {v2, v5, v8, v10, v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureCoordinatesBy2P(FFFF)V

    goto/16 :goto_2

    .line 794
    .end local v6           #w:F
    .end local v7           #h:F
    .end local v9           #DRM_TEXT_SHIFT_Y:F
    :cond_19
    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v5

    int-to-float v11, v5

    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v5

    int-to-float v12, v5

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v2

    invoke-virtual/range {v10 .. v15}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 795
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v5, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    goto/16 :goto_2

    .line 597
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public setTextureUseMaxQualityAs(I)V
    .locals 9
    .parameter "quality"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1516
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    if-eqz v3, :cond_0

    .line 1518
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    invoke-interface {v3, v4, v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;->queryItemImageTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    .line 1519
    .local v0, textureEQ:Lcom/htc/sunnyCore/Texture;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    invoke-interface {v3, v4, v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;->queryItemImageTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 1520
    .local v1, textureHQ:Lcom/htc/sunnyCore/Texture;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    invoke-interface {v3, v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;->queryItemImageTexture(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    .line 1521
    .local v2, textureLQ:Lcom/htc/sunnyCore/Texture;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v3

    if-eqz v3, :cond_2

    if-lt p1, v7, :cond_2

    .line 1523
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v5, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 1524
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 1525
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    .line 1552
    .end local v0           #textureEQ:Lcom/htc/sunnyCore/Texture;
    .end local v1           #textureHQ:Lcom/htc/sunnyCore/Texture;
    .end local v2           #textureLQ:Lcom/htc/sunnyCore/Texture;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v3, :cond_1

    .line 1553
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    .line 1555
    :cond_1
    return-void

    .line 1528
    .restart local v0       #textureEQ:Lcom/htc/sunnyCore/Texture;
    .restart local v1       #textureHQ:Lcom/htc/sunnyCore/Texture;
    .restart local v2       #textureLQ:Lcom/htc/sunnyCore/Texture;
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v3

    if-eqz v3, :cond_3

    if-lt p1, v6, :cond_3

    .line 1530
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v5, v1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 1531
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 1532
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    goto :goto_0

    .line 1536
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v3

    if-eqz v3, :cond_4

    .line 1538
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v5, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 1539
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 1540
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    goto :goto_0

    .line 1545
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v5, v8}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 1546
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 1548
    iput-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    goto :goto_0
.end method

.method public setVisibleRegionChangeListener(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;)V
    .locals 0
    .parameter "helper"

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTileDecodeHelper:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;

    .line 1036
    return-void
.end method

.method public showDRMIndicator(Z)V
    .locals 13
    .parameter "bForce"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/high16 v10, 0x4000

    .line 1633
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v3, :cond_2

    .line 1635
    const/4 v9, 0x0

    .line 1636
    .local v9, isStateSuccess:Z
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    instance-of v3, v3, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    if-eqz v3, :cond_0

    .line 1638
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->isDrmStateSuccess()Z

    move-result v9

    .line 1640
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 1641
    .local v0, drmLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    if-eqz v9, :cond_5

    if-nez p1, :cond_1

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v3, :cond_5

    .line 1643
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-eqz v3, :cond_4

    .line 1645
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    if-nez v3, :cond_3

    .line 1647
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v5, 0x7f020029

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    .line 1648
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v3

    if-nez v3, :cond_3

    .line 1650
    sget-object v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v4, "showDRMIndicator() NG - texture Drm create failed"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    .end local v0           #drmLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    .end local v9           #isStateSuccess:Z
    :cond_2
    :goto_0
    return-void

    .line 1655
    .restart local v0       #drmLayer:Lcom/htc/sunnyCore/Sprite$Layer;
    .restart local v9       #isStateSuccess:Z
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 1656
    .local v1, drmWidth:F
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v2, v3

    .line 1657
    .local v2, drmHeight:F
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Sprite;->getScale()[F

    move-result-object v8

    .line 1659
    .local v8, imageScale:[F
    aget v3, v8, v11

    div-float/2addr v3, v10

    div-float v4, v1, v10

    sub-float/2addr v3, v4

    neg-float v3, v3

    sget v4, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_X_OFFSET:I

    int-to-float v4, v4

    add-float v6, v3, v4

    .line 1660
    .local v6, drmX:F
    aget v3, v8, v12

    div-float/2addr v3, v10

    div-float v4, v2, v10

    sub-float/2addr v3, v4

    sget v4, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_Y_OFFSET:I

    int-to-float v4, v4

    add-float v7, v3, v4

    .line 1661
    .local v7, drmY:F
    neg-float v3, v6

    neg-float v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 1662
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0, v11, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 1663
    invoke-virtual {v0, v12}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    .line 1667
    .end local v1           #drmWidth:F
    .end local v2           #drmHeight:F
    .end local v6           #drmX:F
    .end local v7           #drmY:F
    .end local v8           #imageScale:[F
    :cond_4
    sget-object v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v4, "showDRMIndicator NG - drmLayer_shareResources is null"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1672
    :cond_5
    sget-object v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v4, "showDRMIndicator - do nothing for state not success"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unbindMediaData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 414
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 415
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 418
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v0

    invoke-static {v0, v1, v1, v1}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetRotate(IFFF)V

    .line 420
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 421
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 423
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 424
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 425
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 426
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 427
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 428
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 429
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 432
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 433
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 434
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 436
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    .line 437
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    .line 438
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    .line 439
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 440
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    .line 441
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 442
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    .line 444
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    .line 445
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    .line 446
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    .line 447
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 448
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunnyCore/Texture;

    .line 449
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    .line 450
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsAniamtion:Z

    .line 451
    return-void
.end method
