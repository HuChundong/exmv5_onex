.class public Lcom/htc/sunny2/fullfilmview/FullFilmView;
.super Lcom/htc/sunnyCore/view/SView;
.source "FullFilmView.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;
.implements Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;
.implements Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;
.implements Lcom/htc/sunnyCore/Preparator$UpdateListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/htc/sunnyCore/view/ISViewDataChangeHandler;
.implements Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TileDecodeHelper;
.implements Lcom/htc/sunny2/fullfilmview/TileDecoder$TileDecodeCompleteListener;
.implements Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TileTextureReadyListener;
.implements Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FullScreeenViewSpeedyFuStateListener;
.implements Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/FullFilmView$TileTextureReadyNotifyEvent;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripSceneListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$CancelFlimstripViewlFlingingAction;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$OnFilmstripViewScrollChangeListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    }
.end annotation


# static fields
.field private static final CANCEL_FILMSTRIP_VIEW_FLINGING_NAME:Ljava/lang/String; = "CancelFlimstripViewlFlinging"

#the value of this static final field might be set in the static constructor
.field private static final FILMSTRIP_VIEW_FLINGING_VELOCITY_THRESHOLD:F = 0.0f

.field static final LTAG:Ljava/lang/String; = "FullFilmView"

.field private static final PAN_TO_STOP_FILMSTRIP_VIEW_TIME_THRESHOLD:I = 0x46

.field public static final VIEW_STATE_ANIM_TO_FILMSTRIP:I = 0x2

.field public static final VIEW_STATE_ANIM_TO_FULLSCREEN:I = 0x3

.field public static final VIEW_STATE_FILMSTRIP:I = 0x1

.field public static final VIEW_STATE_FULLSCREEN:I


# instance fields
.field private final DEBUG:Z

.field private MediaItemRefreshRecycler:Lcom/htc/sunnyCore/ObjectRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunnyCore/ObjectRecycler",
            "<",
            "Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;",
            ">;"
        }
    .end annotation
.end field

.field private SetSelectionRecycler:Lcom/htc/sunnyCore/ObjectRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunnyCore/ObjectRecycler",
            "<",
            "Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;",
            ">;"
        }
    .end annotation
.end field

.field private isOnlineTagEditor:Z

.field private isUploadEditor:Z

.field private itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

.field private itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

.field private mAfterEditIndex:I

.field private mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

.field mChangeListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

.field private mDisableGesture:Z

.field private mEnableFullscreen:Z

.field private mEnablePinchOutToFullscreen:Z

.field private mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

.field mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

.field mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

.field private mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

.field private mFullScreenViewItem:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

.field private mGLViewHeight:I

.field private mGLViewWidth:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

.field private mIsAfterEdit:Z

.field private mIsFilmstripViewMovingWhenOnDown:Z

.field protected mListItemCount:I

.field protected mMediaList:Lcom/htc/sunnyCore/IMediaList;

.field private mOnDownViewState:I

.field mOnFilmstripViewScrollChangeListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnFilmstripViewScrollChangeListener;

.field protected mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

.field mOnItemSelectedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;

.field protected mOnItemTouchedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;

.field private mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

.field private mRenderThread:Lcom/htc/sunnyCore/RenderThread;

.field protected mRootNode:Lcom/htc/sunnyCore/SceneNode;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScrollState:I

.field private mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

.field private mTileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;

.field private final mTileTextureReadyNotifyEvent:Lcom/htc/sunny2/fullfilmview/FullFilmView$TileTextureReadyNotifyEvent;

.field private mViewState:I

.field private mViewStateChangeListener:Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;

.field private final mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

.field private mZoomGesture:Z

.field private recordOnDownTime:J

