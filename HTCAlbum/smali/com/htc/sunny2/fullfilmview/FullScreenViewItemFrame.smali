.class public Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
.super Ljava/lang/Object;
.source "FullScreenViewItemFrame.java"


# static fields
.field private static final DEBUG:Z = false

.field protected static final DEFAULT_ZOOM:F = 1.0f

.field private static final DOUBLE_TAP_ZOOM_IN_NAME:Ljava/lang/String; = "double_tap_zoom_in"

.field private static final DOUBLE_TAP_ZOOM_OUT_NAME:Ljava/lang/String; = "double_tap_zoom_out"

.field private static final LTAG:Ljava/lang/String; = null

.field protected static final MAX_ADJUSTED_ZOOM:F = 2.5f

.field protected static final MAX_ADJUSTED_ZOOM_PL:F = 3.0f

.field protected static final MAX_PIXELS_H:F = 2388.0f

.field protected static final MAX_PIXELS_W:F = 3888.0f

.field protected static final MAX_ZOOM:F = 2.0f

.field static final TOLERANCE_ZOOM:F = 0.2f

.field protected static final UPBOUND_RATIO:F = 10.0f

.field protected static final ZOOM_IN_STEP:F = 1.2f

.field protected static final ZOOM_OUT_STEP:F = 0.8f


# instance fields
.field private final ENLARGE_FACTOR_FOR_SMALL_IMAGE:F

.field private final EXTRA_ZOOM_IN_FACTOR:F

.field private final EXTRA_ZOOM_OUT_FACTOR:F

.field private final ITEMINFO_LOCK:Ljava/lang/Object;

.field private final MAX_ZOOM_FACTOR_AGAINST_ORIGINAL_SIZE:F

.field private _displayImageCenterBottomBoundary:F

.field private _displayImageCenterLeftBoundary:F

.field private _displayImageCenterRightBoundary:F

.field private _displayImageCenterTopBoundary:F

.field private _displayImageLeftOnViewport:F

.field private _displayImageTopOnViewport:F

.field private accumulatedPanXDistance:F

.field private displayImageCenterX:F

.field private displayImageCenterY:F

.field private displayImageHeight:F

.field private displayImageWidth:F

.field private fitToScreenImageHeight:F

.field private fitToScreenImageWidth:F

.field private frameHeight:F

.field private frameWidth:F

.field private imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

.field private imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

.field private isMoveFrame:Z

.field private item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

.field private itemIndex:I

.field private mDoubleTapZoomFactor:F

.field private mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

.field private maxZoomFactor:F

.field private minZoomFactor:F

.field private onPanning:Z

.field private onZoomMode:Z

.field private panLimitRegionWidth:I

.field private panLimitRegionWidthRationToFrameWidth:F

.field private panStartOnBottomBorder:Z

.field private panStartOnLeftBorder:Z

.field private panStartOnRightBorder:Z

.field private panStartOnTopBorder:Z

.field private positionX:F

.field private positionY:F

.field private positionZ:F

.field private renderThread:Lcom/htc/sunnyCore/RenderThread;

.field private sceneNode:Lcom/htc/sunnyCore/SceneNode;

.field private scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

.field private scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

.field private sunnyEnvironment:I

