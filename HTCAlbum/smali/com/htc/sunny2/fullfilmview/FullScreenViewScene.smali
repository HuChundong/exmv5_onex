.class public Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
.super Ljava/lang/Object;
.source "FullScreenViewScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$LayoutSceneAndBindItemRenderThreadEvent;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FullScreeenViewSpeedyFuStateListener;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanGestureCompensator;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    }
.end annotation


# static fields
.field private static final ANIM_ALIGN:Ljava/lang/String; = "Align"

#the value of this static final field might be set in the static constructor
.field public static final ANIM_FULL_TO_FILM_ENTER_VELOCITY:F = 0.0f

.field private static final ANIM_TO_FILMSTRIP_DISTANCE_THRESHOLD:F = 20.0f

.field private static final ANIM_TO_FILMSTRIP_TIME_THRESHOLD:I = 0x3e8

.field private static final CANCEL_ALIGNING_ACTION_NAME:Ljava/lang/String; = "FullScreenCancelAligning"

.field private static final DEBUG:Z = false

.field private static final FLING_INDEX_CHANGE_VELOCITY_THRESHOLD:F = 500.0f

.field private static final FRAMES_ALIGNING:I = 0x1

.field private static final FRAMES_COUNT:I = 0x5

.field private static final FRAMES_IDLE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final FULL_TO_FILM_MOVE_THRESHOLD_MODIFIER_LAND:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final FULL_TO_FILM_MOVE_THRESHOLD_MODIFIER_PORT:F = 0.0f

.field private static final FULL_TO_FILM_PAN_GESTURES_TO_CHECK:I = 0x2

.field private static final FULL_TO_FILM_PAN_GESTURES_VELOCITY_THRESHOLD_LAND:F = 8000.0f

.field private static final FULL_TO_FILM_PAN_GESTURES_VELOCITY_THRESHOLD_PORT:F = 4500.0f

.field private static final LONG_PRESS_FULL_TO_FILM_MOVE_THRESHOLD_MODIFIER_LAND:F = 0.1f

.field private static final LONG_PRESS_FULL_TO_FILM_MOVE_THRESHOLD_MODIFIER_PORT:F = 0.1f

.field private static final LTAG:Ljava/lang/String; = "FullScreenViewScene"

.field private static final MOVEMENT_LIMIT_WHEN_FIRST_ONSCROLL:F = 5.0f

.field private static final PANNING_ACTION_NAME:Ljava/lang/String; = "FullScreenPan"

.field private static final PAN_GESTURE_COMPENSATOR_EVENT_NAME:Ljava/lang/String; = "PanGestureCompensator"

.field private static final PAN_RECORDS_COUNT:I = 0x3

.field private static final PAN_TO_STOP_FULLS_CREEN_VIEW_TIME_THRESHOLD:J = 0x46L

.field private static final SPEEDYFU_INDEX_CHANGE_LIMIT_WIDTH_MODIFIER:F = 1.75f

.field private static final SPEEDY_FU_CONSTANT_MOVEMENT_DENOMINATOR_LAND:I = 0xc

.field private static final SPEEDY_FU_CONSTANT_MOVEMENT_DENOMINATOR_PORT:I = 0xc

.field private static final TREAT_AS_FAST_SCROLLING_MOVEMENT_THRESHOLD:I = 0xa

.field private static final TREAT_AS_FAST_SCROLLING_TIME_THRESHOLD:I = 0x258


# instance fields
.field private bIsInSpeedyFu:Z

.field private bIsStartPanOnFirstLastItem:Z

.field private bWasAligning:Z

.field private centerFrameIndex:I

.field private currentItemIndex:I

.field private frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

.field private fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

.field private imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

.field private isCurrentIndexSet:Z

.field private itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

.field private itemInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;

.field private itemInterval:I

.field private itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

.field private itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

.field private itemsCount:I

.field private lastStatus:I

.field private mDisableZoom:Z

.field private mInTransition:Z

.field private mIsPanning:Z

.field private mIsStartPanningOnLeftBorder:Z

.field private mIsStartPanningOnRightBorder:Z

.field private mItemIndexBeforeOnUp:I

.field protected mOnFullScreenViewAlignEndListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;

.field private mShouldLockPanningOnLeftBorder:Z

.field private mShouldLockPanningOnRightBorder:Z

.field private mSpeedyFuDirection:F

.field protected mSpeedyFuStateListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FullScreeenViewSpeedyFuStateListener;

.field private mediaList:Lcom/htc/sunnyCore/IMediaList;

.field private panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

.field private panRecordIndexToAdd:I

.field private panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

.field private pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

.field private recordPanBegin:Z

.field private renderThread:Lcom/htc/sunnyCore/RenderThread;

.field protected scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

.field private scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

.field private scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

.field private sunnyEnvironment:I

.field private viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

.field private viewportHeight:I

.field private viewportWidth:I