.field private supportMultitouch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 269
    const/high16 v0, 0x43c8

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->FILMSTRIPVIEW_VELOCITY_TUNE_PARAM:F

    mul-float/2addr v0, v1

    sput v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->FILMSTRIP_VIEW_FLINGING_VELOCITY_THRESHOLD:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V
    .locals 1
    .parameter "context"
    .parameter "sContext"

    .prologue
    .line 309
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-direct {v0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V

    .line 310
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V
    .locals 5
    .parameter "context"
    .parameter "sContext"
    .parameter "filmstripViewItem"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 314
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/view/SView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 207
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->DEBUG:Z

    .line 219
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenViewItem:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    .line 220
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    .line 221
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mImagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 224
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    .line 226
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    .line 227
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mTileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    .line 228
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewStateChangeListener:Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;

    .line 229
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    .line 230
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isOnlineTagEditor:Z

    .line 232
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    .line 233
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    .line 237
    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    .line 239
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    .line 241
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->supportMultitouch:Z

    .line 249
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    .line 250
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemTouchedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;

    .line 254
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mZoomGesture:Z

    .line 255
    new-instance v0, Lcom/htc/sunnyCore/ObjectRecycler;

    const-string v1, "MediaItemRefresh"

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->MediaItemRefreshRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    .line 257
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mIsAfterEdit:Z

    .line 258
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAfterEditIndex:I

    .line 260
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mDisableGesture:Z

    .line 262
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnablePinchOutToFullscreen:Z

    .line 264
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnDownViewState:I

    .line 265
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mIsFilmstripViewMovingWhenOnDown:Z

    .line 270
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->recordOnDownTime:J

    .line 272
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    .line 1329
    new-instance v0, Lcom/htc/sunnyCore/ObjectRecycler;

    const-string v1, "SetSelection"

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->SetSelectionRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    .line 1368
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScrollState:I

    .line 1731
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$2;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$2;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mChangeListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

    .line 2808
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$TileTextureReadyNotifyEvent;

    const-string v1, "TileTextureReadyNotifyEvent"

    invoke-direct {v0, p0, p0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$TileTextureReadyNotifyEvent;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mTileTextureReadyNotifyEvent:Lcom/htc/sunny2/fullfilmview/FullFilmView$TileTextureReadyNotifyEvent;

    .line 315
    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->supportMultitouch:Z

    .line 317
    iput-object p3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 318
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    .line 319
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V
    .locals 5
    .parameter "context"
    .parameter "sContext"
    .parameter "fullScreenViewItem"
    .parameter "filmstripViewItem"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 326
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/view/SView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 207
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->DEBUG:Z

    .line 219
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenViewItem:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    .line 220
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    .line 221
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mImagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 224
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    .line 226
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    .line 227
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mTileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    .line 228
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewStateChangeListener:Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;

    .line 229
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    .line 230
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isOnlineTagEditor:Z

    .line 232
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    .line 233
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    .line 237
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    .line 239
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    .line 241
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->supportMultitouch:Z

    .line 249
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    .line 250
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemTouchedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;

    .line 254
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mZoomGesture:Z

    .line 255
    new-instance v0, Lcom/htc/sunnyCore/ObjectRecycler;

    const-string v1, "MediaItemRefresh"

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->MediaItemRefreshRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    .line 257
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mIsAfterEdit:Z

    .line 258
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAfterEditIndex:I

    .line 260
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mDisableGesture:Z

    .line 262
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnablePinchOutToFullscreen:Z

    .line 264
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnDownViewState:I

    .line 265
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mIsFilmstripViewMovingWhenOnDown:Z

    .line 270
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->recordOnDownTime:J

    .line 272
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    .line 1329
    new-instance v0, Lcom/htc/sunnyCore/ObjectRecycler;

    const-string v1, "SetSelection"

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->SetSelectionRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    .line 1368
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScrollState:I

    .line 1731
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$2;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$2;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mChangeListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

    .line 2808
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$TileTextureReadyNotifyEvent;

    const-string v1, "TileTextureReadyNotifyEvent"

    invoke-direct {v0, p0, p0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$TileTextureReadyNotifyEvent;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mTileTextureReadyNotifyEvent:Lcom/htc/sunny2/fullfilmview/FullFilmView$TileTextureReadyNotifyEvent;

    .line 327
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->supportMultitouch:Z

    .line 329
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    .line 330
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setOnFullScreenViewAlignEndListener(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;)V

    .line 332
    iput-object p3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenViewItem:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    .line 333
    iput-object p4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 335
    new-instance v0, Lcom/htc/sunny2/fullfilmview/TileDecoder;

    const-string v1, "FullFilmViewTileDecoder"

    invoke-direct {v0, v1}, Lcom/htc/sunny2/fullfilmview/TileDecoder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mTileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    .line 336
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mTileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->setPriority(I)V

    .line 337
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mTileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->start()V

    .line 338
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mTileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->initHandler()V

    .line 339
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mTileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->setTileDecodeCompleteCallback(Lcom/htc/sunny2/fullfilmview/TileDecoder$TileDecodeCompleteListener;)V

    .line 341
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    .line 342
    return-void
.end method

.method private ObtainMediaItemRefresh(II)Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;
    .locals 2
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 2621
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->MediaItemRefreshRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/ObjectRecycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;

    .line 2622
    .local v0, object:Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;
    if-nez v0, :cond_0

    .line 2623
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;

    .end local v0           #object:Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;
    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;II)V

    .line 2626
    .restart local v0       #object:Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;
    :goto_0
    return-object v0

    .line 2625
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->reset(II)V

    goto :goto_0
.end method

.method private ObtainSetSelection(I)Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;
    .locals 2
    .parameter "position"

    .prologue
    .line 1331
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->SetSelectionRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/ObjectRecycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;

    .line 1332
    .local v0, object:Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;
    if-nez v0, :cond_0

    .line 1333
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;

    .end local v0           #object:Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;
    invoke-direct {v0, p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 1336
    .restart local v0       #object:Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;
    :goto_0
    return-object v0

    .line 1335
    :cond_0
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->reset(I)V

    goto :goto_0
.end method

.method private RecycleMediaItemRefresh(Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 2631
    if-nez p1, :cond_0

    .line 2635
    :goto_0
    return-void

    .line 2633
    :cond_0
    invoke-virtual {p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->free()V

    .line 2634
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->MediaItemRefreshRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/ObjectRecycler;->recycle(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private RecycleSetSelection(Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 1339
    if-nez p1, :cond_0

    .line 1343
    :goto_0
    return-void

    .line 1341
    :cond_0
    invoke-virtual {p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->free()V

    .line 1342
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->SetSelectionRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/ObjectRecycler;->recycle(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunnyCore/IMediaList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/sunny2/fullfilmview/FullFilmView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onMediaItemRefreshIRT(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->RecycleMediaItemRefresh(Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunnyCore/RenderThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/fullfilmview/FullFilmView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGLViewWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/Animator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/sunny2/fullfilmview/FullFilmView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->RecycleSetSelection(Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunnyCore/Preparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    return-object v0
.end method

.method private onMediaItemRefreshIRT(II)V
    .locals 2
    .parameter "index"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 2097
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v0, :cond_4

    .line 2099
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 2137
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v0, :cond_4

    .line 2139
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_2

    .line 2141
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onMediaItemRefreshIRT(I)V

    .line 2143
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v0, :cond_3

    .line 2145
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onMediaItemRefreshIRT(I)V

    .line 2147
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunnyCore/Preparator;->notifyDataItemChanged(II)V

    .line 2152
    :cond_4
    :goto_0
    return-void

    .line 2102
    :sswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    instance-of v0, v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v0, :cond_4

    .line 2104
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->checkImageUpdate(II)V

    .line 2106
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_5

    .line 2108
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onMediaItemRefreshSizeIRT(I)V

    .line 2110
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v0, :cond_4

    .line 2112
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onMediaItemRefreshSizeIRT(I)V

    goto :goto_0

    .line 2117
    :sswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v0, :cond_4

    .line 2119
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_6

    .line 2121
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onMediaItemSetConsumeRightFlagIRT(I)V

    .line 2123
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunnyCore/Preparator;->notifyDataItemChanged(II)V

    goto :goto_0

    .line 2127
    :sswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v0, :cond_4

    .line 2129
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_7

    .line 2131
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onMediaItemSetConsumeRightExpiredIRT(I)V

    .line 2133
    :cond_7
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunnyCore/Preparator;->notifyDataItemChanged(II)V

    goto :goto_0

    .line 2099
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method private pointsToViewport(II)[I
    .locals 6
    .parameter "worldX"
    .parameter "worldY"

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v2, v4, v5

    .line 870
    .local v2, mOriginX:I
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 872
    .local v3, mOriginY:I
    sub-int v0, p1, v2

    .line 873
    .local v0, downX:I
    sub-int v1, v3, p2

    .line 875
    .local v1, downY:I
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    return-object v4
.end method

.method private setMediaList(Lcom/htc/sunnyCore/IMediaList;I)V
    .locals 7
    .parameter
    .parameter "selectedIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunnyCore/IMediaList",
            "<+",
            "Lcom/htc/sunnyCore/IMediaData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, list:Lcom/htc/sunnyCore/IMediaList;,"Lcom/htc/sunnyCore/IMediaList<+Lcom/htc/sunnyCore/IMediaData;>;"
    const/4 v6, 0x0

    .line 756
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "FullFilmView"

    const-string v4, "[HTCAlbum][FullFilmView][setMediaList] + "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 759
    .local v1, oldList:Lcom/htc/sunnyCore/IMediaList;,"Lcom/htc/sunnyCore/IMediaList<Lcom/htc/sunnyCore/IMediaData;>;"
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 761
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getTileDecoder()Lcom/htc/sunny2/fullfilmview/TileDecoder;

    move-result-object v2

    .line 762
    .local v2, tileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;
    if-eqz v2, :cond_1

    .line 764
    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->freeBitmapRegionDecoder()V

    .line 766
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->purgeTileTextures()V

    .line 768
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v3, :cond_2

    .line 770
    if-nez v1, :cond_6

    .line 773
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-virtual {v3, v6, v4, v6}, Lcom/htc/sunnyCore/Preparator;->bind(ILcom/htc/sunnyCore/IMediaList;I)V

    .line 806
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v3, :cond_3

    .line 808
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/fullfilmview/FullFilmView$1;)V

    .line 809
    .local v0, getter:Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;->setMediaList(Lcom/htc/sunnyCore/IMediaList;)V

    .line 810
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->rebindVisibleItems()V

    .line 812
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setMediaDataListener(Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;)V

    .line 813
    if-ltz p2, :cond_3

    .line 815
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v3, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSelection(I)V

    .line 819
    .end local v0           #getter:Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;
    :cond_3
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v3, :cond_4

    .line 821
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v3, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bindMediaList(Lcom/htc/sunnyCore/IMediaList;)Z

    .line 822
    if-ltz p2, :cond_8

    .line 824
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v3, p2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setCurrentItemIndex(I)Z

    .line 831
    :cond_4
    :goto_1
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "FullFilmView"

    const-string v4, "[HTCAlbum][FullFilmView][setMediaList] - "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    :cond_5
    return-void

    .line 777
    :cond_6
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v3, :cond_7

    .line 780
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    const/4 v5, 0x1

    invoke-virtual {v3, v6, v4, v6, v5}, Lcom/htc/sunnyCore/Preparator;->refresh(ILcom/htc/sunnyCore/IMediaList;IZ)Ljava/util/List;

    goto :goto_0

    .line 785
    :cond_7
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    invoke-virtual {v3, v6}, Lcom/htc/sunnyCore/Preparator;->unbind(I)V

    goto :goto_0

    .line 828
    :cond_8
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v3, v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setCurrentItemIndex(I)Z

    goto :goto_1
.end method


# virtual methods
.method changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V
    .locals 1
    .parameter "parent"
    .parameter "state"

    .prologue
    .line 1372
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;IZ)V

    .line 1373
    return-void
.end method

.method changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;IZ)V
    .locals 4
    .parameter "parent"
    .parameter "state"
    .parameter "force"

    .prologue
    .line 1377
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    if-nez v1, :cond_1

    .line 1433
    :cond_0
    :goto_0
    return-void

    .line 1380
    :cond_1
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v1, :cond_2

    if-nez p3, :cond_2

    .line 1382
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getCurrentItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    .line 1383
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    iget v1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->zoomFactor:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 1387
    :cond_2
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScrollState:I

    if-eq v1, p2, :cond_0

    .line 1390
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScrollState:I

    .line 1394
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    if-eqz v1, :cond_3

    .line 1396
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScrollState:I

    invoke-interface {v1, p1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;->onScrollStateChanged(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1426
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v1, :cond_0

    .line 1428
    if-nez p2, :cond_0

    .line 1430
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Preparator;->setDecodeDirection(I)V

    goto :goto_0

    .line 1421
    :catch_0
    move-exception v0

    .line 1423
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "FullFilmView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[changeScrollStateOnUiThread] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public checkSetMediaListComplete_block()V
    .locals 4

    .prologue
    .line 713
    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    monitor-enter v1

    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->isComplete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 717
    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 725
    return-void

    .line 719
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 723
    :goto_1
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 721
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public createResource()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 460
    invoke-super {p0}, Lcom/htc/sunnyCore/view/SView;->createResource()V

    .line 464
    invoke-static {}, Lcom/htc/sunnyCore/SceneNode;->obtain()Lcom/htc/sunnyCore/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRootNode:Lcom/htc/sunnyCore/SceneNode;

    .line 465
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRootNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->addSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 466
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 468
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyEnvironment()I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->loadResources(Landroid/content/Context;ILcom/htc/sunnyCore/SunnyContext;)V

    .line 471
    :cond_0
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyEnvironment()I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;-><init>(ILcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    .line 472
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->enableChildShadow(Z)V

    .line 473
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripSceneListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripSceneListener;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/fullfilmview/FullFilmView$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSceneListener(Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;)V

    .line 474
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isOnlineTagEditor:Z

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setIsOnlineTagEditor(Z)V

    .line 475
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRootNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->attachToParent(Lcom/htc/sunnyCore/SceneNode;)V

    .line 477
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-direct {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    .line 478
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    sget-object v1, Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;->CENTER:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$1;

    invoke-direct {v2, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$1;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->init(Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;)Z

    .line 573
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-virtual {v0, v6, v1, v6}, Lcom/htc/sunnyCore/Preparator;->bind(ILcom/htc/sunnyCore/IMediaList;I)V

    .line 577
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setViewStateChangeListener(Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;)V

    .line 580
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setIsUploadEditor(Z)V

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushPreparationIRT(Lcom/htc/sunnyCore/RenderThreadPreparation;)Z

    .line 585
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_3

    .line 589
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mContext:Landroid/content/Context;

    const-string v1, "int1"

    invoke-static {v0, p0, v1}, Lcom/htc/wrap/android/view/HtcWrapGestureDetector;->getInstance(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Ljava/lang/String;)Landroid/view/GestureDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 591
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 593
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-nez v0, :cond_4

    .line 595
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 597
    :cond_4
    new-instance v0, Lcom/htc/sunny2/fullfilmview/Animator;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunnyCore/RenderThread;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    .line 598
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/fullfilmview/Animator;->setFilmstripViewAnimationListener(Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewScrollListener;)V

    .line 600
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->setFilmstripViewScene(Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;)V

    .line 602
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_5

    .line 604
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->setFullscreenViewScene(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V

    .line 605
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyEnvironment()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setupRenderingEnvironment(Lcom/htc/sunnyCore/RenderThread;I)V

    .line 609
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRootNode:Lcom/htc/sunnyCore/SceneNode;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenViewItem:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    const/16 v3, 0x258

    const/16 v4, 0x190

    const/16 v5, 0x14

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setupScene(Lcom/htc/sunnyCore/SceneNode;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;III)Z

    move-result v0

    if-nez v0, :cond_5

    .line 611
    const-string v0, "FullFilmView"

    const-string v1, "FSV setupScene NG"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :goto_0
    return-void

    .line 616
    :cond_5
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_6

    move v0, v6

    :goto_1
    invoke-virtual {p0, v0, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->switchViewState(IZ)V

    goto :goto_0

    :cond_6
    move v0, v7

    goto :goto_1
.end method

.method public disableGesture()V
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mDisableGesture:Z

    .line 358
    return-void
.end method

.method public disableZoom()V
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->disableZoom()V

    .line 366
    :cond_0
    return-void
.end method

.method protected doItemClickOnUiThread(Lcom/htc/sunnyCore/view/SView;Lcom/htc/sunnyCore/ViewItem;I)V
    .locals 4
    .parameter "parent"
    .parameter "item"
    .parameter "position"

    .prologue
    .line 2300
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    if-nez v1, :cond_1

    .line 2333
    :cond_0
    :goto_0
    return-void

    .line 2305
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    if-eqz v1, :cond_0

    .line 2307
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    invoke-interface {v1, p1, p3}, Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;->onItemClick(Lcom/htc/sunnyCore/view/SView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2329
    :catch_0
    move-exception v0

    .line 2331
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "FullFilmView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[doItemClickOnUiThread] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public forceFilmstripViewAlign()V
    .locals 3

    .prologue
    .line 2729
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$11;

    const-string v2, "forceFilmstripViewAlign"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$11;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    .line 2747
    return-void
.end method

.method public freeResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 630
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->unbindMediaList()V

    .line 633
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRootNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->clearScene(Lcom/htc/sunnyCore/SceneNode;)V

    .line 634
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->clearRenderingEnvironment()V

    .line 636
    :cond_0
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 638
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->removePreparationIRT(Lcom/htc/sunnyCore/RenderThreadPreparation;)Z

    .line 641
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Preparator;->unbind(I)V

    .line 642
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Preparator;->deInit()V

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mTileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    if-eqz v0, :cond_2

    .line 647
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mTileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->release()V

    .line 648
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mTileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    .line 651
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->detachFromParent()V

    .line 652
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    if-eqz v0, :cond_3

    .line 653
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->releaseResources()V

    .line 655
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "FilmstripPan"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 656
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "scrollFilmstripUsingDistance"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 657
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "scrollFilmstripUsingVelocity"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 658
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->deInit()V

    .line 660
    invoke-super {p0}, Lcom/htc/sunnyCore/view/SView;->freeResource()V

    .line 661
    return-void
.end method

.method fullScreenViewAnimateToFilmstripView(IFF)V
    .locals 4
    .parameter "currentItemIndex"
    .parameter "currentItemOffset"
    .parameter "velocity"

    .prologue
    .line 1242
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-nez v2, :cond_0

    .line 1258
    :goto_0
    return-void

    .line 1249
    :cond_0
    sget v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->ANIM_FULL_TO_FILM_ENTER_VELOCITY:F

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float v0, v2, v3

    .line 1251
    .local v0, adjustV:F
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1252
    .local v1, bundle:Landroid/os/Bundle;
    const-string v2, "child_index"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1253
    const-string v2, "child_offset"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1254
    const-string v2, "last_pan_velocity"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1255
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->doTransition(ILandroid/os/Bundle;)V

    .line 1257
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->switchViewState(IZ)V

    goto :goto_0
.end method

.method public getCurrentItemInfoIHT()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;
    .locals 2

    .prologue
    .line 1177
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getCurrentItemInfoIHT(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    .line 1187
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemClickInfo()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;
    .locals 1

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    return-object v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 1347
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    packed-switch v0, :pswitch_data_0

    .line 1360
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v0, :cond_1

    .line 1361
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItemPosition()I

    move-result v0

    .line 1365
    :goto_0
    return v0

    .line 1350
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_1

    .line 1352
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0

    .line 1355
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->getSelectedIndex()I

    move-result v0

    goto :goto_0

    .line 1365
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1347
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getSunnyEnvironment()I
    .locals 1

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyEnvironment()I

    move-result v0

    return v0
.end method

.method public getTileDecoder()Lcom/htc/sunny2/fullfilmview/TileDecoder;
    .locals 1

    .prologue
    .line 2777
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mTileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    return-object v0
.end method

.method public getViewState()I
    .locals 1

    .prologue
    .line 2765
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    return v0
.end method

.method public hideDRMIndicator()V
    .locals 2

    .prologue
    .line 2708
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eq v0, v1, :cond_0

    .line 2710
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$10;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$10;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 2725
    :goto_0
    return-void

    .line 2721
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->hideDRMIndicator()V

    .line 2722
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/sunnyCore/RenderThread;->forceRenderOnce:Z

    .line 2723
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->resumeThread()V

    goto :goto_0
.end method

.method public hideFullFilmView()V
    .locals 2

    .prologue
    .line 2670
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$7;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$7;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 2676
    return-void
.end method

.method public isAnimatingFilmFull()Z
    .locals 4

    .prologue
    .line 2222
    const/4 v1, 0x0

    .line 2225
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v3, "FilmstripViewAnimateToFullScreenViewAction"

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v3, "FullScreenViewAnimateToFilmstripViewAction"

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 2231
    :goto_0
    return v1

    .line 2225
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2227
    :catch_0
    move-exception v0

    .line 2229
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FullFilmView"

    const-string v3, "[HTCAlbum][FullFilmView][isAnimatingFilmFull]error"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isEnabledFullScreenAndInFilmstrip()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2215
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-ne v1, v0, :cond_0

    .line 2217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullScreen()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2184
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-nez v1, :cond_1

    .line 2192
    :cond_0
    :goto_0
    return v0

    .line 2188
    :cond_1
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v1, :cond_0

    .line 2190
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFullScreenAndZoomed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2197
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-nez v1, :cond_1

    .line 2210
    :cond_0
    :goto_0
    return v0

    .line 2200
    :cond_1
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v1, :cond_0

    .line 2203
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getCurrentItemInfoIHT(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    .line 2205
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    iget v1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->zoomFactor:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 2207
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInSpeedyFu()Z
    .locals 1

    .prologue
    .line 2869
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-nez v0, :cond_0

    .line 2870
    const/4 v0, 0x0

    .line 2872
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isInSpeedFu()Z

    move-result v0

    goto :goto_0
.end method

.method public isItemBeingViewed(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 2771
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyMediaDataChange()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1748
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v2, :cond_0

    .line 1786
    :goto_0
    return-void

    .line 1750
    :cond_0
    const-string v2, "FullFilmView"

    const-string v3, "[HTCAlbum][FullFilmView][notifyMediaDataChange] + "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 1755
    .local v1, oldPos:I
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    .line 1757
    .local v0, count:I
    if-gez v1, :cond_3

    .line 1759
    const/4 v1, 0x0

    .line 1766
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mIsAfterEdit:Z

    if-eqz v2, :cond_2

    .line 1768
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAfterEditIndex:I

    if-eq v2, v4, :cond_4

    .line 1770
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAfterEditIndex:I

    .line 1776
    :goto_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mIsAfterEdit:Z

    .line 1777
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAfterEditIndex:I

    .line 1780
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-virtual {p0, v2, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunnyCore/IMediaList;I)V

    .line 1785
    const-string v2, "FullFilmView"

    const-string v3, "[HTCAlbum][FullFilmView][notifyMediaDataChange] - "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1761
    :cond_3
    add-int/lit8 v2, v0, -0x1

    if-le v1, v2, :cond_1

    .line 1763
    add-int/lit8 v1, v0, -0x1

    goto :goto_1

    .line 1774
    :cond_4
    add-int/lit8 v1, v0, -0x1

    goto :goto_2
.end method

.method public notifyMediaDataChange(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_0

    .line 1792
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mChangeListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

    invoke-static {p1, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->obtain(ILcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;)Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    .line 1794
    :cond_0
    return-void
.end method

.method public onDRMPressed(Z)V
    .locals 3
    .parameter "pressed"

    .prologue
    .line 2751
    move v0, p1

    .line 2753
    .local v0, onPressed:Z
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$12;

    invoke-direct {v2, p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$12;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Z)V

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 2761
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 2570
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mDisableGesture:Z

    if-eqz v0, :cond_0

    .line 2571
    const/4 v0, 0x0

    .line 2578
    :goto_0
    return v0

    .line 2573
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_1

    .line 2575
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onDoubleTap(Landroid/view/MotionEvent;)Z

    .line 2578
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 2563
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 880
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnDownViewState:I

    .line 881
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mIsFilmstripViewMovingWhenOnDown:Z

    .line 882
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v4, "EVENT_BLOCKER"

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v4, "FilmstripViewAnimateToFullScreenViewAction"

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v2, v1

    .line 906
    :cond_1
    :goto_0
    return v2

    .line 885
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransition()Z

    move-result v3

    if-nez v3, :cond_3

    .line 886
    invoke-virtual {p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 888
    :cond_3
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v3, :cond_4

    .line 890
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 894
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->pointsToViewport(II)[I

    move-result-object v0

    .line 895
    .local v0, downs:[I
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    aget v4, v0, v1

    aget v5, v0, v2

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onHitTestDown(II)V

    .line 898
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->recordOnDownTime:J

    .line 899
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v4, "scrollFilmstripUsingVelocity"

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v4, "scrollFilmstripUsingDistance"

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mIsFilmstripViewMovingWhenOnDown:Z

    .line 900
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v3, "CancelFlimstripViewlFlinging"

    invoke-virtual {v1, p0, v3}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v1

    if-nez v1, :cond_1

    .line 902
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v3, Lcom/htc/sunny2/fullfilmview/FullFilmView$CancelFlimstripViewlFlingingAction;

    const-string v4, "CancelFlimstripViewlFlinging"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, p0, p0, v4, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView$CancelFlimstripViewlFlingingAction;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    goto :goto_0
.end method

.method public onExpired(IILandroid/os/Bundle;)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 2520
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onThumbnailTextureExpired(I)V

    .line 2521
    return-void
.end method

.method public onFailed(IILandroid/os/Bundle;)V
    .locals 4
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    const/4 v2, 0x1

    .line 2491
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v1, :cond_1

    .line 2493
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1, p2}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    .line 2494
    .local v0, mediaItem:Lcom/htc/sunnyCore/IMediaData;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 2496
    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2515
    .end local v0           #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    :goto_0
    return-void

    .line 2500
    .restart local v0       #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    :cond_0
    instance-of v1, v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v1, :cond_2

    .line 2502
    const-string v1, "FullFilmView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onFailed] set image corrupted, index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", filePath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2503
    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local v0           #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fileCorrupted()V

    .line 2514
    :cond_1
    :goto_1
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onThumbnailTextureReady(I)V

    goto :goto_0

    .line 2506
    .restart local v0       #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    :cond_2
    instance-of v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 2508
    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->getMediaQuality()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 2509
    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .end local v0           #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setIsCorrupt(Z)V

    goto :goto_1
.end method

.method public onFilmStripViewScrollStarts()V
    .locals 2

    .prologue
    .line 2878
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FullFilmView"

    const-string v1, "[HTCAlbum][FullFilmView][onFilmStripViewScrollStarts] + "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2879
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnFilmstripViewScrollChangeListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnFilmstripViewScrollChangeListener;

    if-eqz v0, :cond_1

    .line 2881
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnFilmstripViewScrollChangeListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnFilmstripViewScrollChangeListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$OnFilmstripViewScrollChangeListener;->onFilmstripViewScrollStarts()V

    .line 2883
    :cond_1
    return-void
.end method

.method public onFilmStripViewScrollStops()V
    .locals 2

    .prologue
    .line 2888
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FullFilmView"

    const-string v1, "[HTCAlbum][FullFilmView][onFilmStripViewScrollStops] + "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2889
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnFilmstripViewScrollChangeListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnFilmstripViewScrollChangeListener;

    if-eqz v0, :cond_1

    .line 2891
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnFilmstripViewScrollChangeListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnFilmstripViewScrollChangeListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$OnFilmstripViewScrollChangeListener;->onFilmstripViewScrollStops()V

    .line 2893
    :cond_1
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 1012
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    neg-float v1, p3

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Preparator;->setDecodeDirection(I)V

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v1, "EVENT_BLOCKER"

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v1, "FilmstripViewAnimateToFullScreenViewAction"

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v1, "FullScreenViewAnimateToFilmstripViewAction"

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v1, "SCROLL_FLING_BLOCKER"

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1018
    :cond_1
    const/4 v0, 0x0

    .line 1044
    :goto_0
    return v0

    .line 1019
    :cond_2
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_4

    .line 1021
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 1022
    invoke-virtual {p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 1044
    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1026
    :cond_4
    sget v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->FILMSTRIP_VIEW_FLINGING_VELOCITY_THRESHOLD:F

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_5

    sget v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->FILMSTRIP_VIEW_FLINGING_VELOCITY_THRESHOLD:F

    neg-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_3

    .line 1028
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-result-object v0

    sget-object v1, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-result-object v0

    sget-object v1, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-eq v0, v1, :cond_6

    .line 1030
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->reset()V

    .line 1031
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    .line 1032
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    .line 1033
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    .line 1034
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    .line 1035
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->onTouchDown(I)V

    .line 1038
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0, p3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->onFling(F)V

    .line 1039
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    .line 1040
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->doTransition(ILandroid/os/Bundle;)V

    goto :goto_1
.end method

.method public onFullScreenViewAlignEnd()V
    .locals 1

    .prologue
    .line 1728
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 1729
    return-void
.end method

.method public onFullScreenViewScrollBeginIRT()V
    .locals 0

    .prologue
    .line 2161
    return-void
.end method

.method public onFullScreenViewScrollEndIRT()V
    .locals 2

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v0, :cond_0

    .line 2173
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Preparator;->setDecodeDirection(I)V

    .line 2176
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 2178
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;->onScrollStateChanged(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 2180
    :cond_1
    return-void
.end method

.method public onFullScreenViewScrollIRT(F)V
    .locals 2
    .parameter "dx"

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v0, :cond_0

    .line 2166
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Preparator;->setDecodeDirection(I)V

    .line 2168
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2456
    const/4 v0, 0x0

    .line 2458
    .local v0, bResult:Z
    packed-switch p1, :pswitch_data_0

    .line 2467
    :pswitch_0
    return v0

    .line 2458
    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2408
    const/4 v2, 0x0

    .line 2409
    .local v2, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 2411
    .local v0, FocusId:I
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v4, :cond_0

    move v3, v2

    .line 2450
    .end local v2           #bResult:Z
    .local v3, bResult:I
    :goto_0
    return v3

    .line 2416
    .end local v3           #bResult:I
    .restart local v2       #bResult:Z
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v4}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    .line 2418
    .local v1, TotalCount:I
    if-nez v1, :cond_1

    move v3, v2

    .line 2420
    .restart local v3       #bResult:I
    goto :goto_0

    .line 2423
    .end local v3           #bResult:I
    :cond_1
    sparse-switch p1, :sswitch_data_0

    :goto_1
    :sswitch_0
    move v3, v2

    .line 2450
    .restart local v3       #bResult:I
    goto :goto_0

    .line 2427
    .end local v3           #bResult:I
    :sswitch_1
    add-int/lit8 v4, v0, -0x1

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    .line 2429
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->KeyUpMotion(I)V

    .line 2431
    :cond_2
    const/4 v2, 0x1

    .line 2432
    goto :goto_1

    .line 2436
    :sswitch_2
    add-int/lit8 v4, v0, 0x1

    if-ge v4, v1, :cond_3

    .line 2438
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->KeyUpMotion(I)V

    .line 2440
    :cond_3
    const/4 v2, 0x1

    .line 2441
    goto :goto_1

    .line 2423
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLayout(ZFFFII)V
    .locals 5
    .parameter "changed"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v0, 0x3f80

    const/4 v2, 0x1

    .line 678
    iput p5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGLViewWidth:I

    .line 679
    iput p6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGLViewHeight:I

    .line 681
    if-lt p5, v2, :cond_0

    if-ge p6, v2, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    invoke-super/range {p0 .. p6}, Lcom/htc/sunnyCore/view/SView;->onLayout(ZFFFII)V

    .line 690
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v2, :cond_2

    .line 692
    .local v0, centerScale:F
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    monitor-enter v3

    .line 694
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->setMediaListIRT_Workaround()V

    .line 696
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v2, p5, p6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onLayout(II)V

    .line 698
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 699
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setItemScale(FZ)V

    .line 701
    :cond_3
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v2, :cond_4

    .line 702
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v2, p5, p6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onLayout(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :cond_4
    :goto_1
    :try_start_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 705
    :catch_0
    move-exception v1

    .line 706
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 2532
    return-void
.end method

.method public onMediaItemRefreshIHT(II)V
    .locals 3
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v0, :cond_1

    .line 2085
    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onMediaItemRefresh NG - null render thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2093
    :cond_0
    :goto_0
    return-void

    .line 2089
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->ObtainMediaItemRefresh(II)Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2091
    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onMediaItemRefresh NG - pushEventIHT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReady(IILandroid/os/Bundle;)V
    .locals 2
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 2474
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onThumbnailTextureReady(I)V

    .line 2477
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v1, :cond_0

    .line 2479
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1, p2}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    .line 2480
    .local v0, mediaItem:Lcom/htc/sunnyCore/IMediaData;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v1, :cond_0

    .line 2482
    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .end local v0           #mediaItem:Lcom/htc/sunnyCore/IMediaData;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setIsCorrupt(Z)V

    .line 2486
    :cond_0
    return-void
.end method

.method protected onRenderOrderChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 664
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/view/SView;->onRenderOrderChanged(Z)V

    .line 665
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v0, :cond_0

    .line 666
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 667
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Preparator;->resumePreparator()V

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Preparator;->pausePreparator()V

    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    const/4 v1, 0x1

    .line 1208
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_1

    .line 1210
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onScale(Landroid/view/ScaleGestureDetector;)Z

    .line 1216
    :cond_0
    :goto_0
    return v1

    .line 1212
    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnablePinchOutToFullscreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-ne v0, v1, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onScale(Landroid/view/ScaleGestureDetector;)Z

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    const/4 v1, 0x1

    .line 1193
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mZoomGesture:Z

    .line 1194
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_1

    .line 1196
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    .line 1202
    :cond_0
    :goto_0
    return v1

    .line 1198
    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnablePinchOutToFullscreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-ne v0, v1, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 3
    .parameter "detector"

    .prologue
    .line 1222
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_2

    .line 1224
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 1230
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mZoomGesture:Z

    .line 1232
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    const-string v2, "PinchZoomAnimator"

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    if-eqz v0, :cond_1

    .line 1234
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->blockScrollFling(J)Z

    .line 1236
    :cond_1
    return-void

    .line 1226
    :cond_2
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnablePinchOutToFullscreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v5, 0x1

    .line 951
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v7, "EVENT_BLOCKER"

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v7, "FilmstripViewAnimateToFullScreenViewAction"

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v7, "SCROLL_FLING_BLOCKER"

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 952
    :cond_0
    const/4 v5, 0x0

    .line 1007
    :cond_1
    :goto_0
    return v5

    .line 954
    :cond_2
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v7, "CancelFlimstripViewlFlinging"

    invoke-virtual {v6, p0, v7}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 956
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v6, :cond_3

    .line 958
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v6, p1, p2, p3, p4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 959
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getCurrentItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    .line 960
    const/4 v6, 0x2

    invoke-virtual {p0, p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    goto :goto_0

    .line 964
    :cond_3
    const/4 v4, 0x0

    .line 965
    .local v4, pannedToCancelFilmstripViewFlinging:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 966
    .local v0, currendPannedTime:J
    iget-wide v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->recordOnDownTime:J

    sub-long v2, v0, v6

    .line 967
    .local v2, currentPanDuration:J
    const-wide/16 v6, 0x46

    cmp-long v6, v2, v6

    if-lez v6, :cond_4

    .line 969
    const/4 v4, 0x1

    .line 971
    :cond_4
    if-eqz v4, :cond_1

    .line 977
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-result-object v6

    sget-object v7, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-eq v6, v7, :cond_5

    .line 979
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->reset()V

    .line 980
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    .line 981
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    .line 982
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    .line 983
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    .line 984
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->onTouchDown(I)V

    .line 987
    :cond_5
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->onTouchMove(I)V

    .line 989
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-result-object v6

    sget-object v7, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-ne v6, v7, :cond_6

    .line 991
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/htc/sunny2/fullfilmview/Animator;->doTransition(ILandroid/os/Bundle;)V

    .line 999
    :cond_6
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v6, :cond_1

    .line 1001
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/htc/sunnyCore/Preparator;->setDecodeDirection(I)V

    goto/16 :goto_0
.end method

.method public onScrollEnd(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, -0x1

    .line 1107
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v1, "EVENT_BLOCKER"

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v1, "FilmstripViewAnimateToFullScreenViewAction"

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1109
    :cond_0
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnDownViewState:I

    .line 1141
    :goto_0
    return-void

    .line 1113
    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_3

    .line 1115
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onUp(Landroid/view/MotionEvent;)V

    .line 1116
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isInTransition()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransition()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1117
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 1140
    :cond_2
    :goto_1
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnDownViewState:I

    goto :goto_0

    .line 1121
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "CancelFlimstripViewlFlinging"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 1122
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->onTouchUp(I)V

    .line 1123
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-nez v0, :cond_4

    .line 1125
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->doTransition(ILandroid/os/Bundle;)V

    goto :goto_1

    .line 1130
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->reset()V

    goto :goto_1
.end method

.method public onSetCurrentIndex(I)V
    .locals 2
    .parameter "currentItemIndex"

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v0, :cond_0

    .line 1719
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p1}, Lcom/htc/sunnyCore/Preparator;->setVisibleRange(III)V

    .line 1722
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v0, :cond_1

    .line 1723
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSelection(I)V

    .line 1724
    :cond_1
    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 2526
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 2538
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    if-nez v1, :cond_0

    .line 2540
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][FullFilmView][onSingleTapConfirmed]mOnItemClickListener is null - "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2541
    const/4 v1, 0x0

    .line 2555
    :goto_0
    return v1

    .line 2545
    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v1, :cond_1

    .line 2547
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 2548
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2550
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    iput-object p1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->motionEvent:Landroid/view/MotionEvent;

    .line 2551
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    invoke-interface {v1, p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;->onItemClick(Lcom/htc/sunnyCore/view/SView;I)V

    .line 2555
    .end local v0           #index:I
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 1050
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v3, "EVENT_BLOCKER"

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v3, "FilmstripViewAnimateToFullScreenViewAction"

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1052
    :cond_0
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][FullFilmView][onSingleTapUp]In transition of filmstrip to full screen - "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnDownViewState:I

    .line 1054
    const/4 v1, 0x0

    .line 1102
    :goto_0
    return v1

    .line 1059
    :cond_1
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v2, :cond_3

    .line 1061
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onSingleTapUp(Landroid/view/MotionEvent;)V

    .line 1100
    :cond_2
    :goto_1
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnDownViewState:I

    goto :goto_0

    .line 1075
    :cond_3
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-nez v2, :cond_4

    .line 1077
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onHitTestUp(Z)V

    .line 1079
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getClickedItemPosition()I

    move-result v0

    .line 1080
    .local v0, position:I
    if-ltz v0, :cond_2

    .line 1081
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getClickedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v2

    invoke-virtual {p0, p0, v2, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->doItemClickOnUiThread(Lcom/htc/sunnyCore/view/SView;Lcom/htc/sunnyCore/ViewItem;I)V

    goto :goto_1

    .line 1085
    .end local v0           #position:I
    :cond_4
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mIsFilmstripViewMovingWhenOnDown:Z

    if-eqz v2, :cond_5

    .line 1087
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/Animator;->invokeFilmStripViewScrollStops()V

    .line 1088
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    .line 1089
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    .line 1090
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    .line 1091
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    goto :goto_1

    .line 1095
    :cond_5
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onHitTestUp(Z)V

    goto :goto_1
.end method

.method public onSpeedyFuStateChange(Z)V
    .locals 1
    .parameter "isInSpeedyFu"

    .prologue
    .line 2853
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    if-eqz v0, :cond_0

    .line 2855
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setFullScreenViewSpeedyFuFlag(Z)V

    .line 2857
    :cond_0
    return-void
.end method

.method public onThumbnailTextureExpired(I)V
    .locals 1
    .parameter "contentIndex"

    .prologue
    .line 1672
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    .line 1673
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->notifiedItemTextureExpired(I)V

    .line 1674
    :cond_0
    return-void
.end method

.method public onThumbnailTextureReady(I)V
    .locals 8
    .parameter "contentIndex"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1600
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    check-cast v1, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 1601
    .local v1, preparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-nez v5, :cond_1

    .line 1668
    :cond_0
    :goto_0
    return-void

    .line 1608
    :cond_1
    invoke-virtual {v1, p1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    .line 1609
    .local v2, texture:Lcom/htc/sunnyCore/Texture;
    invoke-virtual {v1, p1, v7}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    .line 1610
    .local v4, textureHQ:Lcom/htc/sunnyCore/Texture;
    const/4 v5, 0x2

    invoke-virtual {v1, p1, v5}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    .line 1617
    .local v3, textureEQ:Lcom/htc/sunnyCore/Texture;
    iget-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    if-eqz v5, :cond_5

    .line 1619
    if-eqz v4, :cond_4

    .line 1621
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v5, p1, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setItemTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 1632
    :goto_1
    iget-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v5, :cond_3

    .line 1634
    if-eqz v3, :cond_6

    sget-boolean v5, Lcom/htc/album/AlbumCommon/LayoutConstants;->IS_FULLHD_OR_HIGHER:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isZoomed()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1636
    :cond_2
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v5, p1, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->notifiedItemTextureReady(ILcom/htc/sunnyCore/Texture;)V

    .line 1639
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getGlobalBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1640
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 1641
    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setGlobalBackgroundResource(I)V

    .line 1664
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v5, :cond_0

    .line 1666
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iput-boolean v7, v5, Lcom/htc/sunnyCore/RenderThread;->forceRenderOnce:Z

    goto :goto_0

    .line 1625
    :cond_4
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v5, p1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setItemTexture(ILcom/htc/sunnyCore/Texture;)V

    goto :goto_1

    .line 1630
    :cond_5
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v5, p1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setItemTexture(ILcom/htc/sunnyCore/Texture;)V

    goto :goto_1

    .line 1644
    :cond_6
    if-eqz v4, :cond_7

    .line 1646
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v5, p1, v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->notifiedItemTextureReady(ILcom/htc/sunnyCore/Texture;)V

    .line 1649
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getGlobalBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1650
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 1651
    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setGlobalBackgroundResource(I)V

    goto :goto_2

    .line 1657
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_7
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getGlobalBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1658
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_3

    .line 1659
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v5, p1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->notifiedItemTextureReady(ILcom/htc/sunnyCore/Texture;)V

    goto :goto_2
.end method

.method public onTileDecodeComplete(Lcom/htc/sunny2/fullfilmview/TileDecodeItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 2783
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    if-eqz v0, :cond_0

    .line 2785
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->addTileTask(Lcom/htc/sunny2/fullfilmview/TileDecodeItem;)V

    .line 2787
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->resumeThread()V

    .line 2788
    return-void
.end method

.method public onTileTextureReadyIRT(Lcom/htc/sunny2/fullfilmview/TileDecodeItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 2813
    iget-boolean v0, p1, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->isBitmapReused:Z

    if-eqz v0, :cond_0

    .line 2815
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mTileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    iget-object v1, p1, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->addReuseBitmap(Landroid/graphics/Bitmap;)V

    .line 2817
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->bitmap:Landroid/graphics/Bitmap;

    .line 2819
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onTileTextureReadyIRT(Lcom/htc/sunny2/fullfilmview/TileDecodeItem;)V

    .line 2820
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mTileTextureReadyNotifyEvent:Lcom/htc/sunny2/fullfilmview/FullFilmView$TileTextureReadyNotifyEvent;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIRT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    .line 2821
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 4
    .parameter "event"
    .parameter "nHitSpriteId"

    .prologue
    const/4 v3, -0x1

    .line 2341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 2342
    .local v1, mActionCode:I
    const/4 v0, 0x0

    .line 2344
    .local v0, index:I
    packed-switch v1, :pswitch_data_0

    .line 2374
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mZoomGesture:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_1

    .line 2376
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2385
    :cond_1
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mDisableGesture:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->supportMultitouch:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v2, :cond_2

    .line 2387
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2398
    :cond_2
    const/4 v2, 0x1

    return v2

    .line 2348
    :pswitch_1
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v2, :cond_3

    .line 2350
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onScrollEnd(Landroid/view/MotionEvent;)V

    .line 2353
    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 2354
    if-eq v0, v3, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemTouchedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;

    if-eqz v2, :cond_0

    .line 2356
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemTouchedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;

    invoke-interface {v2, p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;->onItemUp(Lcom/htc/sunnyCore/view/SView;I)V

    goto :goto_0

    .line 2361
    :pswitch_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mZoomGesture:Z

    .line 2363
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 2364
    if-eq v0, v3, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemTouchedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;

    if-eqz v2, :cond_0

    .line 2366
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemTouchedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;

    invoke-interface {v2, p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;->onItemDown(Lcom/htc/sunnyCore/view/SView;I)V

    goto :goto_0

    .line 2344
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public playAnimationIHT(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;ILcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;)V
    .locals 10
    .parameter "animSelf"
    .parameter "animOther"
    .parameter "listener"
    .parameter "touchedGridViewItemIndex"
    .parameter "endListener"

    .prologue
    .line 2638
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2639
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_0

    .line 2640
    move-object v4, p1

    .line 2641
    .local v4, fAnimSelf:Landroid/os/Bundle;
    move-object v5, p3

    .line 2642
    .local v5, fListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;
    move-object v6, p0

    .line 2643
    .local v6, fSView:Lcom/htc/sunnyCore/view/SView;
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$6;

    const-string v3, "PlayAnimationIn"

    move-object v1, p0

    move-object v2, p0

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView$6;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;Lcom/htc/sunnyCore/view/SView;ILcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;)V

    invoke-virtual {v9, v0}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    .line 2661
    .end local v4           #fAnimSelf:Landroid/os/Bundle;
    .end local v5           #fListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;
    .end local v6           #fSView:Lcom/htc/sunnyCore/view/SView;
    :goto_0
    return-void

    .line 2659
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 2660
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setVisibility(Z)V

    goto :goto_0
.end method

.method public purgeTextureEQ()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1902
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-nez v1, :cond_1

    .line 1935
    :cond_0
    :goto_0
    return v0

    .line 1906
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    instance-of v1, v1, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v1, :cond_0

    .line 1908
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1910
    :cond_2
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][FullFilmView][purgeTextureEQ] RenderThread is null or not ready"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1913
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$3;

    const-string v2, "purgeTextureEQ"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$3;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1927
    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][FullFilmView][purgeTextureEQ] mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", renderThread pushEventIHT NG "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public purgeTextureMapsForMemory(Z)Z
    .locals 3
    .parameter "bNeedPurgeLQ"

    .prologue
    const/4 v0, 0x0

    .line 1942
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-nez v1, :cond_1

    .line 1985
    :cond_0
    :goto_0
    return v0

    .line 1946
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    instance-of v1, v1, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v1, :cond_0

    .line 1948
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1950
    :cond_2
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][FullFilmView][purgeTextureMapsForMemory] RenderThread is null or not ready"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1953
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;

    const-string v2, "purgeTextureMapsForMemory"

    invoke-direct {v1, p0, p0, v2, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1977
    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][FullFilmView][purgeTextureMapsForMemory] mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", renderThread pushEventIHT NG "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public purgeTileTextures()V
    .locals 3

    .prologue
    .line 2825
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2827
    :cond_0
    const-string v0, "FullFilmView"

    const-string v1, "[HTCAlbum][FullFilmView][purgeTileTextures] RenderThread is null or not ready"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2848
    :cond_1
    :goto_0
    return-void

    .line 2830
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$13;

    const-string v2, "purgeTileTextures"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$13;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2846
    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][FullFilmView][purgeTileTextures] mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", renderThread pushEventIHT NG "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queryItemImageTexture(I)Lcom/htc/sunnyCore/Texture;
    .locals 3
    .parameter "itemIndex"

    .prologue
    const/4 v0, 0x0

    .line 1685
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-nez v1, :cond_0

    .line 1694
    :goto_0
    return-object v0

    .line 1690
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    instance-of v1, v1, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v1, :cond_1

    .line 1691
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    check-cast v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    goto :goto_0

    .line 1693
    :cond_1
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][HtcFullFilmView3D][setSideBySideItemIndex] Unsupported thumbpreparator "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queryItemImageTexture(II)Lcom/htc/sunnyCore/Texture;
    .locals 3
    .parameter "itemIndex"
    .parameter "quality"

    .prologue
    const/4 v0, 0x0

    .line 1700
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-nez v1, :cond_0

    .line 1710
    :goto_0
    return-object v0

    .line 1706
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    instance-of v1, v1, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v1, :cond_1

    .line 1707
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    check-cast v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    goto :goto_0

    .line 1709
    :cond_1
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][HtcFullFilmView3D][setSideBySideItemIndex] Unsupported thumbpreparator "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resumePreparator(Z)V
    .locals 1
    .parameter "resume"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-nez v0, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p1, :cond_2

    .line 371
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Preparator;->resumePreparator()V

    .line 372
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->resumeThread()V

    goto :goto_0

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Preparator;->pausePreparator()V

    goto :goto_0
.end method

.method public setExtremeQualityItemIndex(I)Z
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 1884
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-nez v1, :cond_0

    .line 1895
    :goto_0
    return v0

    .line 1888
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    instance-of v1, v1, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v1, :cond_1

    .line 1891
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    check-cast v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setExtremeQualityItemIndex(I)Z

    .line 1892
    const/4 v0, 0x1

    goto :goto_0

    .line 1894
    :cond_1
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][HtcFullFilmView3D][setSideBySideItemIndex] Unsupported thumbpreparator "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFullscreenListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V
    .locals 0
    .parameter "imagePanAndZoomListener"

    .prologue
    .line 438
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mImagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 439
    return-void
.end method

.method public setIsAfterEdit(ZI)V
    .locals 0
    .parameter "b"
    .parameter "index"

    .prologue
    .line 2665
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mIsAfterEdit:Z

    .line 2666
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAfterEditIndex:I

    .line 2667
    return-void
.end method

.method public setIsDoubleTapZooming(Z)V
    .locals 1
    .parameter "isDoubleTapZooming"

    .prologue
    .line 2583
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    if-eqz v0, :cond_0

    .line 2585
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setIsDoubleTapZooming(Z)V

    .line 2587
    :cond_0
    return-void
.end method

.method public setIsOnlineTagEditor(Z)V
    .locals 0
    .parameter "isOnlineTagEditor"

    .prologue
    .line 2014
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isOnlineTagEditor:Z

    .line 2015
    return-void
.end method

.method public setIsUploadEditor(Z)V
    .locals 0
    .parameter "isUploadEditor"

    .prologue
    .line 2009
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    .line 2010
    return-void
.end method

.method public setMediaListIHT(Lcom/htc/sunnyCore/IMediaList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunnyCore/IMediaList",
            "<+",
            "Lcom/htc/sunnyCore/IMediaData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 740
    .local p1, list:Lcom/htc/sunnyCore/IMediaList;,"Lcom/htc/sunnyCore/IMediaList<+Lcom/htc/sunnyCore/IMediaData;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunnyCore/IMediaList;I)V

    .line 741
    return-void
.end method

.method public setMediaListIHT(Lcom/htc/sunnyCore/IMediaList;I)V
    .locals 2
    .parameter
    .parameter "selectedIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunnyCore/IMediaList",
            "<+",
            "Lcom/htc/sunnyCore/IMediaData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 745
    .local p1, list:Lcom/htc/sunnyCore/IMediaList;,"Lcom/htc/sunnyCore/IMediaList<+Lcom/htc/sunnyCore/IMediaData;>;"
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    monitor-enter v1

    .line 746
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->set(Lcom/htc/sunnyCore/IMediaList;I)V

    .line 747
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->requestLayout()V

    .line 749
    return-void

    .line 747
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMediaListIHT_block(Lcom/htc/sunnyCore/IMediaList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunnyCore/IMediaList",
            "<+",
            "Lcom/htc/sunnyCore/IMediaData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 729
    .local p1, list:Lcom/htc/sunnyCore/IMediaList;,"Lcom/htc/sunnyCore/IMediaList<+Lcom/htc/sunnyCore/IMediaData;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT_block(Lcom/htc/sunnyCore/IMediaList;I)V

    .line 730
    return-void
.end method

.method public setMediaListIHT_block(Lcom/htc/sunnyCore/IMediaList;I)V
    .locals 1
    .parameter
    .parameter "selectedIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunnyCore/IMediaList",
            "<+",
            "Lcom/htc/sunnyCore/IMediaData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 734
    .local p1, list:Lcom/htc/sunnyCore/IMediaList;,"Lcom/htc/sunnyCore/IMediaList<+Lcom/htc/sunnyCore/IMediaData;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunnyCore/IMediaList;I)V

    .line 735
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->checkSetMediaListComplete_block()V

    .line 736
    return-void
.end method

.method public setOnFilmstripViewScrollChangeListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnFilmstripViewScrollChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 448
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnFilmstripViewScrollChangeListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnFilmstripViewScrollChangeListener;

    .line 449
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1868
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    .line 1869
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 443
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemSelectedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;

    .line 444
    return-void
.end method

.method public setOnItemTouchedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1873
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemTouchedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;

    .line 1874
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;)V
    .locals 0
    .parameter "mOnScrollListener"

    .prologue
    .line 1878
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    .line 1879
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onFullScreenViewAlignEnd()V

    .line 1880
    return-void
.end method

.method public setPaintLayerBMPIHT(ILandroid/graphics/Bitmap;FFFFILcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;)V
    .locals 2
    .parameter "index"
    .parameter "bmp"
    .parameter "originX"
    .parameter "originY"
    .parameter "sizeX"
    .parameter "sizeY"
    .parameter "rotate"
    .parameter "paintSetListener"

    .prologue
    .line 2272
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-nez v1, :cond_0

    .line 2288
    :goto_0
    return-void

    .line 2277
    :cond_0
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    .line 2278
    .local v0, itemPaintLayerInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;
    iput p1, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->index:I

    .line 2279
    iput-object p2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->bmp:Landroid/graphics/Bitmap;

    .line 2280
    iput p3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->originX:F

    .line 2281
    iput p4, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->originY:F

    .line 2282
    iput p5, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->sizeX:F

    .line 2283
    iput p6, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->sizeY:F

    .line 2284
    iput p7, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->rotate:I

    .line 2285
    iput-object p8, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->paintSetListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;

    .line 2287
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setPaintLayerBMPIHT(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;)Z

    goto :goto_0
.end method

.method public setPaintLayerTransparencyIHT(II)V
    .locals 1
    .parameter "index"
    .parameter "transparency"

    .prologue
    .line 2291
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-nez v0, :cond_0

    .line 2296
    :goto_0
    return-void

    .line 2295
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setPaintLayerTransparencyIHT(II)Z

    goto :goto_0
.end method

.method public setPanZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V
    .locals 2
    .parameter "imagePanAndZoomListener"

    .prologue
    .line 862
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mImagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    .line 863
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mImagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 864
    return-void
.end method

.method public setPreparation(Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;)V
    .locals 2
    .parameter "preparator"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    if-eqz p1, :cond_0

    .line 415
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/RenderThread;->pushPreparationIHT(Lcom/htc/sunnyCore/RenderThreadPreparation;)Z

    .line 416
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    .line 418
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setViewStateChangeListener(Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;)V

    .line 421
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setIsUploadEditor(Z)V

    .line 430
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setTileTextureReadyListener(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TileTextureReadyListener;)V

    .line 434
    :cond_1
    return-void

    .line 427
    :cond_2
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    goto :goto_0
.end method

.method public setPreparatorIndexChangeFlag(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 2861
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    if-eqz v0, :cond_0

    .line 2863
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setPreparatorIndexChangeFlag(Z)V

    .line 2865
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1280
    :cond_0
    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setSelection NG - null render thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    :cond_1
    :goto_0
    return-void

    .line 1284
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->ObtainSetSelection(I)Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1286
    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setSelection NG - pushEventIHT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSideBySideItemIndex(I)Z
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 1991
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-nez v1, :cond_0

    .line 1993
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][HtcFullFilmView3D][setSideBySideItemIndex]mThumbPreparator is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2003
    :goto_0
    return v0

    .line 1996
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    instance-of v1, v1, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v1, :cond_1

    .line 1998
    const-string v0, "FullFilmView"

    const-string v1, "[HTCAlbum][HtcFullFilmView3D][setSideBySideItemIndex]mThumbPreparator.setSideBySideItemIndex..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    check-cast v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setSideBySideItemIndex(I)Z

    move-result v0

    goto :goto_0

    .line 2002
    :cond_1
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][HtcFullFilmView3D][setSideBySideItemIndex] Unsupported thumbpreparator "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setViewItem(Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;)V
    .locals 0
    .parameter "fullScreenViewItem"

    .prologue
    .line 857
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenViewItem:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    .line 858
    return-void
.end method

.method public setViewStateChangeListener(Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2155
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewStateChangeListener:Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;

    .line 2156
    return-void
.end method

.method public showDRMIndicator(Z)V
    .locals 2
    .parameter "bForce"

    .prologue
    .line 2688
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eq v0, v1, :cond_0

    .line 2690
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$9;

    invoke-direct {v1, p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$9;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Z)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 2705
    :goto_0
    return-void

    .line 2701
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->showDRMIndicator(Z)V

    .line 2702
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/sunnyCore/RenderThread;->forceRenderOnce:Z

    .line 2703
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->resumeThread()V

    goto :goto_0
.end method

.method public showFullFilmView()V
    .locals 2

    .prologue
    .line 2678
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$8;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$8;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 2684
    return-void
.end method

.method switchViewState(IZ)V
    .locals 4
    .parameter "state"
    .parameter "changeVisibility"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 384
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_4

    .line 386
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    .line 387
    if-eqz p2, :cond_0

    .line 389
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setVisible(Z)V

    .line 390
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-ne v3, v1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setVisibility(Z)V

    .line 401
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewStateChangeListener:Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewStateChangeListener:Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;->onViewStateChange(I)V

    .line 405
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 389
    goto :goto_0

    :cond_3
    move v1, v2

    .line 390
    goto :goto_1

    .line 395
    :cond_4
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    .line 396
    if-eqz p2, :cond_0

    .line 398
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-ne v3, v1, :cond_5

    :goto_3
    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setVisibility(Z)V

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method public unzoomCenter()V
    .locals 3

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-nez v0, :cond_1

    .line 2257
    :cond_0
    :goto_0
    return-void

    .line 2239
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2240
    :cond_2
    const-string v0, "FullFilmView"

    const-string v1, "RenderThread is null or not ready"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2243
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$5;

    const-string v2, "unzoomCenter"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$5;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2254
    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[unzoomCenter] mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", renderThread pushEventIHT NG "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