.field private final twoAxisOnFlingAdjustmentResult:[F

.field private zoomFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V
    .locals 6
    .parameter "imageTextureProvider"
    .parameter "fsScene"

    .prologue
    const/high16 v5, 0x3f80

    const/high16 v4, 0x4000

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 143
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->MAX_ZOOM_FACTOR_AGAINST_ORIGINAL_SIZE:F

    .line 54
    const/high16 v0, 0x3fa0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->EXTRA_ZOOM_IN_FACTOR:F

    .line 55
    const/high16 v0, 0x3fa0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->EXTRA_ZOOM_OUT_FACTOR:F

    .line 57
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ENLARGE_FACTOR_FOR_SMALL_IMAGE:F

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    .line 63
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    .line 65
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 67
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    .line 68
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    .line 70
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sunnyEnvironment:I

    .line 71
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunnyCore/SceneNode;

    .line 73
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    .line 77
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    .line 78
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionY:F

    .line 79
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionZ:F

    .line 81
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    .line 82
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    .line 84
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 85
    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    .line 86
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    .line 88
    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    .line 94
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    .line 95
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    .line 96
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 97
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 99
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    .line 101
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    .line 102
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    .line 103
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    .line 104
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    .line 105
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnTopBorder:Z

    .line 106
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnBottomBorder:Z

    .line 107
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidthRationToFrameWidth:F

    .line 108
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    .line 109
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    .line 112
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->twoAxisOnFlingAdjustmentResult:[F

    .line 116
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 118
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 119
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 132
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageLeftOnViewport:F

    .line 133
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageTopOnViewport:F

    .line 135
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    .line 136
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    .line 137
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    .line 138
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    .line 144
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    .line 145
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    return v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    return v0
.end method

.method static synthetic access$600(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    return v0
.end method

.method static synthetic access$700(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    return v0
.end method

.method static synthetic access$800(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    return v0
.end method

.method private calculateDisplayImageCenterBoundary()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    const/4 v2, 0x0

    .line 1548
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    if-nez v0, :cond_0

    .line 1550
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    .line 1551
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    .line 1552
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    .line 1553
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    .line 1578
    :goto_0
    return-void

    .line 1557
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 1559
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    .line 1560
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    .line 1568
    :goto_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 1570
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    .line 1571
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    goto :goto_0

    .line 1564
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    .line 1565
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    neg-float v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    goto :goto_1

    .line 1575
    :cond_2
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    .line 1576
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    neg-float v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    goto :goto_0
.end method

.method private calculateDisplayImageCenterBoundary(FF)V
    .locals 3
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    const/high16 v2, 0x4000

    const/4 v1, 0x0

    .line 1582
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 1584
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    .line 1585
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    .line 1593
    :goto_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    .line 1595
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    .line 1596
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    .line 1603
    :goto_1
    return-void

    .line 1589
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    sub-float/2addr v0, p1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    .line 1590
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    neg-float v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    goto :goto_0

    .line 1600
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    sub-float v0, p2, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    .line 1601
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    neg-float v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    goto :goto_1
.end method

.method private calculateDisplayImageLeftTopOnViewport()V
    .locals 3

    .prologue
    const/high16 v2, 0x4000

    .line 1531
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageLeftOnViewport:F

    .line 1532
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionY:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    add-float/2addr v0, v1

    neg-float v0, v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageTopOnViewport:F

    .line 1533
    return-void
.end method

.method private calculateFitToScreenImageSize(FF)Z
    .locals 6
    .parameter "sourceImageWidth"
    .parameter "sourceImageHeight"

    .prologue
    const/high16 v5, 0x4000

    const/4 v4, 0x0

    .line 1367
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    cmpl-float v2, p1, v4

    if-eqz v2, :cond_0

    cmpl-float v2, p2, v4

    if-nez v2, :cond_1

    .line 1369
    :cond_0
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v3, "calculateInitDisplayImageSize() NG - zero value"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    .line 1371
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    .line 1372
    const/4 v2, 0x0

    .line 1400
    :goto_0
    return v2

    .line 1375
    :cond_1
    mul-float v2, p1, v5

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpl-float v2, v2, v3

    if-gez v2, :cond_2

    mul-float v2, p2, v5

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    .line 1378
    :cond_2
    div-float v1, p2, p1

    .line 1379
    .local v1, imageAspect:F
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    div-float v0, v2, v3

    .line 1381
    .local v0, frameAspect:F
    cmpl-float v2, v1, v0

    if-ltz v2, :cond_3

    .line 1383
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    .line 1384
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    div-float/2addr v2, v1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    .line 1400
    .end local v0           #frameAspect:F
    .end local v1           #imageAspect:F
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1388
    .restart local v0       #frameAspect:F
    .restart local v1       #imageAspect:F
    :cond_3
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    .line 1389
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    goto :goto_1

    .line 1395
    .end local v0           #frameAspect:F
    .end local v1           #imageAspect:F
    :cond_4
    mul-float v2, p1, v5

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    .line 1396
    mul-float v2, p2, v5

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    goto :goto_1
.end method

.method private getRotatedSourceImageHeight()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1346
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-nez v1, :cond_0

    .line 1348
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "getRotatedSourceImageHeight() NG - null item"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    :goto_0
    return v0

    .line 1352
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getImageRotateDegrees()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1361
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "getRotatedSourceImageHeight() NG - error degrees"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1356
    :sswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getSourceImageHeight()I

    move-result v0

    goto :goto_0

    .line 1359
    :sswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getSourceImageWidth()I

    move-result v0

    goto :goto_0

    .line 1352
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private getRotatedSourceImageWidth()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1325
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-nez v1, :cond_0

    .line 1327
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "getRotatedSourceImageWidth() NG - null item"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    :goto_0
    return v0

    .line 1331
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getImageRotateDegrees()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1340
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "getRotatedSourceImageWidth() NG - error degrees"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1335
    :sswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getSourceImageWidth()I

    move-result v0

    goto :goto_0

    .line 1338
    :sswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getSourceImageHeight()I

    move-result v0

    goto :goto_0

    .line 1331
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private initDisplayImageGeometry()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1516
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateFitToScreenImageSize(FF)Z

    .line 1517
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateMaxMinDClickZoomFactor(FF)Z

    .line 1518
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    .line 1519
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    .line 1520
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    .line 1521
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 1522
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 1523
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 1525
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFF)V

    .line 1527
    :cond_0
    return-void
.end method


# virtual methods
.method public addToScene(IILcom/htc/sunnyCore/SceneNode;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;)Z
    .locals 3
    .parameter "frameWidth"
    .parameter "frameHeight"
    .parameter "parentSceneNode"
    .parameter "itemPrototype"

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "addToScene() NG - already added"

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 293
    :goto_0
    return v0

    .line 260
    :cond_0
    int-to-float v0, p1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    .line 261
    int-to-float v0, p2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    .line 263
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidthRationToFrameWidth:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    .line 267
    invoke-static {}, Lcom/htc/sunnyCore/SceneNode;->obtain()Lcom/htc/sunnyCore/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunnyCore/SceneNode;

    .line 268
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SceneNode;->getNodeId()I

    move-result v0

    if-nez v0, :cond_1

    .line 270
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "addToScene() NG - create scene node"

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0, p3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->removeFromScene(Lcom/htc/sunnyCore/SceneNode;)V

    move v0, v1

    .line 272
    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {p3, v0}, Lcom/htc/sunnyCore/SceneNode;->addSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 280
    invoke-virtual {p4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->create()Lcom/htc/sunnyCore/ViewItem;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    .line 282
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-nez v0, :cond_2

    .line 284
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "addToScene() NG - create item"

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0, p3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->removeFromScene(Lcom/htc/sunnyCore/SceneNode;)V

    move v0, v1

    .line 286
    goto :goto_0

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sunnyEnvironment:I

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->sunnyEnvironment:I

    .line 290
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    .line 291
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->attachToSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 293
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public adjustZoomFactor(F)F
    .locals 1
    .parameter "factor"

    .prologue
    .line 1187
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1188
    iget p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 1189
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 1190
    iget p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    .line 1191
    :cond_1
    return p1
.end method

.method public adjustZoomFactorExtra(F)F
    .locals 1
    .parameter "factor"

    .prologue
    .line 1165
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->adjustZoomFactorExtra(FZ)F

    move-result v0

    return v0
.end method

.method public adjustZoomFactorExtra(FZ)F
    .locals 2
    .parameter "factor"
    .parameter "canDoAdjustZoomFactorExtra"

    .prologue
    const/high16 v1, 0x3fa0

    .line 1170
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    mul-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1171
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    mul-float p1, v0, v1

    .line 1172
    :cond_0
    if-eqz p2, :cond_2

    .line 1174
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    div-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 1175
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    div-float p1, v0, v1

    .line 1182
    :cond_1
    :goto_0
    return p1

    .line 1179
    :cond_2
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 1180
    iget p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    goto :goto_0
.end method

.method public bindItem(ILcom/htc/sunnyCore/IMediaData;)Z
    .locals 3
    .parameter "itemIndex"
    .parameter "mediaData"

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    .line 336
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 337
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    .line 339
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    check-cast p2, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .end local p2
    invoke-virtual {v0, v2, p2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->bindMediaData(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    .line 340
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->initDisplayImageGeometry()V

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    .line 345
    monitor-exit v1

    .line 347
    const/4 v0, 0x1

    return v0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method calculateImageRXOnViewportPoint(F)F
    .locals 2
    .parameter "viewportX"

    .prologue
    .line 1607
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    div-float/2addr v0, v1

    return v0
.end method

.method calculateImageRYOnViewportPoint(F)F
    .locals 2
    .parameter "viewportY"

    .prologue
    .line 1612
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    div-float/2addr v0, v1

    return v0
.end method

.method public calculateMaxMinDClickZoomFactor(FF)Z
    .locals 10
    .parameter "sourceImageWidth"
    .parameter "sourceImageHeight"

    .prologue
    const/high16 v9, 0x437a

    const/high16 v8, 0x4080

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/high16 v7, 0x4000

    .line 1405
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    cmpl-float v4, p1, v5

    if-eqz v4, :cond_0

    cmpl-float v4, p2, v5

    if-nez v4, :cond_1

    .line 1407
    :cond_0
    sget-object v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v5, "calculateMaxMinZoomFactor() NG - zero value"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 1409
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    .line 1410
    const/4 v4, 0x0

    .line 1511
    :goto_0
    return v4

    .line 1413
    :cond_1
    const/4 v0, 0x0

    .line 1414
    .local v0, isPanorama:Z
    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    .line 1416
    cmpl-float v4, p1, p2

    if-ltz v4, :cond_5

    .line 1433
    mul-float v4, p1, v7

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    div-float/2addr v4, v5

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 1434
    cmpl-float v4, p2, v9

    if-lez v4, :cond_2

    mul-float v4, p2, v8

    cmpl-float v4, p1, v4

    if-lez v4, :cond_2

    .line 1437
    const/4 v0, 0x1

    .line 1438
    mul-float v4, p2, v7

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    div-float/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1442
    .local v3, real:F
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    .line 1443
    mul-float v4, p2, v7

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    div-float/2addr v4, v5

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 1476
    .end local v3           #real:F
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 1489
    :cond_3
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_7

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_7

    .line 1490
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    div-float v1, v4, v5

    .line 1491
    .local v1, rFrame:F
    div-float v2, p1, p2

    .line 1492
    .local v2, rSource:F
    cmpl-float v4, v1, v2

    if-ltz v4, :cond_6

    .line 1494
    mul-float v4, p2, v7

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    div-float/2addr v4, v5

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 1499
    :goto_2
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    .line 1511
    .end local v1           #rFrame:F
    .end local v2           #rSource:F
    :cond_4
    :goto_3
    const/4 v4, 0x1

    goto :goto_0

    .line 1463
    :cond_5
    mul-float v4, p2, v7

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    div-float/2addr v4, v5

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 1464
    cmpl-float v4, p1, v9

    if-lez v4, :cond_2

    mul-float v4, p1, v8

    cmpl-float v4, p2, v4

    if-lez v4, :cond_2

    .line 1467
    const/4 v0, 0x1

    .line 1468
    mul-float v4, p1, v7

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    div-float/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1472
    .restart local v3       #real:F
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    .line 1473
    mul-float v4, p2, v7

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    div-float/2addr v4, v5

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    goto :goto_1

    .line 1497
    .end local v3           #real:F
    .restart local v1       #rFrame:F
    .restart local v2       #rSource:F
    :cond_6
    mul-float v4, p1, v7

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    div-float/2addr v4, v5

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    goto :goto_2

    .line 1504
    .end local v1           #rFrame:F
    .end local v2           #rSource:F
    :cond_7
    if-nez v0, :cond_4

    .line 1506
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    goto :goto_3
.end method

.method public cancelFling()V
    .locals 3

    .prologue
    .line 488
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->reset()V

    .line 490
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->reset()V

    .line 491
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v2, "Fling"

    invoke-virtual {v1, p0, v2}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v0

    .line 492
    .local v0, action:Lcom/htc/sunnyCore/RenderThreadAction;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onFlingEndIRT()V

    .line 500
    .end local v0           #action:Lcom/htc/sunnyCore/RenderThreadAction;
    :cond_0
    return-void
.end method

.method public clearRenderingEnvironment()V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sunnyEnvironment:I

    .line 246
    return-void
.end method

.method public compensateAccumulatedPanXDistance(F)V
    .locals 1
    .parameter "delta"

    .prologue
    .line 970
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    .line 971
    return-void
.end method

.method doFling()V
    .locals 3

    .prologue
    .line 482
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;

    const-string v2, "Fling"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 485
    :cond_0
    return-void
.end method

.method doZoom(FFFZ)V
    .locals 6
    .parameter "newZoomFactor"
    .parameter "imageCenterX"
    .parameter "imageCenterY"
    .parameter "doAdjust"

    .prologue
    .line 1644
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1645
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-nez v0, :cond_1

    .line 1647
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][FullScreenViewItemFrame][doZoom]item is null"

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    monitor-exit v1

    .line 1682
    :cond_0
    :goto_0
    return-void

    .line 1651
    :cond_1
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    .line 1653
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_2

    .line 1655
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onChildFrameZooming(F)V

    .line 1658
    :cond_2
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    .line 1659
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    .line 1661
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 1662
    iput p3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 1664
    if-eqz p4, :cond_4

    .line 1666
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    .line 1667
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    .line 1668
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 1671
    :cond_3
    :goto_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6

    .line 1672
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 1676
    :cond_4
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1677
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 1679
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFFZ)V

    goto :goto_0

    .line 1669
    :cond_5
    :try_start_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 1670
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    goto :goto_1

    .line 1676
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1673
    :cond_6
    :try_start_2
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 1674
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method doZoom(FFFZZII)V
    .locals 8
    .parameter "newZoomFactor"
    .parameter "imageCenterX"
    .parameter "imageCenterY"
    .parameter "isPinchZooming"
    .parameter "doAdjust"
    .parameter "currentStep"
    .parameter "totalStep"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 1686
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1688
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-nez v0, :cond_1

    .line 1690
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][FullScreenViewItemFrame][doZoom2]item is null"

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    monitor-exit v1

    .line 1801
    :cond_0
    :goto_0
    return-void

    .line 1694
    :cond_1
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    .line 1696
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_2

    .line 1698
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onChildFrameZooming(F)V

    .line 1701
    :cond_2
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    .line 1702
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    .line 1704
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 1705
    iput p3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 1707
    if-eqz p5, :cond_4

    .line 1709
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    .line 1710
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6

    .line 1714
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 1732
    :cond_3
    :goto_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_7

    .line 1736
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 1755
    :cond_4
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1756
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_5

    .line 1758
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFFZ)V

    .line 1761
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 1763
    if-eqz p4, :cond_a

    .line 1765
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_9

    .line 1767
    sget-boolean v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->IS_FULLHD_OR_HIGHER:Z

    if-eqz v0, :cond_8

    .line 1770
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    goto :goto_0

    .line 1721
    :cond_6
    :try_start_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 1725
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    goto :goto_1

    .line 1755
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1743
    :cond_7
    :try_start_2
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 1747
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1776
    :cond_8
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, v7}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    goto/16 :goto_0

    .line 1782
    :cond_9
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    goto/16 :goto_0

    .line 1787
    :cond_a
    sget-boolean v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->IS_FULLHD_OR_HIGHER:Z

    if-eqz v0, :cond_b

    .line 1790
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    goto/16 :goto_0

    .line 1795
    :cond_b
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, v7}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    goto/16 :goto_0
.end method

.method doZoomBegin()V
    .locals 1

    .prologue
    .line 1617
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoomBegin(Z)V

    .line 1618
    return-void
.end method

.method doZoomBegin(Z)V
    .locals 2
    .parameter "isFromDoubleTap"

    .prologue
    .line 1622
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    .line 1623
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_0

    .line 1625
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onChildFrameZoomBegin(F)V

    .line 1628
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_1

    .line 1630
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onZoomBeginIRT()V

    .line 1633
    :cond_1
    if-eqz p1, :cond_2

    .line 1635
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_2

    .line 1637
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onDoubleTapZoomBeginIRT()V

    .line 1640
    :cond_2
    return-void
.end method

.method doZoomEnd()V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    .line 1807
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_0

    .line 1809
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onChildFrameZoomEnd(F)V

    .line 1810
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onDoubleTapZoomEndIRT()V

    .line 1812
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_1

    .line 1814
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onZoomEndIRT()V

    .line 1816
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    move v0, v5

    :goto_0
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    .line 1818
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_2

    .line 1820
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    if-nez v0, :cond_6

    .line 1822
    sget-boolean v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->IS_FULLHD_OR_HIGHER:Z

    if-eqz v0, :cond_5

    .line 1825
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    .line 1839
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_3

    .line 1841
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFFZ)V

    .line 1843
    :cond_3
    return-void

    .line 1816
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1830
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    goto :goto_1

    .line 1836
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    goto :goto_1
.end method

