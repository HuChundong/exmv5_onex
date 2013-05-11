.class public Lcom/htc/sunnyCore/widget/gridview/GridView;
.super Lcom/htc/sunnyCore/view/SViewGroup;
.source "GridView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/htc/sunnyCore/view/ISViewDataChangeHandler;
.implements Lcom/htc/sunnyCore/widget/gridview/interfaces/IGestureHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;,
        Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;,
        Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;,
        Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;,
        Lcom/htc/sunnyCore/widget/gridview/GridView$GridItemAlignAction;,
        Lcom/htc/sunnyCore/widget/gridview/GridView$GridFlingingAction;,
        Lcom/htc/sunnyCore/widget/gridview/GridView$ForcePreparatorLoadVisibleItemsFromCache;,
        Lcom/htc/sunnyCore/widget/gridview/GridView$GridPanningAction;,
        Lcom/htc/sunnyCore/widget/gridview/GridView$AdapterContextMenuInfo;,
        Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;,
        Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;,
        Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;,
        Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;,
        Lcom/htc/sunnyCore/widget/gridview/GridView$RTEPreparation;,
        Lcom/htc/sunnyCore/widget/gridview/GridView$RTEHighlightStateChange;,
        Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;,
        Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;,
        Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongPressVibrateListener;,
        Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;,
        Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final COOPERATEITEM_ID_NONE:I = -0x1

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DELEY_BETWEEN_SCALE_MOTION_ANIMATION:I = 0x78

.field private static final DELEY_MOTION_ANIMATION:I = 0x1e

.field private static final DURATION_MOTION_ANIMATION:I = 0x96

.field private static final DURATION_SCALE_ANIMATION:I = 0x96

.field public static final INVALID_POSITION:I = -0x1

.field protected static final INVALID_SCREEN_POSITION:F = 3.4028235E38f

.field public static final LAYOUT_HORIZONTAL:I = 0x1

.field protected static final LAYOUT_NONE:I = -0x1

.field public static final LAYOUT_VERTICAL:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "GridView"

.field protected static final RENDER_ORDER_ANIMATION_DELETE_ITEM:I = 0x2

.field protected static final RENDER_ORDER_ANIMATION_KEEP_ITEM:I = 0x3

.field protected static final RENDER_ORDER_ANIMATION_NONE:I = 0x0

.field protected static final STORE_KEY_OLDFIRSTIDX:Ljava/lang/String; = "oldFirstIdx"

.field protected static final STORE_KEY_OLDFIRSTITEMPOSITIONY:Ljava/lang/String; = "oldFirstItemPositionY"


# instance fields
.field private final LayoutLock:Ljava/lang/Object;

.field private bundleDataSetChangeAnimation:Landroid/os/Bundle;

.field private mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

.field protected mCellRecycler:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field protected mChildNodeCount:I

.field protected mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mCurrentHighlightIdx:I

.field protected mDataSetInvalidate:Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;

.field protected mDisableFastScrollerTouchEvent:Z

.field private mDisableLayoutRequest:Z

.field private mDoNotResetPreparatorFlag:Z

.field private mDraggingBlurSprite:Lcom/htc/sunnyCore/Sprite;

.field private mDraggingBlurTexture:Lcom/htc/sunnyCore/Texture;

.field private mEnableHtcFastScroller:Z

.field private mEnablePinOnItemScroll:Z

.field protected mExtraPaddingLeft:I

.field protected mExtraPaddingTop:I

.field private mFastScrollerCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

.field protected mFastScrollerExtraPaddingTop:I

.field private mFastScrollerRenderRequestAction:Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;

.field protected mFastScrollerSceneNode:Lcom/htc/sunnyCore/SceneNode;

.field protected mFirstIdx:I

.field protected mFirstIdxPrev:I

.field private mFocusItemId:I

.field protected mGLViewHeight:I

.field protected mGLViewWidth:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGridPanningAction:Lcom/htc/sunnyCore/widget/gridview/GridView$GridPanningAction;

.field protected mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

.field private mHasLayoutRequest:Z

.field protected mHorizontalSpacing:I

.field private mHtcFastScrollerRes:Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;

.field protected mIgnorePinToBottmTopDuringDeleteAnimation:Z

.field private mIgnoreSetSelection:Z

.field protected mInLayout:Z

.field private mIsPreparatorSkipDecodeDirection:Z

.field protected mItemLongClickCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;

.field protected mItemPrototype:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

.field protected mLastIdx:I

.field private mLastScrollState:I

.field private mLastestSelection:I

.field protected mListItemCount:I

.field private final mLock:Ljava/lang/Object;

.field protected mMediaList:Lcom/htc/sunnyCore/IMediaList;

.field private mNewHorizontalSpacing:I

.field private mNewListItemCount:I

.field private mNewMediaList:Lcom/htc/sunnyCore/IMediaList;

.field private mNewNumColumn:I

.field protected mNewNumRow:I

.field protected mNewOrientation:I

.field private mNewVerticalSpacing:I

.field protected mNumColumn:I

.field protected mNumRow:I

.field private mOnFullScreenTransitionEndListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;

.field protected mOnItemClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

.field protected mOnItemLongPressVibrateListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongPressVibrateListener;

.field protected mOnScreenItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnScrollListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;

.field protected mOrientation:I

.field private mPaddingChanged:Z

.field private mRefreshMediaList:Z

.field protected mRenderThread:Lcom/htc/sunnyCore/RenderThread;

.field protected mResurrectToIdx:I

.field private mResurrectToOldFirstIndexPositionY:I

.field protected mRootNode:Lcom/htc/sunnyCore/SceneNode;

.field private mSelectedHighlightEnabled:Z

.field private mSelectedHighlightStateChange:Lcom/htc/sunnyCore/RenderThreadEvent;

.field protected mSelectedIdx:I

.field protected mShouldPrintOnFlingLog:Z

.field protected mShouldPrintOnScrollLog:Z

.field protected mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

.field private mTouchDownInFling:Z

.field protected mVerticalSpacing:I