.field private visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULL_TO_FILM_ENTER_VELOCITY:F

    sput v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->ANIM_FULL_TO_FILM_ENTER_VELOCITY:F

    .line 50
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->TO_FILM_MOVE_THRESHOLD_MODIFIER_LAND:F

    sput v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->FULL_TO_FILM_MOVE_THRESHOLD_MODIFIER_LAND:F

    .line 51
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->TO_FILM_MOVE_THRESHOLD_MODIFIER_PORT:F

    sput v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->FULL_TO_FILM_MOVE_THRESHOLD_MODIFIER_PORT:F

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V
    .locals 7
    .parameter "fullFilmView3D"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 458
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    .line 69
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsInSpeedyFu:Z

    .line 73
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsStartPanOnFirstLastItem:Z

    .line 75
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mDisableZoom:Z

    .line 393
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

    .line 399
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mSpeedyFuStateListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FullScreeenViewSpeedyFuStateListener;

    .line 407
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 409
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 411
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    .line 412
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    .line 413
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    .line 415
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 416
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    .line 417
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    .line 419
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->visible:Z

    .line 421
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->sunnyEnvironment:I

    .line 422
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    .line 424
    new-array v1, v6, [Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    .line 425
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    .line 427
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    .line 429
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 431
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 432
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 434
    new-array v1, v5, [Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    .line 435
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->recordPanBegin:Z

    .line 436
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    .line 438
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    .line 440
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    .line 441
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;

    .line 442
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    .line 444
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    .line 445
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z

    .line 446
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    .line 447
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnLeftBorder:Z

    .line 448
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnRightBorder:Z

    .line 449
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnLeftBorder:Z

    .line 450
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnRightBorder:Z

    .line 451
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->lastStatus:I

    .line 453
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bWasAligning:Z

    .line 459
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 460
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

    .line 461
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mSpeedyFuStateListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FullScreeenViewSpeedyFuStateListener;

    .line 463
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 465
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct {v2, v3, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V

    aput-object v2, v1, v0

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 468
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    .line 470
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    invoke-direct {v2, p0, v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;)V

    aput-object v2, v1, v0

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 473
    :cond_1
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    const-string v2, "PinchZoomAnimator"

    invoke-direct {v1, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    .line 474
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    const-string v2, "ItemClickInfoGetter"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    .line 475
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;

    const-string v2, "ItemInfoGetter"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;

    .line 476
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    const-string v2, "TtemPaintLayerTransparencySetter"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    .line 478
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    const-string v2, "FullScreenPan"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    .line 479
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doFramesOffset(F)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunnyCore/IMediaList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnLeftBorder:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnLeftBorder:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnRightBorder:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnRightBorder:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnLeftBorder:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnRightBorder:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->layoutSceneAndBindItem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2202(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->lastStatus:I

    return p1
.end method

.method static synthetic access$2300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doCurrentFrameHoming()V

    return-void
.end method

.method static synthetic access$2602(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsInSpeedyFu:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsInSpeedyFu:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunnyCore/RenderThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord()Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v0

    return-object v0
.end method

.method private checkStartPanningOnBorder()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1975
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnLeftBorder:Z

    .line 1976
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnRightBorder:Z

    .line 1977
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnLeftBorder:Z

    .line 1978
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnRightBorder:Z

    .line 1980
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1982
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnLeftBorder:Z

    .line 1983
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnRightBorder:Z

    .line 1985
    :cond_0
    return-void
.end method

.method private doCurrentFrameHoming()V
    .locals 3

    .prologue
    .line 1644
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 1646
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    if-eq v0, v1, :cond_0

    .line 1648
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unzoom()V

    .line 1644
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1652
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mOnFullScreenViewAlignEndListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;

    if-eqz v1, :cond_2

    .line 1654
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mOnFullScreenViewAlignEndListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;

    invoke-interface {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;->onFullScreenViewAlignEnd()V

    .line 1657
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v1, :cond_3

    .line 1659
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    if-eqz v1, :cond_3

    .line 1662
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-interface {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onEnterImageIRT(I)V

    .line 1663
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1665
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onEnterItemIRT()V

    .line 1674
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 1675
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sendInfoToImagePanAndZoomListener()V

    .line 1676
    return-void
.end method

.method private doCurrentFrameLeaving()V
    .locals 2

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onLeaveImageIRT()V

    .line 1684
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onLeaveItemIRT()V

    .line 1685
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->purgeTextureEQ()Z

    .line 1687
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 1688
    return-void
.end method

.method private doFramesOffset(F)V
    .locals 4
    .parameter "deltaX"

    .prologue
    const/4 v3, 0x0

    .line 1694
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v0

    .line 1695
    .local v0, centerFrameX:F
    add-float/2addr v0, p1

    .line 1702
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0, v3, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setPosition(FFF)V

    .line 1704
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->layoutSceneAndBindItem()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1706
    const-string v1, "FullScreenViewScene"

    const-string v2, "doFramesOffset() NG - layoutSceneAndBindItem"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    :cond_0
    return-void
.end method

.method private getFrameIndexFromItemIndex(I)I
    .locals 6
    .parameter "itemIndex"

    .prologue
    const/4 v5, 0x5

    const/4 v3, -0x1

    .line 2121
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    sub-int v1, p1, v4

    .line 2122
    .local v1, indexDiffFromCenter:I
    const/4 v2, 0x2

    .line 2123
    .local v2, sideFramesCount:I
    if-gt v1, v2, :cond_0

    neg-int v4, v2

    if-ge v1, v4, :cond_2

    :cond_0
    move v0, v3

    .line 2140
    :cond_1
    :goto_0
    return v0

    .line 2128
    :cond_2
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    add-int v0, v4, v1

    .line 2129
    .local v0, frameIndex:I
    if-gez v0, :cond_5

    .line 2130
    add-int/lit8 v0, v0, 0x5

    .line 2134
    :cond_3
    :goto_1
    if-ltz v0, :cond_4

    if-lt v0, v5, :cond_1

    .line 2136
    :cond_4
    const-string v4, "FullScreenViewScene"

    const-string v5, "getFrameIndexFromItemIndex NG - index error"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 2137
    goto :goto_0

    .line 2131
    :cond_5
    if-lt v0, v5, :cond_3

    .line 2132
    add-int/lit8 v0, v0, -0x5

    goto :goto_1
.end method

.method private getLastPanRecord()Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    .locals 2

    .prologue
    .line 2014
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    add-int/lit8 v0, v1, -0x1

    .line 2015
    .local v0, lastPanRecordIndex:I
    if-gez v0, :cond_0

    .line 2017
    const/4 v0, 0x2

    .line 2019
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private getLastPanRecord(I)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    .locals 3
    .parameter "countFromBehind"

    .prologue
    .line 2024
    if-lez p1, :cond_0

    const/4 v2, 0x3

    if-le p1, v2, :cond_1

    .line 2026
    :cond_0
    const/4 v2, 0x0

    .line 2037
    :goto_0
    return-object v2

    .line 2028
    :cond_1
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    .line 2029
    .local v1, lastPanRecordIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_3

    .line 2031
    add-int/lit8 v1, v1, -0x1

    .line 2032
    if-gez v1, :cond_2

    .line 2034
    const/4 v1, 0x2

    .line 2029
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2037
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    aget-object v2, v2, v1

    goto :goto_0
.end method

.method private getLastPanVelocity()F
    .locals 2

    .prologue
    .line 2111
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    add-int/lit8 v0, v1, -0x1

    .line 2112
    .local v0, lastPan:I
    if-gez v0, :cond_0

    .line 2113
    const/4 v0, 0x2

    .line 2116
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panVelocity:F

    return v1
.end method

.method private layoutSceneAndBindItem()Z
    .locals 12

    .prologue
    .line 1548
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->sunnyEnvironment:I

    if-nez v9, :cond_1

    .line 1550
    :cond_0
    const-string v9, "FullScreenViewScene"

    const-string v10, "layoutSceneAndBindItem() Rejected - render not setup"

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    const/4 v9, 0x0

    .line 1639
    :goto_0
    return v9

    .line 1553
    :cond_1
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v9}, Lcom/htc/sunnyCore/SceneNode;->getNodeId()I

    move-result v9

    if-nez v9, :cond_2

    .line 1555
    const-string v9, "FullScreenViewScene"

    const-string v10, "layoutSceneAndBindItem() Rejected - scene not setup"

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    const/4 v9, 0x0

    goto :goto_0

    .line 1558
    :cond_2
    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    if-nez v9, :cond_4

    .line 1560
    :cond_3
    const-string v9, "FullScreenViewScene"

    const-string v10, "layoutSceneAndBindItem() Rejected - zero viewport"

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    const/4 v9, 0x0

    goto :goto_0

    .line 1563
    :cond_4
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v9, :cond_5

    .line 1565
    const-string v9, "FullScreenViewScene"

    const-string v10, "layoutSceneAndBindItem() Rejected - zero mediaList"

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    const/4 v9, 0x0

    goto :goto_0

    .line 1568
    :cond_5
    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    if-ltz v9, :cond_6

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    const/4 v10, 0x5

    if-lt v9, v10, :cond_7

    .line 1570
    :cond_6
    const-string v9, "FullScreenViewScene"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "layoutSceneAndBindItem() NG - error centerFrameIndex "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    const/4 v9, 0x0

    goto :goto_0

    .line 1574
    :cond_7
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v0

    .line 1576
    .local v0, centerFrameX:F
    const/4 v8, 0x2

    .line 1578
    .local v8, sideFramesCount:I
    neg-int v4, v8

    .local v4, i:I
    :goto_1
    if-gt v4, v8, :cond_10

    .line 1582
    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    add-int v5, v9, v4

    .line 1583
    .local v5, itemIndex:I
    if-ltz v5, :cond_b

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v5, v9, :cond_b

    const/4 v6, 0x1

    .line 1585
    .local v6, itemIndexValid:Z
    :goto_2
    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    add-int v1, v9, v4

    .line 1586
    .local v1, frameIndex:I
    if-gez v1, :cond_8

    .line 1588
    add-int/lit8 v1, v1, 0x5

    .line 1590
    :cond_8
    const/4 v9, 0x5

    if-lt v1, v9, :cond_9

    .line 1592
    add-int/lit8 v1, v1, -0x5

    .line 1594
    :cond_9
    if-ltz v1, :cond_a

    const/4 v9, 0x5

    if-lt v1, v9, :cond_c

    .line 1596
    :cond_a
    const-string v9, "FullScreenViewScene"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "layoutSceneAndBindItem() NG "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1583
    .end local v1           #frameIndex:I
    .end local v6           #itemIndexValid:Z
    :cond_b
    const/4 v6, 0x0

    goto :goto_2

    .line 1600
    .restart local v1       #frameIndex:I
    .restart local v6       #itemIndexValid:Z
    :cond_c
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItemIndex()I

    move-result v2

    .line 1606
    .local v2, frameItemIndex:I
    if-eqz v6, :cond_f

    .line 1608
    if-eq v2, v5, :cond_e

    .line 1610
    const/4 v7, 0x0

    .line 1611
    .local v7, mediaData:Lcom/htc/sunnyCore/IMediaData;
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v9, :cond_d

    .line 1613
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v9, v5}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v7

    .line 1618
    :cond_d
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v9, v9, v1

    invoke-virtual {v9, v5, v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->bindItem(ILcom/htc/sunnyCore/IMediaData;)Z

    .line 1631
    .end local v7           #mediaData:Lcom/htc/sunnyCore/IMediaData;
    :cond_e
    :goto_4
    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    add-int/2addr v9, v10

    mul-int/2addr v9, v4

    int-to-float v9, v9

    add-float v3, v0, v9

    .line 1633
    .local v3, framePositionX:F
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v9, v9, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v3, v10, v11}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setPosition(FFF)V

    goto :goto_3

    .line 1623
    .end local v3           #framePositionX:F
    :cond_f
    const/4 v9, -0x1

    if-eq v2, v9, :cond_e

    .line 1625
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    goto :goto_4

    .line 1639
    .end local v1           #frameIndex:I
    .end local v2           #frameItemIndex:I
    .end local v5           #itemIndex:I
    .end local v6           #itemIndexValid:Z
    :cond_10
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method private recordPanBegin(IFF)V
    .locals 3
    .parameter "currentItemIndex"
    .parameter "currentEventPosition"
    .parameter "currentFramePosition"

    .prologue
    .line 1959
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-lt p1, v1, :cond_1

    .line 1971
    :cond_0
    :goto_0
    return-void

    .line 1962
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    aget-object v0, v1, v2

    .line 1964
    .local v0, record:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginTime:J

    .line 1965
    iput p1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginItemIndex:I

    .line 1966
    iput p2, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginPosition:F

    .line 1967
    iput p3, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginFramePosition:F

    .line 1968
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panCrossedFrame:Z

    .line 1969
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->recordPanBegin:Z

    goto :goto_0
.end method

.method private recordPanEnd(IFF)V
    .locals 6
    .parameter "currentItemIndex"
    .parameter "currentEventPosition"
    .parameter "currentFramePosition"

    .prologue
    const/4 v5, 0x0

    .line 1990
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->recordPanBegin:Z

    if-nez v1, :cond_1

    .line 2010
    :cond_0
    :goto_0
    return-void

    .line 1993
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    aget-object v0, v1, v2

    .line 1995
    .local v0, record:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panEndTime:J

    .line 1996
    iget-wide v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panEndTime:J

    iget-wide v3, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDuration:J

    .line 1997
    iget v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginPosition:F

    sub-float v1, p2, v1

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    .line 1998
    iget v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginFramePosition:F

    sub-float v1, p3, v1

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginItemIndex:I

    sub-int/2addr v2, p1

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panFrameDistance:F

    .line 2000
    iget v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    iget-wide v2, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDuration:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panVelocity:F

    .line 2002
    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->recordPanBegin:Z

    .line 2004
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    .line 2005
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 2007
    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    goto :goto_0
.end method

.method private shouldAnimateToFilmstripView(Ljava/lang/String;)Z
    .locals 12
    .parameter "tag"

    .prologue
    .line 2042
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2043
    .local v0, currentTime:J
    const/4 v2, 0x0

    .line 2045
    .local v2, directionNote:I
    const/4 v6, 0x0

    .line 2046
    .local v6, newThreshold:F
    const/4 v5, 0x0

    .line 2047
    .local v5, longPressThreshold:F
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    if-eqz v8, :cond_1

    .line 2049
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    if-lt v8, v9, :cond_0

    .line 2051
    sget v8, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULL_TO_FILM_ENTERING_MOVEMENT_THRESHOLD_LAND:I

    int-to-float v8, v8

    sget v9, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->FULL_TO_FILM_MOVE_THRESHOLD_MODIFIER_LAND:F

    mul-float v6, v8, v9

    .line 2052
    sget v8, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULL_TO_FILM_ENTERING_MOVEMENT_THRESHOLD_LAND:I

    int-to-float v8, v8

    const v9, 0x3dcccccd

    mul-float v5, v8, v9

    .line 2068
    :goto_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord()Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v4

    .line 2069
    .local v4, lastPanRecord:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    iget v8, v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    cmpg-float v8, v8, v6

    if-gez v8, :cond_2

    iget v8, v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    neg-float v9, v6

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 2070
    const/4 v8, 0x0

    .line 2106
    :goto_1
    return v8

    .line 2056
    .end local v4           #lastPanRecord:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    :cond_0
    sget v8, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULL_TO_FILM_ENTERING_MOVEMENT_THRESHOLD_PORT:I

    int-to-float v8, v8

    sget v9, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->FULL_TO_FILM_MOVE_THRESHOLD_MODIFIER_PORT:F

    mul-float v6, v8, v9

    .line 2057
    sget v8, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULL_TO_FILM_ENTERING_MOVEMENT_THRESHOLD_PORT:I

    int-to-float v8, v8

    const v9, 0x3dcccccd

    mul-float v5, v8, v9

    goto :goto_0

    .line 2062
    :cond_1
    const/high16 v6, 0x41a0

    .line 2063
    const/high16 v5, 0x41a0

    goto :goto_0

    .line 2072
    .restart local v4       #lastPanRecord:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    const/4 v8, 0x2

    if-ge v3, v8, :cond_7

    .line 2074
    add-int/lit8 v8, v3, 0x1

    invoke-direct {p0, v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord(I)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v7

    .line 2075
    .local v7, record:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    iget-wide v8, v7, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginTime:J

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    cmp-long v8, v0, v8

    if-lez v8, :cond_3

    .line 2076
    const/4 v8, 0x0

    goto :goto_1

    .line 2078
    :cond_3
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsInSpeedyFu:Z

    if-nez v8, :cond_4

    iget-boolean v8, v7, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panCrossedFrame:Z

    if-nez v8, :cond_4

    .line 2079
    const/4 v8, 0x0

    goto :goto_1

    .line 2081
    :cond_4
    iget v8, v7, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    .line 2082
    add-int/lit8 v2, v2, 0x1

    .line 2072
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2083
    :cond_6
    iget v8, v7, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_5

    .line 2084
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 2087
    .end local v7           #record:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    :cond_7
    const/4 v8, 0x2

    if-eq v2, v8, :cond_8

    const/4 v8, -0x2

    if-eq v2, v8, :cond_8

    .line 2089
    const/4 v8, 0x0

    goto :goto_1

    .line 2092
    :cond_8
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    if-nez v8, :cond_9

    const/4 v8, 0x2

    if-eq v2, v8, :cond_a

    :cond_9
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_b

    const/4 v8, -0x2

    if-ne v2, v8, :cond_b

    .line 2094
    :cond_a
    const/4 v8, 0x0

    goto :goto_1

    .line 2097
    :cond_b
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanVelocity()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sget v9, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->ANIM_FULL_TO_FILM_ENTER_VELOCITY:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_c

    .line 2098
    const/4 v8, 0x0

    goto :goto_1

    .line 2100
    :cond_c
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsInSpeedyFu:Z

    .line 2101
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mSpeedyFuStateListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FullScreeenViewSpeedyFuStateListener;

    if-eqz v8, :cond_d

    .line 2103
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mSpeedyFuStateListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FullScreeenViewSpeedyFuStateListener;

    iget-boolean v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsInSpeedyFu:Z

    invoke-interface {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FullScreeenViewSpeedyFuStateListener;->onSpeedyFuStateChange(Z)V

    .line 2105
    :cond_d
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v8, :cond_e

    const-string v8, "FullScreenViewScene"

    const-string v9, "shouldAnimateToFilmstripView"

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    :cond_e
    const/4 v8, 0x1

    goto/16 :goto_1
.end method

.method private shouldEnterSpeedyFu()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x258

    const/4 v6, 0x1

    const/high16 v9, 0x4120

    const/4 v5, 0x0

    .line 1927
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1929
    .local v1, currentTime:J
    const/4 v0, 0x0

    .line 1930
    .local v0, bAreSameDirection:Z
    invoke-direct {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord(I)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v3

    .line 1931
    .local v3, lastRecord:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord(I)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v4

    .line 1933
    .local v4, secondLastRecord:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    iget-wide v7, v3, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginTime:J

    add-long/2addr v7, v10

    cmp-long v7, v1, v7

    if-gtz v7, :cond_0

    iget-wide v7, v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginTime:J

    add-long/2addr v7, v10

    cmp-long v7, v1, v7

    if-lez v7, :cond_1

    .line 1954
    :cond_0
    :goto_0
    return v5

    .line 1938
    :cond_1
    iget v7, v3, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v9, v7

    if-gtz v7, :cond_0

    iget v7, v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v9, v7

    if-gtz v7, :cond_0

    .line 1943
    iget v7, v3, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    iget v8, v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v8

    mul-float/2addr v7, v8

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 1945
    const/4 v0, 0x1

    .line 1946
    iget v7, v3, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    iput v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mSpeedyFuDirection:F

    .line 1949
    :cond_2
    if-eqz v0, :cond_0

    move v5, v6

    .line 1954
    goto :goto_0
.end method


# virtual methods
.method public KeyUpMotion(I)V
    .locals 10
    .parameter "index"

    .prologue
    const/4 v9, 0x5

    const/4 v5, 0x0

    .line 1247
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    .line 1309
    :goto_0
    return-void

    .line 1252
    :cond_0
    move v4, p1

    .line 1253
    .local v4, newCurrentItemIndex:I
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    sub-int v7, v4, v7

    add-int v3, v6, v7

    .line 1255
    .local v3, newCenterFrameIndex:I
    :goto_1
    if-lt v3, v9, :cond_1

    .line 1257
    add-int/lit8 v3, v3, -0x5

    goto :goto_1

    .line 1259
    :cond_1
    :goto_2
    if-gez v3, :cond_2

    .line 1261
    add-int/lit8 v3, v3, 0x5

    goto :goto_2

    .line 1265
    :cond_2
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    if-eq v4, v6, :cond_7

    const/4 v0, 0x1

    .line 1266
    .local v0, currentItemIndexChanged:Z
    :goto_3
    if-eqz v0, :cond_6

    .line 1268
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "FullScreenViewScene"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KeyUpMotion CurrentItemChange "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    :cond_3
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v6, :cond_4

    .line 1271
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onLeaveImageIRT()V

    .line 1273
    :cond_4
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onLeaveItemIRT()V

    .line 1274
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->purgeTextureEQ()Z

    .line 1276
    const/4 v2, 0x0

    .line 1277
    .local v2, mediaData:Lcom/htc/sunnyCore/IMediaData;
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v6, :cond_5

    .line 1279
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-interface {v6, v7}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    .line 1280
    if-eqz v2, :cond_5

    .line 1281
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v6, v6, v7

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v6, v7, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->bindItem(ILcom/htc/sunnyCore/IMediaData;)Z

    .line 1283
    :cond_5
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->showDRMIndicator(Z)V

    .line 1285
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    .line 1286
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    .line 1288
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onSetCurrentIndex(I)V

    .line 1290
    .end local v2           #mediaData:Lcom/htc/sunnyCore/IMediaData;
    :cond_6
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v5, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPreparatorIndexChangeFlag(Z)V

    .line 1292
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord()Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v5

    iput-boolean v0, v5, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panCrossedFrame:Z

    .line 1294
    const-string v5, "KeyUpMotion"

    invoke-direct {p0, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->shouldAnimateToFilmstripView(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1296
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v7

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanVelocity()F

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->fullScreenViewAnimateToFilmstripView(IFF)V

    goto/16 :goto_0

    .end local v0           #currentItemIndexChanged:Z
    :cond_7
    move v0, v5

    .line 1265
    goto/16 :goto_3

    .line 1300
    .restart local v0       #currentItemIndexChanged:Z
    :cond_8
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    if-ge v1, v9, :cond_a

    .line 1302
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    if-eq v1, v5, :cond_9

    .line 1304
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unzoom()V

    .line 1300
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1307
    :cond_a
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doCenterAlign()V

    goto/16 :goto_0
.end method

.method public bindMediaList(Lcom/htc/sunnyCore/IMediaList;)Z
    .locals 4
    .parameter "mediaList"

    .prologue
    const/4 v0, 0x0

    .line 755
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->unbindMediaList()V

    .line 756
    if-nez p1, :cond_0

    .line 771
    :goto_0
    return v0

    .line 761
    :cond_0
    const-string v1, "FullScreenViewScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindMediaList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 764
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    .line 765
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    .line 766
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    .line 767
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FullScreenViewScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcAlbum][FullScreenViewScene][bindMediaList]isCurrentIndexSet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$LayoutSceneAndBindItemRenderThreadEvent;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$LayoutSceneAndBindItemRenderThreadEvent;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIRT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    .line 771
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearRenderingEnvironment()V
    .locals 3

    .prologue
    .line 496
    const-string v1, "FullScreenViewScene"

    const-string v2, "clearRenderingEnvironment()"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 499
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->sunnyEnvironment:I

    .line 501
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->clearRenderingEnvironment()V

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    :cond_0
    return-void
.end method

.method public clearScene(Lcom/htc/sunnyCore/SceneNode;)V
    .locals 5
    .parameter "parentSceneNode"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 711
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->unbindMediaList()V

    .line 713
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    if-eqz v1, :cond_0

    .line 715
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deInit()V

    .line 716
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 719
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    if-eqz v1, :cond_1

    .line 721
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deInit()V

    .line 722
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 724
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 726
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    .line 727
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->removeFromScene(Lcom/htc/sunnyCore/SceneNode;)V

    .line 724
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 730
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    if-eqz v1, :cond_3

    .line 734
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {p1, v1}, Lcom/htc/sunnyCore/SceneNode;->removeSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 736
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SceneNode;->release()V

    .line 737
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    .line 740
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    if-eqz v1, :cond_4

    .line 742
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->freeShareResources()V

    .line 743
    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    .line 746
    :cond_4
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    .line 747
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    .line 748
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    .line 750
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    .line 751
    return-void
.end method

.method public disableZoom()V
    .locals 1

    .prologue
    .line 2477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mDisableZoom:Z

    .line 2478
    return-void
.end method

.method doCenterAlign()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1883
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsStartPanOnFirstLastItem:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->shouldEnterSpeedyFu()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsInSpeedyFu:Z

    .line 1884
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mSpeedyFuStateListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FullScreeenViewSpeedyFuStateListener;

    if-eqz v0, :cond_0

    .line 1886
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mSpeedyFuStateListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FullScreeenViewSpeedyFuStateListener;

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsInSpeedyFu:Z

    invoke-interface {v0, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FullScreeenViewSpeedyFuStateListener;->onSpeedyFuStateChange(Z)V

    .line 1888
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v4

    .line 1890
    .local v4, centerFramePositionX:F
    cmpl-float v0, v4, v5

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_4

    .line 1892
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z

    .line 1893
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "Align"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v6

    .line 1894
    .local v6, alignAction:Lcom/htc/sunnyCore/RenderThreadAction;
    if-nez v6, :cond_3

    .line 1896
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;

    const-string v3, "Align"

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;FF)V

    invoke-virtual {v7, v0}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 1923
    .end local v6           #alignAction:Lcom/htc/sunnyCore/RenderThreadAction;
    :cond_1
    :goto_1
    return-void

    .end local v4           #centerFramePositionX:F
    :cond_2
    move v0, v2

    .line 1883
    goto :goto_0

    .line 1898
    .restart local v4       #centerFramePositionX:F
    .restart local v6       #alignAction:Lcom/htc/sunnyCore/RenderThreadAction;
    :cond_3
    instance-of v0, v6, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;

    if-eqz v0, :cond_1

    .line 1900
    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;

    .end local v6           #alignAction:Lcom/htc/sunnyCore/RenderThreadAction;
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsInSpeedyFu:Z

    invoke-virtual {v6, v4, v5, v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->overrideParameters(FFZ)V

    goto :goto_1

    .line 1903
    :cond_4
    cmpl-float v0, v4, v5

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_1

    .line 1906
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$LayoutSceneAndBindItemRenderThreadEvent;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$LayoutSceneAndBindItemRenderThreadEvent;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIRT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    .line 1908
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mOnFullScreenViewAlignEndListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;

    if-eqz v0, :cond_1

    .line 1910
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mOnFullScreenViewAlignEndListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;->onFullScreenViewAlignEnd()V

    .line 1911
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_6

    .line 1913
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "Align"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1915
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onAlignEndIRT()V

    .line 1917
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-interface {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onEnterImageIRT(I)V

    .line 1918
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onEnterItemIRT()V

    .line 1920
    :cond_6
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->lastStatus:I

    goto :goto_1
.end method

.method public getCurrentItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z
    .locals 3
    .parameter "itemInfo"

    .prologue
    const/4 v0, 0x0

    .line 954
    if-nez p1, :cond_1

    .line 967
    :cond_0
    :goto_0
    return v0

    .line 957
    :cond_1
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    if-gez v1, :cond_2

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v1, v2, :cond_0

    .line 962
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 967
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentItemInfoIHT(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z
    .locals 5
    .parameter "itemInfo"

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 927
    if-nez p1, :cond_1

    .line 948
    :cond_0
    :goto_0
    return v0

    .line 930
    :cond_1
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    if-gez v1, :cond_2

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-lt v1, v2, :cond_2

    .line 932
    iput v4, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    goto :goto_0

    .line 936
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 938
    iput v4, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    goto :goto_0

    .line 942
    :cond_3
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget v2, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    if-eq v1, v2, :cond_4

    .line 944
    const-string v1, "FullScreenViewScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentItemInfoIHT NG - index error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    iput v4, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    goto :goto_0

    .line 948
    :cond_4
    iget v1, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    if-eq v1, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getInOutAnimation(Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;Lcom/htc/sunnyCore/view/SView;ILcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;)Lcom/htc/sunnyCore/RenderThreadAction;
    .locals 24
    .parameter "bundle"
    .parameter "listener"
    .parameter "viewRoot"
    .parameter "touchedGridViewItemIndex"
    .parameter "endListener"

    .prologue
    .line 2426
    if-nez p1, :cond_2

    .line 2427
    const-string v5, "FullScreenViewScene"

    const-string v6, "Bundle is null"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2428
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 2429
    :cond_0
    if-eqz p3, :cond_1

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    .line 2430
    :cond_1
    const/4 v4, 0x0

    .line 2472
    :goto_0
    return-object v4

    .line 2433
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v11, v5, v6

    .line 2434
    .local v11, frame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    if-nez v11, :cond_5

    .line 2435
    const-string v5, "FullScreenViewScene"

    const-string v6, "[FullScreenViewScene][animationInIRT] Fullscreen frame is null"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2436
    if-eqz p2, :cond_3

    invoke-interface/range {p2 .. p2}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 2437
    :cond_3
    if-eqz p3, :cond_4

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    .line 2438
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 2441
    :cond_5
    invoke-virtual {v11}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v8

    .line 2442
    .local v8, item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
    if-nez v8, :cond_8

    .line 2443
    const-string v5, "FullScreenViewScene"

    const-string v6, "[FullScreenViewScene][animationInIRT] Fullscreen item is null"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    if-eqz p2, :cond_6

    invoke-interface/range {p2 .. p2}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 2445
    :cond_6
    if-eqz p3, :cond_7

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    .line 2446
    :cond_7
    const/4 v4, 0x0

    goto :goto_0

    .line 2449
    :cond_8
    const-string v5, "TO_WIDTH"

    invoke-virtual {v11}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageWidth()F

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v21

    .line 2450
    .local v21, toWidth:F
    const-string v5, "TO_HEIGHT"

    invoke-virtual {v11}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageHeight()F

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v20

    .line 2451
    .local v20, toHeight:F
    const-string v5, "FROM_WIDTH"

    invoke-virtual {v11}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageWidth()F

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v17

    .line 2452
    .local v17, fromWidth:F
    const-string v5, "FROM_HEIGHT"

    invoke-virtual {v11}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageHeight()F

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v16

    .line 2453
    .local v16, fromHeight:F
    const-string v5, "FROM_X"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 2454
    .local v18, fromX:I
    const-string v5, "FROM_Y"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 2455
    .local v19, fromY:I
    const-string v5, "TO_X"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 2456
    .local v22, toX:I
    const-string v5, "TO_Y"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 2457
    .local v23, toY:I
    const/4 v12, 0x0

    .line 2458
    .local v12, isIn:Z
    const-string v5, "ANIMATION_STATE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 2466
    :goto_1
    :pswitch_0
    const-string v5, "DURATION"

    const/16 v6, 0x12c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 2467
    .local v13, duration:I
    new-instance v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;

    const-string v7, "FullscreenviewScene"

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    invoke-direct/range {v4 .. v15}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;Lcom/htc/sunnyCore/view/SView;Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;ZIILcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;)V

    .line 2468
    .local v4, animation:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;
    move/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->setScale(FFFF)V

    .line 2469
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->setTransition(IIII)V

    goto/16 :goto_0

    .line 2460
    .end local v4           #animation:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;
    .end local v13           #duration:I
    :pswitch_1
    const/4 v12, 0x1

    .line 2461
    goto :goto_1

    .line 2463
    :pswitch_2
    const/4 v12, 0x0

    goto :goto_1

    .line 2458
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getItemClickInfoIHT(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;)Z
    .locals 5
    .parameter "itemClickInfo"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 888
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 903
    :cond_0
    :goto_0
    return v0

    .line 893
    :cond_1
    iput v3, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->index:I

    .line 894
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    iput-object p1, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    .line 896
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/RenderThread;->runInterruptionIHT(Lcom/htc/sunnyCore/RenderThreadInterruption;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 898
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    iput-object v4, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    goto :goto_0

    .line 901
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    iput-object v4, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    .line 903
    iget v1, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->index:I

    if-eq v1, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 2168
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    return v0
.end method

.method public hideDRMIndicator()V
    .locals 3

    .prologue
    .line 2716
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->hideDRMIndicator()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2722
    :goto_0
    return-void

    .line 2718
    :catch_0
    move-exception v0

    .line 2720
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FullScreenViewScene"

    const-string v2, "[HTCAlbum][FullScreenViewScene][hideDRMIndicator] NG"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isInSpeedFu()Z
    .locals 1

    .prologue
    .line 2786
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsInSpeedyFu:Z

    return v0
.end method

.method isInTransition()Z
    .locals 1

    .prologue
    .line 1712
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z

    return v0
.end method

.method public isItemFirstInList(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 2748
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemLastInList(I)Z
    .locals 2
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 2753
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v1, :cond_1

    .line 2757
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method isZoomed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2383
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 2385
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getZoomFactor()F

    move-result v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 2387
    :cond_0
    return v0
.end method

.method public notifiedItemTextureExpired(I)V
    .locals 2
    .parameter "itemIndex"

    .prologue
    .line 879
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    .line 880
    .local v0, frameIndex:I
    if-gez v0, :cond_0

    .line 884
    :goto_0
    return-void

    .line 883
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->notifiedItemTextureExpired(I)V

    goto :goto_0
.end method

.method public notifiedItemTextureReady(ILcom/htc/sunnyCore/Texture;)V
    .locals 2
    .parameter "itemIndex"
    .parameter "texture"

    .prologue
    .line 868
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    .line 869
    .local v0, frameIndex:I
    if-gez v0, :cond_0

    .line 875
    :goto_0
    return-void

    .line 874
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->notifiedItemTextureReady(ILcom/htc/sunnyCore/Texture;)V

    goto :goto_0
.end method

.method public notifyMediaDataChangeIRTLock(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 2150
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    .line 2151
    .local v0, frameIndex:I
    if-gez v0, :cond_1

    .line 2164
    :cond_0
    :goto_0
    return-void

    .line 2157
    :cond_1
    const/4 v1, 0x0

    .line 2158
    .local v1, mediaData:Lcom/htc/sunnyCore/IMediaData;
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v2, :cond_0

    .line 2162
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v2, p1}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    .line 2163
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->bindItem(ILcom/htc/sunnyCore/IMediaData;)Z

    goto :goto_0
.end method

.method onChildFrameZoomBegin(F)V
    .locals 3
    .parameter "zoomFactor"

    .prologue
    .line 2355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z

    .line 2356
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 2357
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 2358
    :cond_0
    return-void
.end method

.method onChildFrameZoomEnd(F)V
    .locals 4
    .parameter "zoomFactor"

    .prologue
    const/4 v3, 0x0

    .line 2367
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z

    .line 2369
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;IZ)V

    .line 2370
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->layoutSceneAndBindItem()Z

    .line 2371
    return-void
.end method

.method onChildFrameZooming(F)V
    .locals 0
    .parameter "zoomFactor"

    .prologue
    .line 2363
    return-void
.end method

.method public onDRMPressed(Z)V
    .locals 3
    .parameter "pressed"

    .prologue
    .line 2728
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onDRMPressed(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2734
    :goto_0
    return-void

    .line 2730
    :catch_0
    move-exception v0

    .line 2732
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FullScreenViewScene"

    const-string v2, "[HTCAlbum][FullScreenViewScene][onDRMPressed] NG"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    .line 1486
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-lt v0, v1, :cond_2

    .line 1488
    :cond_0
    const-string v0, "FullScreenViewScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDoubleTap() NG - error idnex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    :cond_1
    :goto_0
    return v3

    .line 1491
    :cond_2
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mDisableZoom:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1494
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setExtremeQualityItemIndex(I)Z

    .line 1495
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onDoubleTap(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public onDoubleTapZoomBeginIRT()V
    .locals 2

    .prologue
    .line 2762
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    if-eqz v0, :cond_0

    .line 2764
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setIsDoubleTapZooming(Z)V

    .line 2766
    :cond_0
    return-void
.end method

.method public onDoubleTapZoomEndIRT()V
    .locals 2

    .prologue
    .line 2770
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    if-eqz v0, :cond_0

    .line 2772
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setIsDoubleTapZooming(Z)V

    .line 2774
    :cond_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 975
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panEnd()V

    .line 978
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 979
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->resetHadProcessedMovement()V

    .line 980
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->cancelFling()V

    .line 985
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchDown(I)V

    .line 986
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchDown(I)V

    .line 988
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->recordPanBegin(IFF)V

    .line 989
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->checkStartPanningOnBorder()V

    .line 992
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "FullScreenCancelAligning"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v0

    if-nez v0, :cond_1

    .line 994
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;

    const-string v2, "FullScreenCancelAligning"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 996
    :cond_1
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 16
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 1389
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    invoke-virtual {v12, v13}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 1390
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v12, v12, v13

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onFlingIRT(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v12

    if-nez v12, :cond_d

    .line 1394
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpl-float v12, v12, v13

    if-gtz v12, :cond_d

    const/high16 v12, 0x43fa

    cmpl-float v12, p3, v12

    if-gtz v12, :cond_0

    const/high16 v12, -0x3c06

    cmpg-float v12, p3, v12

    if-gez v12, :cond_d

    .line 1396
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v12, v12, v13

    invoke-virtual {v12}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v4

    .line 1398
    .local v4, centerFrameX:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    int-to-float v12, v12

    const/high16 v13, 0x3fe0

    mul-float v5, v12, v13

    .line 1399
    .local v5, centerFrameXThreshold:F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mItemIndexBeforeOnUp:I

    .line 1400
    .local v11, newCurrentItemIndex:I
    cmpg-float v12, v4, v5

    if-gez v12, :cond_1

    neg-float v12, v5

    cmpl-float v12, v4, v12

    if-lez v12, :cond_1

    .line 1402
    const/4 v12, 0x0

    cmpl-float v12, p3, v12

    if-lez v12, :cond_2

    .line 1404
    if-lez v11, :cond_1

    .line 1406
    add-int/lit8 v11, v11, -0x1

    .line 1418
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    sub-int v13, v11, v13

    add-int v10, v12, v13

    .line 1419
    .local v10, newCenterFrameIndex:I
    :goto_1
    const/4 v12, 0x5

    if-lt v10, v12, :cond_3

    .line 1421
    add-int/lit8 v10, v10, -0x5

    goto :goto_1

    .line 1409
    .end local v10           #newCenterFrameIndex:I
    :cond_2
    const/4 v12, 0x0

    cmpg-float v12, p3, v12

    if-gez v12, :cond_1

    .line 1411
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_1

    .line 1413
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1423
    .restart local v10       #newCenterFrameIndex:I
    :cond_3
    :goto_2
    if-gez v10, :cond_4

    .line 1425
    add-int/lit8 v10, v10, 0x5

    goto :goto_2

    .line 1427
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    if-eq v11, v12, :cond_a

    const/4 v6, 0x1

    .line 1428
    .local v6, currentItemIndexChanged:Z
    :goto_3
    if-eqz v6, :cond_8

    .line 1430
    sget-boolean v12, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v12, :cond_5

    const-string v12, "FullScreenViewScene"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onFling CurrentItemChange "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v12, :cond_6

    .line 1433
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onLeaveImageIRT()V

    .line 1435
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v12, v12, v13

    invoke-virtual {v12}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v12

    invoke-virtual {v12}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onLeaveItemIRT()V

    .line 1436
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->purgeTextureEQ()Z

    .line 1439
    const/4 v9, 0x0

    .line 1440
    .local v9, mediaData:Lcom/htc/sunnyCore/IMediaData;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v12, :cond_7

    .line 1442
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-interface {v12, v13}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v9

    .line 1444
    if-eqz v9, :cond_7

    .line 1445
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v12, v13, v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->bindItem(ILcom/htc/sunnyCore/IMediaData;)Z

    .line 1447
    :cond_7
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->showDRMIndicator(Z)V

    .line 1449
    move-object/from16 v0, p0

    iput v11, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    .line 1450
    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    .line 1452
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v12, v13}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onSetCurrentIndex(I)V

    .line 1454
    .end local v9           #mediaData:Lcom/htc/sunnyCore/IMediaData;
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v12, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPreparatorIndexChangeFlag(Z)V

    .line 1456
    const/4 v7, 0x0

    .local v7, i:I
    :goto_4
    const/4 v12, 0x5

    if-ge v7, v12, :cond_b

    .line 1458
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    if-eq v7, v12, :cond_9

    .line 1460
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v12, v12, v7

    invoke-virtual {v12}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unzoom()V

    .line 1456
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1427
    .end local v6           #currentItemIndexChanged:Z
    .end local v7           #i:I
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 1463
    .restart local v6       #currentItemIndexChanged:Z
    .restart local v7       #i:I
    :cond_b
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord(I)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v8

    .line 1464
    .local v8, lastRecord:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    iget v12, v8, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_c

    .line 1466
    iget-wide v12, v8, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDuration:J

    long-to-float v12, v12

    mul-float v12, v12, p3

    const/high16 v13, 0x447a

    div-float/2addr v12, v13

    iput v12, v8, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    .line 1468
    :cond_c
    move/from16 v0, p3

    iput v0, v8, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panVelocity:F

    .line 1471
    const-string v12, "onFling"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->shouldAnimateToFilmstripView(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1473
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v14

    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanVelocity()F

    move-result v15

    invoke-virtual {v12, v13, v14, v15}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->fullScreenViewAnimateToFilmstripView(IFF)V

    .line 1482
    .end local v4           #centerFrameX:F
    .end local v5           #centerFrameXThreshold:F
    .end local v6           #currentItemIndexChanged:Z
    .end local v7           #i:I
    .end local v8           #lastRecord:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    .end local v10           #newCenterFrameIndex:I
    .end local v11           #newCurrentItemIndex:I
    :cond_d
    :goto_5
    return-void

    .line 1477
    .restart local v4       #centerFrameX:F
    .restart local v5       #centerFrameXThreshold:F
    .restart local v6       #currentItemIndexChanged:Z
    .restart local v7       #i:I
    .restart local v8       #lastRecord:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    .restart local v10       #newCenterFrameIndex:I
    .restart local v11       #newCurrentItemIndex:I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doCenterAlign()V

    goto :goto_5
.end method

.method public onLayout(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 852
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    .line 853
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    .line 855
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 857
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setFrameSize(FF)V

    .line 855
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 860
    :cond_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->layoutSceneAndBindItem()Z

    .line 862
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doCurrentFrameHoming()V

    .line 864
    return-void
.end method

.method public onMediaItemRefreshIRT(I)V
    .locals 8
    .parameter "index"

    .prologue
    const/4 v7, 0x5

    .line 2223
    move v1, p1

    .line 2224
    .local v1, itemIndex:I
    if-ltz v1, :cond_3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v1, v4, :cond_3

    const/4 v2, 0x1

    .line 2226
    .local v2, itemIndexValid:Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    .line 2227
    .local v0, frameIndex:I
    if-gez v0, :cond_0

    .line 2229
    add-int/lit8 v0, v0, 0x5

    .line 2231
    :cond_0
    if-lt v0, v7, :cond_1

    .line 2233
    add-int/lit8 v0, v0, -0x5

    .line 2235
    :cond_1
    if-ltz v0, :cond_2

    if-lt v0, v7, :cond_4

    .line 2237
    :cond_2
    const-string v4, "FullScreenViewScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "layoutSceneAndBindItem() NG "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    :goto_1
    return-void

    .line 2224
    .end local v0           #frameIndex:I
    .end local v2           #itemIndexValid:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 2241
    .restart local v0       #frameIndex:I
    .restart local v2       #itemIndexValid:Z
    :cond_4
    if-eqz v2, :cond_6

    .line 2243
    const/4 v3, 0x0

    .line 2244
    .local v3, mediaData:Lcom/htc/sunnyCore/IMediaData;
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v4, :cond_5

    .line 2246
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v4, v1}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    .line 2249
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v4, v4, v0

    invoke-virtual {v4, v1, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->bindItem(ILcom/htc/sunnyCore/IMediaData;)Z

    goto :goto_1

    .line 2253
    .end local v3           #mediaData:Lcom/htc/sunnyCore/IMediaData;
    :cond_6
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    goto :goto_1
.end method

.method public onMediaItemRefreshSizeIRT(I)V
    .locals 8
    .parameter "index"

    .prologue
    const/4 v7, 0x5

    .line 2260
    move v1, p1

    .line 2261
    .local v1, itemIndex:I
    if-ltz v1, :cond_3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v1, v4, :cond_3

    const/4 v2, 0x1

    .line 2263
    .local v2, itemIndexValid:Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    .line 2264
    .local v0, frameIndex:I
    if-gez v0, :cond_0

    .line 2266
    add-int/lit8 v0, v0, 0x5

    .line 2268
    :cond_0
    if-lt v0, v7, :cond_1

    .line 2270
    add-int/lit8 v0, v0, -0x5

    .line 2272
    :cond_1
    if-ltz v0, :cond_2

    if-lt v0, v7, :cond_4

    .line 2274
    :cond_2
    const-string v4, "FullScreenViewScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMediaItemRefreshSizeIRT() NG "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    :goto_1
    return-void

    .line 2261
    .end local v0           #frameIndex:I
    .end local v2           #itemIndexValid:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 2278
    .restart local v0       #frameIndex:I
    .restart local v2       #itemIndexValid:Z
    :cond_4
    if-eqz v2, :cond_6

    .line 2280
    const/4 v3, 0x0

    .line 2281
    .local v3, mediaData:Lcom/htc/sunnyCore/IMediaData;
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v4, :cond_5

    .line 2283
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v4, v1}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    .line 2286
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v4, v4, v0

    invoke-virtual {v4, v1, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->refreshMediaSize(ILcom/htc/sunnyCore/IMediaData;)V

    goto :goto_1

    .line 2290
    .end local v3           #mediaData:Lcom/htc/sunnyCore/IMediaData;
    :cond_6
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    goto :goto_1
.end method

.method public onMediaItemSetConsumeRightExpiredIRT(I)V
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x5

    .line 2325
    move v1, p1

    .line 2326
    .local v1, itemIndex:I
    if-ltz v1, :cond_3

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v1, v3, :cond_3

    const/4 v2, 0x1

    .line 2328
    .local v2, itemIndexValid:Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    .line 2329
    .local v0, frameIndex:I
    if-gez v0, :cond_0

    .line 2331
    add-int/lit8 v0, v0, 0x5

    .line 2333
    :cond_0
    if-lt v0, v6, :cond_1

    .line 2335
    add-int/lit8 v0, v0, -0x5

    .line 2337
    :cond_1
    if-ltz v0, :cond_2

    if-lt v0, v6, :cond_4

    .line 2339
    :cond_2
    const-string v3, "FullScreenViewScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMediaItemSetConsumeRightExpiredIRT() NG "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2351
    :goto_1
    return-void

    .line 2326
    .end local v0           #frameIndex:I
    .end local v2           #itemIndexValid:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 2343
    .restart local v0       #frameIndex:I
    .restart local v2       #itemIndexValid:Z
    :cond_4
    if-eqz v2, :cond_5

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    if-ne v0, v3, :cond_5

    .line 2345
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setMediaItemConsumeRightExpired(I)V

    goto :goto_1

    .line 2349
    :cond_5
    const-string v3, "FullScreenViewScene"

    const-string v4, "onMediaItemSetConsumeRightExpiredIRT() NG, item index is invalid or item is not center frame"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onMediaItemSetConsumeRightFlagIRT(I)V
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x5

    .line 2295
    move v1, p1

    .line 2296
    .local v1, itemIndex:I
    if-ltz v1, :cond_3

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v1, v3, :cond_3

    const/4 v2, 0x1

    .line 2298
    .local v2, itemIndexValid:Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    .line 2299
    .local v0, frameIndex:I
    if-gez v0, :cond_0

    .line 2301
    add-int/lit8 v0, v0, 0x5

    .line 2303
    :cond_0
    if-lt v0, v6, :cond_1

    .line 2305
    add-int/lit8 v0, v0, -0x5

    .line 2307
    :cond_1
    if-ltz v0, :cond_2

    if-lt v0, v6, :cond_4

    .line 2309
    :cond_2
    const-string v3, "FullScreenViewScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMediaItemConsumeRightIRT() NG "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    :goto_1
    return-void

    .line 2296
    .end local v0           #frameIndex:I
    .end local v2           #itemIndexValid:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 2313
    .restart local v0       #frameIndex:I
    .restart local v2       #itemIndexValid:Z
    :cond_4
    if-eqz v2, :cond_5

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    if-ne v0, v3, :cond_5

    .line 2315
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setMediaItemConsumeRightFlag(I)V

    goto :goto_1

    .line 2319
    :cond_5
    const-string v3, "FullScreenViewScene"

    const-string v4, "onMediaItemConsumeRightIRT() NG, item index is invalid or item is not center frame"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setExtremeQualityItemIndex(I)Z

    .line 1534
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->onScaleIRT(Landroid/view/ScaleGestureDetector;Z)Z

    .line 1535
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .parameter "detector"

    .prologue
    const/4 v3, 0x1

    .line 1501
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v0, :cond_1

    .line 1528
    :cond_0
    :goto_0
    return v3

    .line 1504
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isItemZoomable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mDisableZoom:Z

    if-eq v0, v3, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->isOnBounceBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1517
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->onScaleBeginIRT(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;Landroid/view/ScaleGestureDetector;)Z

    .line 1520
    :cond_2
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    if-eqz v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panEnd()V

    .line 1523
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 1524
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->resetHadProcessedMovement()V

    .line 1525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .parameter "detector"

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->onScaleEndIRT(Landroid/view/ScaleGestureDetector;)V

    .line 1541
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 14
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 1317
    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v12, "FullScreenCancelAligning"

    invoke-virtual {v11, p0, v12}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 1320
    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v12, "Align"

    invoke-virtual {v11, p0, v12}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v1

    .line 1321
    .local v1, alignAction:Lcom/htc/sunnyCore/RenderThreadAction;
    const/4 v2, 0x0

    .line 1322
    .local v2, alignEnd:Z
    if-nez v1, :cond_0

    .line 1324
    const/4 v2, 0x1

    .line 1327
    :cond_0
    const/4 v8, 0x0

    .line 1328
    .local v8, pannedToCancelAlign:Z
    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    aget-object v10, v11, v12

    .line 1329
    .local v10, record:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1330
    .local v3, currendPannedTime:J
    iget-wide v11, v10, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginTime:J

    sub-long v5, v3, v11

    .line 1331
    .local v5, currentPanDuration:J
    const-wide/16 v11, 0x46

    cmp-long v11, v5, v11

    if-lez v11, :cond_1

    .line 1333
    const/4 v8, 0x1

    .line 1339
    :cond_1
    if-nez v2, :cond_3

    if-nez v8, :cond_3

    iget-boolean v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsInSpeedyFu:Z

    if-eqz v11, :cond_3

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->signum(F)F

    move-result v11

    neg-float v11, v11

    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mSpeedyFuDirection:F

    cmpl-float v11, v11, v12

    if-nez v11, :cond_3

    .line 1341
    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v12, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;

    const-string v13, "FullScreenCancelAligning"

    invoke-direct {v12, p0, p0, v13}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 1384
    :cond_2
    :goto_0
    return-void

    .line 1344
    :cond_3
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsInSpeedyFu:Z

    .line 1345
    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mSpeedyFuStateListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FullScreeenViewSpeedyFuStateListener;

    if-eqz v11, :cond_4

    .line 1347
    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mSpeedyFuStateListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FullScreeenViewSpeedyFuStateListener;

    iget-boolean v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsInSpeedyFu:Z

    invoke-interface {v11, v12}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FullScreeenViewSpeedyFuStateListener;->onSpeedyFuStateChange(Z)V

    .line 1350
    :cond_4
    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v12, "Align"

    invoke-virtual {v11, p0, v12}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1352
    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v11}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onAlignEndIRT()V

    .line 1354
    :cond_5
    iget-boolean v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    if-nez v11, :cond_6

    .line 1356
    mul-float v11, p3, p3

    mul-float v12, p4, p4

    add-float/2addr v11, v12

    invoke-static {v11}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v7

    .line 1357
    .local v7, distance:F
    const/high16 v11, 0x40a0

    div-float/2addr v11, v7

    const/high16 v12, 0x3f80

    cmpg-float v11, v11, v12

    if-gez v11, :cond_9

    const/high16 v11, 0x40a0

    div-float v9, v11, v7

    .line 1358
    .local v9, ratioToLimitedMovement:F
    :goto_1
    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panBegin()V

    .line 1359
    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    mul-float v13, p3, v9

    add-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchDown(I)V

    .line 1360
    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    mul-float v13, p4, v9

    add-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchDown(I)V

    .line 1361
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    .line 1364
    .end local v7           #distance:F
    .end local v9           #ratioToLimitedMovement:F
    :cond_6
    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchMove(I)V

    .line 1365
    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchMove(I)V

    .line 1367
    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    invoke-virtual {v11}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->isOnBounceBack()Z

    move-result v11

    if-nez v11, :cond_2

    .line 1372
    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v11}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-result-object v11

    sget-object v12, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-eq v11, v12, :cond_7

    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v11}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-result-object v11

    sget-object v12, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-ne v11, v12, :cond_8

    .line 1374
    :cond_7
    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v12, "FullScreenPan"

    invoke-virtual {v11, p0, v12}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v11

    if-nez v11, :cond_8

    .line 1376
    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    invoke-virtual {v11, v12}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 1380
    :cond_8
    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

    if-eqz v11, :cond_2

    .line 1382
    iget-object v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

    move/from16 v0, p3

    invoke-interface {v11, v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;->onFullScreenViewScrollIRT(F)V

    goto/16 :goto_0

    .line 1357
    .restart local v7       #distance:F
    :cond_9
    const/high16 v9, 0x3f80

    goto :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1313
    return-void
.end method

.method public onTileTextureReadyIRT(Lcom/htc/sunny2/fullfilmview/TileDecodeItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 2738
    iget v1, p1, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->index:I

    invoke-direct {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    .line 2739
    .local v0, frameIndex:I
    if-gez v0, :cond_0

    .line 2744
    :goto_0
    return-void

    .line 2743
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onTileTextureReadyIRT(Lcom/htc/sunny2/fullfilmview/TileDecodeItem;)V

    goto :goto_0
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 32
    .parameter "e"

    .prologue
    .line 1000
    const/16 v16, 0x0

    .line 1001
    .local v16, isSpeedyFuStoppedByTouch:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    move-object/from16 v28, v0

    const-string v29, "Align"

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v28

    if-eqz v28, :cond_9

    const/4 v15, 0x1

    .line 1002
    .local v15, isAligning:Z
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v28, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    invoke-virtual/range {v30 .. v30}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->recordPanEnd(IFF)V

    .line 1005
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bWasAligning:Z

    move/from16 v28, v0

    if-eqz v28, :cond_0

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsInSpeedyFu:Z

    move/from16 v28, v0

    if-eqz v28, :cond_0

    .line 1007
    const/16 v16, 0x1

    .line 1010
    :cond_0
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bWasAligning:Z

    .line 1012
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2

    .line 1014
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v29, v0

    aget-object v28, v28, v29

    invoke-virtual/range {v28 .. v28}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panEnd()V

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->hadProcessedMovement()Z

    move-result v28

    if-nez v28, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v29, v0

    aget-object v28, v28, v29

    invoke-virtual/range {v28 .. v28}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getZoomFactor()F

    move-result v28

    const/high16 v29, 0x3f80

    cmpl-float v28, v28, v29

    if-nez v28, :cond_1

    .line 1023
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->resetHadProcessedMovement()V

    .line 1027
    :cond_2
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsStartPanOnFirstLastItem:Z

    .line 1028
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v28, v0

    if-nez v28, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v29, v0

    aget-object v28, v28, v29

    invoke-virtual/range {v28 .. v28}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v28

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-gez v28, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v29, v0

    aget-object v28, v28, v29

    invoke-virtual/range {v28 .. v28}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v28

    const/16 v29, 0x0

    cmpg-float v28, v28, v29

    if-gtz v28, :cond_5

    .line 1030
    :cond_4
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsStartPanOnFirstLastItem:Z

    .line 1033
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    move-object/from16 v28, v0

    const-string v29, "FullScreenCancelAligning"

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-object/from16 v28, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchUp(I)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-object/from16 v28, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchUp(I)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v29, v0

    aget-object v28, v28, v29

    invoke-virtual/range {v28 .. v28}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v5

    .line 1041
    .local v5, centerFrameX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v21, v0

    .line 1044
    .local v21, newCurrentItemIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mItemIndexBeforeOnUp:I

    .line 1047
    if-eqz v16, :cond_e

    .line 1050
    const/4 v4, -0x1

    .line 1051
    .local v4, INVALID_INDEX:I
    const/16 v17, -0x1

    .line 1052
    .local v17, itemIndexNearestToScreenCenter:I
    const v19, 0x7f7fffff

    .line 1054
    .local v19, nearestItemDistanceFromScreenCenter:F
    const/16 v25, 0x2

    .line 1055
    .local v25, sideFramesCount:I
    move/from16 v0, v25

    neg-int v14, v0

    .local v14, i:I
    :goto_1
    move/from16 v0, v25

    if-gt v14, v0, :cond_b

    .line 1057
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v28, v0

    add-int v11, v28, v14

    .line 1058
    .local v11, frameIndex:I
    if-gez v11, :cond_6

    .line 1060
    add-int/lit8 v11, v11, 0x5

    .line 1062
    :cond_6
    const/16 v28, 0x5

    move/from16 v0, v28

    if-lt v11, v0, :cond_7

    .line 1064
    add-int/lit8 v11, v11, -0x5

    .line 1066
    :cond_7
    if-ltz v11, :cond_8

    const/16 v28, 0x5

    move/from16 v0, v28

    if-lt v11, v0, :cond_a

    .line 1055
    :cond_8
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1001
    .end local v4           #INVALID_INDEX:I
    .end local v5           #centerFrameX:F
    .end local v11           #frameIndex:I
    .end local v14           #i:I
    .end local v15           #isAligning:Z
    .end local v17           #itemIndexNearestToScreenCenter:I
    .end local v19           #nearestItemDistanceFromScreenCenter:F
    .end local v21           #newCurrentItemIndex:I
    .end local v25           #sideFramesCount:I
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1071
    .restart local v4       #INVALID_INDEX:I
    .restart local v5       #centerFrameX:F
    .restart local v11       #frameIndex:I
    .restart local v14       #i:I
    .restart local v15       #isAligning:Z
    .restart local v17       #itemIndexNearestToScreenCenter:I
    .restart local v19       #nearestItemDistanceFromScreenCenter:F
    .restart local v21       #newCurrentItemIndex:I
    .restart local v25       #sideFramesCount:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v28, v0

    aget-object v28, v28, v11

    invoke-virtual/range {v28 .. v28}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItemIndex()I

    move-result v12

    .line 1072
    .local v12, frameItemIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v28, v0

    aget-object v28, v28, v11

    invoke-virtual/range {v28 .. v28}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v13

    .line 1073
    .local v13, framePosition:F
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v28

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v29

    cmpg-float v28, v28, v29

    if-gez v28, :cond_8

    .line 1075
    move/from16 v19, v13

    .line 1076
    move/from16 v17, v12

    goto :goto_2

    .line 1085
    .end local v11           #frameIndex:I
    .end local v12           #frameItemIndex:I
    .end local v13           #framePosition:F
    :cond_b
    const/16 v28, -0x1

    move/from16 v0, v28

    move/from16 v1, v17

    if-eq v0, v1, :cond_c

    .line 1087
    move/from16 v21, v17

    .line 1090
    const/16 v28, 0x0

    cmpg-float v28, v19, v28

    if-gez v28, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mSpeedyFuDirection:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpg-float v28, v28, v29

    if-gez v28, :cond_d

    .line 1092
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v21

    move/from16 v1, v28

    if-ge v0, v1, :cond_c

    .line 1094
    add-int/lit8 v21, v21, 0x1

    .line 1178
    .end local v4           #INVALID_INDEX:I
    .end local v14           #i:I
    .end local v17           #itemIndexNearestToScreenCenter:I
    .end local v19           #nearestItemDistanceFromScreenCenter:F
    .end local v25           #sideFramesCount:I
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v29, v0

    sub-int v29, v21, v29

    add-int v20, v28, v29

    .line 1179
    .local v20, newCenterFrameIndex:I
    :goto_4
    const/16 v28, 0x5

    move/from16 v0, v20

    move/from16 v1, v28

    if-lt v0, v1, :cond_13

    .line 1181
    add-int/lit8 v20, v20, -0x5

    goto :goto_4

    .line 1098
    .end local v20           #newCenterFrameIndex:I
    .restart local v4       #INVALID_INDEX:I
    .restart local v14       #i:I
    .restart local v17       #itemIndexNearestToScreenCenter:I
    .restart local v19       #nearestItemDistanceFromScreenCenter:F
    .restart local v25       #sideFramesCount:I
    :cond_d
    const/16 v28, 0x0

    cmpl-float v28, v19, v28

    if-lez v28, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mSpeedyFuDirection:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_c

    .line 1100
    if-lez v21, :cond_c

    .line 1102
    add-int/lit8 v21, v21, -0x1

    goto :goto_3

    .line 1110
    .end local v4           #INVALID_INDEX:I
    .end local v14           #i:I
    .end local v17           #itemIndexNearestToScreenCenter:I
    .end local v19           #nearestItemDistanceFromScreenCenter:F
    .end local v25           #sideFramesCount:I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v26, v0

    .line 1113
    .local v26, span:F
    const/4 v9, 0x0

    .line 1114
    .local v9, frameChangeThresholdWhenAligning:F
    const/4 v10, 0x0

    .line 1120
    .local v10, frameChangeThresholdWhenIdle:F
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord()Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panFrameDistance:F

    move/from16 v22, v0

    .line 1121
    .local v22, panFrameDistance:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord()Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v30

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginTime:J

    move-wide/from16 v30, v0

    sub-long v23, v28, v30

    .line 1126
    .local v23, panTime:J
    const/4 v7, 0x0

    .line 1127
    .local v7, criteria:F
    const/16 v27, 0x0

    .line 1130
    .local v27, threshold:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x3fe0

    mul-float v6, v28, v29

    .line 1134
    .local v6, centerFrameXThreshold:F
    cmpg-float v28, v5, v6

    if-gez v28, :cond_c

    neg-float v0, v6

    move/from16 v28, v0

    cmpl-float v28, v5, v28

    if-lez v28, :cond_c

    .line 1136
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->lastStatus:I

    move/from16 v28, v0

    if-eqz v28, :cond_f

    const-wide/16 v28, 0x1f4

    cmp-long v28, v23, v28

    if-lez v28, :cond_11

    .line 1140
    :cond_f
    const/16 v28, 0x0

    cmpl-float v28, v22, v28

    if-eqz v28, :cond_10

    .line 1142
    move v7, v5

    .line 1143
    move/from16 v27, v10

    .line 1153
    :cond_10
    :goto_5
    cmpl-float v28, v7, v27

    if-lez v28, :cond_12

    .line 1155
    :goto_6
    cmpl-float v28, v7, v27

    if-lez v28, :cond_c

    .line 1157
    if-lez v21, :cond_c

    .line 1160
    add-int/lit8 v21, v21, -0x1

    .line 1161
    sub-float v7, v7, v26

    goto :goto_6

    .line 1146
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->lastStatus:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    .line 1149
    move/from16 v7, v22

    .line 1150
    move/from16 v27, v9

    goto :goto_5

    .line 1164
    :cond_12
    move/from16 v0, v27

    neg-float v0, v0

    move/from16 v28, v0

    cmpg-float v28, v7, v28

    if-gez v28, :cond_c

    .line 1166
    :goto_7
    move/from16 v0, v27

    neg-float v0, v0

    move/from16 v28, v0

    cmpg-float v28, v7, v28

    if-gez v28, :cond_c

    .line 1168
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v21

    move/from16 v1, v28

    if-ge v0, v1, :cond_c

    .line 1171
    add-int/lit8 v21, v21, 0x1

    .line 1172
    add-float v7, v7, v26

    goto :goto_7

    .line 1183
    .end local v6           #centerFrameXThreshold:F
    .end local v7           #criteria:F
    .end local v9           #frameChangeThresholdWhenAligning:F
    .end local v10           #frameChangeThresholdWhenIdle:F
    .end local v22           #panFrameDistance:F
    .end local v23           #panTime:J
    .end local v26           #span:F
    .end local v27           #threshold:F
    .restart local v20       #newCenterFrameIndex:I
    :cond_13
    :goto_8
    if-gez v20, :cond_14

    .line 1185
    add-int/lit8 v20, v20, 0x5

    goto :goto_8

    .line 1189
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v28, v0

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_19

    const/4 v8, 0x1

    .line 1190
    .local v8, currentItemIndexChanged:Z
    :goto_9
    if-eqz v8, :cond_18

    .line 1192
    sget-boolean v28, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v28, :cond_15

    const-string v28, "FullScreenViewScene"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "onUp CurrentItemChange "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " -> "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    move-object/from16 v28, v0

    if-eqz v28, :cond_16

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onLeaveImageIRT()V

    .line 1197
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v29, v0

    aget-object v28, v28, v29

    invoke-virtual/range {v28 .. v28}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onLeaveItemIRT()V

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->purgeTextureEQ()Z

    .line 1201
    const/16 v18, 0x0

    .line 1202
    .local v18, mediaData:Lcom/htc/sunnyCore/IMediaData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    move-object/from16 v28, v0

    if-eqz v28, :cond_17

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v18

    .line 1206
    if-eqz v18, :cond_17

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v29, v0

    aget-object v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->bindItem(ILcom/htc/sunnyCore/IMediaData;)Z

    .line 1209
    :cond_17
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->showDRMIndicator(Z)V

    .line 1211
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    .line 1212
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onSetCurrentIndex(I)V

    .line 1216
    .end local v18           #mediaData:Lcom/htc/sunnyCore/IMediaData;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPreparatorIndexChangeFlag(Z)V

    .line 1218
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord()Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v28

    move-object/from16 v0, v28

    iput-boolean v8, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panCrossedFrame:Z

    .line 1220
    const-string v28, "onUp"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->shouldAnimateToFilmstripView(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1a

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    invoke-virtual/range {v30 .. v30}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v30

    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanVelocity()F

    move-result v31

    invoke-virtual/range {v28 .. v31}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->fullScreenViewAnimateToFilmstripView(IFF)V

    .line 1240
    :goto_a
    return-void

    .line 1189
    .end local v8           #currentItemIndexChanged:Z
    :cond_19
    const/4 v8, 0x0

    goto/16 :goto_9

    .line 1226
    .restart local v8       #currentItemIndexChanged:Z
    :cond_1a
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_b
    const/16 v28, 0x5

    move/from16 v0, v28

    if-ge v14, v0, :cond_1c

    .line 1228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-eq v14, v0, :cond_1b

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v28, v0

    aget-object v28, v28, v14

    invoke-virtual/range {v28 .. v28}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unzoom()V

    .line 1226
    :cond_1b
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 1233
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doCenterAlign()V

    goto :goto_a
.end method

.method public purgeTileTextures()V
    .locals 2

    .prologue
    .line 2778
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 2780
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->purgeTileTextures()V

    .line 2782
    :cond_0
    return-void
.end method

.method public rebindVisibleItems()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    .line 2173
    const/4 v6, 0x2

    .line 2174
    .local v6, sideFramesCount:I
    neg-int v2, v6

    .local v2, i:I
    :goto_0
    if-gt v2, v6, :cond_8

    .line 2177
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    add-int v3, v7, v2

    .line 2178
    .local v3, itemIndex:I
    if-ltz v3, :cond_4

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v3, v7, :cond_4

    const/4 v4, 0x1

    .line 2180
    .local v4, itemIndexValid:Z
    :goto_1
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    add-int v0, v7, v2

    .line 2181
    .local v0, frameIndex:I
    if-gez v0, :cond_0

    .line 2183
    add-int/lit8 v0, v0, 0x5

    .line 2185
    :cond_0
    if-lt v0, v10, :cond_1

    .line 2187
    add-int/lit8 v0, v0, -0x5

    .line 2189
    :cond_1
    if-ltz v0, :cond_2

    if-lt v0, v10, :cond_5

    .line 2191
    :cond_2
    const-string v7, "FullScreenViewScene"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "layoutSceneAndBindItem() NG "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2178
    .end local v0           #frameIndex:I
    .end local v4           #itemIndexValid:Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 2195
    .restart local v0       #frameIndex:I
    .restart local v4       #itemIndexValid:Z
    :cond_5
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItemIndex()I

    move-result v1

    .line 2198
    .local v1, frameItemIndex:I
    if-eqz v4, :cond_7

    .line 2200
    if-eq v1, v3, :cond_3

    .line 2202
    const/4 v5, 0x0

    .line 2203
    .local v5, mediaData:Lcom/htc/sunnyCore/IMediaData;
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v7, :cond_6

    .line 2205
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v7, v3}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v5

    .line 2208
    :cond_6
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v7, v7, v0

    invoke-virtual {v7, v3, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->bindItem(ILcom/htc/sunnyCore/IMediaData;)Z

    goto :goto_2

    .line 2213
    .end local v5           #mediaData:Lcom/htc/sunnyCore/IMediaData;
    :cond_7
    const/4 v7, -0x1

    if-eq v1, v7, :cond_3

    .line 2215
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    goto :goto_2

    .line 2219
    .end local v0           #frameIndex:I
    .end local v1           #frameItemIndex:I
    .end local v3           #itemIndex:I
    .end local v4           #itemIndexValid:Z
    :cond_8
    return-void
.end method

.method public setCurrentItemIndex(I)Z
    .locals 4
    .parameter "currentItemIndex"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 817
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    .line 818
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, v2, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setPosition(FFF)V

    .line 820
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->layoutSceneAndBindItem()Z

    .line 822
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onSetCurrentIndex(I)V

    .line 824
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    .line 826
    return v3
.end method

.method public setImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V
    .locals 3
    .parameter "imagePanAndZoomListener"

    .prologue
    .line 509
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 511
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    :cond_0
    return-void
.end method

.method public setOnFullScreenViewAlignEndListener(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2145
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mOnFullScreenViewAlignEndListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;

    .line 2146
    return-void
.end method

.method public setPaintLayerBMPIHT(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;)Z
    .locals 3
    .parameter "itemPaintLayerInfo"

    .prologue
    const/4 v1, 0x0

    .line 2392
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v2, :cond_1

    .line 2404
    :cond_0
    :goto_0
    return v1

    .line 2397
    :cond_1
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;

    const-string v2, "ItemPaintLayerBMPSetter"

    invoke-direct {v0, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2398
    .local v0, itemPaintLayerBMPSetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;
    iput-object p1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;->itemPaintLayerInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;

    .line 2400
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v2, v0}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2404
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setPaintLayerTransparencyIHT(II)Z
    .locals 3
    .parameter "index"
    .parameter "transparency"

    .prologue
    const/4 v0, 0x0

    .line 2409
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    if-nez v1, :cond_1

    .line 2421
    :cond_0
    :goto_0
    return v0

    .line 2414
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    iput p1, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;->index:I

    .line 2415
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    iput p2, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;->transparency:I

    .line 2417
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2421
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSpeedyFuStateListener(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FullScreeenViewSpeedyFuStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 402
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mSpeedyFuStateListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FullScreeenViewSpeedyFuStateListener;

    .line 403
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 840
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->visible:Z

    .line 841
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->visible:Z

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/SceneNode;->setVisibility(Z)V

    .line 846
    :cond_0
    return-void
.end method

.method public setupImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V
    .locals 0
    .parameter "imagePanAndZoomListener"

    .prologue
    .line 831
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 832
    return-void
.end method

.method public setupRenderingEnvironment(Lcom/htc/sunnyCore/RenderThread;I)V
    .locals 4
    .parameter "renderThread"
    .parameter "sunnyEnvironment"

    .prologue
    .line 483
    const-string v1, "FullScreenViewScene"

    const-string v2, "setupRenderingEnvironment()"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 486
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->sunnyEnvironment:I

    .line 488
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->sunnyEnvironment:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setupRenderingEnvironment(Lcom/htc/sunnyCore/RenderThread;I)V

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 492
    :cond_0
    return-void
.end method

.method public setupScene(Lcom/htc/sunnyCore/SceneNode;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;III)Z
    .locals 10
    .parameter "parentSceneNode"
    .parameter "itemPrototype"
    .parameter "viewportWidth"
    .parameter "viewportHeight"
    .parameter "itemInterval"

    .prologue
    const/4 v9, 0x5

    const/4 v2, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 521
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 523
    :cond_0
    const-string v2, "FullScreenViewScene"

    const-string v3, "setupScene() NG - zero param"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    :goto_0
    return v1

    .line 529
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->clearScene(Lcom/htc/sunnyCore/SceneNode;)V

    .line 533
    iput p3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    .line 534
    iput p4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    .line 535
    iput p5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    .line 537
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    .line 541
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->sunnyEnvironment:I

    iput v4, v3, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->sunnyEnvironment:I

    .line 542
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->allocateShareResources()V

    .line 546
    invoke-static {}, Lcom/htc/sunnyCore/SceneNode;->obtain()Lcom/htc/sunnyCore/SceneNode;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    .line 547
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/SceneNode;->getNodeId()I

    move-result v3

    if-nez v3, :cond_2

    .line 549
    const-string v2, "FullScreenViewScene"

    const-string v3, "setupScene() NG - failed to create scene node"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->clearScene(Lcom/htc/sunnyCore/SceneNode;)V

    goto :goto_0

    .line 556
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v3, v2}, Lcom/htc/sunnyCore/SceneNode;->setVisibility(Z)V

    .line 557
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {p1, v3}, Lcom/htc/sunnyCore/SceneNode;->addSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 561
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v9, :cond_4

    .line 563
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v3, v3, v0

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->addToScene(IILcom/htc/sunnyCore/SceneNode;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 565
    const-string v2, "FullScreenViewScene"

    const-string v3, "setupScene() NG - failed to create frame"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->clearScene(Lcom/htc/sunnyCore/SceneNode;)V

    goto :goto_0

    .line 569
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setVisibleRegionChangeListener(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;)V

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 574
    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v9, :cond_5

    .line 576
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v3, v3, v0

    invoke-virtual {v3, v8, v8, v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setPosition(FFF)V

    .line 574
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 581
    :cond_5
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    .line 585
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->layoutSceneAndBindItem()Z

    .line 587
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-direct {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 588
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-direct {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    .line 589
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    sget-object v3, Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;->CENTER:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    new-instance v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;

    invoke-direct {v4, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V

    invoke-virtual {v1, v3, v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->init(Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;)Z

    .line 654
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    sget-object v3, Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;->CENTER:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    new-instance v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$2;

    invoke-direct {v4, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$2;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V

    invoke-virtual {v1, v3, v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->init(Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;)Z

    move v1, v2

    .line 706
    goto/16 :goto_0
.end method

.method public showDRMIndicator(Z)V
    .locals 3
    .parameter "bForce"

    .prologue
    .line 2704
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->showDRMIndicator(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2710
    :goto_0
    return-void

    .line 2706
    :catch_0
    move-exception v0

    .line 2708
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FullScreenViewScene"

    const-string v2, "[HTCAlbum][FullScreenViewScene][showDRMIndicator] NG"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unbindMediaList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 796
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v1, :cond_1

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    const-string v1, "FullScreenViewScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbindMediaList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 805
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    .line 803
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 808
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 809
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    .line 810
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    .line 811
    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    .line 812
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FullScreenViewScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcAlbum][FullScreenViewScene][unbindMediaList]isCurrentIndexSet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method unzoomCenter()V
    .locals 2

    .prologue
    .line 2375
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 2377
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unzoom()V

    .line 2379
    :cond_0
    return-void
.end method