.method public getFitToScreenImageHeight()F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    return v0
.end method

.method public getFitToScreenImageWidth()F
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    return v0
.end method

.method public getFrameHeight()F
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    return v0
.end method

.method public getFrameWidth()F
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    return v0
.end method

.method public getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    return-object v0
.end method

.method public getItemIndex()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    return v0
.end method

.method public getItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z
    .locals 3
    .parameter "itemInfo"

    .prologue
    const/4 v0, 0x0

    .line 1206
    if-nez p1, :cond_0

    .line 1208
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "getItemInfo() NG - null itemInfo"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    :goto_0
    return v0

    .line 1212
    :cond_0
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    if-gez v1, :cond_1

    .line 1214
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "getItemInfo() NG - null itemIndex"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1218
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1219
    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    .line 1220
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->positionOffset:F

    .line 1221
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->zoomFactor:F

    .line 1223
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageLeftTopOnViewport()V

    .line 1224
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageLeftOnViewport:F

    float-to-int v0, v0

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageLeft:I

    .line 1225
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageTopOnViewport:F

    float-to-int v0, v0

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageTop:I

    .line 1226
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    float-to-int v0, v0

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageWidth:I

    .line 1227
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    float-to-int v0, v0

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageHeight:I

    .line 1228
    monitor-exit v1

    .line 1229
    const/4 v0, 0x1

    goto :goto_0

    .line 1228
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPositionX()F
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    return v0
.end method