.field protected mVisibleItemCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V
    .locals 6
    .parameter "context"
    .parameter "sContext"
    .parameter "itemPrototype"

    .prologue
    const/4 v5, 0x1

    const/high16 v1, -0x8000

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 237
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/view/SViewGroup;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 79
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastScrollState:I

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    .line 121
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDoNotResetPreparatorFlag:Z

    .line 126
    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVerticalSpacing:I

    .line 127
    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    .line 128
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewVerticalSpacing:I

    .line 129
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewHorizontalSpacing:I

    .line 131
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mExtraPaddingLeft:I

    .line 132
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mExtraPaddingTop:I

    .line 137
    iput-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridPanningAction:Lcom/htc/sunnyCore/widget/gridview/GridView$GridPanningAction;

    .line 144
    iput-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnItemClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

    .line 145
    iput-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnItemLongPressVibrateListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongPressVibrateListener;

    .line 151
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdxPrev:I

    .line 153
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mResurrectToOldFirstIndexPositionY:I

    .line 158
    iput v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedIdx:I

    .line 163
    iput v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mResurrectToIdx:I

    .line 174
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mChildNodeCount:I

    .line 182
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/GridView$RTEHighlightStateChange;

    const-string v1, "SelectedHighlightStateChange"

    invoke-direct {v0, p0, p0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$RTEHighlightStateChange;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunnyCore/RenderThreadEvent;

    .line 190
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mEnablePinOnItemScroll:Z

    .line 197
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mEnableHtcFastScroller:Z

    .line 199
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDisableFastScrollerTouchEvent:Z

    .line 200
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerExtraPaddingTop:I

    .line 201
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mIgnoreSetSelection:Z

    .line 202
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastestSelection:I

    .line 204
    iput-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDraggingBlurSprite:Lcom/htc/sunnyCore/Sprite;

    .line 205
    iput-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDraggingBlurTexture:Lcom/htc/sunnyCore/Texture;

    .line 208
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerRenderRequestAction:Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;

    .line 216
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVisibleItemCount:I

    .line 221
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mShouldPrintOnScrollLog:Z

    .line 222
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mShouldPrintOnFlingLog:Z

    .line 230
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mIgnorePinToBottmTopDuringDeleteAnimation:Z

    .line 2093
    iput v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFocusItemId:I

    .line 2781
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mIsPreparatorSkipDecodeDirection:Z

    .line 4253
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/GridView$5;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/widget/gridview/GridView$5;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnFullScreenTransitionEndListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;

    .line 4297
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDisableLayoutRequest:Z

    .line 4298
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHasLayoutRequest:Z

    .line 4299
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->LayoutLock:Ljava/lang/Object;

    .line 238
    invoke-direct {p0, p3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->init(Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V

    .line 239
    return-void
.end method

.method private FocusItemClick(I)V
    .locals 7
    .parameter "focusId"

    .prologue
    .line 2338
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2340
    .local v6, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnItemClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

    if-eqz v0, :cond_1

    .line 2342
    iget-object v0, v6, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2344
    iget-object v0, v6, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->onItemRelease()V

    .line 2345
    iget-object v0, v6, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 2348
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnItemClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

    iget-object v2, v6, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getLevelNumberByItem(I)I

    move-result v1

    int-to-long v4, v1

    move-object v1, p0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;->onItemClickIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/view/SView;IJ)V

    .line 2351
    :cond_1
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFocusItemId:I

    .line 2352
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunnyCore/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/sunnyCore/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/sunnyCore/widget/gridview/GridView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedHighlightEnabled:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/sunnyCore/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mCurrentHighlightIdx:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/sunnyCore/widget/gridview/GridView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/sunnyCore/widget/gridview/GridView;[I[ILcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->startDataSetChangeAnimation_IRT([I[ILcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/sunnyCore/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mWidth:I

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/sunnyCore/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHeight:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/view/SView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->measureChild(Lcom/htc/sunnyCore/view/SView;II)V

    return-void
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/sunnyCore/widget/gridview/GridView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunnyCore/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/sunnyCore/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/sunnyCore/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/sunnyCore/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/sunnyCore/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHeight:I

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/sunnyCore/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/sunnyCore/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/sunnyCore/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mWidth:I

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/sunnyCore/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$2800(Lcom/htc/sunnyCore/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/sunnyCore/widget/gridview/GridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$3400(Lcom/htc/sunnyCore/widget/gridview/GridView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mIgnoreSetSelection:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/htc/sunnyCore/widget/gridview/GridView;)Lcom/htc/widget/AbsFastScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/htc/sunnyCore/widget/gridview/GridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastestSelection:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/sunnyCore/widget/gridview/GridView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/sunnyCore/widget/gridview/GridView;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/sunnyCore/widget/gridview/GridView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->dispatchUnpress(Z)V

    return-void
.end method

.method private dispatchUnpress(Z)V
    .locals 6
    .parameter "bForce"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1796
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .local v1, nIndex:I
    :goto_0
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-gt v1, v2, :cond_3

    .line 1798
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 1799
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 1796
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1803
    :cond_0
    iget-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1805
    const-string v2, "GridView"

    const-string v3, "[HTCAlbum][Gridview][KeyPress]: dispatchUnpress "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    iget-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->onItemRelease()V

    .line 1809
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedHighlightEnabled:Z

    if-ne v2, v5, :cond_2

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mCurrentHighlightIdx:I

    if-ne v2, v1, :cond_2

    .line 1813
    iget-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v2, v5}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPressed(Z)V

    goto :goto_1

    .line 1817
    :cond_2
    iget-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v2, v4}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPressed(Z)V

    goto :goto_1

    .line 1822
    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setPressed(Z)V

    .line 1823
    return-void
.end method

.method private doFocusScroll(III)Z
    .locals 8
    .parameter "coordinate"
    .parameter "gridHeight"
    .parameter "numRow"

    .prologue
    .line 2293
    const/4 v0, 0x0

    .line 2294
    .local v0, bResult:Z
    const/4 v3, 0x0

    .line 2295
    .local v3, distanceToAligned:I
    const/4 v2, 0x0

    .line 2297
    .local v2, diffDistance:I
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_1

    :cond_0
    move v1, v0

    .line 2328
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 2301
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 2303
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingTop:I

    neg-int v5, v5

    if-le p1, v5, :cond_4

    .line 2305
    neg-int v5, p1

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingTop:I

    sub-int v2, v5, v6

    .line 2312
    :cond_2
    :goto_1
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v5, p2

    mul-int/2addr v5, p3

    add-int v3, v5, v2

    .line 2315
    :cond_3
    if-nez v3, :cond_5

    move v1, v0

    .line 2316
    .restart local v1       #bResult:I
    goto :goto_0

    .line 2307
    .end local v1           #bResult:I
    :cond_4
    sub-int v5, p1, p2

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    if-gez v5, :cond_2

    .line 2309
    sub-int v5, p1, p2

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    neg-int v2, v5

    goto :goto_1

    .line 2319
    :cond_5
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v6, "GridFlingingAction"

    invoke-virtual {v5, p0, v6}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v4

    .line 2320
    .local v4, gridFlingingAction:Lcom/htc/sunnyCore/RenderThreadAction;
    if-eqz v4, :cond_6

    .line 2321
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v5, v4}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 2324
    :cond_6
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->reset()V

    .line 2325
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    new-instance v6, Lcom/htc/sunnyCore/widget/gridview/resource/DurationTunerFling;

    invoke-direct {v6}, Lcom/htc/sunnyCore/widget/gridview/resource/DurationTunerFling;-><init>()V

    invoke-virtual {v5, v3, v6}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->flingByDistance(ILcom/htc/sunnyCore/widget/gridview/interfaces/IScrollerDuration;)V

    .line 2326
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v6, Lcom/htc/sunnyCore/widget/gridview/GridView$GridFlingingAction;

    const-string v7, "gridBouncingAction"

    invoke-direct {v6, p0, p0, v7}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridFlingingAction;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 2327
    const/4 v0, 0x1

    move v1, v0

    .line 2328
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method private getGridViewItemLock(I)Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
    .locals 5
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 3024
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3025
    :try_start_0
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    .line 3026
    monitor-exit v2

    .line 3039
    :goto_0
    return-object v1

    .line 3029
    :cond_0
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-le p1, v3, :cond_2

    .line 3030
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 3040
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3033
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 3035
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-nez v0, :cond_3

    .line 3036
    monitor-exit v2

    goto :goto_0

    .line 3039
    :cond_3
    iget-object v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private init(Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V
    .locals 5
    .parameter "itemPrototype"

    .prologue
    const/high16 v4, -0x8000

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 242
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mInLayout:Z

    .line 244
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedHighlightEnabled:Z

    .line 245
    iput v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mCurrentHighlightIdx:I

    .line 247
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    .line 249
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    .line 250
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    .line 252
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    .line 253
    iput v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewNumColumn:I

    .line 255
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    .line 256
    iput v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewNumRow:I

    .line 258
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingChanged:Z

    .line 260
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .line 261
    iput v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    .line 263
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    .line 264
    iput v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewOrientation:I

    .line 266
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnItemClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

    .line 267
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;

    .line 268
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mItemLongClickCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;

    .line 269
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnItemLongPressVibrateListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongPressVibrateListener;

    .line 271
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 273
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    .line 275
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 276
    iput v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewListItemCount:I

    .line 278
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRefreshMediaList:Z

    .line 280
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mTouchDownInFling:Z

    .line 282
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridPanningAction;

    invoke-direct {v0, p0, p0}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridPanningAction;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridPanningAction:Lcom/htc/sunnyCore/widget/gridview/GridView$GridPanningAction;

    .line 284
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 286
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    invoke-direct {v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    .line 287
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    sget-object v1, Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;->LEFT_TOP:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->createScrollerItemInfoGetter()Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->init(Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;)Z

    .line 288
    return-void
.end method

.method private performLongPress(Lcom/htc/sunnyCore/view/SView;II)Z
    .locals 5
    .parameter "view"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    const/4 v2, 0x0

    .line 1990
    const/4 v0, 0x0

    .line 1991
    .local v0, handled:Z
    const/4 v1, 0x1

    .line 1993
    .local v1, vibrate:Z
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mItemLongClickCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;

    if-eqz v3, :cond_0

    .line 1994
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mItemLongClickCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;

    invoke-interface {v3, p0, p1, p2, p3}, Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;->onItemLongClickIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/view/SView;II)Z

    move-result v0

    .line 1996
    :cond_0
    if-nez v0, :cond_1

    .line 1997
    int-to-long v3, p3

    invoke-virtual {p0, p2, v3, v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->createContextMenuInfo(IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1998
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    invoke-interface {v3, p0}, Lcom/htc/sunnyCore/view/SViewParent;->showContextMenuForChild(Lcom/htc/sunnyCore/view/SView;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    .line 2000
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnItemLongPressVibrateListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongPressVibrateListener;

    if-eqz v3, :cond_2

    .line 2001
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnItemLongPressVibrateListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongPressVibrateListener;

    invoke-interface {v3, p0, p1, p2, p3}, Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongPressVibrateListener;->onItemLongPressVibrateIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/view/SView;II)Z

    move-result v1

    .line 2003
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 2004
    invoke-virtual {p0, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->performHapticFeedback(I)Z

    .line 2006
    :cond_3
    return v0

    :cond_4
    move v0, v2

    .line 1998
    goto :goto_0
.end method

.method private pointToCell(II)Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x0

    .line 1771
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1772
    .local v2, count:I
    if-nez v2, :cond_0

    move-object v1, v7

    .line 1791
    :goto_0
    return-object v1

    .line 1776
    :cond_0
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .local v3, i:I
    :goto_1
    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-gt v3, v8, :cond_3

    .line 1777
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 1778
    .local v1, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-nez v1, :cond_2

    .line 1776
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1782
    :cond_2
    iget v4, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    .line 1783
    .local v4, left:I
    iget v8, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    rsub-int/lit8 v6, v8, 0x0

    .line 1784
    .local v6, top:I
    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v8

    add-int v5, v4, v8

    .line 1785
    .local v5, right:I
    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v8

    add-int v0, v6, v8

    .line 1787
    .local v0, bottom:I
    if-gt v6, p2, :cond_1

    if-gt p2, v0, :cond_1

    if-gt v4, p1, :cond_1

    if-gt p1, v5, :cond_1

    goto :goto_0

    .end local v0           #bottom:I
    .end local v1           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v4           #left:I
    .end local v5           #right:I
    .end local v6           #top:I
    :cond_3
    move-object v1, v7

    .line 1791
    goto :goto_0
.end method

.method private startDataSetChangeAnimation_IRT([I[ILcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V
    .locals 56
    .parameter "deleteIndex"
    .parameter "createIndex"
    .parameter "listener"

    .prologue
    .line 3358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v3, :cond_1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 3361
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 3362
    if-eqz p3, :cond_2

    .line 3363
    invoke-interface/range {p3 .. p3}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationStart()V

    .line 3364
    invoke-interface/range {p3 .. p3}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 3704
    :cond_2
    :goto_0
    return-void

    .line 3370
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->storeCurrentState_IRT([I)Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    .line 3371
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    if-nez v3, :cond_4

    .line 3372
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyMediaDataChange()V

    goto :goto_0

    .line 3377
    :cond_4
    if-eqz p3, :cond_5

    .line 3378
    invoke-interface/range {p3 .. p3}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationStart()V

    .line 3382
    :cond_5
    const/4 v11, -0x1

    .line 3383
    .local v11, anchorIdx:I
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->sort([I)V

    .line 3384
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v31

    .line 3385
    .local v31, index:I
    if-gez v31, :cond_7

    .line 3386
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .line 3419
    :cond_6
    :goto_1
    new-instance v35, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    move-object/from16 v0, v35

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3421
    .local v35, mapping:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v28, 0x0

    .local v28, i:I
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    move/from16 v0, v28

    if-ge v0, v3, :cond_d

    .line 3422
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3421
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 3389
    .end local v28           #i:I
    .end local v35           #mapping:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .line 3390
    const/16 v50, -0x1

    .line 3391
    .local v50, tmpIdx:I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v34, v0

    .line 3392
    .local v34, lenDeleteArray:I
    add-int/lit8 v30, v31, 0x1

    .local v30, id:I
    :goto_3
    move/from16 v0, v30

    move/from16 v1, v34

    if-ge v0, v1, :cond_8

    .line 3393
    aget v50, p1, v30

    .line 3394
    sub-int v3, v50, v11

    const/4 v5, 0x1

    if-le v3, v5, :cond_9

    .line 3395
    add-int/lit8 v11, v11, 0x1

    .line 3400
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ge v11, v3, :cond_a

    move/from16 v0, v50

    if-ne v11, v0, :cond_a

    .line 3401
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 3398
    :cond_9
    move/from16 v11, v50

    .line 3392
    add-int/lit8 v30, v30, 0x1

    goto :goto_3

    .line 3403
    :cond_a
    move/from16 v0, v50

    if-ne v11, v0, :cond_6

    .line 3404
    add-int/lit8 v30, v31, -0x1

    :goto_4
    const/4 v3, -0x1

    move/from16 v0, v30

    if-le v0, v3, :cond_b

    .line 3405
    aget v50, p1, v30

    .line 3406
    sub-int v3, v11, v50

    const/4 v5, 0x1

    if-le v3, v5, :cond_c

    .line 3407
    add-int/lit8 v11, v11, -0x1

    .line 3413
    :cond_b
    move/from16 v0, v50

    if-ne v11, v0, :cond_6

    .line 3414
    const/4 v11, -0x1

    goto :goto_1

    .line 3410
    :cond_c
    move/from16 v11, v50

    .line 3404
    add-int/lit8 v30, v30, -0x1

    goto :goto_4

    .line 3424
    .end local v30           #id:I
    .end local v34           #lenDeleteArray:I
    .end local v50           #tmpIdx:I
    .restart local v28       #i:I
    .restart local v35       #mapping:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_d
    :try_start_1
    move-object/from16 v0, p1

    array-length v3, v0

    add-int/lit8 v28, v3, -0x1

    :goto_5
    const/4 v3, -0x1

    move/from16 v0, v28

    if-le v0, v3, :cond_f

    .line 3425
    aget v3, p1, v28

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3424
    add-int/lit8 v28, v28, -0x1

    goto :goto_5

    .line 3428
    :catch_0
    move-exception v25

    .line 3429
    .local v25, e:Ljava/lang/Exception;
    sget-boolean v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->DEBUG:Z

    if-eqz v3, :cond_e

    const-string v3, "GridView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t create old mapping, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-static {v3, v5, v0}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3430
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 3431
    if-eqz p3, :cond_2

    .line 3432
    invoke-interface/range {p3 .. p3}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    goto/16 :goto_0

    .line 3437
    .end local v25           #e:Ljava/lang/Exception;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v3

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v3, v5, :cond_10

    .line 3438
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 3439
    if-eqz p3, :cond_2

    .line 3440
    invoke-interface/range {p3 .. p3}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    goto/16 :goto_0

    .line 3445
    :cond_10
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3446
    .local v23, deleteCell:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eqz v3, :cond_15

    .line 3447
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v28, v0

    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    move/from16 v0, v28

    if-gt v0, v3, :cond_14

    .line 3448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 3449
    .local v13, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-nez v13, :cond_12

    .line 3450
    const-string v3, "GridView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[startDataSetChangeAnimation_IRT] mOnScreenItems with null cell at idx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3447
    :cond_11
    :goto_7
    add-int/lit8 v28, v28, 0x1

    goto :goto_6

    .line 3454
    :cond_12
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v21

    .line 3455
    .local v21, delIdx:I
    const/4 v3, -0x1

    move/from16 v0, v21

    if-le v0, v3, :cond_13

    .line 3456
    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3457
    sget-boolean v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->DEBUG:Z

    if-eqz v3, :cond_11

    const-string v3, "GridView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "put to deleteCell, idx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 3460
    :cond_13
    invoke-virtual {v13}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->unlink()V

    .line 3461
    iget-object v3, v13, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const v5, 0x7f7fffff

    const v6, 0x7f7fffff

    const/4 v9, 0x0

    invoke-virtual {v3, v5, v6, v9}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 3462
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/sunnyCore/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)V

    goto :goto_7

    .line 3465
    .end local v13           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v21           #delIdx:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 3468
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    .line 3469
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/sunnyCore/widget/gridview/GridView;->resetLastIdxInOnLayout(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    .line 3470
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    add-int/lit8 v5, v5, -0x1

    if-lt v3, v5, :cond_16

    .line 3471
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->resetLastIdxInOnLayout(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    .line 3473
    :cond_16
    const v3, 0x7fffffff

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .line 3474
    const/16 v48, 0x0

    .line 3477
    .local v48, release:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/Texture;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    if-eqz v3, :cond_17

    .line 3478
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v5, v6, v9, v10}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;->refresh(ILcom/htc/sunnyCore/IMediaList;IZ)Ljava/util/List;

    move-result-object v48

    .line 3480
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    if-eqz v3, :cond_18

    .line 3481
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    invoke-virtual {v3}, Lcom/htc/widget/AbsFastScroller;->setSectionsDirty()V

    .line 3483
    :cond_18
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    if-eqz v3, :cond_20

    .line 3484
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingTop:I

    rsub-int/lit8 v18, v3, 0x0

    .line 3486
    .local v18, currentH:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    const-string v5, "oldFirstIdx"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v41

    .line 3487
    .local v41, oldFirstIdx:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    const-string v5, "oldFirstItemPositionY"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v42

    .line 3489
    .local v42, oldFirstItemPositionY:I
    const v3, 0x7fffffff

    move/from16 v0, v42

    if-eq v0, v3, :cond_1a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v41

    if-ne v3, v0, :cond_1a

    move/from16 v0, v42

    move/from16 v1, v18

    if-ge v0, v1, :cond_19

    if-eqz v41, :cond_1a

    .line 3492
    :cond_19
    move/from16 v18, v42

    .line 3495
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewHeight:I

    move/from16 v27, v0

    .line 3498
    .local v27, height:I
    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v3, v5, v1, v6}, Lcom/htc/sunnyCore/widget/gridview/GridView;->makeItemRow(IIIZ)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getHorizontalSpacingToNextRow(I)I

    move-result v5

    sub-int v18, v3, v5

    .line 3499
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ge v3, v5, :cond_1c

    move/from16 v0, v27

    neg-int v3, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingBottom:I

    add-int/2addr v3, v5

    move/from16 v0, v18

    if-gt v0, v3, :cond_1b

    .line 3503
    :cond_1c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ge v3, v5, :cond_1d

    move/from16 v0, v27

    neg-int v3, v0

    move/from16 v0, v18

    if-le v0, v3, :cond_1d

    .line 3504
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v3, v5, v1, v6}, Lcom/htc/sunnyCore/widget/gridview/GridView;->makeItemRow(IIIZ)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getHorizontalSpacingToNextRow(I)I

    move-result v5

    sub-int v18, v3, v5

    .line 3510
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mIgnorePinToBottmTopDuringDeleteAnimation:Z

    if-nez v3, :cond_1e

    .line 3511
    move/from16 v0, v27

    neg-int v3, v0

    move/from16 v0, v18

    if-le v0, v3, :cond_1e

    .line 3512
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->pinToBottom()V

    .line 3513
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->pinToTop(Z)V

    .line 3516
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    if-eqz v3, :cond_1f

    .line 3517
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    invoke-virtual {v3, v5, v6, v9, v10}, Lcom/htc/widget/AbsFastScroller;->onScroll(Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;III)V

    .line 3520
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->invokeOnItemScrollListener()V

    .line 3522
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyUpdatePreparator(Z)V

    .line 3525
    .end local v18           #currentH:I
    .end local v27           #height:I
    .end local v41           #oldFirstIdx:I
    .end local v42           #oldFirstItemPositionY:I
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v45

    .line 3530
    .local v45, onScreenSize:I
    if-lez v45, :cond_22

    .line 3531
    const/16 v44, -0x1

    .line 3532
    .local v44, oldVisibleY:I
    :cond_21
    :goto_8
    move/from16 v0, v44

    int-to-float v3, v0

    const/4 v5, 0x0

    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gez v3, :cond_22

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    if-lez v3, :cond_22

    .line 3533
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v30, v0

    .line 3535
    .restart local v30       #id:I
    move-object/from16 v0, v35

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v43

    .line 3536
    .local v43, oldIdx:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 3538
    .restart local v13       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    invoke-virtual {v13}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v26

    .line 3540
    .local v26, h:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->restorePreviousState_IRT(IILandroid/os/Bundle;)Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v47

    .line 3541
    .local v47, pos:Lcom/htc/sunnyCore/view/Vector3F;
    move-object/from16 v0, v47

    iget v3, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    float-to-int v3, v3

    div-int/lit8 v5, v26, 0x2

    add-int v44, v3, v5

    .line 3543
    const/4 v3, 0x0

    move/from16 v0, v44

    int-to-float v5, v0

    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-lez v3, :cond_21

    .line 3544
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPreviousRowInfomation(ILcom/htc/sunnyCore/widget/gridview/GridView$Cell;)Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;

    move-result-object v32

    .line 3545
    .local v32, info:Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;
    move-object/from16 v0, v32

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;->rowId:I

    const/4 v5, 0x0

    move-object/from16 v0, v32

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;->startY:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v6, v9}, Lcom/htc/sunnyCore/widget/gridview/GridView;->makeItemRow(IIIZ)I

    goto :goto_8

    .line 3550
    .end local v13           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v26           #h:I
    .end local v30           #id:I
    .end local v32           #info:Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;
    .end local v43           #oldIdx:I
    .end local v44           #oldVisibleY:I
    .end local v47           #pos:Lcom/htc/sunnyCore/view/Vector3F;
    :cond_22
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 3551
    .local v20, del:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    move-object/from16 v22, v0

    .line 3553
    .local v22, delView:Lcom/htc/sunnyCore/view/SView;
    new-instance v15, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v15}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    .line 3554
    .local v15, controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    const-wide/16 v5, 0x96

    invoke-virtual {v15, v5, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    .line 3555
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 3556
    new-instance v3, Lcom/htc/sunnyCore/view/Vector3F;

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v9, 0x3f80

    invoke-direct {v3, v5, v6, v9}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    new-instance v5, Lcom/htc/sunnyCore/view/Vector3F;

    const v6, 0x3e99999a

    const v9, 0x3e99999a

    const/high16 v10, 0x3f80

    invoke-direct {v5, v6, v9, v10}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v15, v3, v5}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 3557
    const/high16 v3, 0x437f

    invoke-virtual/range {v22 .. v22}, Lcom/htc/sunnyCore/view/SView;->getAlpha()F

    move-result v5

    mul-float/2addr v3, v5

    float-to-int v3, v3

    const/4 v5, 0x0

    invoke-virtual {v15, v3, v5}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 3559
    const/4 v3, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/view/SView;->setRenderOrder(I)V

    .line 3560
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/htc/sunnyCore/view/SView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto :goto_9

    .line 3563
    .end local v15           #controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    .end local v20           #del:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v22           #delView:Lcom/htc/sunnyCore/view/SView;
    :cond_23
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 3564
    .local v37, moveDown:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;>;"
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 3565
    .local v38, moveUp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;>;"
    new-instance v49, Landroid/util/SparseArray;

    invoke-direct/range {v49 .. v49}, Landroid/util/SparseArray;-><init>()V

    .line 3567
    .local v49, renderOrder:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    if-lez v45, :cond_29

    .line 3569
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v39

    .line 3570
    .local v39, nMappingCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v30, v0

    .restart local v30       #id:I
    :goto_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    move/from16 v0, v30

    if-gt v0, v3, :cond_29

    .line 3572
    move/from16 v0, v39

    move/from16 v1, v30

    if-gt v0, v1, :cond_25

    .line 3570
    :cond_24
    :goto_b
    add-int/lit8 v30, v30, 0x1

    goto :goto_a

    .line 3575
    :cond_25
    move-object/from16 v0, v35

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v43

    .line 3576
    .restart local v43       #oldIdx:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 3577
    .restart local v13       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget-object v0, v13, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    move-object/from16 v53, v0

    .line 3579
    .local v53, view:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->restorePreviousState_IRT(IILandroid/os/Bundle;)Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v47

    .line 3580
    .restart local v47       #pos:Lcom/htc/sunnyCore/view/Vector3F;
    move-object/from16 v0, v47

    iget v3, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    float-to-int v0, v3

    move/from16 v54, v0

    .line 3581
    .local v54, x:I
    move-object/from16 v0, v47

    iget v3, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    float-to-int v0, v3

    move/from16 v55, v0

    .line 3583
    .local v55, y:I
    invoke-virtual/range {v53 .. v53}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v33

    .line 3584
    .local v33, last:Lcom/htc/sunnyCore/view/Vector3F;
    move-object/from16 v0, v33

    iget v3, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    move/from16 v0, v54

    int-to-float v5, v0

    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_26

    move-object/from16 v0, v33

    iget v3, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v0, v55

    int-to-float v5, v0

    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_24

    .line 3585
    :cond_26
    new-instance v15, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v15}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    .line 3586
    .restart local v15       #controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    const-wide/16 v5, 0x96

    invoke-virtual {v15, v5, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    .line 3587
    new-instance v3, Lcom/htc/sunnyCore/view/Vector3F;

    move/from16 v0, v54

    int-to-float v5, v0

    move/from16 v0, v55

    int-to-float v6, v0

    const/4 v9, 0x0

    invoke-direct {v3, v5, v6, v9}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    move-object/from16 v0, v33

    invoke-virtual {v15, v3, v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 3588
    sget-object v3, Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;->DECELERATE:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v15, v3}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 3590
    invoke-virtual/range {v53 .. v53}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->getRenderOrder()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v49

    move/from16 v1, v30

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3592
    new-instance v12, Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v53

    invoke-direct {v12, v0, v1, v2, v15}, Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;ILcom/htc/sunnyCore/view/SView;Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 3593
    .local v12, anim:Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;
    move-object/from16 v0, v33

    iget v3, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v0, v55

    int-to-float v5, v0

    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v24

    .line 3594
    .local v24, down:I
    if-gez v24, :cond_27

    .line 3595
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v3, 0x3

    sub-int v3, v3, v30

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 3596
    move-object/from16 v0, v37

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 3598
    :cond_27
    if-ltz v24, :cond_28

    .line 3599
    add-int/lit8 v3, v30, 0x3

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 3600
    move-object/from16 v0, v38

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 3603
    :cond_28
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "What\'s up?"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3609
    .end local v12           #anim:Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;
    .end local v13           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v15           #controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    .end local v24           #down:I
    .end local v30           #id:I
    .end local v33           #last:Lcom/htc/sunnyCore/view/Vector3F;
    .end local v39           #nMappingCount:I
    .end local v43           #oldIdx:I
    .end local v47           #pos:Lcom/htc/sunnyCore/view/Vector3F;
    .end local v53           #view:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
    .end local v54           #x:I
    .end local v55           #y:I
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->cooperateAnimationItemId_IRT(Landroid/os/Bundle;)I

    move-result v16

    .line 3610
    .local v16, cooperateIdx:I
    const/4 v3, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_2d

    .line 3611
    const/4 v4, -0x1

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x96

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/htc/sunnyCore/widget/gridview/GridView;->startCooperateAnimation_IRT(IJJLandroid/os/Bundle;)V

    move/from16 v4, v16

    .line 3627
    .end local v16           #cooperateIdx:I
    .local v4, cooperateIdx:I
    :cond_2a
    :goto_c
    const/16 v36, 0x1

    .line 3629
    .local v36, move:I
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->size()I

    move-result v24

    .line 3630
    .restart local v24       #down:I
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v52

    .line 3631
    .local v52, up:I
    move/from16 v0, v24

    move/from16 v1, v52

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 3632
    .local v17, count:I
    const/16 v40, 0x0

    .line 3633
    .local v40, offset:I
    const/16 v51, 0x0

    .local v51, u:I
    add-int/lit8 v19, v24, -0x1

    .local v19, d:I
    :goto_d
    move/from16 v0, v51

    move/from16 v1, v17

    if-ge v0, v1, :cond_31

    .line 3634
    mul-int/lit8 v3, v36, 0x1e

    add-int/lit8 v40, v3, 0x78

    .line 3635
    const/4 v14, 0x0

    .line 3637
    .local v14, cha:Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;
    const/4 v3, -0x1

    move/from16 v0, v19

    if-le v0, v3, :cond_2b

    .line 3638
    move-object/from16 v0, v37

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #cha:Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;
    check-cast v14, Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;

    .line 3639
    .restart local v14       #cha:Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;
    iget-object v3, v14, Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;->controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    move/from16 v0, v40

    int-to-long v5, v0

    invoke-virtual {v3, v5, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setStartOffset(J)V

    .line 3640
    iget-object v3, v14, Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;->view:Lcom/htc/sunnyCore/view/SView;

    iget-object v5, v14, Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;->controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/view/SView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 3641
    const-string v3, "GridView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveDown id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v14, Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3644
    :cond_2b
    move/from16 v0, v51

    move/from16 v1, v52

    if-ge v0, v1, :cond_2c

    .line 3645
    move-object/from16 v0, v38

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #cha:Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;
    check-cast v14, Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;

    .line 3646
    .restart local v14       #cha:Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;
    iget-object v3, v14, Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;->controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    move/from16 v0, v40

    int-to-long v5, v0

    invoke-virtual {v3, v5, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setStartOffset(J)V

    .line 3647
    iget-object v3, v14, Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;->view:Lcom/htc/sunnyCore/view/SView;

    iget-object v5, v14, Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;->controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/view/SView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 3648
    const-string v3, "GridView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveUp id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v14, Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " offset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3651
    :cond_2c
    if-nez v14, :cond_2f

    .line 3633
    :goto_e
    add-int/lit8 v51, v51, 0x1

    add-int/lit8 v19, v19, -0x1

    goto/16 :goto_d

    .line 3614
    .end local v4           #cooperateIdx:I
    .end local v14           #cha:Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;
    .end local v17           #count:I
    .end local v19           #d:I
    .end local v24           #down:I
    .end local v36           #move:I
    .end local v40           #offset:I
    .end local v51           #u:I
    .end local v52           #up:I
    .restart local v16       #cooperateIdx:I
    :cond_2d
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v21

    .line 3615
    .restart local v21       #delIdx:I
    if-gez v21, :cond_2e

    .line 3616
    move/from16 v46, v16

    .line 3617
    .local v46, oriIdx:I
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 3618
    .end local v16           #cooperateIdx:I
    .restart local v4       #cooperateIdx:I
    const/4 v3, -0x1

    if-ne v4, v3, :cond_2a

    .line 3619
    const-string v3, "GridView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[startDataSetChangeAnimation_IRT] Can\'t get current id, original="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 3623
    .end local v4           #cooperateIdx:I
    .end local v46           #oriIdx:I
    .restart local v16       #cooperateIdx:I
    :cond_2e
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x96

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v3, p0

    move/from16 v4, v16

    invoke-virtual/range {v3 .. v9}, Lcom/htc/sunnyCore/widget/gridview/GridView;->startCooperateAnimation_IRT(IJJLandroid/os/Bundle;)V

    move/from16 v4, v16

    .end local v16           #cooperateIdx:I
    .restart local v4       #cooperateIdx:I
    goto/16 :goto_c

    .line 3653
    .end local v21           #delIdx:I
    .restart local v14       #cha:Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;
    .restart local v17       #count:I
    .restart local v19       #d:I
    .restart local v24       #down:I
    .restart local v36       #move:I
    .restart local v40       #offset:I
    .restart local v51       #u:I
    .restart local v52       #up:I
    :cond_2f
    iget v3, v14, Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;->id:I

    if-ne v4, v3, :cond_30

    .line 3654
    move/from16 v0, v40

    int-to-long v5, v0

    const-wide/16 v7, 0x96

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->bundleDataSetChangeAnimation:Landroid/os/Bundle;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/htc/sunnyCore/widget/gridview/GridView;->startCooperateAnimation_IRT(IJJLandroid/os/Bundle;)V

    .line 3657
    :cond_30
    invoke-virtual {v14}, Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;->clear()V

    .line 3659
    add-int/lit8 v36, v36, 0x1

    goto :goto_e

    .line 3662
    .end local v14           #cha:Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;
    :cond_31
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->clear()V

    .line 3663
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->clear()V

    .line 3665
    move-object/from16 v8, v48

    .line 3666
    .local v8, release1:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/Texture;>;"
    move-object/from16 v7, v23

    .line 3667
    .local v7, deleteCell2:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    new-instance v5, Lcom/htc/sunnyCore/widget/gridview/GridView$3;

    move-object/from16 v6, p0

    move-object/from16 v9, v49

    move-object/from16 v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/htc/sunnyCore/widget/gridview/GridView$3;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    mul-int/lit8 v6, v36, 0x1e

    add-int/lit8 v6, v6, 0x78

    add-int/lit16 v6, v6, 0x96

    int-to-long v9, v6

    invoke-virtual {v3, v5, v9, v10}, Lcom/htc/sunnyCore/RenderThreadHandler;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected addCellToRecycler(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)V
    .locals 2
    .parameter "cell"

    .prologue
    .line 4243
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    if-eqz v0, :cond_1

    .line 4244
    iget-object v0, p1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->getRenderOrder()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4245
    iget-object v0, p1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 4247
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 4249
    :cond_1
    return-void
.end method

.method public addView(Lcom/htc/sunnyCore/view/SView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 560
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in GridView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Lcom/htc/sunnyCore/view/SView;Z)V
    .locals 2
    .parameter "view"
    .parameter "bTopRender"

    .prologue
    .line 568
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in GridView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected calMaxDistanceToLeft(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)I
    .locals 4
    .parameter "screenItemFirst"

    .prologue
    .line 1945
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingLeft:I

    iget v3, p1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    sub-int v1, v2, v3

    .line 1946
    .local v1, maxDistanceToLeft:I
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 1948
    invoke-virtual {p1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v2

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 1946
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    sub-int/2addr v0, v2

    goto :goto_0

    .line 1951
    :cond_0
    return v1
.end method

.method protected calMaxDistanceToTop(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)I
    .locals 4
    .parameter "screenItemFirst"

    .prologue
    .line 1932
    iget v2, p1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    neg-int v2, v2

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingTop:I

    sub-int v1, v2, v3

    .line 1933
    .local v1, maxDistanceToTop:I
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 1935
    invoke-virtual {p1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v2

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 1933
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    sub-int/2addr v0, v2

    goto :goto_0

    .line 1938
    :cond_0
    return v1
.end method

.method protected calculateLayoutBestFit()Z
    .locals 1

    .prologue
    .line 1213
    const/4 v0, 0x0

    .line 1215
    .local v0, bResult:Z
    return v0
.end method

.method protected checkNewMediaListOnLayout(III)Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;
    .locals 11
    .parameter "oldFirstIdx"
    .parameter "oldFirstItemPositionX"
    .parameter "oldFirstItemPositionY"

    .prologue
    .line 710
    new-instance v1, Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;

    invoke-direct {v1, p0}, Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V

    .line 711
    .local v1, container:Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;
    iput p2, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionX:I

    .line 712
    iput p3, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionY:I

    .line 713
    iput p1, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;->oldFirstItemIndex:I

    .line 715
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 716
    :try_start_0
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewListItemCount:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_a

    .line 717
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-ne v5, v7, :cond_5

    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v5, :cond_5

    const/4 v0, 0x1

    .line 718
    .local v0, bRefresh:Z
    :goto_0
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunnyCore/IMediaList;

    iput-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 719
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v5

    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewListItemCount:I

    if-eq v5, v7, :cond_6

    .line 720
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v5

    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    .line 726
    :goto_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 727
    const/4 v5, -0x1

    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewListItemCount:I

    .line 728
    iget-boolean v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDoNotResetPreparatorFlag:Z

    if-eqz v5, :cond_7

    .line 730
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDoNotResetPreparatorFlag:Z

    .line 769
    :cond_0
    :goto_2
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    if-eqz v5, :cond_1

    .line 770
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    #calls: Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->setMediaList(Lcom/htc/sunnyCore/IMediaList;)V
    invoke-static {v5, v7}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->access$700(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;Lcom/htc/sunnyCore/IMediaList;)V

    .line 772
    :cond_1
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    if-eqz v5, :cond_2

    .line 773
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    invoke-virtual {v5}, Lcom/htc/widget/AbsFastScroller;->setSectionsDirty()V

    .line 775
    :cond_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRefreshMediaList:Z

    .line 791
    .end local v0           #bRefresh:Z
    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    const/4 v7, 0x1

    if-ge v5, v7, :cond_e

    .line 792
    :cond_4
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mInLayout:Z

    .line 793
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;->isEnd:Z

    .line 794
    monitor-exit v6

    .line 915
    :goto_4
    return-object v1

    .line 717
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 723
    .restart local v0       #bRefresh:Z
    :cond_6
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewListItemCount:I

    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    goto :goto_1

    .line 913
    .end local v0           #bRefresh:Z
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 734
    .restart local v0       #bRefresh:Z
    :cond_7
    :try_start_1
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    if-eqz v5, :cond_0

    .line 735
    if-eqz v0, :cond_8

    .line 736
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;->refresh(ILcom/htc/sunnyCore/IMediaList;IZ)Ljava/util/List;

    .line 738
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v5, :cond_0

    .line 739
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;->bSetNewList:Z

    goto :goto_2

    .line 746
    :cond_8
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    .line 747
    .local v4, preparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;
    const/4 v5, 0x1

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;->isMediaListBinded()Z

    move-result v7

    if-ne v5, v7, :cond_9

    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;->getBindedMediaList()Lcom/htc/sunnyCore/IMediaList;

    move-result-object v7

    if-eq v5, v7, :cond_0

    .line 753
    :cond_9
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;->unbind(I)V

    .line 754
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v8, v9}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;->bind(ILcom/htc/sunnyCore/IMediaList;I)V

    .line 756
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v5, :cond_0

    .line 757
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;->bSetNewList:Z

    goto :goto_2

    .line 777
    .end local v0           #bRefresh:Z
    .end local v4           #preparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;
    :cond_a
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    iget-boolean v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRefreshMediaList:Z

    if-eq v5, v7, :cond_b

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v7}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v7

    if-eq v5, v7, :cond_3

    .line 778
    :cond_b
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v5}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v5

    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    .line 779
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    if-eqz v5, :cond_c

    .line 780
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;->refresh(ILcom/htc/sunnyCore/IMediaList;IZ)Ljava/util/List;

    .line 782
    :cond_c
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    if-eqz v5, :cond_d

    .line 783
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    invoke-virtual {v5}, Lcom/htc/widget/AbsFastScroller;->setSectionsDirty()V

    .line 785
    :cond_d
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRefreshMediaList:Z

    goto/16 :goto_3

    .line 797
    :cond_e
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewNumColumn:I

    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    if-eq v5, v7, :cond_f

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewNumColumn:I

    const/high16 v7, -0x8000

    if-eq v5, v7, :cond_f

    .line 798
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewNumColumn:I

    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    .line 799
    const/high16 v5, -0x8000

    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewNumColumn:I

    .line 802
    :cond_f
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewNumRow:I

    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    if-eq v5, v7, :cond_10

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewNumRow:I

    const/high16 v7, -0x8000

    if-eq v5, v7, :cond_10

    .line 803
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewNumRow:I

    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    .line 804
    const/high16 v5, -0x8000

    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewNumRow:I

    .line 807
    :cond_10
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewVerticalSpacing:I

    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVerticalSpacing:I

    if-eq v5, v7, :cond_11

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewVerticalSpacing:I

    const/high16 v7, -0x8000

    if-eq v5, v7, :cond_11

    .line 808
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewVerticalSpacing:I

    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVerticalSpacing:I

    .line 809
    const/high16 v5, -0x8000

    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewVerticalSpacing:I

    .line 812
    :cond_11
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewHorizontalSpacing:I

    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    if-eq v5, v7, :cond_12

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewHorizontalSpacing:I

    const/high16 v7, -0x8000

    if-eq v5, v7, :cond_12

    .line 813
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewHorizontalSpacing:I

    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    .line 814
    const/high16 v5, -0x8000

    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewHorizontalSpacing:I

    .line 817
    :cond_12
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewOrientation:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_13

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewOrientation:I

    if-eq v5, v7, :cond_13

    .line 818
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewOrientation:I

    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    .line 819
    const/4 v5, -0x1

    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewOrientation:I

    .line 821
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    if-eqz v5, :cond_13

    .line 822
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_19

    .line 823
    new-instance v5, Lcom/htc/widget/AbsFastScroller;

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    const/4 v9, 0x1

    invoke-direct {v5, v7, v8, v9}, Lcom/htc/widget/AbsFastScroller;-><init>(Landroid/content/Context;Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;I)V

    iput-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    .line 830
    :goto_5
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    #calls: Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->setFastScroller(Lcom/htc/widget/AbsFastScroller;)V
    invoke-static {v5, v7}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->access$400(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;Lcom/htc/widget/AbsFastScroller;)V

    .line 831
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    #calls: Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->setMediaList(Lcom/htc/sunnyCore/IMediaList;)V
    invoke-static {v5, v7}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->access$700(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;Lcom/htc/sunnyCore/IMediaList;)V

    .line 835
    :cond_13
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewOrientation:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_14

    .line 836
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDisableFastScrollerTouchEvent:Z

    .line 840
    :cond_14
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->enableSingleItemPrototype()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 842
    const/4 v2, 0x0

    .line 843
    .local v2, isColumnNumChange:Z
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1a

    .line 844
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->columnBestFit()Z

    move-result v2

    .line 848
    :goto_6
    const/4 v5, 0x1

    if-ne v5, v2, :cond_15

    .line 850
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    if-eqz v5, :cond_15

    .line 851
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    invoke-virtual {v5}, Lcom/htc/widget/AbsFastScroller;->setSectionsDirty()V

    .line 860
    .end local v2           #isColumnNumChange:Z
    :cond_15
    :goto_7
    const/4 v5, 0x1

    iget-boolean v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingChanged:Z

    if-ne v5, v7, :cond_16

    .line 861
    const v5, 0x7fffffff

    iput v5, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionX:I

    .line 862
    const v5, 0x7fffffff

    iput v5, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionY:I

    .line 863
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingChanged:Z

    .line 866
    :cond_16
    const/4 v5, -0x1

    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mResurrectToIdx:I

    if-eq v5, v7, :cond_1e

    .line 867
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mResurrectToIdx:I

    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedIdx:I

    .line 868
    const/4 v5, -0x1

    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mResurrectToIdx:I

    .line 871
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedIdx:I

    if-gez v5, :cond_17

    .line 872
    if-ltz p1, :cond_1c

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ge p1, v5, :cond_1c

    .line 873
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedIdx:I

    .line 881
    :cond_17
    :goto_8
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-lez v5, :cond_1d

    .line 882
    const/4 v5, 0x0

    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedIdx:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedIdx:I

    .line 883
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedIdx:I

    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedIdx:I

    .line 887
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mResurrectToOldFirstIndexPositionY:I

    const v7, 0x7fffffff

    if-eq v5, v7, :cond_18

    .line 888
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedIdx:I

    iput v5, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;->oldFirstItemIndex:I

    .line 889
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mResurrectToOldFirstIndexPositionY:I

    iput v5, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionY:I

    .line 890
    const v5, 0x7fffffff

    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mResurrectToOldFirstIndexPositionY:I

    .line 897
    :cond_18
    :goto_9
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedIdx:I

    invoke-virtual {p0, v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->resetLastIdxInOnLayout(I)I

    move-result v5

    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    .line 912
    :goto_a
    const v5, 0x7fffffff

    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .line 913
    monitor-exit v6

    goto/16 :goto_4

    .line 827
    :cond_19
    new-instance v5, Lcom/htc/widget/AbsFastScroller;

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    const/4 v9, 0x0

    invoke-direct {v5, v7, v8, v9}, Lcom/htc/widget/AbsFastScroller;-><init>(Landroid/content/Context;Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;I)V

    iput-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    goto/16 :goto_5

    .line 846
    .restart local v2       #isColumnNumChange:Z
    :cond_1a
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->rowBestFit()Z

    move-result v2

    goto/16 :goto_6

    .line 857
    .end local v2           #isColumnNumChange:Z
    :cond_1b
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->calculateLayoutBestFit()Z

    goto :goto_7

    .line 876
    :cond_1c
    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedIdx:I

    goto :goto_8

    .line 894
    :cond_1d
    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedIdx:I

    goto :goto_9

    .line 901
    :cond_1e
    const/4 v3, -0x1

    .line 902
    .local v3, last:I
    if-ltz p1, :cond_1f

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ge p1, v5, :cond_1f

    .line 903
    move v3, p1

    .line 909
    :goto_b
    invoke-virtual {p0, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->resetLastIdxInOnLayout(I)I

    move-result v5

    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_a

    .line 906
    :cond_1f
    const/4 v3, 0x0

    goto :goto_b
.end method

.method public checkSetMediaListComplete_block()V
    .locals 4

    .prologue
    .line 654
    :goto_0
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 656
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mInLayout:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewListItemCount:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRefreshMediaList:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    .line 658
    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    return-void

    .line 660
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 664
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

    .line 662
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected columnBestFit()Z
    .locals 14

    .prologue
    .line 1221
    const/4 v7, 0x0

    .line 1222
    .local v7, isChange:Z
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    if-eqz v1, :cond_7

    .line 1226
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingLeft:I

    .line 1227
    .local v3, startX:I
    const/4 v10, 0x0

    .line 1228
    .local v10, totalItemWidth:I
    iget v13, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewWidth:I

    .line 1229
    .local v13, width:I
    const/4 v9, -0x1

    .line 1231
    .local v9, numColumn:I
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 1233
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 1234
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->create()Lcom/htc/sunnyCore/ViewItem;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/ViewItem;)V

    .line 1236
    .restart local v0       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->link(ILcom/htc/sunnyCore/IMediaData;III)V

    .line 1238
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v12

    .line 1240
    .local v12, w:I
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->unlink()V

    .line 1241
    iget-object v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const v2, 0x7f7fffff

    const v4, 0x7f7fffff

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 1242
    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)V

    .line 1244
    const/4 v1, 0x1

    if-ge v12, v1, :cond_1

    .line 1245
    const-string v1, "GridView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][GridView][columnBestFit]: GridViewItem with illegal width="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    :cond_1
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingRight:I

    add-int/2addr v3, v1

    .line 1248
    iget v11, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVerticalSpacing:I

    .line 1249
    .local v11, verticalSpacing:I
    const/4 v8, 0x0

    .line 1250
    .local v8, j:I
    :goto_0
    add-int v1, v12, v11

    add-int/2addr v3, v1

    .line 1251
    add-int v1, v13, v11

    if-le v3, v1, :cond_8

    .line 1252
    move v9, v8

    .line 1258
    if-gez v9, :cond_2

    .line 1259
    iget v9, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    .line 1262
    :cond_2
    const/4 v1, 0x1

    if-le v1, v9, :cond_3

    .line 1263
    const/4 v9, 0x1

    .line 1266
    :cond_3
    sget-boolean v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "GridView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][GridView][columnBestFit]: mNumColumn="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", numColumn="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", totalItemWidth="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", width="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    :cond_4
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    if-eq v9, v1, :cond_5

    .line 1269
    iput v9, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    .line 1270
    const/4 v7, 0x1

    .line 1273
    :cond_5
    if-lez v9, :cond_7

    .line 1274
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingLeft:I

    sub-int v1, v13, v1

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingRight:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v10

    add-int/lit8 v2, v9, -0x1

    mul-int/2addr v2, v11

    sub-int/2addr v1, v2

    div-int/lit8 v6, v1, 0x2

    .line 1275
    .local v6, extraPaddingLeft:I
    if-gez v6, :cond_6

    .line 1276
    const/4 v6, 0x0

    .line 1278
    :cond_6
    iput v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mExtraPaddingLeft:I

    .line 1281
    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v3           #startX:I
    .end local v6           #extraPaddingLeft:I
    .end local v8           #j:I
    .end local v9           #numColumn:I
    .end local v10           #totalItemWidth:I
    .end local v11           #verticalSpacing:I
    .end local v12           #w:I
    .end local v13           #width:I
    :cond_7
    return v7

    .line 1256
    .restart local v0       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .restart local v3       #startX:I
    .restart local v8       #j:I
    .restart local v9       #numColumn:I
    .restart local v10       #totalItemWidth:I
    .restart local v11       #verticalSpacing:I
    .restart local v12       #w:I
    .restart local v13       #width:I
    :cond_8
    add-int/2addr v10, v12

    .line 1249
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 4405
    const/4 v0, 0x0

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 4413
    const/4 v0, 0x0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 4421
    const/4 v0, 0x0

    return v0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 4381
    const/4 v0, 0x0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 4389
    const/4 v0, 0x0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 4397
    const/4 v0, 0x0

    return v0
.end method

.method protected cooperateAnimationItemId_IRT(Landroid/os/Bundle;)I
    .locals 1
    .parameter "bundle"

    .prologue
    .line 3337
    const/4 v0, -0x1

    return v0
.end method

.method createContextMenuInfo(IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1978
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/GridView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/htc/sunnyCore/widget/gridview/GridView$AdapterContextMenuInfo;-><init>(IJ)V

    return-object v0
.end method

.method public createResource()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 435
    invoke-super {p0}, Lcom/htc/sunnyCore/view/SViewGroup;->createResource()V

    .line 437
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 439
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-direct {v0, p0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/RenderThread;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;

    .line 441
    invoke-static {}, Lcom/htc/sunnyCore/SceneNode;->obtain()Lcom/htc/sunnyCore/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunnyCore/SceneNode;

    .line 442
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->addSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 443
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/SceneNode;->setRenderOrder(I)V

    .line 446
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    invoke-direct {v0, p0, p0}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/widget/gridview/GridView;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    .line 447
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    if-ne v0, v3, :cond_4

    .line 448
    new-instance v0, Lcom/htc/widget/AbsFastScroller;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/widget/AbsFastScroller;-><init>(Landroid/content/Context;Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;I)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    .line 455
    :goto_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    #calls: Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->setFastScroller(Lcom/htc/widget/AbsFastScroller;)V
    invoke-static {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->access$400(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;Lcom/htc/widget/AbsFastScroller;)V

    .line 457
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->isEnableSkipSetSelection()Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 459
    invoke-static {}, Lcom/htc/sunnyCore/Sprite;->obtain()Lcom/htc/sunnyCore/Sprite;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDraggingBlurSprite:Lcom/htc/sunnyCore/Sprite;

    .line 460
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDraggingBlurSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 461
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDraggingBlurSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite;->setRenderOrder(I)V

    .line 462
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDraggingBlurSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    .line 465
    :cond_0
    invoke-static {}, Lcom/htc/sunnyCore/SceneNode;->obtain()Lcom/htc/sunnyCore/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRootNode:Lcom/htc/sunnyCore/SceneNode;

    .line 466
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRootNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->addSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 468
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    if-eqz v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-virtual {v0, v4, v1, v4}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;->bind(ILcom/htc/sunnyCore/IMediaList;I)V

    .line 471
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunnyCore/widget/gridview/GridView$ForcePreparatorLoadVisibleItemsFromCache;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$ForcePreparatorLoadVisibleItemsFromCache;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/widget/gridview/GridView$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushPreparationIRT(Lcom/htc/sunnyCore/RenderThreadPreparation;)Z

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_3

    .line 477
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 479
    :cond_3
    return-void

    .line 452
    :cond_4
    new-instance v0, Lcom/htc/widget/AbsFastScroller;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    invoke-direct {v0, v1, v2, v4}, Lcom/htc/widget/AbsFastScroller;-><init>(Landroid/content/Context;Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;I)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    goto :goto_0
.end method

.method protected createScrollerItemInfoGetter()Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;
    .locals 1

    .prologue
    .line 291
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/widget/gridview/GridView$ScrollerItemInfoGetter;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V

    return-object v0
.end method

.method public disableLayoutRequest(Z)V
    .locals 4
    .parameter "bDisabled"

    .prologue
    .line 4305
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->LayoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4306
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDisableLayoutRequest:Z

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 4317
    :goto_0
    return-void

    .line 4308
    :cond_0
    sget-boolean v0, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "GridView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Gridview][disableLayoutRequest] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4310
    :cond_1
    iput-boolean p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDisableLayoutRequest:Z

    .line 4312
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDisableLayoutRequest:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHasLayoutRequest:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 4313
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->requestLayout()V

    .line 4315
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHasLayoutRequest:Z

    .line 4316
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected doBounceBack(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)Z
    .locals 8
    .parameter "screenItemFirst"
    .parameter "screenItemLast"

    .prologue
    .line 1830
    const/4 v0, 0x0

    .line 1831
    .local v0, bResult:Z
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-nez v5, :cond_1

    :cond_0
    move v1, v0

    .line 1922
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1834
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-ltz v5, :cond_2

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_3

    :cond_2
    move v1, v0

    .line 1835
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1837
    .end local v1           #bResult:I
    :cond_3
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    move v1, v0

    .line 1838
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1840
    .end local v1           #bResult:I
    :cond_5
    const/4 v2, 0x0

    .line 1841
    .local v2, distanceToAligned:I
    const v4, 0x7fffffff

    .line 1850
    .local v4, maxDistanceToTop:I
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 1855
    iget v5, p1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingTop:I

    neg-int v6, v6

    if-lt v5, v6, :cond_6

    .line 1857
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->calMaxDistanceToTop(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)I

    move-result v4

    .line 1863
    :cond_6
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    if-nez v5, :cond_a

    iget v5, p1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingTop:I

    neg-int v6, v6

    if-ge v5, v6, :cond_a

    .line 1865
    iget v5, p1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    neg-int v5, v5

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingTop:I

    sub-int v2, v5, v6

    .line 1866
    sget-boolean v5, Lcom/htc/sunnyCore/widget/gridview/GridView;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "GridView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][Gridview][doBounceBack]: 2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    :cond_7
    :goto_1
    if-gez v2, :cond_e

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_e

    .line 1897
    move v2, v4

    .line 1898
    sget-boolean v5, Lcom/htc/sunnyCore/widget/gridview/GridView;->DEBUG:Z

    if-eqz v5, :cond_8

    const-string v5, "GridView"

    const-string v6, "[HTCAlbum][Gridview][doBounceBack]: 4"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    :cond_8
    :goto_2
    if-nez v2, :cond_f

    .line 1909
    sget-boolean v5, Lcom/htc/sunnyCore/widget/gridview/GridView;->DEBUG:Z

    if-eqz v5, :cond_9

    const-string v5, "GridView"

    const-string v6, "[HTCAlbum][Gridview][doBounceBack]: 6"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move v1, v0

    .line 1910
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1868
    .end local v1           #bResult:I
    :cond_a
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ne v5, v6, :cond_7

    iget v5, p2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {p2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getExtraPaddingRear()I

    move-result v6

    sub-int/2addr v5, v6

    if-lez v5, :cond_7

    .line 1871
    iget v5, p2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {p2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getExtraPaddingRear()I

    move-result v6

    sub-int/2addr v5, v6

    neg-int v2, v5

    .line 1872
    sget-boolean v5, Lcom/htc/sunnyCore/widget/gridview/GridView;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "GridView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][Gridview][doBounceBack]: 3: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1876
    :cond_b
    iget v5, p1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingLeft:I

    if-gt v5, v6, :cond_c

    .line 1878
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->calMaxDistanceToLeft(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)I

    move-result v5

    rsub-int/lit8 v4, v5, 0x0

    .line 1880
    :cond_c
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    if-nez v5, :cond_d

    iget v5, p1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingLeft:I

    if-le v5, v6, :cond_d

    .line 1882
    iget v5, p1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingLeft:I

    sub-int v2, v5, v6

    .line 1883
    sget-boolean v5, Lcom/htc/sunnyCore/widget/gridview/GridView;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "GridView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][Gridview][doBounceBack]: 2.1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1885
    :cond_d
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ne v5, v6, :cond_7

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewWidth:I

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingRight:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getExtraPaddingRear()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {p2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    if-lez v5, :cond_7

    .line 1888
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewWidth:I

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingRight:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getExtraPaddingRear()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {p2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    neg-int v2, v5

    .line 1889
    sget-boolean v5, Lcom/htc/sunnyCore/widget/gridview/GridView;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "GridView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][Gridview][doBounceBack]: 3.1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1902
    :cond_e
    sget-boolean v5, Lcom/htc/sunnyCore/widget/gridview/GridView;->DEBUG:Z

    if-eqz v5, :cond_8

    const-string v5, "GridView"

    const-string v6, "[HTCAlbum][Gridview][doBounceBack]: 5"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1913
    :cond_f
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v6, "GridFlingingAction"

    invoke-virtual {v5, p0, v6}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v3

    .line 1914
    .local v3, gridFlingingAction:Lcom/htc/sunnyCore/RenderThreadAction;
    if-eqz v3, :cond_10

    .line 1916
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v5, v3}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 1919
    :cond_10
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    new-instance v6, Lcom/htc/sunnyCore/widget/gridview/resource/DurationTunerFling;

    invoke-direct {v6}, Lcom/htc/sunnyCore/widget/gridview/resource/DurationTunerFling;-><init>()V

    invoke-virtual {v5, v2, v6}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->flingByDistance(ILcom/htc/sunnyCore/widget/gridview/interfaces/IScrollerDuration;)V

    .line 1920
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v6, Lcom/htc/sunnyCore/widget/gridview/GridView$GridFlingingAction;

    const-string v7, "gridBouncingAction"

    invoke-direct {v6, p0, p0, v7}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridFlingingAction;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 1921
    const/4 v0, 0x1

    move v1, v0

    .line 1922
    .restart local v1       #bResult:I
    goto/16 :goto_0
.end method

.method public enablePinOnItemScroll()V
    .locals 1

    .prologue
    .line 4155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mEnablePinOnItemScroll:Z

    .line 4156
    return-void
.end method

.method protected enableSingleItemPrototype()Z
    .locals 1

    .prologue
    .line 954
    const/4 v0, 0x1

    return v0
.end method

.method public enableSkipPreparatorDecodeDirection(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2778
    iput-boolean p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mIsPreparatorSkipDecodeDirection:Z

    .line 2779
    return-void
.end method

.method protected fillDown()V
    .locals 9

    .prologue
    .line 2871
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    .line 2872
    .local v4, onScreenItems:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;>;"
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewHeight:I

    .line 2873
    .local v3, gvViewHeight:I
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    .line 2875
    .local v2, count:I
    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2876
    .local v1, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-nez v1, :cond_0

    .line 2877
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cell="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mLastIdx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2880
    :cond_0
    iget v6, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getHorizontalSpacingToNextRow(I)I

    move-result v7

    sub-int v0, v6, v7

    .line 2881
    .local v0, bottom:I
    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v5, v6, 0x1

    .line 2882
    .local v5, startIdx:I
    :goto_0
    neg-int v6, v3

    if-le v0, v6, :cond_2

    if-ge v5, v2, :cond_2

    .line 2883
    if-lt v5, v2, :cond_1

    .line 2884
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cell="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mLastIdx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2887
    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v6, v0, v7}, Lcom/htc/sunnyCore/widget/gridview/GridView;->makeItemRow(IIIZ)I

    .line 2889
    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2890
    .restart local v1       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget v6, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getHorizontalSpacingToNextRow(I)I

    move-result v7

    sub-int v0, v6, v7

    .line 2891
    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v5, v6, 0x1

    goto :goto_0

    .line 2893
    :cond_2
    return-void
.end method

.method protected fillLeft()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2926
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2927
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 2928
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cell="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFirstIdx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2932
    :cond_0
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    sub-int v2, v3, v4

    .line 2933
    .local v2, startIdx:I
    :goto_0
    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {p0, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    if-le v3, v4, :cond_2

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    .line 2934
    if-gez v2, :cond_1

    .line 2935
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cell="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFirstIdx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2938
    :cond_1
    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 2939
    .local v1, newLeft:I
    invoke-virtual {p0, v2, v1, v5, v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->makeItemColumn(IIIZ)I

    .line 2941
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2942
    .restart local v0       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    sub-int/2addr v2, v3

    .line 2943
    goto :goto_0

    .line 2944
    .end local v1           #newLeft:I
    :cond_2
    return-void
.end method

.method protected fillRight()V
    .locals 7

    .prologue
    .line 2899
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    .line 2901
    .local v1, count:I
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2902
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 2903
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cell="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLastIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2907
    :cond_0
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v4, 0x1

    .line 2908
    .local v3, startIdx:I
    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v5

    add-int v2, v4, v5

    .line 2909
    .local v2, right:I
    :goto_0
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewWidth:I

    if-ge v2, v4, :cond_2

    if-ge v3, v1, :cond_2

    .line 2910
    if-lt v3, v1, :cond_1

    .line 2911
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cell="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLastIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2914
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v2, v4, v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->makeItemColumn(IIIZ)I

    .line 2916
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2917
    .restart local v0       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v4, 0x1

    .line 2918
    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v5

    add-int v2, v4, v5

    goto :goto_0

    .line 2920
    :cond_2
    return-void
.end method

.method protected fillUp()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2845
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    .line 2846
    .local v4, onScreenItems:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;>;"
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    .line 2847
    .local v1, horizontalSpacing:I
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    .line 2849
    .local v3, numColumn:I
    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2850
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 2851
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cell="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mFirstIdx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2853
    :cond_0
    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    sub-int v5, v6, v3

    .line 2854
    .local v5, startIdx:I
    :goto_0
    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    rsub-int/lit8 v7, v1, 0x0

    if-ge v6, v7, :cond_2

    const/4 v6, -0x1

    if-le v5, v6, :cond_2

    .line 2855
    if-gez v5, :cond_1

    .line 2856
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cell="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mFirstIdx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2859
    :cond_1
    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v7

    add-int/2addr v6, v7

    add-int v2, v6, v1

    .line 2860
    .local v2, newTop:I
    invoke-virtual {p0, v5, v8, v2, v8}, Lcom/htc/sunnyCore/widget/gridview/GridView;->makeItemRow(IIIZ)I

    .line 2862
    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2863
    .restart local v0       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    sub-int/2addr v5, v3

    .line 2864
    goto :goto_0

    .line 2865
    .end local v2           #newTop:I
    :cond_2
    return-void
.end method

.method public freeInvisibleResource()V
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunnyCore/widget/gridview/GridView$1;

    invoke-direct {v1, p0}, Lcom/htc/sunnyCore/widget/gridview/GridView$1;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 647
    return-void
.end method

.method public freeResource()V
    .locals 7

    .prologue
    const v6, 0x7f7fffff

    const/4 v5, 0x0

    .line 485
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;

    if-eqz v3, :cond_0

    .line 486
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;->release()V

    .line 487
    iput-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;

    .line 494
    :cond_0
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    if-eqz v3, :cond_1

    .line 495
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->destroy(Lcom/htc/sunnyCore/SceneNode;)V

    .line 498
    :cond_1
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {p0, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->removeSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 499
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/SceneNode;->release()V

    .line 500
    iput-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunnyCore/SceneNode;

    .line 502
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDraggingBlurTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v3, :cond_2

    .line 503
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDraggingBlurTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 504
    iput-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDraggingBlurTexture:Lcom/htc/sunnyCore/Texture;

    .line 507
    :cond_2
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDraggingBlurSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v3, :cond_3

    .line 508
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDraggingBlurSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {p0, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 509
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDraggingBlurSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 510
    iput-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDraggingBlurSprite:Lcom/htc/sunnyCore/Sprite;

    .line 513
    :cond_3
    iput-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 517
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    if-eqz v3, :cond_4

    .line 518
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/RenderThread;->removePreparationIRT(Lcom/htc/sunnyCore/RenderThreadPreparation;)Z

    .line 519
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;->unbind(I)V

    .line 520
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;->deInit()V

    .line 521
    iput-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    .line 524
    :cond_4
    sget-boolean v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "GridView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mContext: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "childCount ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mChildNodeCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mOnScreenItems size ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", recycle count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_5
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eqz v3, :cond_8

    .line 527
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-gt v1, v3, :cond_7

    .line 528
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 529
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-nez v0, :cond_6

    .line 527
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 532
    :cond_6
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->unlink()V

    .line 533
    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v6, v4}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 534
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->recycle()V

    goto :goto_1

    .line 536
    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_7
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 538
    const v3, 0x7fffffff

    iput v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .line 539
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    .line 542
    .end local v1           #i:I
    :cond_8
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-eqz v3, :cond_a

    .line 543
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 544
    .restart local v0       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->recycle()V

    goto :goto_2

    .line 546
    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_9
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    .line 549
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_a
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRootNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {p0, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->removeSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 550
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRootNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/SceneNode;->release()V

    .line 552
    invoke-super {p0}, Lcom/htc/sunnyCore/view/SViewGroup;->freeResource()V

    .line 553
    return-void
.end method

.method public bridge synthetic getChild(I)Lcom/htc/sunnyCore/SceneNode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getChild(I)Lcom/htc/sunnyCore/view/SView;

    move-result-object v0

    return-object v0
.end method

.method public getChild(I)Lcom/htc/sunnyCore/view/SView;
    .locals 4
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 603
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-nez v2, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-object v1

    .line 605
    :cond_1
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 606
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_0

    .line 608
    iget-object v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    goto :goto_0
.end method

.method public getChildrenCount()I
    .locals 2

    .prologue
    .line 595
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method getCount()I
    .locals 2

    .prologue
    .line 3061
    const/4 v0, 0x0

    .line 3062
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v1, :cond_0

    .line 3063
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    .line 3065
    :cond_0
    return v0
.end method

.method protected getExtraPaddingRear()I
    .locals 1

    .prologue
    .line 1961
    const/4 v0, 0x0

    return v0
.end method

.method public getFirstIndexPostion()I
    .locals 6

    .prologue
    .line 683
    const v1, 0x7fffffff

    .line 685
    .local v1, posY:I
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 686
    :try_start_0
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    const/4 v4, -0x1

    if-le v2, v4, :cond_0

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v4, 0x7fffffff

    if-eq v2, v4, :cond_0

    .line 694
    :try_start_1
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    iget v1, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 701
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 703
    return v1

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "GridView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GridView][getFirstIndexPostion] can\'t get item from mOnScreenItems "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const v1, 0x7fffffff

    goto :goto_0

    .line 701
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getFirstVisiblePosition()I
    .locals 2

    .prologue
    .line 1498
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-lt v0, v1, :cond_1

    .line 1499
    :cond_0
    const/4 v0, -0x1

    .line 1501
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    goto :goto_0
.end method

.method public getGLViewHeight()I
    .locals 1

    .prologue
    .line 4144
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewHeight:I

    return v0
.end method

.method public getGridViewItem(I)Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 3047
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getGridViewItemLock(I)Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    move-result-object v0

    return-object v0
.end method

.method protected getHorizontalSpacingToNextRow(I)I
    .locals 1
    .parameter "startIdx"

    .prologue
    .line 1387
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 1513
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-lt v0, v1, :cond_1

    .line 1514
    :cond_0
    const/4 v0, -0x1

    .line 1516
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    goto :goto_0
.end method

.method protected getLevelNumberByItem(I)I
    .locals 3
    .parameter "onScreenIdx"

    .prologue
    .line 2489
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    .line 2491
    .local v0, modBase:I
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2492
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    .line 2495
    :cond_0
    div-int v1, p1, v0

    return v1
.end method

.method public getMediaList()Lcom/htc/sunnyCore/IMediaList;
    .locals 1

    .prologue
    .line 3072
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    return-object v0
.end method

.method public getNumColumn()I
    .locals 1

    .prologue
    .line 1404
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    return v0
.end method

.method public getNumRow()I
    .locals 1

    .prologue
    .line 1414
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    return v0
.end method

.method public getOnFullScreenTransitionEndListener()Lcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;
    .locals 1

    .prologue
    .line 4282
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnFullScreenTransitionEndListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;

    return-object v0
.end method

.method protected getPreviousRowInfomation(ILcom/htc/sunnyCore/widget/gridview/GridView$Cell;)Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;
    .locals 3
    .parameter "currentRowStartIdx"
    .parameter "currentCell"

    .prologue
    .line 3351
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V

    .line 3352
    .local v0, info:Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    sub-int v1, p1, v1

    iput v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;->rowId:I

    .line 3353
    iget v1, p2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {p2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;->startY:I

    .line 3354
    return-object v0
.end method

.method public getRootNode()Lcom/htc/sunnyCore/SceneNode;
    .locals 1

    .prologue
    .line 4184
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRootNode:Lcom/htc/sunnyCore/SceneNode;

    return-object v0
.end method

.method public getScreenItemBottom()I
    .locals 6

    .prologue
    .line 4198
    const/4 v1, 0x0

    .line 4200
    .local v1, nBottom:I
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 4201
    .local v3, nCount:I
    if-gtz v3, :cond_0

    move v2, v1

    .line 4214
    .end local v1           #nBottom:I
    .local v2, nBottom:I
    :goto_0
    return v2

    .line 4204
    .end local v2           #nBottom:I
    .restart local v1       #nBottom:I
    :cond_0
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 4205
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-nez v0, :cond_1

    move v2, v1

    .line 4206
    .end local v1           #nBottom:I
    .restart local v2       #nBottom:I
    goto :goto_0

    .line 4208
    .end local v2           #nBottom:I
    .restart local v1       #nBottom:I
    :cond_1
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_2

    .line 4209
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v4

    mul-int/lit8 v1, v4, 0x5

    :goto_1
    move v2, v1

    .line 4214
    .end local v1           #nBottom:I
    .restart local v2       #nBottom:I
    goto :goto_0

    .line 4211
    .end local v2           #nBottom:I
    .restart local v1       #nBottom:I
    :cond_2
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v4

    mul-int/lit8 v1, v4, 0x4

    goto :goto_1
.end method

.method public getScreenItemTop()I
    .locals 1

    .prologue
    .line 4191
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedItemPosition()I
    .locals 3

    .prologue
    .line 1479
    const/4 v0, -0x1

    .line 1480
    .local v0, id:I
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1481
    :try_start_0
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mResurrectToIdx:I

    .line 1482
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1483
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1484
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedIdx:I

    .line 1486
    :cond_0
    return v0

    .line 1482
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getSkipSelectionAlpha()F
    .locals 1

    .prologue
    .line 4373
    const v0, 0x3ecccccd

    return v0
.end method

.method public getSunnyEnvironment()I
    .locals 1

    .prologue
    .line 3020
    invoke-static {}, Lcom/htc/sunnyCore/SunnyEnvironment;->instance()Lcom/htc/sunnyCore/SunnyEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SunnyEnvironment;->getHandler()I

    move-result v0

    return v0
.end method

.method protected getValidIndexDuringFastScroller(I)I
    .locals 0
    .parameter "index"

    .prologue
    .line 4294
    return p1
.end method

.method protected getVerticalSpacingToNextColumn(I)I
    .locals 1
    .parameter "startIdx"

    .prologue
    .line 1394
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVerticalSpacing:I

    return v0
.end method

.method public getViewItemCount()I
    .locals 2

    .prologue
    .line 3054
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasChild()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 584
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    .line 587
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected invokeOnItemScrollListener()V
    .locals 7

    .prologue
    .line 2802
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .line 2803
    .local v0, first:I
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 2804
    .local v2, visCount:I
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    .line 2805
    .local v1, totCount:I
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;

    if-eqz v3, :cond_0

    .line 2806
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;

    invoke-interface {v3, p0, v0, v2, v1}, Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;->onScrollIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;III)V

    .line 2808
    :cond_0
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    if-eqz v3, :cond_1

    .line 2809
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;->setVisibleRange(III)V

    .line 2811
    :cond_1
    return-void
.end method

.method protected isEnableSkipSetSelection()Z
    .locals 1

    .prologue
    .line 4365
    const/4 v0, 0x0

    return v0
.end method

.method protected makeItemColumn(IIIZ)I
    .locals 12
    .parameter "startIdx"
    .parameter "startX"
    .parameter "startY"
    .parameter "scrollRight"

    .prologue
    .line 1335
    iget v10, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    .line 1336
    .local v10, total:I
    const/4 v7, 0x0

    .line 1337
    .local v7, W:I
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingTop:I

    neg-int v3, v3

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mExtraPaddingTop:I

    sub-int/2addr v3, v4

    add-int/2addr p3, v3

    .line 1339
    move v2, p1

    .local v2, idx:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_0
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    if-ge v9, v3, :cond_5

    if-ge v2, v10, :cond_5

    .line 1340
    const/4 v1, 0x0

    .line 1342
    .local v1, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    move-object v1, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1348
    :goto_1
    if-nez v1, :cond_0

    .line 1349
    new-instance v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .end local v1           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->create()Lcom/htc/sunnyCore/ViewItem;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/ViewItem;)V

    .line 1351
    .restart local v1       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_0
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v3, v2}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    const/4 v6, 0x0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->link(ILcom/htc/sunnyCore/IMediaData;III)V

    .line 1353
    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v11

    .line 1354
    .local v11, w:I
    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v8

    .line 1356
    .local v8, h:I
    sget-boolean v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "GridView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][GridView][makeItemColumn]: makeItemColumn idx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    :cond_1
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v3, v8

    sub-int/2addr p3, v3

    .line 1359
    if-ge v7, v11, :cond_2

    .line 1360
    move v7, v11

    .line 1363
    :cond_2
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1364
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    if-ge v2, v3, :cond_3

    .line 1365
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .line 1367
    :cond_3
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-le v2, v3, :cond_4

    .line 1368
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    .line 1339
    :cond_4
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 1371
    .end local v1           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v8           #h:I
    .end local v11           #w:I
    :cond_5
    add-int v3, p2, v7

    return v3

    .line 1344
    .restart local v1       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected makeItemRow(IIIZ)I
    .locals 18
    .parameter "startIdx"
    .parameter "startX"
    .parameter "startY"
    .parameter "scrollDown"

    .prologue
    .line 1288
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    .line 1289
    .local v15, total:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    .line 1290
    .local v12, numCol:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    .line 1291
    .local v14, recycler:Ljava/util/Queue;,"Ljava/util/Queue<Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    .line 1292
    .local v13, onScreenItems:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    .line 1293
    .local v9, itemPrototype:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 1294
    .local v11, mediaList:Lcom/htc/sunnyCore/IMediaList;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVerticalSpacing:I

    move/from16 v16, v0

    .line 1296
    .local v16, verticalSpacing:I
    const/4 v7, 0x0

    .line 1298
    .local v7, H:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mExtraPaddingLeft:I

    add-int/2addr v3, v4

    add-int p2, p2, v3

    .line 1300
    move/from16 v2, p1

    .local v2, idx:I
    const/4 v10, 0x0

    .local v10, j:I
    :goto_0
    if-ge v10, v12, :cond_5

    if-ge v2, v15, :cond_5

    .line 1302
    invoke-interface {v14}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 1304
    .local v1, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-nez v1, :cond_0

    .line 1305
    new-instance v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .end local v1           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    invoke-virtual {v9}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->create()Lcom/htc/sunnyCore/ViewItem;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/ViewItem;)V

    .line 1307
    .restart local v1       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_0
    invoke-interface {v11, v2}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    const/4 v6, 0x0

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->link(ILcom/htc/sunnyCore/IMediaData;III)V

    .line 1309
    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v17

    .line 1310
    .local v17, w:I
    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v8

    .line 1312
    .local v8, h:I
    sget-boolean v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "GridView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][GridView][makeItemRow]: makeItemRow idx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    :cond_1
    add-int v3, v17, v16

    add-int p2, p2, v3

    .line 1315
    if-ge v7, v8, :cond_2

    .line 1316
    move v7, v8

    .line 1319
    :cond_2
    invoke-virtual {v13, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1320
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    if-ge v2, v3, :cond_3

    .line 1321
    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .line 1323
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-le v2, v3, :cond_4

    .line 1324
    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    .line 1300
    :cond_4
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1328
    .end local v1           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v8           #h:I
    .end local v17           #w:I
    :cond_5
    sub-int v3, p3, v7

    return v3
.end method

.method public notifyMediaDataChange()V
    .locals 2

    .prologue
    .line 3117
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3118
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRefreshMediaList:Z

    .line 3119
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3120
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->requestLayout()V

    .line 3121
    return-void

    .line 3119
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public notifyMediaDataChange(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 3127
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyMediaDataInvalidate(I)V

    .line 3128
    return-void
.end method

.method public notifyMediaDataInvalidate()V
    .locals 2

    .prologue
    .line 3099
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;

    if-eqz v0, :cond_0

    .line 3100
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;->sendEmptyMessage(I)V

    .line 3102
    :cond_0
    return-void
.end method

.method public notifyMediaDataInvalidate(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 3108
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;

    if-eqz v0, :cond_0

    .line 3109
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Invalidate;->sendEmptyMessage(I)V

    .line 3111
    :cond_0
    return-void
.end method

.method public notifyPreparatorMediaDataChange(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 3134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyPreparatorMediaDataChange(II)V

    .line 3135
    return-void
.end method

.method public notifyPreparatorMediaDataChange(II)V
    .locals 3
    .parameter "index"
    .parameter "flag"

    .prologue
    .line 3141
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/GridView$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridView$2;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;II)V

    .line 3149
    .local v0, r:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 3150
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3155
    :goto_0
    return-void

    .line 3153
    :cond_0
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public notifyThumbnailTextureReadyIRT(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 3161
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 3162
    .local v0, list:Lcom/htc/sunnyCore/IMediaList;
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    if-gt v2, p1, :cond_0

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-gt p1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 3163
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getGridViewItemLock(I)Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    move-result-object v1

    .line 3164
    .local v1, viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
    if-eqz v1, :cond_0

    .line 3165
    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->unbindMediaData()V

    .line 3166
    invoke-interface {v0, p1}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->bindMediaData(ILcom/htc/sunnyCore/IMediaData;)V

    .line 3167
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v2, :cond_0

    .line 3168
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/sunnyCore/RenderThread;->forceRenderOnce:Z

    .line 3172
    .end local v1           #viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
    :cond_0
    return-void
.end method

.method protected notifyUpdatePreparator(Z)V
    .locals 11
    .parameter "bIsNewList"

    .prologue
    const/4 v10, 0x1

    .line 1125
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    if-nez v1, :cond_1

    .line 1149
    :cond_0
    :goto_0
    return-void

    .line 1126
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    .line 1128
    .local v0, preparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;
    if-ne v10, p1, :cond_2

    .line 1130
    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x12c

    add-long/2addr v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;->loadRange(IIIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1137
    :cond_2
    :goto_1
    const/4 v7, 0x0

    .line 1138
    .local v7, number:I
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    if-ne v1, v10, :cond_3

    .line 1139
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    .line 1144
    :goto_2
    invoke-virtual {v0, v7}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;->setColumnNumber(I)V

    .line 1146
    if-ne v10, p1, :cond_0

    .line 1147
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;->resetDecodeDirection()V

    goto :goto_0

    .line 1132
    .end local v7           #number:I
    :catch_0
    move-exception v6

    .line 1133
    .local v6, e:Ljava/lang/Exception;
    const-string v1, "GridView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][GridView][notifyUpdatePreparator]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1142
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v7       #number:I
    :cond_3
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    goto :goto_2
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x1

    .line 2375
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-result-object v1

    sget-object v2, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-ne v1, v2, :cond_1

    .line 2377
    iput-boolean v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mTouchDownInFling:Z

    .line 2378
    invoke-virtual {p0, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->reportScrollStateChange(I)V

    .line 2391
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->resetGesture()V

    .line 2392
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    if-ne v1, v3, :cond_3

    .line 2393
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->onTouchDown(I)V

    .line 2398
    :goto_1
    return v3

    .line 2382
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mTouchDownInFling:Z

    .line 2383
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->pointToCell(II)Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    move-result-object v0

    .line 2384
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_0

    .line 2386
    sget-boolean v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "GridView"

    const-string v2, "[HTCAlbum][Gridview][KeyPress]: onDown "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    :cond_2
    iget-object v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v1, v3}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 2388
    iget-object v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->onItemPress()V

    goto :goto_0

    .line 2396
    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_3
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->onTouchDown(I)V

    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2504
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v5, "gridBouncingAction"

    invoke-virtual {v4, p0, v5}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v0

    .line 2505
    .local v0, gridBouncingAction:Lcom/htc/sunnyCore/RenderThreadAction;
    if-eqz v0, :cond_0

    .line 2528
    :goto_0
    return v2

    .line 2510
    :cond_0
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    if-ne v4, v3, :cond_4

    .line 2511
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    neg-float v5, p4

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->onFling(F)V

    .line 2517
    :goto_1
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v5, "GridFlingingAction"

    invoke-virtual {v4, p0, v5}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v1

    .line 2518
    .local v1, gridFlingingAction:Lcom/htc/sunnyCore/RenderThreadAction;
    if-eqz v1, :cond_1

    .line 2520
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v4, v1}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 2522
    :cond_1
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v4, :cond_2

    const-string v4, "profiler.performance"

    invoke-static {v4, v2}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 2523
    :cond_2
    const-string v2, "AutoTest"

    const-string v4, "[AutoProf](301) [OTHER][Gallery][GVonFling_BGN][START]\u2026"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    iput-boolean v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mShouldPrintOnFlingLog:Z

    .line 2526
    :cond_3
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v4, Lcom/htc/sunnyCore/widget/gridview/GridView$GridFlingingAction;

    const-string v5, "GridFlingingAction"

    invoke-direct {v4, p0, p0, v5}, Lcom/htc/sunnyCore/widget/gridview/GridView$GridFlingingAction;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 2527
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->reportScrollStateChange(I)V

    move v2, v3

    .line 2528
    goto :goto_0

    .line 2514
    .end local v1           #gridFlingingAction:Lcom/htc/sunnyCore/RenderThreadAction;
    :cond_4
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    neg-float v5, p3

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->onFling(F)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2267
    const/4 v0, 0x0

    .line 2269
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 2283
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 2274
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 2101
    const/4 v0, 0x0

    .line 2102
    .local v0, bResult:Z
    const/4 v2, 0x0

    .line 2103
    .local v2, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFocusItemId:I

    .line 2105
    .local v6, tmpfocusId:I
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    if-nez v7, :cond_1

    :cond_0
    move v1, v0

    .line 2258
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 2111
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    if-ne v6, v8, :cond_2

    .line 2113
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2114
    .restart local v2       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    iput v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFocusItemId:I

    .line 2115
    iget v7, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v8

    invoke-direct {p0, v7, v8, v9}, Lcom/htc/sunnyCore/widget/gridview/GridView;->doFocusScroll(III)Z

    .line 2116
    iget-object v7, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v7, v10}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 2117
    iget-object v7, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->onItemPress()V

    .line 2118
    const/4 v0, 0x1

    move v1, v0

    .line 2119
    .restart local v1       #bResult:I
    goto :goto_0

    .line 2122
    .end local v1           #bResult:I
    :cond_2
    sparse-switch p1, :sswitch_data_0

    move v1, v0

    .line 2165
    .restart local v1       #bResult:I
    goto :goto_0

    .line 2126
    .end local v1           #bResult:I
    :sswitch_0
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    sub-int v7, v6, v7

    if-le v7, v8, :cond_3

    .line 2128
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    sub-int/2addr v6, v7

    .line 2169
    :cond_3
    :goto_1
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFocusItemId:I

    if-eq v6, v7, :cond_6

    .line 2171
    const/4 v3, 0x0

    .line 2172
    .local v3, cellCoordinate:I
    const/4 v4, 0x0

    .line 2173
    .local v4, cellHeight:I
    const/4 v5, 0x0

    .line 2175
    .local v5, numRow:I
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFocusItemId:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2176
    .restart local v2       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v2, :cond_4

    .line 2178
    iget-object v7, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->onItemRelease()V

    .line 2179
    iget-object v7, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v7, v9}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 2182
    :cond_4
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFocusItemId:I

    if-le v6, v7, :cond_a

    .line 2184
    if-eqz v2, :cond_8

    .line 2186
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    rem-int v7, v6, v7

    if-nez v7, :cond_7

    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFocusItemId:I

    sub-int v7, v6, v7

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    if-gtz v7, :cond_7

    .line 2188
    const/4 v5, 0x1

    .line 2194
    :goto_2
    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 2195
    iget v3, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    .line 2244
    :goto_3
    iput v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFocusItemId:I

    .line 2245
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFocusItemId:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2246
    .restart local v2       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v2, :cond_5

    .line 2248
    const/4 v5, 0x0

    .line 2249
    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 2250
    iget v3, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    .line 2251
    iget-object v7, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v7, v10}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 2252
    iget-object v7, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->onItemPress()V

    .line 2255
    :cond_5
    invoke-direct {p0, v3, v4, v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->doFocusScroll(III)Z

    .line 2256
    const/4 v0, 0x1

    .end local v3           #cellCoordinate:I
    .end local v4           #cellHeight:I
    .end local v5           #numRow:I
    :cond_6
    move v1, v0

    .line 2258
    .restart local v1       #bResult:I
    goto/16 :goto_0

    .line 2134
    .end local v1           #bResult:I
    :sswitch_1
    if-eq v6, v8, :cond_3

    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    add-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ge v7, v8, :cond_3

    .line 2136
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    add-int/2addr v6, v7

    goto :goto_1

    .line 2142
    :sswitch_2
    add-int/lit8 v7, v6, -0x1

    if-le v7, v8, :cond_3

    .line 2144
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 2150
    :sswitch_3
    if-eq v6, v8, :cond_3

    add-int/lit8 v7, v6, 0x1

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ge v7, v8, :cond_3

    .line 2152
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2158
    :sswitch_4
    iput v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFocusItemId:I

    .line 2160
    invoke-direct {p0, v6}, Lcom/htc/sunnyCore/widget/gridview/GridView;->FocusItemClick(I)V

    .line 2161
    const/4 v0, 0x1

    move v1, v0

    .line 2162
    .restart local v1       #bResult:I
    goto/16 :goto_0

    .line 2192
    .end local v1           #bResult:I
    .restart local v3       #cellCoordinate:I
    .restart local v4       #cellHeight:I
    .restart local v5       #numRow:I
    :cond_7
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFocusItemId:I

    sub-int v7, v6, v7

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    div-int v5, v7, v8

    goto :goto_2

    .line 2199
    :cond_8
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    rem-int/2addr v7, v8

    if-nez v7, :cond_9

    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    sub-int v7, v6, v7

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    if-gtz v7, :cond_9

    .line 2201
    const/4 v5, 0x1

    .line 2207
    :goto_4
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2208
    .restart local v2       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 2209
    iget v3, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    goto :goto_3

    .line 2205
    :cond_9
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    sub-int v7, v6, v7

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    div-int v5, v7, v8

    goto :goto_4

    .line 2214
    :cond_a
    if-eqz v2, :cond_c

    .line 2216
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    rem-int v7, v6, v7

    if-nez v7, :cond_b

    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFocusItemId:I

    sub-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    if-gtz v7, :cond_b

    .line 2218
    const/4 v5, -0x1

    .line 2224
    :goto_5
    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 2225
    iget v3, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    .line 2226
    const-string v7, "fish"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OldFocus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFocusItemId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "New: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2222
    :cond_b
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFocusItemId:I

    sub-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    neg-int v5, v7

    goto :goto_5

    .line 2230
    :cond_c
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    rem-int v7, v6, v7

    if-nez v7, :cond_d

    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    if-gtz v7, :cond_d

    .line 2232
    const/4 v5, -0x1

    .line 2238
    :goto_6
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2239
    .restart local v2       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 2240
    iget v3, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    goto/16 :goto_3

    .line 2236
    :cond_d
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v7, v6

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    neg-int v5, v7

    goto :goto_6

    .line 2122
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x42 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onLayout(ZFFFII)V
    .locals 17
    .parameter "changed"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 962
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->LayoutLock:Ljava/lang/Object;

    monitor-enter v13

    .line 963
    const/4 v12, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDisableLayoutRequest:Z

    if-ne v12, v14, :cond_2

    .line 964
    sget-boolean v12, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string v12, "GridView"

    const-string v14, "[GridView][onLayout] Disable Layout Request"

    invoke-static {v12, v14}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    :cond_0
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHasLayoutRequest:Z

    .line 966
    monitor-exit v13

    .line 1118
    :cond_1
    :goto_0
    return-void

    .line 968
    :cond_2
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewWidth:I

    .line 972
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewHeight:I

    .line 975
    const/4 v12, 0x1

    move/from16 v0, p5

    if-lt v0, v12, :cond_1

    const/4 v12, 0x1

    move/from16 v0, p6

    if-lt v0, v12, :cond_1

    .line 979
    invoke-super/range {p0 .. p6}, Lcom/htc/sunnyCore/view/SViewGroup;->onLayout(ZFFFII)V

    .line 981
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->resetGesture()V

    .line 983
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mInLayout:Z

    .line 988
    const-string v12, "GridView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][GridView][onLayout]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    .line 992
    .local v11, onScreenItems:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;>;"
    const v8, 0x7fffffff

    .line 993
    .local v8, oldFirstItemPositionX:I
    const v9, 0x7fffffff

    .line 994
    .local v9, oldFirstItemPositionY:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .line 995
    .local v7, oldFirstIdx:I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    .line 997
    .local v10, oldLastIdx:I
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-eqz v12, :cond_3

    .line 998
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    iget v8, v12, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    .line 999
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    iget v9, v12, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    .line 1001
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->onLayoutFreeAndCacheScreenItem()V

    .line 1004
    :cond_3
    const/4 v2, 0x0

    .line 1006
    .local v2, bSetNewList:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Lcom/htc/sunnyCore/widget/gridview/GridView;->checkNewMediaListOnLayout(III)Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;

    move-result-object v3

    .line 1008
    .local v3, container:Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;
    iget-boolean v12, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;->isEnd:Z

    if-nez v12, :cond_1

    .line 1012
    iget-boolean v2, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;->bSetNewList:Z

    .line 1013
    iget v8, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionX:I

    .line 1014
    iget v9, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionY:I

    .line 1015
    iget v7, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;->oldFirstItemIndex:I

    .line 1027
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRootNode:Lcom/htc/sunnyCore/SceneNode;

    move/from16 v0, p5

    int-to-float v13, v0

    neg-float v13, v13

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    move/from16 v0, p6

    int-to-float v14, v0

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/htc/sunnyCore/SceneNode;->setPosition(FFF)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunnyCore/SceneNode;

    move/from16 v0, p5

    int-to-float v13, v0

    neg-float v13, v13

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    move/from16 v0, p6

    int-to-float v14, v0

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/htc/sunnyCore/SceneNode;->setPosition(FFF)V

    .line 1030
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->enableSingleItemPrototype()Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    if-nez v12, :cond_4

    .line 1032
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mInLayout:Z

    goto/16 :goto_0

    .line 968
    .end local v2           #bSetNewList:Z
    .end local v3           #container:Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;
    .end local v7           #oldFirstIdx:I
    .end local v8           #oldFirstItemPositionX:I
    .end local v9           #oldFirstItemPositionY:I
    .end local v10           #oldLastIdx:I
    .end local v11           #onScreenItems:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;>;"
    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 1035
    .restart local v2       #bSetNewList:Z
    .restart local v3       #container:Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;
    .restart local v7       #oldFirstIdx:I
    .restart local v8       #oldFirstItemPositionX:I
    .restart local v9       #oldFirstItemPositionY:I
    .restart local v10       #oldLastIdx:I
    .restart local v11       #onScreenItems:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;>;"
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v12, :cond_d

    .line 1037
    const/4 v4, 0x0

    .line 1038
    .local v4, currentBase:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    .line 1039
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingTop:I

    rsub-int/lit8 v4, v12, 0x0

    .line 1047
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_f

    const v12, 0x7fffffff

    if-eq v9, v12, :cond_f

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v7, :cond_f

    if-ge v9, v4, :cond_5

    if-eqz v7, :cond_f

    .line 1051
    :cond_5
    move v4, v9

    .line 1060
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_11

    .line 1062
    :cond_7
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v4, v14}, Lcom/htc/sunnyCore/widget/gridview/GridView;->makeItemRow(IIIZ)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getHorizontalSpacingToNextRow(I)I

    move-result v13

    sub-int v4, v12, v13

    .line 1063
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ge v12, v13, :cond_8

    move/from16 v0, p6

    neg-int v12, v0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingBottom:I

    add-int/2addr v12, v13

    if-gt v4, v12, :cond_7

    .line 1067
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->fillUp()V

    .line 1068
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->fillDown()V

    .line 1073
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 1074
    .local v6, lastCell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v6, :cond_9

    iget v12, v6, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v6}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v13

    sub-int/2addr v12, v13

    move/from16 v0, p6

    neg-int v13, v0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingBottom:I

    add-int/2addr v13, v14

    if-le v12, v13, :cond_9

    .line 1075
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->pinToBottom()V

    .line 1076
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 1077
    .local v5, firstCell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v5, :cond_9

    iget v12, v5, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingTop:I

    rsub-int/lit8 v13, v13, 0x0

    if-ge v12, v13, :cond_9

    .line 1078
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/sunnyCore/widget/gridview/GridView;->pinToTop(Z)V

    .line 1105
    .end local v5           #firstCell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    if-eqz v12, :cond_a

    .line 1106
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Lcom/htc/widget/AbsFastScroller;->onScroll(Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;III)V

    .line 1107
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    invoke-virtual {v12}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->invalidate()V

    .line 1110
    :cond_a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    if-ne v7, v12, :cond_b

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-ne v10, v12, :cond_b

    const/4 v12, 0x1

    if-ne v12, v2, :cond_c

    .line 1111
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->invokeOnItemScrollListener()V

    .line 1114
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyUpdatePreparator(Z)V

    .line 1117
    .end local v4           #currentBase:I
    .end local v6           #lastCell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_d
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mInLayout:Z

    goto/16 :goto_0

    .line 1042
    .restart local v4       #currentBase:I
    :cond_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingLeft:I

    add-int/lit8 v4, v12, 0x0

    goto/16 :goto_1

    .line 1053
    :cond_f
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6

    const v12, 0x7fffffff

    if-eq v8, v12, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v7, :cond_6

    if-ge v8, v4, :cond_10

    if-eqz v7, :cond_6

    .line 1057
    :cond_10
    move v4, v8

    goto/16 :goto_2

    .line 1084
    :cond_11
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4, v13, v14}, Lcom/htc/sunnyCore/widget/gridview/GridView;->makeItemColumn(IIIZ)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v13

    add-int v4, v12, v13

    .line 1085
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ge v12, v13, :cond_12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingRight:I

    sub-int v12, p5, v12

    if-lt v4, v12, :cond_11

    .line 1089
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->fillLeft()V

    .line 1090
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->fillRight()V

    .line 1095
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 1096
    .restart local v6       #lastCell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v6, :cond_9

    iget v12, v6, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v6}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v13

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingLeft:I

    sub-int v13, p5, v13

    if-ge v12, v13, :cond_9

    .line 1097
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->pinToRight()V

    .line 1098
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 1099
    .restart local v5       #firstCell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v5, :cond_9

    iget v12, v5, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingLeft:I

    if-le v12, v13, :cond_9

    .line 1100
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/sunnyCore/widget/gridview/GridView;->pinToLeft(Z)V

    goto/16 :goto_3
.end method

.method protected onLayoutFreeAndCacheScreenItem()V
    .locals 5

    .prologue
    const v4, 0x7f7fffff

    .line 939
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-gt v1, v2, :cond_1

    .line 940
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 941
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_0

    .line 942
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->unlink()V

    .line 943
    iget-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v4, v3}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 944
    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)V

    .line 939
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 947
    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_1
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 948
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 2469
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2483
    :cond_0
    :goto_0
    return-void

    .line 2472
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->pointToPosition(II)I

    move-result v1

    .line 2473
    .local v1, onScreenIdx:I
    const/4 v2, -0x1

    if-ge v2, v1, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mTouchDownInFling:Z

    if-nez v2, :cond_0

    .line 2475
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2476
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_0

    .line 2478
    sget-boolean v2, Lcom/htc/sunnyCore/widget/gridview/GridView;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "GridView"

    const-string v3, "[HTCAlbum][GridView][onLongPress]: "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2480
    :cond_2
    iget-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getLevelNumberByItem(I)I

    move-result v3

    invoke-direct {p0, v2, v1, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->performLongPress(Lcom/htc/sunnyCore/view/SView;II)Z

    goto :goto_0
.end method

.method protected onRenderOrderChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 1643
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/view/SViewGroup;->onRenderOrderChanged(Z)V

    .line 1644
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    if-eqz v0, :cond_0

    .line 1645
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 1646
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;->resumePreparator()V

    .line 1651
    :cond_0
    :goto_0
    return-void

    .line 1648
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;->pausePreparator()V

    goto :goto_0
.end method

.method public onRenderToWindowIRT(I)V
    .locals 0
    .parameter "window"

    .prologue
    .line 429
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2439
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    if-ne v0, v2, :cond_3

    .line 2440
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->onTouchMove(I)V

    .line 2445
    :goto_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-result-object v0

    sget-object v1, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-ne v0, v1, :cond_2

    .line 2447
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "Panning"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2449
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    const-string v0, "profiler.performance"

    invoke-static {v0, v3}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 2450
    :cond_0
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](301) [OTHER][Gallery][GVonScroll_BGN][START]\u2026"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mShouldPrintOnScrollLog:Z

    .line 2453
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridPanningAction:Lcom/htc/sunnyCore/widget/gridview/GridView$GridPanningAction;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 2456
    :cond_2
    invoke-direct {p0, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->dispatchUnpress(Z)V

    .line 2457
    return v2

    .line 2443
    :cond_3
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->onTouchMove(I)V

    goto :goto_0
.end method

.method protected onScrollEnd(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 2358
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->reset()V

    .line 2359
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2360
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->onTouchUp(I)V

    .line 2366
    :goto_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->doBounceBack(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)Z

    .line 2367
    return-void

    .line 2363
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->onTouchUp(I)V

    goto :goto_0
.end method

.method protected onScrollMotionIRT(II)V
    .locals 22
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 2600
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->enableSingleItemPrototype()Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 2775
    :cond_0
    :goto_0
    return-void

    .line 2603
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 2606
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    .line 2607
    .local v14, totalCount:I
    if-eqz v14, :cond_0

    .line 2611
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    move/from16 v17, v0

    if-ltz v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v17, v0

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 2615
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .line 2616
    .local v9, oldFirstIdx:I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    .line 2618
    .local v10, oldLastIdx:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    .line 2619
    .local v11, onScreenItems:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;>;"
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    .line 2620
    .local v12, orientation:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewHeight:I

    .line 2621
    .local v5, gvViewHeight:I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewWidth:I

    .line 2623
    .local v6, gvViewWidth:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    .line 2624
    .local v13, tmpLastIdx:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .local v7, i:I
    :goto_1
    if-gt v7, v13, :cond_d

    .line 2625
    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2627
    .local v3, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-nez v3, :cond_3

    .line 2624
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2631
    :cond_3
    iget-object v8, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    .line 2633
    .local v8, item:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
    invoke-virtual {v8}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->getWidth()I

    move-result v15

    .line 2634
    .local v15, w:I
    invoke-virtual {v8}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->getHeight()I

    move-result v16

    .line 2636
    .local v16, y:I
    iget v0, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    move/from16 v17, v0

    add-int v17, v17, p1

    move/from16 v0, v17

    iput v0, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    .line 2637
    iget v0, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    move/from16 v17, v0

    add-int v17, v17, p2

    move/from16 v0, v17

    iput v0, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    .line 2639
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_8

    .line 2640
    iget v0, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    move/from16 v17, v0

    sub-int v17, v17, v16

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_5

    .line 2641
    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->unlink()V

    .line 2642
    const v17, 0x7f7fffff

    const v18, 0x7f7fffff

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v8, v0, v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2644
    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 2645
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)V

    .line 2647
    sget-boolean v17, Lcom/htc/sunnyCore/widget/gridview/GridView;->DEBUG:Z

    if-eqz v17, :cond_4

    const-string v17, "GridView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mContext: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHostContextName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "remove idx="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", x="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", y="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2649
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/sunnyCore/widget/gridview/GridView;->updateFirstIdxInScrollMotionIRT(I)V

    goto/16 :goto_2

    .line 2655
    :cond_5
    iget v0, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    move/from16 v17, v0

    neg-int v0, v5

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 2656
    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->unlink()V

    .line 2657
    const v17, 0x7f7fffff

    const v18, 0x7f7fffff

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v8, v0, v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2659
    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 2660
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)V

    .line 2662
    sget-boolean v17, Lcom/htc/sunnyCore/widget/gridview/GridView;->DEBUG:Z

    if-eqz v17, :cond_6

    const-string v17, "GridView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mContext: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHostContextName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "remove idx="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", x="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", y="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2664
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v0, v7, :cond_2

    .line 2665
    add-int/lit8 v17, v7, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    goto/16 :goto_2

    .line 2669
    :cond_7
    iget v0, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    move/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    move/from16 v18, v0

    div-int/lit8 v19, v16, 0x2

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v8, v0, v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPosition(FFF)V

    goto/16 :goto_2

    .line 2673
    :cond_8
    iget v0, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    move/from16 v17, v0

    add-int v17, v17, v15

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 2674
    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->unlink()V

    .line 2675
    const v17, 0x7f7fffff

    const v18, 0x7f7fffff

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v8, v0, v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2677
    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 2678
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)V

    .line 2680
    sget-boolean v17, Lcom/htc/sunnyCore/widget/gridview/GridView;->DEBUG:Z

    if-eqz v17, :cond_9

    const-string v17, "GridView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mContext: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHostContextName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "remove idx="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", x="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", y="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2682
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/sunnyCore/widget/gridview/GridView;->updateFirstIdxInScrollMotionIRT(I)V

    goto/16 :goto_2

    .line 2684
    :cond_a
    iget v0, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    move/from16 v17, v0

    add-int/lit8 v18, v6, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_c

    .line 2685
    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->unlink()V

    .line 2686
    const v17, 0x7f7fffff

    const v18, 0x7f7fffff

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v8, v0, v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 2688
    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 2689
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)V

    .line 2691
    sget-boolean v17, Lcom/htc/sunnyCore/widget/gridview/GridView;->DEBUG:Z

    if-eqz v17, :cond_b

    const-string v17, "GridView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mContext: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHostContextName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "remove idx="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", x="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", y="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2693
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v0, v7, :cond_2

    .line 2694
    add-int/lit8 v17, v7, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    goto/16 :goto_2

    .line 2698
    :cond_c
    iget v0, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    move/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    move/from16 v18, v0

    div-int/lit8 v19, v16, 0x2

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v8, v0, v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPosition(FFF)V

    goto/16 :goto_2

    .line 2703
    .end local v3           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v8           #item:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
    .end local v15           #w:I
    .end local v16           #y:I
    :cond_d
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_1d

    .line 2704
    if-gez p2, :cond_1c

    .line 2705
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->fillUp()V

    .line 2721
    :cond_e
    :goto_3
    const/16 v17, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedIdx:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mInLayout:Z

    move/from16 v17, v0

    if-nez v17, :cond_f

    .line 2722
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedIdx:I

    .line 2726
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    .line 2727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-result-object v17

    sget-object v18, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1f

    .line 2728
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->reportScrollStateChange(I)V

    .line 2735
    :cond_10
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v10, v0, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v9, v0, :cond_12

    .line 2736
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->invokeOnItemScrollListener()V

    .line 2741
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVisibleItemCount:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVisibleItemCount:I

    .line 2742
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVisibleItemCount:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVisibleItemCount:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_15

    .line 2744
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    move-object/from16 v17, v0

    if-eqz v17, :cond_15

    .line 2745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    move/from16 v21, v0

    invoke-virtual/range {v17 .. v21}, Lcom/htc/widget/AbsFastScroller;->onScroll(Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;III)V

    .line 2746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->invalidate()V

    .line 2750
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    move-object/from16 v17, v0

    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mIsPreparatorSkipDecodeDirection:Z

    move/from16 v17, v0

    if-nez v17, :cond_16

    .line 2752
    const/4 v4, 0x0

    .line 2753
    .local v4, direction:I
    if-nez p1, :cond_20

    .line 2754
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    .line 2759
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;->setDecodeDirection(I)V

    .line 2761
    .end local v4           #direction:I
    :cond_16
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mIsPreparatorSkipDecodeDirection:Z

    .line 2763
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mShouldPrintOnScrollLog:Z

    move/from16 v17, v0

    if-eqz v17, :cond_19

    .line 2764
    sget-boolean v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v17, :cond_17

    const-string v17, "profiler.performance"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_18

    .line 2765
    :cond_17
    const-string v17, "AutoTest"

    const-string v18, "[AutoProf](302) [OTHER][Gallery][GVonScroll_END][FINISH]\u2026"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    :cond_18
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mShouldPrintOnScrollLog:Z

    .line 2769
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mShouldPrintOnFlingLog:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 2770
    sget-boolean v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v17, :cond_1a

    const-string v17, "profiler.performance"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    .line 2771
    :cond_1a
    const-string v17, "AutoTest"

    const-string v18, "[AutoProf](302) [OTHER][Gallery][GVonFling_END][FINISH]\u2026"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    :cond_1b
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mShouldPrintOnFlingLog:Z

    goto/16 :goto_0

    .line 2707
    :cond_1c
    if-lez p2, :cond_e

    .line 2708
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->fillDown()V

    goto/16 :goto_3

    .line 2712
    :cond_1d
    if-gez p1, :cond_1e

    .line 2713
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->fillRight()V

    goto/16 :goto_3

    .line 2715
    :cond_1e
    if-lez p1, :cond_e

    .line 2716
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->fillLeft()V

    goto/16 :goto_3

    .line 2730
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-result-object v17

    sget-object v18, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 2731
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 2757
    .restart local v4       #direction:I
    :cond_20
    const/16 v17, 0x0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    goto/16 :goto_5
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 2406
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 2417
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2418
    const/4 v1, 0x0

    .line 2430
    :goto_0
    return v1

    .line 2420
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->pointToPosition(II)I

    move-result v0

    .line 2422
    .local v0, onScreenIdx:I
    const/4 v1, -0x1

    if-ge v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mTouchDownInFling:Z

    if-nez v1, :cond_2

    .line 2424
    sget-boolean v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "GridView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][Gridview][KeyPress]: onSingleTapUp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2426
    :cond_1
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedIdx:I

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mCurrentHighlightIdx:I

    .line 2427
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedIdx:I

    invoke-direct {p0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->FocusItemClick(I)V

    .line 2430
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v1, 0x0

    .line 1717
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/sunnyCore/view/SViewGroup;->onSizeChanged(IIII)V

    .line 1719
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    if-eqz v0, :cond_0

    .line 1720
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->reset()V

    .line 1722
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    if-eqz v0, :cond_1

    .line 1723
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    invoke-virtual {v0, v1}, Lcom/htc/widget/AbsFastScroller;->setState(I)V

    .line 1724
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/AbsFastScroller;->onSizeChanged(IIII)V

    .line 1725
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/AbsFastScroller;->setSectionsDirty()V

    .line 1727
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDraggingBlurSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v0, :cond_2

    .line 1728
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDraggingBlurSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    .line 1729
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mIgnoreSetSelection:Z

    .line 1731
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 10
    .parameter "event"
    .parameter "nHitSpriteId"

    .prologue
    const/4 v5, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 2015
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFocusItemId:I

    if-eq v0, v2, :cond_0

    .line 2016
    invoke-direct {p0, v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->dispatchUnpress(Z)V

    .line 2017
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFocusItemId:I

    .line 2020
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-ne v0, v2, :cond_2

    :cond_1
    move v0, v9

    .line 2084
    :goto_0
    return v0

    .line 2026
    :cond_2
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDisableFastScrollerTouchEvent:Z

    if-nez v0, :cond_d

    .line 2027
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 2028
    .local v6, e:Landroid/view/MotionEvent;
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    if-ne v0, v9, :cond_3

    .line 2029
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingLeft:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingTop:I

    neg-int v1, v1

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerExtraPaddingTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v6, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2031
    :cond_3
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    invoke-virtual {v0, v6}, Lcom/htc/widget/AbsFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2032
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;

    invoke-virtual {v0, v6}, Lcom/htc/widget/AbsFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 2033
    .local v8, intercepted:Z
    if-eqz v8, :cond_c

    .line 2034
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v5, :cond_4

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 2036
    :cond_4
    invoke-direct {p0, v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->dispatchUnpress(Z)V

    .line 2038
    :cond_5
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->isEnableSkipSetSelection()Z

    move-result v0

    if-ne v0, v9, :cond_7

    .line 2039
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v9, :cond_6

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 2040
    :cond_6
    iput-boolean v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mIgnoreSetSelection:Z

    .line 2041
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastestSelection:I

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->setSelectionInt(I)V

    .line 2042
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDraggingBlurSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    .line 2059
    :cond_7
    :goto_1
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    move v0, v9

    .line 2060
    goto :goto_0

    .line 2044
    :cond_8
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x105

    if-eq v0, v1, :cond_9

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_7

    .line 2047
    :cond_9
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mIgnoreSetSelection:Z

    if-nez v0, :cond_b

    .line 2048
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDraggingBlurTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v0, :cond_a

    .line 2049
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x100

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;Landroid/graphics/drawable/ColorDrawable;)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDraggingBlurTexture:Lcom/htc/sunnyCore/Texture;

    .line 2050
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDraggingBlurSprite:Lcom/htc/sunnyCore/Sprite;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDraggingBlurTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->setTexture(Lcom/htc/sunnyCore/Texture;)V

    .line 2051
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDraggingBlurSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getSkipSelectionAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->setAlpha(F)V

    .line 2053
    :cond_a
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDraggingBlurSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewHeight:I

    int-to-float v2, v2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 2054
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mDraggingBlurSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v9}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    .line 2056
    :cond_b
    iput-boolean v9, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mIgnoreSetSelection:Z

    goto :goto_1

    .line 2062
    :cond_c
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 2064
    .end local v6           #e:Landroid/view/MotionEvent;
    .end local v8           #intercepted:Z
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v9, :cond_e

    .line 2066
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->onScrollEnd(Landroid/view/MotionEvent;)V

    .line 2069
    :cond_e
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 2071
    .local v7, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v9, :cond_10

    .line 2073
    sget-object v0, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-result-object v1

    if-eq v0, v1, :cond_f

    .line 2075
    const-string v0, "GridView"

    const-string v1, "[HTCAlbum][Gridview][onTouchEvent]: SCROLL_STATE_IDLE"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    invoke-virtual {p0, v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->reportScrollStateChange(I)V

    .line 2079
    :cond_f
    invoke-direct {p0, v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->dispatchUnpress(Z)V

    .line 2082
    :cond_10
    if-ne v7, v9, :cond_11

    move v0, v9

    goto/16 :goto_0

    .line 2084
    :cond_11
    invoke-super {p0, p1, p2}, Lcom/htc/sunnyCore/view/SViewGroup;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    goto/16 :goto_0
.end method

.method protected pinToBottom()V
    .locals 5

    .prologue
    .line 2536
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ne v3, v4, :cond_0

    .line 2538
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2539
    .local v1, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-nez v1, :cond_1

    .line 2546
    .end local v1           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_0
    :goto_0
    return-void

    .line 2541
    .restart local v1       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_1
    iget v3, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v4

    sub-int v0, v3, v4

    .line 2542
    .local v0, bottom:I
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewHeight:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingBottom:I

    sub-int v2, v3, v4

    .line 2544
    .local v2, offset:I
    const/4 v3, 0x0

    neg-int v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->onScrollMotionIRT(II)V

    goto :goto_0
.end method

.method protected pinToLeft(Z)V
    .locals 6
    .parameter "alignLeft"

    .prologue
    .line 2582
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    if-nez v4, :cond_1

    .line 2583
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2584
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    .line 2585
    .local v1, left:I
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingLeft:I

    .line 2586
    .local v3, viewLeft:I
    if-gt v1, v3, :cond_0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 2587
    :cond_0
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingLeft:I

    sub-int v2, v4, v1

    .line 2589
    .local v2, offset:I
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->onScrollMotionIRT(II)V

    .line 2592
    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v1           #left:I
    .end local v2           #offset:I
    .end local v3           #viewLeft:I
    :cond_1
    return-void
.end method

.method protected pinToRight()V
    .locals 5

    .prologue
    .line 2570
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ne v2, v3, :cond_0

    .line 2571
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2572
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewWidth:I

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingRight:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v1, v2, v3

    .line 2574
    .local v1, offset:I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->onScrollMotionIRT(II)V

    .line 2576
    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v1           #offset:I
    :cond_0
    return-void
.end method

.method protected pinToTop(Z)V
    .locals 6
    .parameter "alignTop"

    .prologue
    .line 2552
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    if-nez v4, :cond_0

    .line 2553
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2554
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-nez v0, :cond_1

    .line 2564
    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_0
    :goto_0
    return-void

    .line 2556
    .restart local v0       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_1
    iget v2, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    .line 2557
    .local v2, top:I
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingTop:I

    rsub-int/lit8 v3, v4, 0x0

    .line 2558
    .local v3, viewTop:I
    if-lt v2, v3, :cond_2

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 2559
    :cond_2
    add-int/lit8 v4, v2, 0x0

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingTop:I

    add-int v1, v4, v5

    .line 2561
    .local v1, offset:I
    const/4 v4, 0x0

    neg-int v5, v1

    invoke-virtual {p0, v4, v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->onScrollMotionIRT(II)V

    goto :goto_0
.end method

.method protected pointToPosition(II)I
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, -0x1

    .line 1747
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1748
    .local v2, count:I
    if-nez v2, :cond_0

    move v3, v7

    .line 1767
    :goto_0
    return v3

    .line 1752
    :cond_0
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .local v3, i:I
    :goto_1
    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-gt v3, v8, :cond_3

    .line 1753
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 1754
    .local v1, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-nez v1, :cond_2

    .line 1752
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1758
    :cond_2
    iget v4, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    .line 1759
    .local v4, left:I
    iget v8, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    rsub-int/lit8 v6, v8, 0x0

    .line 1760
    .local v6, top:I
    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v8

    add-int v5, v4, v8

    .line 1761
    .local v5, right:I
    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v8

    add-int v0, v6, v8

    .line 1763
    .local v0, bottom:I
    if-gt v6, p2, :cond_1

    if-gt p2, v0, :cond_1

    if-gt v4, p1, :cond_1

    if-gt p1, v5, :cond_1

    goto :goto_0

    .end local v0           #bottom:I
    .end local v1           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v4           #left:I
    .end local v5           #right:I
    .end local v6           #top:I
    :cond_3
    move v3, v7

    .line 1767
    goto :goto_0
.end method

.method public removeView(Lcom/htc/sunnyCore/view/SView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 576
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in GridView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected reportScrollStateChange(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 2824
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 2826
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;

    if-eqz v0, :cond_0

    .line 2828
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;->onScrollStateChangedIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;I)V

    .line 2829
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastScrollState:I

    .line 2832
    :cond_0
    if-nez p1, :cond_1

    .line 2834
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    if-eqz v0, :cond_1

    .line 2836
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;->setDecodeDirection(I)V

    .line 2839
    :cond_1
    return-void
.end method

.method public resetGesture()V
    .locals 3

    .prologue
    .line 4162
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    if-eqz v1, :cond_1

    .line 4164
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->reset()V

    .line 4165
    const/4 v0, 0x0

    .line 4169
    .local v0, renderAction:Lcom/htc/sunnyCore/RenderThreadAction;
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v2, "GridFlingingAction"

    invoke-virtual {v1, p0, v2}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4170
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 4175
    :cond_0
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v2, "GridFlingingAction"

    invoke-virtual {v1, p0, v2}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4176
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 4178
    .end local v0           #renderAction:Lcom/htc/sunnyCore/RenderThreadAction;
    :cond_1
    return-void
.end method

.method protected resetLastIdxInOnLayout(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 927
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    .line 928
    .local v0, modBase:I
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 929
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    .line 932
    :cond_0
    rem-int v1, p1, v0

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method protected restorePreviousState_IRT(IILandroid/os/Bundle;)Lcom/htc/sunnyCore/view/Vector3F;
    .locals 15
    .parameter "currentId"
    .parameter "oldIdx"
    .parameter "bundle"

    .prologue
    .line 3288
    const-string v11, "oldFirstIdx"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 3289
    .local v5, oldFirstIdx:I
    const-string v11, "oldFirstItemPositionY"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 3291
    .local v6, oldFirstItemPositionY:I
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 3292
    .local v1, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v8

    .line 3293
    .local v8, w:I
    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v4

    .line 3295
    .local v4, h:I
    sub-int v3, p2, v5

    .line 3297
    .local v3, d:I
    iget v11, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    rem-int v2, v3, v11

    .line 3298
    .local v2, colId:I
    if-gez v2, :cond_0

    .line 3299
    iget v11, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    add-int/2addr v2, v11

    .line 3302
    :cond_0
    iget v11, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    div-int v7, v3, v11

    .line 3303
    .local v7, rowId:I
    if-gez v7, :cond_1

    if-eqz v2, :cond_1

    .line 3304
    add-int/lit8 v7, v7, -0x1

    .line 3308
    :cond_1
    div-int/lit8 v11, v8, 0x2

    iget v12, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mExtraPaddingLeft:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v12, v8

    mul-int/2addr v12, v2

    add-int/2addr v11, v12

    iget v12, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingLeft:I

    add-int v9, v11, v12

    .line 3309
    .local v9, x:I
    div-int/lit8 v11, v4, 0x2

    rsub-int/lit8 v11, v11, 0x0

    add-int/2addr v11, v6

    sub-int/2addr v11, v4

    iget v12, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    sub-int/2addr v11, v12

    add-int/lit8 v12, v7, -0x1

    iget v13, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v13, v4

    mul-int/2addr v12, v13

    sub-int v10, v11, v12

    .line 3311
    .local v10, y:I
    if-le v10, v4, :cond_4

    .line 3312
    move v10, v4

    .line 3318
    :cond_2
    :goto_0
    neg-int v11, v8

    if-ge v9, v11, :cond_5

    .line 3319
    neg-int v9, v8

    .line 3325
    :cond_3
    :goto_1
    new-instance v11, Lcom/htc/sunnyCore/view/Vector3F;

    int-to-float v12, v9

    int-to-float v13, v10

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    return-object v11

    .line 3314
    :cond_4
    iget v11, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewHeight:I

    neg-int v11, v11

    if-ge v10, v11, :cond_2

    .line 3315
    iget v11, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewHeight:I

    neg-int v10, v11

    goto :goto_0

    .line 3321
    :cond_5
    iget v11, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewWidth:I

    if-le v9, v11, :cond_3

    .line 3322
    iget v9, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewWidth:I

    goto :goto_1
.end method

.method public resumePreparator(Z)V
    .locals 1
    .parameter "resume"

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    if-nez v0, :cond_1

    .line 1628
    :cond_0
    :goto_0
    return-void

    .line 1619
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p1, :cond_2

    .line 1620
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;->resumePreparator()V

    .line 1626
    :goto_1
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_0

    .line 1627
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->resumeThread()V

    goto :goto_0

    .line 1623
    :cond_2
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;->pausePreparator()V

    goto :goto_1
.end method

.method protected rowBestFit()Z
    .locals 14

    .prologue
    const/4 v13, 0x1

    const v12, 0x7f7fffff

    const/4 v1, 0x0

    .line 1155
    const/4 v8, 0x0

    .line 1156
    .local v8, isChange:Z
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    if-eqz v2, :cond_6

    .line 1157
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingTop:I

    .line 1158
    .local v4, startY:I
    const/4 v11, 0x0

    .line 1159
    .local v11, totalItemHeight:I
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewHeight:I

    .line 1160
    .local v7, height:I
    const/4 v10, -0x1

    .line 1162
    .local v10, numRow:I
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 1163
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 1164
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->create()Lcom/htc/sunnyCore/ViewItem;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/ViewItem;)V

    .line 1166
    .restart local v0       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_0
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v2, v1}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    move v3, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->link(ILcom/htc/sunnyCore/IMediaData;III)V

    .line 1167
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v6

    .line 1168
    .local v6, h:I
    if-ge v6, v13, :cond_1

    .line 1171
    :cond_1
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->unlink()V

    .line 1172
    iget-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v12, v12, v3}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 1173
    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)V

    .line 1175
    const/4 v9, 0x0

    .line 1176
    .local v9, j:I
    :goto_0
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v2, v6

    add-int/2addr v4, v2

    .line 1177
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v2, v7

    shr-int/lit8 v3, v6, 0x2

    add-int/2addr v2, v3

    if-le v4, v2, :cond_7

    .line 1178
    move v10, v9

    .line 1184
    if-gez v10, :cond_2

    .line 1185
    iget v10, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    .line 1188
    :cond_2
    if-le v13, v10, :cond_3

    .line 1189
    const/4 v10, 0x1

    .line 1192
    :cond_3
    sget-boolean v2, Lcom/htc/sunnyCore/widget/gridview/GridView;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "GridView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][GridView][rowBestFit]: mNumColumn="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", numRow="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", totalItemHeight="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", height="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    :cond_4
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    if-eq v10, v2, :cond_5

    .line 1195
    iput v10, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    .line 1196
    const/4 v8, 0x1

    .line 1199
    :cond_5
    if-lez v10, :cond_6

    .line 1200
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingTop:I

    sub-int v2, v7, v2

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v11

    add-int/lit8 v3, v10, -0x1

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    mul-int/2addr v3, v5

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mExtraPaddingTop:I

    .line 1201
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mExtraPaddingTop:I

    if-gez v2, :cond_6

    .line 1202
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mExtraPaddingTop:I

    .line 1206
    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v4           #startY:I
    .end local v6           #h:I
    .end local v7           #height:I
    .end local v9           #j:I
    .end local v10           #numRow:I
    .end local v11           #totalItemHeight:I
    :cond_6
    return v8

    .line 1182
    .restart local v0       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .restart local v4       #startY:I
    .restart local v6       #h:I
    .restart local v7       #height:I
    .restart local v9       #j:I
    .restart local v10       #numRow:I
    .restart local v11       #totalItemHeight:I
    :cond_7
    add-int/2addr v11, v6

    .line 1175
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public setGridViewItem(Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V
    .locals 0
    .parameter "itemPrototype"

    .prologue
    .line 615
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    .line 616
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 2
    .parameter "hspace"

    .prologue
    .line 1608
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1609
    :try_start_0
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewHorizontalSpacing:I

    .line 1610
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1611
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->requestLayout()V

    .line 1612
    return-void

    .line 1610
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setHtcFastScrollerRes(Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;)V
    .locals 0
    .parameter "res"

    .prologue
    .line 1704
    return-void
.end method

.method public setMediaList(Lcom/htc/sunnyCore/IMediaList;)V
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
    .line 3079
    .local p1, list:Lcom/htc/sunnyCore/IMediaList;,"Lcom/htc/sunnyCore/IMediaList<+Lcom/htc/sunnyCore/IMediaData;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;Z)V

    .line 3080
    return-void
.end method

.method public setMediaList(Lcom/htc/sunnyCore/IMediaList;Z)V
    .locals 2
    .parameter
    .parameter "reLayout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunnyCore/IMediaList",
            "<+",
            "Lcom/htc/sunnyCore/IMediaData;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 3086
    .local p1, list:Lcom/htc/sunnyCore/IMediaList;,"Lcom/htc/sunnyCore/IMediaList<+Lcom/htc/sunnyCore/IMediaData;>;"
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3087
    :try_start_0
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 3088
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewListItemCount:I

    .line 3089
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3091
    if-eqz p2, :cond_0

    .line 3092
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->requestLayout()V

    .line 3093
    :cond_0
    return-void

    .line 3088
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    goto :goto_0

    .line 3089
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMediaListIHT_block(Lcom/htc/sunnyCore/IMediaList;)V
    .locals 0
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
    .line 673
    .local p1, list:Lcom/htc/sunnyCore/IMediaList;,"Lcom/htc/sunnyCore/IMediaList<+Lcom/htc/sunnyCore/IMediaData;>;"
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;)V

    .line 674
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->checkSetMediaListComplete_block()V

    .line 675
    return-void
.end method

.method public setNumColumn(I)V
    .locals 3
    .parameter "num"

    .prologue
    .line 1570
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1571
    if-gez p1, :cond_0

    .line 1572
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Column number less than 0!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1575
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1574
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewNumColumn:I

    .line 1575
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1577
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->requestLayout()V

    .line 1578
    return-void
.end method

.method public setNumRow(I)V
    .locals 3
    .parameter "num"

    .prologue
    .line 1584
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1585
    if-gez p1, :cond_0

    .line 1586
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Column number less than 0!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1589
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1588
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewNumRow:I

    .line 1589
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1591
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->requestLayout()V

    .line 1592
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1552
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnItemClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

    .line 1553
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 1540
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mItemLongClickCallback:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;

    .line 1541
    return-void
.end method

.method public setOnItemLongPressVibrateListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongPressVibrateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1564
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnItemLongPressVibrateListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongPressVibrateListener;

    .line 1565
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 1524
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;

    .line 1525
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;

    if-eqz v0, :cond_0

    .line 1527
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;->onScrollStateChangedIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;I)V

    .line 1529
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 1425
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1426
    :try_start_0
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1427
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewOrientation:I

    .line 1429
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1430
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->requestLayout()V

    .line 1431
    return-void

    .line 1429
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setPadding(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 622
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/sunnyCore/view/SViewGroup;->setPadding(IIII)V

    .line 623
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 624
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingChanged:Z

    .line 625
    monitor-exit v1

    .line 626
    return-void

    .line 625
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPreparation(Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;)V
    .locals 3
    .parameter "thumbPreparation"

    .prologue
    .line 2951
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    .line 2953
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2955
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/GridView$RTEPreparation;

    const-string v1, "setPreparation"

    invoke-direct {v0, p0, p0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$RTEPreparation;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2957
    .local v0, setPreparation:Lcom/htc/sunnyCore/RenderThreadEvent;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-ne v1, v2, :cond_1

    .line 2958
    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThreadEvent;->onProcessEventIRT()V

    .line 2962
    .end local v0           #setPreparation:Lcom/htc/sunnyCore/RenderThreadEvent;
    :cond_0
    :goto_0
    return-void

    .line 2960
    .restart local v0       #setPreparation:Lcom/htc/sunnyCore/RenderThreadEvent;
    :cond_1
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    goto :goto_0
.end method

.method public setSelectedHighlight(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 1671
    const/4 v0, 0x0

    .line 1672
    .local v0, isChanged:Z
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1673
    :try_start_0
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mCurrentHighlightIdx:I

    if-eq p1, v1, :cond_0

    .line 1674
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mCurrentHighlightIdx:I

    .line 1675
    const/4 v0, 0x1

    .line 1677
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1679
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1680
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1681
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunnyCore/RenderThreadEvent;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/RenderThreadEvent;->onProcessEventIRT()V

    .line 1686
    :cond_1
    :goto_0
    return-void

    .line 1677
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1682
    :cond_2
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v1, :cond_1

    .line 1683
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunnyCore/RenderThreadEvent;

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    goto :goto_0
.end method

.method public setSelectedHighlightEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1657
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1658
    :try_start_0
    iput-boolean p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedHighlightEnabled:Z

    .line 1659
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1660
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1661
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunnyCore/RenderThreadEvent;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThreadEvent;->onProcessEventIRT()V

    .line 1665
    :cond_0
    :goto_0
    return-void

    .line 1659
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1662
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_0

    .line 1663
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunnyCore/RenderThreadEvent;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1446
    const/4 v0, 0x1

    const v1, 0x7fffffff

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setSelection(IZI)V

    .line 1447
    return-void
.end method

.method protected setSelection(IZ)V
    .locals 1
    .parameter "index"
    .parameter "reLayout"

    .prologue
    .line 1454
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setSelection(IZI)V

    .line 1455
    return-void
.end method

.method public setSelection(IZI)V
    .locals 2
    .parameter "idx"
    .parameter "reLayout"
    .parameter "posY"

    .prologue
    .line 1464
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1465
    :try_start_0
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mResurrectToIdx:I

    .line 1466
    iput p3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mResurrectToOldFirstIndexPositionY:I

    .line 1467
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1469
    if-eqz p2, :cond_0

    .line 1471
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->requestLayout()V

    .line 1473
    :cond_0
    return-void

    .line 1467
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setVerticalSpacing(I)V
    .locals 2
    .parameter "vspace"

    .prologue
    .line 1598
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1599
    :try_start_0
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNewVerticalSpacing:I

    .line 1600
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1601
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->requestLayout()V

    .line 1602
    return-void

    .line 1600
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected startAnimationIRT(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 1635
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->resetGesture()V

    .line 1636
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/view/SViewGroup;->startAnimationIRT(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 1637
    return-void
.end method

.method protected startCooperateAnimation_IRT(IJJLandroid/os/Bundle;)V
    .locals 0
    .parameter "cooperateItemId"
    .parameter "delayTime"
    .parameter "durition"
    .parameter "bundle"

    .prologue
    .line 3345
    return-void
.end method

.method public startDataSetChangeAnimation([I[ILcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V
    .locals 2
    .parameter "deleteIndex"
    .parameter "createIndex"
    .parameter "listener"

    .prologue
    .line 3750
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-ne v0, v1, :cond_1

    .line 3751
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->startDataSetChangeAnimation_IRT([I[ILcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 3763
    :cond_0
    :goto_0
    return-void

    .line 3754
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    if-eqz v0, :cond_0

    .line 3755
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunnyCore/widget/gridview/GridView$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/htc/sunnyCore/widget/gridview/GridView$4;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;[I[ILcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected storeCurrentState_IRT([I)Landroid/os/Bundle;
    .locals 7
    .parameter "deleteIndex"

    .prologue
    .line 3264
    const/4 v2, -0x1

    .line 3265
    .local v2, oldFirstIdx:I
    const/4 v3, 0x1

    .line 3267
    .local v3, oldFirstItemPositionY:I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3269
    .local v0, b:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 3270
    .local v1, c:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v1, :cond_0

    .line 3271
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .line 3272
    iget v3, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    .line 3278
    :goto_0
    const-string v4, "oldFirstIdx"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3279
    const-string v4, "oldFirstItemPositionY"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3281
    return-object v0

    .line 3275
    :cond_0
    const-string v4, "GridView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storeCurrentState_IRT mFirstIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cell=null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updateFirstIdxInScrollMotionIRT(I)V
    .locals 1
    .parameter "removedIdx"

    .prologue
    .line 2787
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    if-gt v0, p1, :cond_0

    .line 2788
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .line 2790
    :cond_0
    return-void
.end method