.method public getZoomFactor()F
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    return v0
.end method

.method public isItemZoomable()Z
    .locals 1

    .prologue
    .line 1157
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-nez v0, :cond_1

    .line 1158
    :cond_0
    const/4 v0, 0x0

    .line 1160
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->isZoomable()Z

    move-result v0

    goto :goto_0
.end method

.method public moveImageByX(F)V
    .locals 8
    .parameter "delta"

    .prologue
    const/4 v2, 0x0

    .line 604
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    .line 609
    const/4 v6, 0x0

    .line 611
    .local v6, appliedPan:F
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_0

    .line 612
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    sub-float v7, v0, v1

    .line 614
    .local v7, toleratedPanDistance:F
    cmpl-float v0, v7, p1

    if-lez v0, :cond_3

    .line 615
    move v6, p1

    .line 626
    .end local v7           #toleratedPanDistance:F
    :cond_0
    :goto_0
    cmpg-float v0, p1, v2

    if-gez v0, :cond_1

    .line 627
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    sub-float v7, v0, v1

    .line 629
    .restart local v7       #toleratedPanDistance:F
    cmpg-float v0, v7, p1

    if-gez v0, :cond_5

    .line 630
    move v6, p1

    .line 641
    .end local v7           #toleratedPanDistance:F
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 642
    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    add-float/2addr v0, v6

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 643
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_7

    .line 644
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 648
    :cond_2
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_8

    .line 651
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFFZ)V

    .line 657
    :goto_3
    return-void

    .line 616
    .restart local v7       #toleratedPanDistance:F
    :cond_3
    cmpl-float v0, v7, v2

    if-nez v0, :cond_4

    .line 617
    const/4 v6, 0x0

    goto :goto_0

    .line 619
    :cond_4
    move v6, v7

    goto :goto_0

    .line 631
    :cond_5
    cmpl-float v0, v7, v2

    if-nez v0, :cond_6

    .line 632
    const/4 v6, 0x0

    goto :goto_1

    .line 634
    :cond_6
    move v6, v7

    goto :goto_1

    .line 645
    .end local v7           #toleratedPanDistance:F
    :cond_7
    :try_start_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 646
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    goto :goto_2

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 655
    :cond_8
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][FullScreenViewItemFrame][moveImageByX]this.item is null"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public moveImageByY(F)V
    .locals 8
    .parameter "delta"

    .prologue
    const/4 v2, 0x0

    .line 663
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    .line 667
    const/4 v6, 0x0

    .line 669
    .local v6, appliedPan:F
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_0

    .line 670
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    sub-float v7, v0, v1

    .line 672
    .local v7, toleratedPanDistance:F
    cmpl-float v0, v7, p1

    if-lez v0, :cond_3

    .line 673
    move v6, p1

    .line 683
    .end local v7           #toleratedPanDistance:F
    :cond_0
    :goto_0
    cmpg-float v0, p1, v2

    if-gez v0, :cond_1

    .line 684
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    sub-float v7, v0, v1

    .line 686
    .restart local v7       #toleratedPanDistance:F
    cmpg-float v0, v7, p1

    if-gez v0, :cond_5

    .line 687
    move v6, p1

    .line 696
    .end local v7           #toleratedPanDistance:F
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 697
    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    add-float/2addr v0, v6

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 698
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    .line 699
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 703
    :cond_2
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 704
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_8

    .line 706
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFFZ)V

    .line 713
    :goto_3
    return-void

    .line 674
    .restart local v7       #toleratedPanDistance:F
    :cond_3
    cmpl-float v0, v7, v2

    if-nez v0, :cond_4

    .line 675
    const/4 v6, 0x0

    goto :goto_0

    .line 677
    :cond_4
    move v6, v7

    goto :goto_0

    .line 688
    :cond_5
    cmpl-float v0, v7, v2

    if-nez v0, :cond_6

    .line 689
    const/4 v6, 0x0

    goto :goto_1

    .line 691
    :cond_6
    move v6, v7

    goto :goto_1

    .line 700
    .end local v7           #toleratedPanDistance:F
    :cond_7
    :try_start_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 701
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    goto :goto_2

    .line 703
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 710
    :cond_8
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][FullScreenViewItemFrame][moveImageByY]this.item is null"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public notifiedItemTextureExpired(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 1143
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    if-eq v0, p1, :cond_1

    .line 1145
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifiedItemTextureExpired NG - index error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageTextureExpired()V

    goto :goto_0
.end method

.method public notifiedItemTextureReady(ILcom/htc/sunnyCore/Texture;)V
    .locals 7
    .parameter "index"
    .parameter "texture"

    .prologue
    .line 1085
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    if-eq v4, p1, :cond_1

    .line 1087
    sget-object v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifiedItemTextureReady NG - index error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    :cond_0
    :goto_0
    return-void

    .line 1091
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v4, :cond_0

    .line 1093
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v5, "double_tap_zoom_in"

    invoke-virtual {v4, p0, v5}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v5, "double_tap_zoom_out"

    invoke-virtual {v4, p0, v5}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1095
    :cond_2
    sget-object v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][FullScreenViewItemFrame]notifiedItemTextureReady, NOT notified because double tap zooming in/out"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1100
    :cond_3
    const/4 v3, 0x0

    .line 1101
    .local v3, sourceImageDimensionWidth:I
    const/4 v2, 0x0

    .line 1102
    .local v2, sourceImageDimensionHeight:I
    const/4 v0, 0x0

    .line 1104
    .local v0, checkTextureSizeUpdate:Z
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v4

    if-eqz v4, :cond_5

    .line 1108
    invoke-virtual {p2}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    .line 1109
    invoke-virtual {p2}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v2

    .line 1110
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getWidth()I

    move-result v4

    if-lt v4, v3, :cond_4

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getHeight()I

    move-result v4

    if-ge v4, v2, :cond_5

    .line 1112
    :cond_4
    const/4 v0, 0x1

    .line 1118
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v4, p2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageTextureReady(Lcom/htc/sunnyCore/Texture;)V

    .line 1120
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    .line 1122
    .local v1, galleryItem:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
    iget-boolean v4, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-nez v4, :cond_6

    iget-boolean v4, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    if-nez v4, :cond_6

    if-eqz v0, :cond_0

    .line 1124
    :cond_6
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    if-eqz v4, :cond_7

    .line 1125
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v4, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateFitToScreenImageSize(FF)Z

    .line 1126
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateMaxMinDClickZoomFactor(FF)Z

    goto :goto_0

    .line 1128
    :cond_7
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v5

    .line 1130
    :try_start_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->initDisplayImageGeometry()V

    .line 1131
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    .line 1132
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    .line 1133
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "e"

    .prologue
    .line 1241
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 1243
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reject double click zoom due to frame position. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    const/4 v1, 0x1

    .line 1317
    :goto_0
    return v1

    .line 1247
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->isZoomable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1249
    :cond_1
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "Reject double click zoom due to null item or item not zoomable."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    const/4 v1, 0x1

    goto :goto_0

    .line 1253
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v2, "double_tap_zoom_in"

    invoke-virtual {v1, p0, v2}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v2, "double_tap_zoom_out"

    invoke-virtual {v1, p0, v2}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1256
    :cond_3
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "Reject double click zoom due to zooming."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    const/4 v1, 0x1

    goto :goto_0

    .line 1262
    :cond_4
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_8

    .line 1264
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "double tap zoom out"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    :cond_5
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;

    const-string v2, "double_tap_zoom_out"

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;FFFFFF)V

    .line 1272
    .local v0, zoom:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v1, :cond_6

    const-string v1, "profiler.performance"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 1273
    :cond_6
    const-string v1, "AutoTest"

    const-string v2, "[AutoProf](301) [OTHER][Gallery][DoubleTapZoomOut][START]\u2026"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :cond_7
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 1276
    const/4 v1, 0x1

    goto :goto_0

    .line 1281
    .end local v0           #zoom:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;
    :cond_8
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    neg-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    add-float v10, v1, v2

    .line 1282
    .local v10, doubleClickX:F
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float v11, v1, v2

    .line 1284
    .local v11, doubleClickY:F
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    .line 1285
    .local v7, targetZoomFactor:F
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    cmpl-float v1, v7, v1

    if-lez v1, :cond_9

    .line 1286
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 1288
    :cond_9
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    mul-float v13, v7, v1

    .line 1289
    .local v13, targetImageWidth:F
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    mul-float v12, v7, v1

    .line 1291
    .local v12, targetImageHeight:F
    neg-float v1, v13

    mul-float/2addr v1, v10

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    div-float v8, v1, v2

    .line 1292
    .local v8, targetImageCenterX:F
    neg-float v1, v12

    mul-float/2addr v1, v11

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    div-float v9, v1, v2

    .line 1294
    .local v9, targetImageCenterY:F
    invoke-direct {p0, v13, v12}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary(FF)V

    .line 1295
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    cmpg-float v1, v8, v1

    if-gez v1, :cond_f

    .line 1296
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    .line 1299
    :cond_a
    :goto_1
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    cmpg-float v1, v9, v1

    if-gez v1, :cond_10

    .line 1300
    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    .line 1304
    :cond_b
    :goto_2
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_c

    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "double tap zoom in"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    :cond_c
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;

    const-string v2, "double_tap_zoom_in"

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;FFFFFF)V

    .line 1312
    .restart local v0       #zoom:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v1, :cond_d

    const-string v1, "profiler.performance"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    .line 1313
    :cond_d
    const-string v1, "AutoTest"

    const-string v2, "[AutoProf](301) [OTHER][Gallery][DoubleTapZoomIn][START]\u2026"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_e
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 1317
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1297
    .end local v0           #zoom:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;
    :cond_f
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    cmpl-float v1, v8, v1

    if-lez v1, :cond_a

    .line 1298
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    goto :goto_1

    .line 1301
    :cond_10
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    cmpl-float v1, v9, v1

    if-lez v1, :cond_b

    .line 1302
    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    goto :goto_2
.end method

.method public onFlingIRT(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 417
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    if-nez v2, :cond_1

    .line 437
    :cond_0
    :goto_0
    return v0

    .line 429
    :cond_1
    neg-float v2, p4

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->twoAxisOnFlingAdjustmentResult:[F

    invoke-static {p3, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->adjustForTwoAxisUsage(FF[F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->twoAxisOnFlingAdjustmentResult:[F

    aget v0, v3, v0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->twoAxisOnFlingAdjustmentResult:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v2, v0, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onFling(FF)V

    .line 432
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->twoAxisOnFlingAdjustmentResult:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->twoAxisOnFlingAdjustmentResult:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onFling(FF)V

    .line 433
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doFling()V

    move v0, v1

    .line 434
    goto :goto_0
.end method

.method public onTileTextureReadyIRT(Lcom/htc/sunny2/fullfilmview/TileDecodeItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 1865
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onTileTextureReadyIRT(Lcom/htc/sunny2/fullfilmview/TileDecodeItem;)V

    .line 1867
    :cond_0
    return-void
.end method

.method public panBegin()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 551
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panEnd()V

    .line 565
    :cond_0
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    .line 566
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    .line 567
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    .line 568
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    .line 569
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnTopBorder:Z

    .line 570
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnBottomBorder:Z

    .line 571
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    .line 572
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 573
    :try_start_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    .line 574
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    .line 579
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 581
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    .line 584
    :cond_2
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnTopBorder:Z

    .line 589
    :cond_3
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_4

    .line 591
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnBottomBorder:Z

    .line 594
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_5

    .line 597
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onPanBeginIRT()V

    .line 599
    :cond_5
    return-void

    .line 594
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public panEnd()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1065
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    if-eqz v0, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onPanEndIRT()V

    .line 1071
    :cond_0
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    .line 1072
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    .line 1074
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_1

    .line 1076
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFFZ)V

    .line 1080
    :cond_1
    return-void
.end method

.method public panX(F)F
    .locals 15
    .parameter "delta"

    .prologue
    .line 720
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    if-nez v0, :cond_0

    .line 722
    const/4 v7, 0x0

    .line 965
    :goto_0
    return v7

    .line 726
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    if-eqz v0, :cond_7

    const/4 v11, 0x1

    .line 730
    .local v11, isItemStartPanXOnBothBorder:Z
    :goto_1
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    .line 734
    const/4 v6, 0x0

    .line 735
    .local v6, appliedPan:F
    const/4 v7, 0x0

    .line 737
    .local v7, eatedPan:F
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 739
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    sub-float v12, v0, v1

    .line 741
    .local v12, toleratedPanDistance:F
    cmpl-float v0, v12, p1

    if-lez v0, :cond_a

    .line 743
    move/from16 v6, p1

    .line 744
    move/from16 v7, p1

    .line 745
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    if-eqz v0, :cond_9

    .line 747
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v0

    add-float v0, v0, p1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_8

    .line 749
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isItemLastInList(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 751
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    .line 753
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v0

    add-float v6, p1, v0

    .line 754
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v0

    add-float v7, p1, v0

    .line 842
    .end local v12           #toleratedPanDistance:F
    :cond_2
    :goto_2
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    .line 844
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    sub-float v12, v0, v1

    .line 846
    .restart local v12       #toleratedPanDistance:F
    cmpg-float v0, v12, p1

    if-gez v0, :cond_1a

    .line 848
    move/from16 v6, p1

    .line 849
    move/from16 v7, p1

    .line 850
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    if-eqz v0, :cond_19

    .line 852
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v0

    add-float v0, v0, p1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_18

    .line 854
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isItemFirstInList(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 856
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    .line 858
    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v0

    add-float v6, p1, v0

    .line 859
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v0

    add-float v7, p1, v0

    .line 949
    .end local v12           #toleratedPanDistance:F
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 950
    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    add-float/2addr v0, v6

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 951
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_28

    .line 953
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 959
    :cond_5
    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 960
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_6

    .line 962
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFFZ)V

    .line 964
    :cond_6
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    add-float v0, v0, p1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    goto/16 :goto_0

    .line 726
    .end local v6           #appliedPan:F
    .end local v7           #eatedPan:F
    .end local v11           #isItemStartPanXOnBothBorder:Z
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 758
    .restart local v6       #appliedPan:F
    .restart local v7       #eatedPan:F
    .restart local v11       #isItemStartPanXOnBothBorder:Z
    .restart local v12       #toleratedPanDistance:F
    :cond_8
    const/4 v6, 0x0

    .line 759
    const/4 v7, 0x0

    goto :goto_2

    .line 762
    :cond_9
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isItemLastInList(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 764
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    goto/16 :goto_2

    .line 767
    :cond_a
    const/4 v0, 0x0

    cmpl-float v0, v12, v0

    if-nez v0, :cond_17

    .line 769
    const/4 v6, 0x0

    .line 781
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    const/4 v13, 0x1

    .line 782
    .local v13, wasInPanLimitRegion:Z
    :goto_5
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    add-float v0, v0, p1

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    add-float v0, v0, p1

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    const/4 v14, 0x1

    .line 783
    .local v14, willInPanLimitRegion:Z
    :goto_6
    if-nez v13, :cond_d

    if-eqz v14, :cond_d

    const/4 v8, 0x1

    .line 784
    .local v8, isGoingInPanLimitRegion:Z
    :goto_7
    if-eqz v13, :cond_e

    if-nez v14, :cond_e

    const/4 v9, 0x1

    .line 785
    .local v9, isGoingOutPanLimitRegion:Z
    :goto_8
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    add-float v0, v0, p1

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    const/4 v10, 0x1

    .line 790
    .local v10, isGoingThroughPanLimitRegion:Z
    :goto_9
    if-eqz v11, :cond_10

    if-eqz v8, :cond_10

    .line 792
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    add-float/2addr v0, v1

    add-float v7, v0, p1

    goto/16 :goto_2

    .line 781
    .end local v8           #isGoingInPanLimitRegion:Z
    .end local v9           #isGoingOutPanLimitRegion:Z
    .end local v10           #isGoingThroughPanLimitRegion:Z
    .end local v13           #wasInPanLimitRegion:Z
    .end local v14           #willInPanLimitRegion:Z
    :cond_b
    const/4 v13, 0x0

    goto :goto_5

    .line 782
    .restart local v13       #wasInPanLimitRegion:Z
    :cond_c
    const/4 v14, 0x0

    goto :goto_6

    .line 783
    .restart local v14       #willInPanLimitRegion:Z
    :cond_d
    const/4 v8, 0x0

    goto :goto_7

    .line 784
    .restart local v8       #isGoingInPanLimitRegion:Z
    :cond_e
    const/4 v9, 0x0

    goto :goto_8

    .line 785
    .restart local v9       #isGoingOutPanLimitRegion:Z
    :cond_f
    const/4 v10, 0x0

    goto :goto_9

    .line 795
    .restart local v10       #isGoingThroughPanLimitRegion:Z
    :cond_10
    if-eqz v11, :cond_11

    if-eqz v9, :cond_11

    .line 797
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    sub-float v7, v0, v1

    goto/16 :goto_2

    .line 800
    :cond_11
    if-eqz v11, :cond_12

    if-eqz v10, :cond_12

    .line 802
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v7, v0

    goto/16 :goto_2

    .line 805
    :cond_12
    if-eqz v11, :cond_13

    if-eqz v13, :cond_13

    if-eqz v14, :cond_13

    .line 807
    move/from16 v7, p1

    goto/16 :goto_2

    .line 810
    :cond_13
    if-eqz v11, :cond_14

    .line 812
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 816
    :cond_14
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    if-eqz v0, :cond_16

    .line 818
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isItemFirstInList(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 820
    move/from16 v7, p1

    goto/16 :goto_2

    .line 824
    :cond_15
    const/4 v7, 0x0

    .line 825
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    goto/16 :goto_2

    .line 830
    :cond_16
    move/from16 v7, p1

    goto/16 :goto_2

    .line 835
    .end local v8           #isGoingInPanLimitRegion:Z
    .end local v9           #isGoingOutPanLimitRegion:Z
    .end local v10           #isGoingThroughPanLimitRegion:Z
    .end local v13           #wasInPanLimitRegion:Z
    .end local v14           #willInPanLimitRegion:Z
    :cond_17
    move v6, v12

    .line 836
    move/from16 v7, p1

    goto/16 :goto_2

    .line 863
    :cond_18
    const/4 v6, 0x0

    .line 864
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 867
    :cond_19
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isItemFirstInList(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 869
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    goto/16 :goto_3

    .line 872
    :cond_1a
    const/4 v0, 0x0

    cmpl-float v0, v12, v0

    if-nez v0, :cond_27

    .line 874
    const/4 v6, 0x0

    .line 887
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1b

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1b

    const/4 v13, 0x1

    .line 888
    .restart local v13       #wasInPanLimitRegion:Z
    :goto_a
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    add-float v0, v0, p1

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1c

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    add-float v0, v0, p1

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1c

    const/4 v14, 0x1

    .line 889
    .restart local v14       #willInPanLimitRegion:Z
    :goto_b
    if-nez v13, :cond_1d

    if-eqz v14, :cond_1d

    const/4 v8, 0x1

    .line 890
    .restart local v8       #isGoingInPanLimitRegion:Z
    :goto_c
    if-eqz v13, :cond_1e

    if-nez v14, :cond_1e

    const/4 v9, 0x1

    .line 891
    .restart local v9       #isGoingOutPanLimitRegion:Z
    :goto_d
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1f

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    add-float v0, v0, p1

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1f

    const/4 v10, 0x1

    .line 896
    .restart local v10       #isGoingThroughPanLimitRegion:Z
    :goto_e
    if-eqz v11, :cond_20

    if-eqz v8, :cond_20

    .line 898
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    add-float/2addr v0, v1

    add-float v7, v0, p1

    goto/16 :goto_3

    .line 887
    .end local v8           #isGoingInPanLimitRegion:Z
    .end local v9           #isGoingOutPanLimitRegion:Z
    .end local v10           #isGoingThroughPanLimitRegion:Z
    .end local v13           #wasInPanLimitRegion:Z
    .end local v14           #willInPanLimitRegion:Z
    :cond_1b
    const/4 v13, 0x0

    goto :goto_a

    .line 888
    .restart local v13       #wasInPanLimitRegion:Z
    :cond_1c
    const/4 v14, 0x0

    goto :goto_b

    .line 889
    .restart local v14       #willInPanLimitRegion:Z
    :cond_1d
    const/4 v8, 0x0

    goto :goto_c

    .line 890
    .restart local v8       #isGoingInPanLimitRegion:Z
    :cond_1e
    const/4 v9, 0x0

    goto :goto_d

    .line 891
    .restart local v9       #isGoingOutPanLimitRegion:Z
    :cond_1f
    const/4 v10, 0x0

    goto :goto_e

    .line 901
    .restart local v10       #isGoingThroughPanLimitRegion:Z
    :cond_20
    if-eqz v11, :cond_21

    if-eqz v9, :cond_21

    .line 903
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    sub-float v7, v0, v1

    goto/16 :goto_3

    .line 906
    :cond_21
    if-eqz v11, :cond_22

    if-eqz v10, :cond_22

    .line 908
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v7, v0

    goto/16 :goto_3

    .line 911
    :cond_22
    if-eqz v11, :cond_23

    if-eqz v13, :cond_23

    if-eqz v14, :cond_23

    .line 913
    move/from16 v7, p1

    goto/16 :goto_3

    .line 916
    :cond_23
    if-eqz v11, :cond_24

    .line 918
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 922
    :cond_24
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    if-eqz v0, :cond_26

    .line 924
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isItemLastInList(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 926
    move/from16 v7, p1

    goto/16 :goto_3

    .line 930
    :cond_25
    const/4 v7, 0x0

    .line 931
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    goto/16 :goto_3

    .line 936
    :cond_26
    move/from16 v7, p1

    goto/16 :goto_3

    .line 941
    .end local v8           #isGoingInPanLimitRegion:Z
    .end local v9           #isGoingOutPanLimitRegion:Z
    .end local v10           #isGoingThroughPanLimitRegion:Z
    .end local v13           #wasInPanLimitRegion:Z
    .end local v14           #willInPanLimitRegion:Z
    :cond_27
    move v6, v12

    .line 942
    move/from16 v7, p1

    goto/16 :goto_3

    .line 955
    .end local v12           #toleratedPanDistance:F
    :cond_28
    :try_start_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    .line 957
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    goto/16 :goto_4

    .line 959
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public panY(F)F
    .locals 9
    .parameter "delta"

    .prologue
    const/4 v0, 0x0

    .line 977
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    if-nez v1, :cond_1

    move v7, v0

    .line 1060
    :cond_0
    :goto_0
    return v7

    .line 984
    :cond_1
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    .line 988
    const/4 v6, 0x0

    .line 989
    .local v6, appliedPan:F
    const/4 v7, 0x0

    .line 991
    .local v7, eatedPan:F
    cmpl-float v1, p1, v0

    if-ltz v1, :cond_2

    .line 993
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    sub-float v8, v1, v2

    .line 995
    .local v8, toleratedPanDistance:F
    cmpl-float v1, v8, p1

    if-lez v1, :cond_5

    .line 997
    move v6, p1

    .line 998
    move v7, p1

    .line 1017
    .end local v8           #toleratedPanDistance:F
    :cond_2
    :goto_1
    cmpg-float v1, p1, v0

    if-gez v1, :cond_3

    .line 1019
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    sub-float v8, v1, v2

    .line 1021
    .restart local v8       #toleratedPanDistance:F
    cmpg-float v1, v8, p1

    if-gez v1, :cond_8

    .line 1023
    move v6, p1

    .line 1024
    move v7, p1

    .line 1042
    .end local v8           #toleratedPanDistance:F
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1043
    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    add-float/2addr v0, v6

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 1044
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_b

    .line 1046
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 1052
    :cond_4
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1053
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFFZ)V

    goto :goto_0

    .line 1000
    .restart local v8       #toleratedPanDistance:F
    :cond_5
    cmpl-float v1, v8, v0

    if-nez v1, :cond_7

    .line 1002
    const/4 v6, 0x0

    .line 1003
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnTopBorder:Z

    if-eqz v1, :cond_6

    .line 1004
    const/4 v7, 0x0

    goto :goto_1

    .line 1006
    :cond_6
    move v7, p1

    goto :goto_1

    .line 1010
    :cond_7
    move v6, v8

    .line 1011
    move v7, p1

    goto :goto_1

    .line 1026
    :cond_8
    cmpl-float v0, v8, v0

    if-nez v0, :cond_a

    .line 1028
    const/4 v6, 0x0

    .line 1029
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnBottomBorder:Z

    if-eqz v0, :cond_9

    .line 1030
    const/4 v7, 0x0

    goto :goto_2

    .line 1032
    :cond_9
    move v7, p1

    goto :goto_2

    .line 1036
    :cond_a
    move v6, v8

    .line 1037
    move v7, p1

    goto :goto_2

    .line 1048
    .end local v8           #toleratedPanDistance:F
    :cond_b
    :try_start_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    .line 1050
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    goto :goto_3

    .line 1052
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public purgeTileTextures()V
    .locals 1

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 1873
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->purgeTileTextures()V

    .line 1875
    :cond_0
    return-void
.end method

.method public refreshMediaSize(ILcom/htc/sunnyCore/IMediaData;)V
    .locals 3
    .parameter "itemIndex"
    .parameter "mediaData"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 354
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 355
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    .line 356
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    check-cast p2, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .end local p2
    invoke-virtual {v0, v2, p2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->refreshMediaSize(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    .line 357
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->initDisplayImageGeometry()V

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    .line 362
    monitor-exit v1

    .line 364
    :cond_0
    return-void

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeFromScene(Lcom/htc/sunnyCore/SceneNode;)V
    .locals 5
    .parameter "parentSceneNode"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 298
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 299
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    .line 305
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionY:F

    .line 306
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionZ:F

    .line 307
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->detachFromScene(Lcom/htc/sunnyCore/SceneNode;)V

    .line 312
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunnyCore/SceneNode;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {p1, v0}, Lcom/htc/sunnyCore/SceneNode;->removeSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 322
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SceneNode;->release()V

    .line 323
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunnyCore/SceneNode;

    .line 326
    :cond_1
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    .line 327
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    .line 329
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    .line 330
    return-void

    .line 307
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method sendInfoToImagePanAndZoomListener()V
    .locals 7

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_0

    .line 1539
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1540
    :try_start_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageLeftTopOnViewport()V

    .line 1541
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1542
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageLeftOnViewport:F

    float-to-int v2, v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageTopOnViewport:F

    float-to-int v3, v3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    float-to-int v4, v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    float-to-int v5, v5

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getZoomFactor()F

    move-result v6

    invoke-interface/range {v0 .. v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onImageBoundsUpdateIRT(IIIIIF)V

    .line 1544
    :cond_0
    return-void

    .line 1541
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setFrameSize(FF)V
    .locals 3
    .parameter "frameWidth"
    .parameter "frameHeight"

    .prologue
    .line 508
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 528
    :goto_0
    return-void

    .line 512
    :cond_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    .line 513
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    .line 515
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidthRationToFrameWidth:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    .line 517
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-nez v0, :cond_1

    .line 519
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v1, "setFrameSize() NG - null item"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onFrameSizeUpdate(FF)V

    .line 524
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 525
    :try_start_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->initDisplayImageGeometry()V

    .line 526
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V
    .locals 0
    .parameter "imagePanAndZoomListener"

    .prologue
    .line 410
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 412
    return-void
.end method

.method setItemPaintLayerBMP(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;)V
    .locals 1
    .parameter "itemPaintLayerInfo"

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 1849
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setItemPaintLayerBMP(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;)V

    .line 1851
    :cond_0
    return-void
.end method

.method setItemPaintLayerTransparency(I)V
    .locals 1
    .parameter "transparency"

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 1857
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setItemPaintTransparency(I)V

    .line 1859
    :cond_0
    return-void
.end method

.method public setMediaItemConsumeRightExpired(I)V
    .locals 1
    .parameter "itemIndex"

    .prologue
    .line 402
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->resetConsumeRightFlag()V

    .line 406
    :cond_0
    return-void
.end method

.method public setMediaItemConsumeRightFlag(I)V
    .locals 1
    .parameter "itemIndex"

    .prologue
    .line 394
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setConsumeRightFlag()V

    .line 398
    :cond_0
    return-void
.end method

.method public setPosition(FFF)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 532
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 533
    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    .line 534
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionY:F

    .line 535
    iput p3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionZ:F

    .line 536
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunnyCore/SceneNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SceneNode;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunnyCore/SceneNode;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionY:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionZ:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunnyCore/SceneNode;->setPosition(FFF)V

    .line 542
    :cond_0
    return-void

    .line 536
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setupRenderingEnvironment(Lcom/htc/sunnyCore/RenderThread;I)V
    .locals 3
    .parameter "renderThread"
    .parameter "sunnyEnvironment"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 151
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sunnyEnvironment:I

    .line 152
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-direct {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 153
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    sget-object v1, Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;->CENTER:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1;

    invoke-direct {v2, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->init(Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;)Z

    .line 196
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-direct {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 197
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    sget-object v1, Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;->CENTER:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$2;

    invoke-direct {v2, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$2;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->init(Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;)Z

    .line 240
    return-void
.end method

.method public unbindItem()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->unbindMediaData()V

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 374
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    .line 376
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    .line 377
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    .line 378
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    .line 379
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    .line 381
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    .line 382
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    .line 384
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    .line 385
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    .line 389
    monitor-exit v1

    .line 390
    return-void

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unzoom()V
    .locals 8

    .prologue
    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1196
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1198
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoomBegin()V

    .line 1199
    const/4 v5, 0x1

    move-object v0, p0

    move v3, v2

    move v6, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoom(FFFZZII)V

    .line 1200
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoomEnd()V

    .line 1202
    :cond_0
    return-void
.end method
