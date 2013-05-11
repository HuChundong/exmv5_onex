.class public Landroid/widget/ListView;
.super Landroid/widget/AbsListView;
.source "ListView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListView$CheckForItemReleased;,
        Landroid/widget/ListView$CheckForPressAnimation;,
        Landroid/widget/ListView$ArrowScrollFocusResult;,
        Landroid/widget/ListView$FocusSelector;,
        Landroid/widget/ListView$FixedViewInfo;
    }
.end annotation


# static fields
.field public static final DEFAULT_INTRO_ANIMATION:I = 0x0

.field public static final DOWN_INTRO_ANIMATION:I = 0x1

.field public static final LEFT_INTRO_ANIMATION:I = 0x4

.field private static MAX_DIFF:I = 0x0

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_DIFF:I = 0xf

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field private static final NONSENSITIVE_FACTOR:I = 0xa

.field static final NO_POSITION:I = -0x1

.field public static final RIGHT_INTRO_ANIMATION:I = 0x3

.field public static final UP_INTRO_ANIMATION:I = 0x2


# instance fields
.field isIgnoreFooterViewInBouncing:Z

.field m2DPressAnimationEnabled:Z

.field mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

.field mBouncingMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field mCheckForItemReleased:Landroid/widget/ListView$CheckForItemReleased;

.field private mCheckForPressAnimationDelay:J

.field mClickAnimationScaleX:F

.field mClickAnimationScaleY:F

.field private mCurrent:F

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mFocusSelector:Landroid/widget/ListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInBouncing:Z

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private mOverScrollShadow:Landroid/graphics/drawable/Drawable;

.field private mOverScrollShadowHeight:I

.field private mPendingCheckForPressAnimation:Landroid/widget/ListView$CheckForPressAnimation;

.field private mPre:F

.field mPressAnimators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mPressShadowTopBottom:Landroid/graphics/drawable/Drawable;

.field private mPressedView:Landroid/view/View;

.field mPressedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mReleaseAnimationDuration:I

.field mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mSame:Z

.field mScaleXDifference:F

.field mScaleYDifference:F

.field mShouldDrawPressShadow:Z

.field private mStart:F

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3796
    const/16 v0, 0x24

    sput v0, Landroid/widget/ListView;->MAX_DIFF:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 223
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 227
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 127
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 141
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 143
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 146
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 151
    new-instance v9, Landroid/widget/ListView$ArrowScrollFocusResult;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>(Landroid/widget/ListView$1;)V

    iput-object v9, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 184
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/ListView;->mShouldDrawPressShadow:Z

    .line 189
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    .line 191
    const/high16 v9, 0x4120

    iput v9, p0, Landroid/widget/ListView;->mScaleXDifference:F

    .line 192
    const/high16 v9, 0x4120

    iput v9, p0, Landroid/widget/ListView;->mScaleYDifference:F

    .line 193
    const v9, 0x3f666666

    iput v9, p0, Landroid/widget/ListView;->mClickAnimationScaleX:F

    .line 194
    const v9, 0x3f666666

    iput v9, p0, Landroid/widget/ListView;->mClickAnimationScaleY:F

    .line 196
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/ListView;->mOverScrollShadowHeight:I

    .line 203
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Landroid/widget/ListView;->mPressedViews:Ljava/util/ArrayList;

    .line 208
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Landroid/widget/ListView;->mPressAnimators:Ljava/util/Map;

    .line 3794
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/ListView;->mSame:Z

    .line 3798
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/ListView;->mInBouncing:Z

    .line 3826
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/ListView;->isIgnoreFooterViewInBouncing:Z

    .line 4035
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/ListView;->mPressedView:Landroid/view/View;

    .line 4036
    const/16 v9, 0x3c

    iput v9, p0, Landroid/widget/ListView;->mReleaseAnimationDuration:I

    .line 4037
    const-wide/16 v9, 0x64

    iput-wide v9, p0, Landroid/widget/ListView;->mCheckForPressAnimationDelay:J

    .line 4213
    new-instance v9, Landroid/widget/ListView$2;

    invoke-direct {v9, p0}, Landroid/widget/ListView$2;-><init>(Landroid/widget/ListView;)V

    iput-object v9, p0, Landroid/widget/ListView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 229
    sget-object v9, Lcom/android/internal/R$styleable;->ListView:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 232
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 234
    .local v4, entries:[Ljava/lang/CharSequence;
    if-eqz v4, :cond_0

    .line 235
    new-instance v9, Landroid/widget/ArrayAdapter;

    const v10, 0x1090003

    invoke-direct {v9, p1, v10, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 239
    :cond_0
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 240
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 242
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 245
    :cond_1
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 247
    .local v6, osHeader:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_2

    .line 248
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 251
    :cond_2
    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 253
    .local v5, osFooter:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_3

    .line 254
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 258
    :cond_3
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 260
    .local v3, dividerHeight:I
    if-eqz v3, :cond_4

    .line 261
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 264
    :cond_4
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 265
    const/4 v9, 0x4

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 267
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 270
    new-instance v9, Landroid/view/GestureDetector;

    invoke-direct {v9, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v9, p0, Landroid/widget/ListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 271
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 272
    .local v7, res:Landroid/content/res/Resources;
    const-string v9, "common_rearrange_frame_bottom"

    const-string v10, "drawable"

    const-string v11, "com.htc"

    invoke-virtual {v7, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 273
    .local v8, resID:I
    if-eqz v8, :cond_5

    .line 274
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Landroid/widget/ListView;->mPressShadowTopBottom:Landroid/graphics/drawable/Drawable;

    .line 277
    :cond_5
    const-string v9, "common_list_shadow"

    const-string v10, "drawable"

    const-string v11, "com.htc"

    invoke-virtual {v7, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 278
    if-eqz v8, :cond_6

    .line 279
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Landroid/widget/ListView;->mOverScrollShadow:Landroid/graphics/drawable/Drawable;

    .line 280
    iget-object v9, p0, Landroid/widget/ListView;->mOverScrollShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    iput v9, p0, Landroid/widget/ListView;->mOverScrollShadowHeight:I

    .line 284
    :cond_6
    const/4 v9, 0x1

    const/16 v10, 0x5dd

    const-string v11, " LISTVIEW_PRESS "

    invoke-static {v9, p0, v10, v11}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v9

    iput-object v9, p0, Landroid/widget/ListView;->mPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 286
    const/4 v9, 0x1

    const/16 v10, 0x5dd

    const-string v11, " LISTVIEW_RELEASE "

    invoke-static {v9, p0, v10, v11}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v9

    iput-object v9, p0, Landroid/widget/ListView;->mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 288
    const/4 v9, 0x1

    const/16 v10, 0x5dd

    const-string v11, " LISTVIEW_BOUNCING "

    invoke-static {v9, p0, v10, v11}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v9

    iput-object v9, p0, Landroid/widget/ListView;->mBouncingMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 291
    const-string v9, "listview_scalex_difference"

    const-string v10, "integer"

    const-string v11, "com.htc"

    invoke-virtual {v7, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 292
    .local v1, clickScaleId:I
    if-eqz v1, :cond_7

    .line 293
    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Landroid/widget/ListView;->mScaleXDifference:F

    .line 295
    :cond_7
    const-string v9, "listview_scaley_difference"

    const-string v10, "integer"

    const-string v11, "com.htc"

    invoke-virtual {v7, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 296
    if-eqz v1, :cond_8

    .line 297
    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Landroid/widget/ListView;->mScaleYDifference:F

    .line 299
    :cond_8
    return-void
.end method

.method static synthetic access$200(Landroid/widget/ListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/widget/ListView;->doAnimFinalize()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/ListView;Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Landroid/widget/ListView;->get2DPressAnimation(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$401(Landroid/widget/ListView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 3135
    add-int/lit8 v2, p2, -0x1

    .line 3136
    .local v2, abovePosition:I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3137
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 3138
    .local v3, edgeOfNewChild:I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3140
    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 3144
    add-int/lit8 v2, p2, 0x1

    .line 3145
    .local v2, belowPosition:I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3146
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 3147
    .local v3, edgeOfNewChild:I
    const/4 v4, 0x1

    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3149
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 314
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 317
    .local v1, childCount:I
    if-lez v1, :cond_2

    .line 320
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 323
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 324
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 325
    .local v2, delta:I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 328
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 330
    :cond_0
    if-gez v2, :cond_1

    .line 332
    const/4 v2, 0x0

    .line 350
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 351
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 354
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_2
    return-void

    .line 336
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 337
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 339
    .restart local v2       #delta:I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 342
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 345
    :cond_4
    if-lez v2, :cond_1

    .line 346
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private amountToScroll(II)I
    .locals 12
    .parameter "direction"
    .parameter "nextSelectedPosition"

    .prologue
    .line 2750
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v11

    .line 2751
    .local v4, listBottom:I
    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 2753
    .local v5, listTop:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 2755
    .local v7, numChildren:I
    const/16 v10, 0x82

    if-ne p1, v10, :cond_5

    .line 2756
    add-int/lit8 v3, v7, -0x1

    .line 2757
    .local v3, indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    .line 2758
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2761
    :cond_0
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2762
    .local v8, positionToMakeVisible:I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2764
    .local v9, viewToMakeVisible:Landroid/view/View;
    move v1, v4

    .line 2765
    .local v1, goalBottom:I
    iget v10, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_1

    .line 2766
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v1, v10

    .line 2769
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v1, :cond_2

    .line 2771
    const/4 v10, 0x0

    .line 2817
    .end local v1           #goalBottom:I
    :goto_0
    return v10

    .line 2774
    .restart local v1       #goalBottom:I
    :cond_2
    const/4 v10, -0x1

    if-eq p2, v10, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_3

    .line 2777
    const/4 v10, 0x0

    goto :goto_0

    .line 2780
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v0, v10, v1

    .line 2782
    .local v0, amountToScroll:I
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Landroid/widget/ListView;->mItemCount:I

    if-ne v10, v11, :cond_4

    .line 2784
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v6, v10, v4

    .line 2785
    .local v6, max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2788
    .end local v6           #max:I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_0

    .line 2790
    .end local v0           #amountToScroll:I
    .end local v1           #goalBottom:I
    .end local v3           #indexToMakeVisible:I
    .end local v8           #positionToMakeVisible:I
    .end local v9           #viewToMakeVisible:Landroid/view/View;
    :cond_5
    const/4 v3, 0x0

    .line 2791
    .restart local v3       #indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_6

    .line 2792
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2794
    :cond_6
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2795
    .restart local v8       #positionToMakeVisible:I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2796
    .restart local v9       #viewToMakeVisible:Landroid/view/View;
    move v2, v5

    .line 2797
    .local v2, goalTop:I
    if-lez v8, :cond_7

    .line 2798
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v2, v10

    .line 2800
    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v2, :cond_8

    .line 2802
    const/4 v10, 0x0

    goto :goto_0

    .line 2805
    :cond_8
    const/4 v10, -0x1

    if-eq p2, v10, :cond_9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_9

    .line 2808
    const/4 v10, 0x0

    goto :goto_0

    .line 2811
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v0, v2, v10

    .line 2812
    .restart local v0       #amountToScroll:I
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v10, :cond_a

    .line 2814
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v6, v5, v10

    .line 2815
    .restart local v6       #max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2817
    .end local v6           #max:I
    :cond_a
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_0
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4
    .parameter "direction"
    .parameter "newFocus"
    .parameter "positionOfNewFocus"

    .prologue
    .line 3009
    const/4 v0, 0x0

    .line 3010
    .local v0, amountToScroll:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3011
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3012
    const/16 v2, 0x21

    if-ne p1, v2, :cond_1

    .line 3013
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    .line 3014
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 3015
    if-lez p3, :cond_0

    .line 3016
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 3028
    :cond_0
    :goto_0
    return v0

    .line 3020
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 3021
    .local v1, listBottom:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_0

    .line 3022
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 3023
    iget v2, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    .line 3024
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;
    .locals 17
    .parameter "direction"

    .prologue
    .line 2907
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v11

    .line 2909
    .local v11, selectedView:Landroid/view/View;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/view/View;->hasFocus()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2910
    invoke-virtual {v11}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    .line 2911
    .local v8, oldFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 2936
    .end local v8           #oldFocus:Landroid/view/View;
    .local v7, newFocus:Landroid/view/View;
    :goto_0
    if-eqz v7, :cond_c

    .line 2937
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/ListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v9

    .line 2941
    .local v9, positionOfNewFocus:I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v9, v14, :cond_a

    .line 2942
    invoke-direct/range {p0 .. p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v10

    .line 2943
    .local v10, selectablePosition:I
    const/4 v14, -0x1

    if-eq v10, v14, :cond_a

    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_0

    if-lt v10, v9, :cond_1

    :cond_0
    const/16 v14, 0x21

    move/from16 v0, p1

    if-ne v0, v14, :cond_a

    if-le v10, v9, :cond_a

    .line 2946
    :cond_1
    const/4 v14, 0x0

    .line 2968
    .end local v9           #positionOfNewFocus:I
    .end local v10           #selectablePosition:I
    :goto_1
    return-object v14

    .line 2913
    .end local v7           #newFocus:Landroid/view/View;
    :cond_2
    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_6

    .line 2914
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v14, :cond_3

    const/4 v12, 0x1

    .line 2915
    .local v12, topFadingEdgeShowing:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->top:I

    if-eqz v12, :cond_4

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_3
    add-int v5, v15, v14

    .line 2917
    .local v5, listTop:I
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    if-le v14, v5, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v13

    .line 2921
    .local v13, ySearchPoint:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 2933
    .end local v5           #listTop:I
    .end local v12           #topFadingEdgeShowing:Z
    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v7

    .restart local v7       #newFocus:Landroid/view/View;
    goto :goto_0

    .line 2914
    .end local v7           #newFocus:Landroid/view/View;
    .end local v13           #ySearchPoint:I
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 2915
    .restart local v12       #topFadingEdgeShowing:Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .restart local v5       #listTop:I
    :cond_5
    move v13, v5

    .line 2917
    goto :goto_4

    .line 2923
    .end local v5           #listTop:I
    .end local v12           #topFadingEdgeShowing:Z
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ListView;->mItemCount:I

    if-ge v14, v15, :cond_7

    const/4 v2, 0x1

    .line 2925
    .local v2, bottomFadingEdgeShowing:Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v14, v15

    if-eqz v2, :cond_8

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_7
    sub-int v4, v15, v14

    .line 2927
    .local v4, listBottom:I
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v14

    if-ge v14, v4, :cond_9

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 2931
    .restart local v13       #ySearchPoint:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    .line 2923
    .end local v2           #bottomFadingEdgeShowing:Z
    .end local v4           #listBottom:I
    .end local v13           #ySearchPoint:I
    :cond_7
    const/4 v2, 0x0

    goto :goto_6

    .line 2925
    .restart local v2       #bottomFadingEdgeShowing:Z
    :cond_8
    const/4 v14, 0x0

    goto :goto_7

    .restart local v4       #listBottom:I
    :cond_9
    move v13, v4

    .line 2927
    goto :goto_8

    .line 2950
    .end local v2           #bottomFadingEdgeShowing:Z
    .end local v4           #listBottom:I
    .restart local v7       #newFocus:Landroid/view/View;
    .restart local v9       #positionOfNewFocus:I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v9}, Landroid/widget/ListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v3

    .line 2952
    .local v3, focusScroll:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v6

    .line 2953
    .local v6, maxScrollAmount:I
    if-ge v3, v6, :cond_b

    .line 2955
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 2956
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v3}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 2957
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 2958
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v14

    if-ge v14, v6, :cond_c

    .line 2963
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 2964
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v6}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 2965
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 2968
    .end local v3           #focusScroll:I
    .end local v6           #maxScrollAmount:I
    .end local v9           #positionOfNewFocus:I
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method private arrowScrollImpl(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 2534
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 2608
    :cond_0
    :goto_0
    return v9

    .line 2538
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2539
    .local v6, selectedView:Landroid/view/View;
    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 2541
    .local v5, selectedPos:I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    .line 2542
    .local v4, nextSelectedPosition:I
    invoke-direct {p0, p1, v4}, Landroid/widget/ListView;->amountToScroll(II)I

    move-result v0

    .line 2545
    .local v0, amountToScroll:I
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_b

    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;

    move-result-object v1

    .line 2546
    .local v1, focusResult:Landroid/widget/ListView$ArrowScrollFocusResult;
    :goto_1
    if-eqz v1, :cond_2

    .line 2547
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2548
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2551
    :cond_2
    if-eqz v1, :cond_c

    move v3, v8

    .line 2552
    .local v3, needToRedraw:Z
    :goto_2
    if-eq v4, v10, :cond_4

    .line 2553
    if-eqz v1, :cond_d

    move v7, v8

    :goto_3
    invoke-direct {p0, v6, p1, v4, v7}, Landroid/widget/ListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2554
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 2555
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2556
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2557
    move v5, v4

    .line 2558
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_3

    if-nez v1, :cond_3

    .line 2561
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2562
    .local v2, focused:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 2563
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2566
    .end local v2           #focused:Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    .line 2567
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 2570
    :cond_4
    if-lez v0, :cond_5

    .line 2571
    const/16 v7, 0x21

    if-ne p1, v7, :cond_e

    .end local v0           #amountToScroll:I
    :goto_4
    invoke-direct {p0, v0}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 2572
    const/4 v3, 0x1

    .line 2577
    :cond_5
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_7

    if-nez v1, :cond_7

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2579
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2580
    .restart local v2       #focused:Landroid/view/View;
    invoke-direct {p0, v2, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0, v2}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v7

    if-lez v7, :cond_7

    .line 2581
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2586
    .end local v2           #focused:Landroid/view/View;
    :cond_7
    if-ne v4, v10, :cond_8

    if-eqz v6, :cond_8

    invoke-direct {p0, v6, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 2588
    const/4 v6, 0x0

    .line 2589
    invoke-virtual {p0}, Landroid/widget/ListView;->hideSelector()V

    .line 2593
    iput v10, p0, Landroid/widget/ListView;->mResurrectToPosition:I

    .line 2596
    :cond_8
    if-eqz v3, :cond_0

    .line 2597
    if-eqz v6, :cond_9

    .line 2598
    invoke-virtual {p0, v5, v6}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 2599
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 2601
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v7

    if-nez v7, :cond_a

    .line 2602
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2604
    :cond_a
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    move v9, v8

    .line 2605
    goto/16 :goto_0

    .line 2545
    .end local v1           #focusResult:Landroid/widget/ListView$ArrowScrollFocusResult;
    .end local v3           #needToRedraw:Z
    .restart local v0       #amountToScroll:I
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_1

    .restart local v1       #focusResult:Landroid/widget/ListView$ArrowScrollFocusResult;
    :cond_c
    move v3, v9

    .line 2551
    goto/16 :goto_2

    .restart local v3       #needToRedraw:Z
    :cond_d
    move v7, v9

    .line 2553
    goto :goto_3

    .line 2571
    :cond_e
    neg-int v0, v0

    goto :goto_4
.end method

.method private cancelPressAnimation()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    .line 4277
    iget-object v3, p0, Landroid/widget/ListView;->mPendingCheckForPressAnimation:Landroid/widget/ListView$CheckForPressAnimation;

    if-eqz v3, :cond_0

    .line 4278
    iget-object v3, p0, Landroid/widget/ListView;->mPendingCheckForPressAnimation:Landroid/widget/ListView$CheckForPressAnimation;

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4280
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Landroid/widget/ListView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 4281
    iget-object v3, p0, Landroid/widget/ListView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 4282
    .local v2, v:Landroid/view/View;
    iget-object v3, p0, Landroid/widget/ListView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 4283
    .local v0, anim:Landroid/animation/ObjectAnimator;
    if-eqz v0, :cond_1

    .line 4284
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 4285
    iget-object v3, p0, Landroid/widget/ListView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4287
    :cond_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 4288
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 4280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4290
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    .end local v2           #v:Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/ListView;->mPressedView:Landroid/view/View;

    .line 4291
    iget-object v3, p0, Landroid/widget/ListView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 4292
    iget-object v3, p0, Landroid/widget/ListView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 4293
    return-void
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 625
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 626
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 628
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 629
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView$FixedViewInfo;

    iget-object v0, v4, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 630
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 631
    .local v3, p:Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 632
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 628
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 636
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x82

    const/16 v6, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2226
    iget-object v5, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/ListView;->mIsAttached:Z

    if-nez v5, :cond_2

    :cond_0
    move v4, v3

    .line 2373
    :cond_1
    :goto_0
    return v4

    .line 2230
    :cond_2
    iget-boolean v5, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-eqz v5, :cond_3

    .line 2231
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2234
    :cond_3
    const/4 v2, 0x0

    .line 2235
    .local v2, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2237
    .local v0, action:I
    if-eq v0, v4, :cond_4

    .line 2238
    sparse-switch p1, :sswitch_data_0

    .line 2354
    :cond_4
    :goto_1
    if-nez v2, :cond_1

    .line 2358
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/ListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2362
    packed-switch v0, :pswitch_data_0

    move v4, v3

    .line 2373
    goto :goto_0

    .line 2240
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2241
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2242
    if-nez v2, :cond_4

    move v1, p2

    .line 2243
    .end local p2
    .local v1, count:I
    :goto_2
    add-int/lit8 p2, v1, -0x1

    .end local v1           #count:I
    .restart local p2
    if-lez v1, :cond_4

    .line 2244
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2245
    const/4 v2, 0x1

    move v1, p2

    .end local p2
    .restart local v1       #count:I
    goto :goto_2

    .line 2251
    .end local v1           #count:I
    .restart local p2
    :cond_5
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2252
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move v2, v4

    :goto_3
    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_3

    .line 2257
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2258
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2259
    if-nez v2, :cond_4

    move v1, p2

    .line 2260
    .end local p2
    .restart local v1       #count:I
    :goto_4
    add-int/lit8 p2, v1, -0x1

    .end local v1           #count:I
    .restart local p2
    if-lez v1, :cond_4

    .line 2261
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2262
    const/4 v2, 0x1

    move v1, p2

    .end local p2
    .restart local v1       #count:I
    goto :goto_4

    .line 2268
    .end local v1           #count:I
    .restart local p2
    :cond_8
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2269
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    move v2, v4

    :goto_5
    goto :goto_1

    :cond_a
    move v2, v3

    goto :goto_5

    .line 2274
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2275
    const/16 v5, 0x11

    invoke-direct {p0, v5}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto :goto_1

    .line 2280
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2281
    const/16 v5, 0x42

    invoke-direct {p0, v5}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_1

    .line 2287
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2288
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2289
    if-nez v2, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 2291
    invoke-virtual {p0}, Landroid/widget/ListView;->keyPressed()V

    .line 2292
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2298
    :sswitch_5
    iget-object v5, p0, Landroid/widget/ListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/widget/ListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2299
    :cond_b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2300
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_c
    move v2, v4

    .line 2304
    :cond_d
    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_e
    move v2, v3

    .line 2300
    goto :goto_6

    .line 2301
    :cond_f
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2302
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_10
    move v2, v4

    :goto_7
    goto :goto_6

    :cond_11
    move v2, v3

    goto :goto_7

    .line 2309
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2310
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_12
    move v2, v4

    :goto_8
    goto/16 :goto_1

    :cond_13
    move v2, v3

    goto :goto_8

    .line 2311
    :cond_14
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2312
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_15
    move v2, v4

    :goto_9
    goto/16 :goto_1

    :cond_16
    move v2, v3

    goto :goto_9

    .line 2317
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2318
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_17
    move v2, v4

    :goto_a
    goto/16 :goto_1

    :cond_18
    move v2, v3

    goto :goto_a

    .line 2319
    :cond_19
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2320
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_1a
    move v2, v4

    :goto_b
    goto/16 :goto_1

    :cond_1b
    move v2, v3

    goto :goto_b

    .line 2325
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2326
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_1c
    move v2, v4

    :goto_c
    goto/16 :goto_1

    :cond_1d
    move v2, v3

    goto :goto_c

    .line 2331
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2332
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    :cond_1e
    move v2, v4

    :goto_d
    goto/16 :goto_1

    :cond_1f
    move v2, v3

    goto :goto_d

    .line 2364
    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2367
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2370
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2238
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    .line 2362
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 10
    .parameter "childCount"

    .prologue
    .line 1530
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v6, v7, -0x1

    .line 1531
    .local v6, lastPosition:I
    iget v7, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_2

    if-lez p1, :cond_2

    .line 1534
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1537
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1540
    .local v4, lastBottom:I
    iget v7, p0, Landroid/widget/ListView;->mBottom:I

    iget v8, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 1544
    .local v1, end:I
    sub-int v0, v1, v4

    .line 1545
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1546
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1550
    .local v3, firstTop:I
    if-lez v0, :cond_2

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_2

    .line 1551
    :cond_0
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1553
    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1556
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1557
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 1560
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1562
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1567
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstTop:I
    .end local v4           #lastBottom:I
    .end local v5           #lastChild:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 11
    .parameter "childCount"

    .prologue
    .line 1579
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    .line 1582
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1585
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1588
    .local v2, firstTop:I
    iget-object v8, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 1591
    .local v6, start:I
    iget v8, p0, Landroid/widget/ListView;->mBottom:I

    iget v9, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 1595
    .local v0, end:I
    sub-int v7, v2, v6

    .line 1596
    .local v7, topOffset:I
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1597
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1598
    .local v3, lastBottom:I
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v5, v8, -0x1

    .line 1602
    .local v5, lastPosition:I
    if-lez v7, :cond_2

    .line 1603
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 1604
    :cond_0
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 1606
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1609
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1610
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_2

    .line 1613
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1615
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1622
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_2
    :goto_0
    return-void

    .line 1617
    .restart local v0       #end:I
    .restart local v1       #firstChild:Landroid/view/View;
    .restart local v2       #firstTop:I
    .restart local v3       #lastBottom:I
    .restart local v4       #lastChild:Landroid/view/View;
    .restart local v5       #lastPosition:I
    .restart local v6       #start:I
    .restart local v7       #topOffset:I
    :cond_3
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_2

    .line 1618
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .parameter "descendant"

    .prologue
    .line 3039
    const/4 v0, 0x0

    .line 3040
    .local v0, distance:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3041
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3042
    iget v2, p0, Landroid/widget/ListView;->mBottom:I

    iget v3, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 3043
    .local v1, listBottom:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_1

    .line 3044
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 3048
    :cond_0
    :goto_0
    return v0

    .line 3045
    :cond_1
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_0

    .line 3046
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private doAnimFinalize()V
    .locals 4

    .prologue
    .line 4070
    iget-boolean v2, p0, Landroid/widget/ListView;->mInBouncing:Z

    if-nez v2, :cond_0

    .line 4080
    :goto_0
    return-void

    .line 4072
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 4073
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 4074
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 4073
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4076
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 4078
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/ListView;->mInBouncing:Z

    .line 4079
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    goto :goto_0
.end method

.method private drawPressShadow(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const-wide v8, 0x3fef0a3d70a3d70aL

    .line 4445
    iget-object v6, p0, Landroid/widget/ListView;->mPressShadowTopBottom:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_1

    .line 4467
    :cond_0
    return-void

    .line 4447
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 4448
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    iget-boolean v6, p0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    if-eqz v6, :cond_0

    .line 4449
    iget-boolean v6, p0, Landroid/widget/ListView;->isIgnoreFooterViewInBouncing:Z

    if-eqz v6, :cond_2

    add-int/lit8 v6, v1, -0x1

    if-eq v2, v6, :cond_0

    .line 4452
    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4453
    .local v0, animatedView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v3

    .line 4454
    .local v3, scaleX:F
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v4

    .line 4456
    .local v4, scaleY:F
    float-to-double v6, v3

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_3

    float-to-double v6, v4

    cmpg-double v6, v6, v8

    if-gez v6, :cond_4

    .line 4457
    :cond_3
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 4458
    .local v5, shadowBounds:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 4459
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 4460
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 4461
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 4463
    iget-object v6, p0, Landroid/widget/ListView;->mPressShadowTopBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4464
    iget-object v6, p0, Landroid/widget/ListView;->mPressShadowTopBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4448
    .end local v5           #shadowBounds:Landroid/graphics/Rect;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 3
    .parameter "sel"
    .parameter "position"

    .prologue
    .line 897
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 898
    .local v0, dividerHeight:I
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 899
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 900
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 901
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 907
    :goto_0
    return-void

    .line 903
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 904
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 905
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    const/4 v3, 0x1

    .line 779
    const/4 v8, 0x0

    .line 781
    .local v8, selectedView:Landroid/view/View;
    iget v0, p0, Landroid/widget/ListView;->mBottom:I

    iget v1, p0, Landroid/widget/ListView;->mTop:I

    sub-int v7, v0, v1

    .line 782
    .local v7, end:I
    iget v0, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 783
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v0

    .line 786
    :cond_0
    :goto_0
    if-ge p2, v7, :cond_3

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge p1, v0, :cond_3

    .line 788
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    move v5, v3

    .line 789
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 791
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 792
    if-eqz v5, :cond_1

    .line 793
    move-object v8, v6

    .line 795
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 796
    goto :goto_0

    .line 788
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 798
    :cond_3
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    .line 799
    return-object v8
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    const/4 v3, 0x1

    .line 865
    sub-int v6, p2, p1

    .line 867
    .local v6, height:I
    invoke-virtual {p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v1

    .line 869
    .local v1, position:I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    .line 871
    .local v7, sel:Landroid/view/View;
    iput v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 873
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 874
    .local v8, selHeight:I
    if-gt v8, v6, :cond_0

    .line 875
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 878
    :cond_0
    invoke-direct {p0, v7, v1}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 880
    iget-boolean v0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v0, :cond_1

    .line 881
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 886
    :goto_0
    return-object v7

    .line 883
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 921
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v8

    .line 922
    .local v8, fadingEdgeLength:I
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 926
    .local v2, selectedPosition:I
    move/from16 v0, p2

    invoke-direct {p0, v0, v8, v2}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v13

    .line 928
    .local v13, topSelectionPixel:I
    move/from16 v0, p3

    invoke-direct {p0, v0, v8, v2}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v7

    .line 931
    .local v7, bottomSelectionPixel:I
    const/4 v4, 0x1

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 935
    .local v10, sel:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v7, :cond_1

    .line 938
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v1, v13

    .line 942
    .local v11, spaceAbove:I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v1, v7

    .line 943
    .local v12, spaceBelow:I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 946
    .local v9, offset:I
    neg-int v1, v9

    invoke-virtual {v10, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 962
    .end local v9           #offset:I
    .end local v11           #spaceAbove:I
    .end local v12           #spaceBelow:I
    :cond_0
    :goto_0
    invoke-direct {p0, v10, v2}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 964
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    .line 965
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 970
    :goto_1
    return-object v10

    .line 947
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v1, v13, :cond_0

    .line 950
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v13, v1

    .line 954
    .restart local v11       #spaceAbove:I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v7, v1

    .line 955
    .restart local v12       #spaceBelow:I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 958
    .restart local v9       #offset:I
    invoke-virtual {v10, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 967
    .end local v9           #offset:I
    .end local v11           #spaceAbove:I
    .end local v12           #spaceBelow:I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 2
    .parameter "nextTop"

    .prologue
    .line 845
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 846
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 847
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 848
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 850
    :cond_0
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "top"

    .prologue
    const/4 v3, 0x1

    .line 1482
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 1483
    .local v5, tempIsSelected:Z
    :goto_0
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1485
    .local v10, temp:Landroid/view/View;
    iput p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1490
    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1491
    .local v9, dividerHeight:I
    iget-boolean v0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1492
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1494
    .local v6, above:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1495
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1496
    .local v7, below:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    .line 1497
    .local v8, childCount:I
    if-lez v8, :cond_0

    .line 1498
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 1511
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    .line 1516
    .end local v10           #temp:Landroid/view/View;
    :goto_2
    return-object v10

    .line 1482
    .end local v5           #tempIsSelected:Z
    .end local v6           #above:Landroid/view/View;
    .end local v7           #below:Landroid/view/View;
    .end local v8           #childCount:I
    .end local v9           #dividerHeight:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1501
    .restart local v5       #tempIsSelected:Z
    .restart local v9       #dividerHeight:I
    .restart local v10       #temp:Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1503
    .restart local v7       #below:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1504
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1505
    .restart local v6       #above:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    .line 1506
    .restart local v8       #childCount:I
    if-lez v8, :cond_0

    .line 1507
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1

    .line 1513
    :cond_3
    if-eqz v6, :cond_4

    move-object v10, v6

    .line 1514
    goto :goto_2

    :cond_4
    move-object v10, v7

    .line 1516
    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v3, 0x0

    .line 813
    const/4 v8, 0x0

    .line 815
    .local v8, selectedView:Landroid/view/View;
    const/4 v7, 0x0

    .line 816
    .local v7, end:I
    iget v0, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 817
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 820
    :cond_0
    :goto_0
    if-le p2, v7, :cond_3

    if-ltz p1, :cond_3

    .line 822
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    .line 823
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 824
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 825
    if-eqz v5, :cond_1

    .line 826
    move-object v8, v6

    .line 828
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 829
    goto :goto_0

    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_2
    move v5, v3

    .line 822
    goto :goto_1

    .line 831
    :cond_3
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 832
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    .line 833
    return-object v8
.end method

.method private get2DPressAnimation(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 13
    .parameter "animatedView"

    .prologue
    const/high16 v12, 0x3f80

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 4229
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v6, v7

    .line 4230
    .local v6, width:F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 4232
    .local v0, height:F
    iget v7, p0, Landroid/widget/ListView;->mScaleYDifference:F

    sub-float v7, v0, v7

    div-float v5, v7, v0

    .line 4233
    .local v5, scaleY:F
    iget v7, p0, Landroid/widget/ListView;->mScaleXDifference:F

    sub-float v7, v6, v7

    div-float v4, v7, v6

    .line 4235
    .local v4, scaleX:F
    const-string/jumbo v7, "scaleX"

    new-array v8, v11, [F

    aput v12, v8, v9

    aput v4, v8, v10

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 4236
    .local v2, pvhScaleX:Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v7, "scaleY"

    new-array v8, v11, [F

    aput v12, v8, v9

    aput v5, v8, v10

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 4237
    .local v3, pvhScaleY:Landroid/animation/PropertyValuesHolder;
    new-array v7, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v7, v9

    aput-object v3, v7, v10

    invoke-static {p1, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 4238
    .local v1, pressAnim:Landroid/animation/ObjectAnimator;
    const-wide/16 v7, 0x64

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4239
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4240
    iget-object v7, p0, Landroid/widget/ListView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4241
    return-object v1
.end method

.method private get2DReleaseAnimation(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;
    .locals 12
    .parameter "animatedView"
    .parameter "onlyRelease"

    .prologue
    .line 4250
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v7, v8

    .line 4251
    .local v7, width:F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v1, v8

    .line 4253
    .local v1, height:F
    iget v8, p0, Landroid/widget/ListView;->mScaleYDifference:F

    sub-float v8, v1, v8

    div-float v6, v8, v1

    .line 4254
    .local v6, scaleY:F
    iget v8, p0, Landroid/widget/ListView;->mScaleXDifference:F

    sub-float v8, v7, v8

    div-float v5, v8, v7

    .line 4255
    .local v5, scaleX:F
    const/4 v2, 0x0

    .line 4256
    .local v2, pvhScaleX:Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x0

    .line 4257
    .local v3, pvhScaleY:Landroid/animation/PropertyValuesHolder;
    iget v8, p0, Landroid/widget/ListView;->mReleaseAnimationDuration:I

    add-int/lit8 v0, v8, 0x64

    .line 4258
    .local v0, duration:I
    if-eqz p2, :cond_0

    .line 4259
    const-string/jumbo v8, "scaleX"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v5, v9, v10

    const/4 v10, 0x1

    const/high16 v11, 0x3f80

    aput v11, v9, v10

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 4260
    const-string/jumbo v8, "scaleY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v6, v9, v10

    const/4 v10, 0x1

    const/high16 v11, 0x3f80

    aput v11, v9, v10

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 4261
    iget v0, p0, Landroid/widget/ListView;->mReleaseAnimationDuration:I

    .line 4266
    :goto_0
    const/4 v8, 0x2

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-static {p1, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 4267
    .local v4, releaseAnimation:Landroid/animation/ObjectAnimator;
    int-to-long v8, v0

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4268
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4269
    iget-object v8, p0, Landroid/widget/ListView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v4, v8}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4270
    return-object v4

    .line 4263
    .end local v4           #releaseAnimation:Landroid/animation/ObjectAnimator;
    :cond_0
    const-string/jumbo v8, "scaleX"

    const/4 v9, 0x3

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    aput v11, v9, v10

    const/4 v10, 0x1

    aput v5, v9, v10

    const/4 v10, 0x2

    const/high16 v11, 0x3f80

    aput v11, v9, v10

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 4264
    const-string/jumbo v8, "scaleY"

    const/4 v9, 0x3

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    aput v11, v9, v10

    const/4 v10, 0x1

    aput v6, v9, v10

    const/4 v10, 0x2

    const/high16 v11, 0x3f80

    aput v11, v9, v10

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    goto :goto_0
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    .line 2734
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .locals 2
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 983
    move v0, p1

    .line 984
    .local v0, bottomSelectionPixel:I
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 985
    sub-int/2addr v0, p2

    .line 987
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 1000
    move v0, p1

    .line 1001
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_0

    .line 1002
    add-int/2addr v0, p2

    .line 1004
    :cond_0
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    .line 2469
    const/16 v5, 0x11

    if-eq p1, v5, :cond_0

    const/16 v5, 0x42

    if-eq p1, v5, :cond_0

    .line 2470
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2474
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 2475
    .local v3, numChildren:I
    iget-boolean v5, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2476
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 2477
    .local v4, selectedView:Landroid/view/View;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 2480
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2481
    .local v0, currentFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #selectedView:Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2483
    .local v2, nextFocus:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2485
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2486
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2487
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Landroid/widget/ListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2488
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2489
    const/4 v5, 0x1

    .line 2503
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :goto_0
    return v5

    .line 2496
    .restart local v0       #currentFocus:Landroid/view/View;
    .restart local v2       #nextFocus:Landroid/view/View;
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2498
    .local v1, globalNextFocus:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2499
    invoke-direct {p0, v1, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    .line 2503
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v1           #globalNextFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 10
    .parameter "selectedView"
    .parameter "direction"
    .parameter "newSelectedPosition"
    .parameter "newFocusAssigned"

    .prologue
    .line 2626
    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    .line 2627
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2637
    :cond_0
    const/4 v5, 0x0

    .line 2638
    .local v5, topSelected:Z
    iget v8, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v4, v8, v9

    .line 2639
    .local v4, selectedIndex:I
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v2, p3, v8

    .line 2640
    .local v2, nextSelectedIndex:I
    const/16 v8, 0x21

    if-ne p2, v8, :cond_3

    .line 2641
    move v7, v2

    .line 2642
    .local v7, topViewIndex:I
    move v1, v4

    .line 2643
    .local v1, bottomViewIndex:I
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2644
    .local v6, topView:Landroid/view/View;
    move-object v0, p1

    .line 2645
    .local v0, bottomView:Landroid/view/View;
    const/4 v5, 0x1

    .line 2653
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 2656
    .local v3, numChildren:I
    if-eqz v6, :cond_1

    .line 2657
    if-nez p4, :cond_4

    if-eqz v5, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2658
    invoke-direct {p0, v6, v7, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2662
    :cond_1
    if-eqz v0, :cond_2

    .line 2663
    if-nez p4, :cond_5

    if-nez v5, :cond_5

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2664
    invoke-direct {p0, v0, v1, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2666
    :cond_2
    return-void

    .line 2647
    .end local v0           #bottomView:Landroid/view/View;
    .end local v1           #bottomViewIndex:I
    .end local v3           #numChildren:I
    .end local v6           #topView:Landroid/view/View;
    .end local v7           #topViewIndex:I
    :cond_3
    move v7, v4

    .line 2648
    .restart local v7       #topViewIndex:I
    move v1, v2

    .line 2649
    .restart local v1       #bottomViewIndex:I
    move-object v6, p1

    .line 2650
    .restart local v6       #topView:Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0       #bottomView:Landroid/view/View;
    goto :goto_0

    .line 2657
    .restart local v3       #numChildren:I
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 2663
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7
    .parameter "child"

    .prologue
    const/4 v6, 0x1

    .line 1886
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 1887
    .local v1, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1888
    .local v4, numHeaders:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1889
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    move v5, v6

    .line 1900
    :goto_1
    return v5

    .line 1888
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1893
    :cond_1
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 1894
    .local v0, footers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1895
    .local v3, numFooters:I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    .line 1896
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    move v5, v6

    .line 1897
    goto :goto_1

    .line 1895
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1900
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 2991
    if-ne p1, p2, :cond_1

    .line 2996
    :cond_0
    :goto_0
    return v1

    .line 2995
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2996
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v6, -0x1

    .line 2854
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 2855
    .local v1, firstPosition:I
    const/16 v7, 0x82

    if-ne p1, v7, :cond_5

    .line 2856
    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v7, v6, :cond_1

    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v5, v7, 0x1

    .line 2859
    .local v5, startPos:I
    :goto_0
    iget-object v7, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_2

    move v4, v6

    .line 2894
    :cond_0
    :goto_1
    return v4

    .end local v5           #startPos:I
    :cond_1
    move v5, v1

    .line 2856
    goto :goto_0

    .line 2862
    .restart local v5       #startPos:I
    :cond_2
    if-ge v5, v1, :cond_3

    .line 2863
    move v5, v1

    .line 2866
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 2867
    .local v3, lastVisiblePos:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2868
    .local v0, adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, pos:I
    :goto_2
    if-gt v4, v3, :cond_b

    .line 2869
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 2868
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2875
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v3           #lastVisiblePos:I
    .end local v4           #pos:I
    .end local v5           #startPos:I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v2, v7, -0x1

    .line 2876
    .local v2, last:I
    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v7, v6, :cond_7

    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v5, v7, -0x1

    .line 2879
    .restart local v5       #startPos:I
    :goto_3
    if-ltz v5, :cond_6

    iget-object v7, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_8

    :cond_6
    move v4, v6

    .line 2880
    goto :goto_1

    .line 2876
    .end local v5           #startPos:I
    :cond_7
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, -0x1

    goto :goto_3

    .line 2882
    .restart local v5       #startPos:I
    :cond_8
    if-le v5, v2, :cond_9

    .line 2883
    move v5, v2

    .line 2886
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2887
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4       #pos:I
    :goto_4
    if-lt v4, v1, :cond_b

    .line 2888
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_a

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 2887
    :cond_a
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .end local v2           #last:I
    :cond_b
    move v4, v6

    .line 2894
    goto :goto_1
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"

    .prologue
    const-wide/16 v2, 0x8

    .line 1921
    iget-boolean v0, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1923
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1924
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1927
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1945
    .end local v1           #child:Landroid/view/View;
    .local v8, child:Landroid/view/View;
    :goto_0
    return-object v8

    .line 1934
    .end local v8           #child:Landroid/view/View;
    :cond_0
    const-string/jumbo v0, "obtainView"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1937
    :try_start_0
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1939
    .restart local v1       #child:Landroid/view/View;
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1943
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1945
    .end local v1           #child:Landroid/view/View;
    .restart local v8       #child:Landroid/view/View;
    goto :goto_0

    .line 1939
    .end local v8           #child:Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4
    .parameter "child"
    .parameter "childIndex"
    .parameter "numChildren"

    .prologue
    .line 2676
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2677
    .local v2, oldHeight:I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->measureItem(Landroid/view/View;)V

    .line 2678
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 2680
    invoke-direct {p0, p1}, Landroid/widget/ListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2683
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v0, v3, v2

    .line 2684
    .local v0, heightDelta:I
    add-int/lit8 v1, p2, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 2685
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2684
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2688
    .end local v0           #heightDelta:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 8
    .parameter "child"

    .prologue
    const/4 v7, 0x0

    .line 2696
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2697
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 2698
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2703
    .restart local v3       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2705
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2707
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 2708
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2712
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2713
    return-void

    .line 2710
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 7
    .parameter "child"
    .parameter "position"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v6, 0x0

    .line 1281
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 1282
    .local v3, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v3, :cond_0

    .line 1283
    invoke-virtual {p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3           #p:Landroid/widget/AbsListView$LayoutParams;
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 1284
    .restart local v3       #p:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1286
    :cond_0
    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1287
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1289
    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1291
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1293
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 1294
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1298
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1299
    return-void

    .line 1296
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 19
    .parameter "oldSel"
    .parameter "newSel"
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 1046
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v10

    .line 1047
    .local v10, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 1051
    .local v15, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v18

    .line 1053
    .local v18, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v8

    .line 1056
    .local v8, bottomSelectionPixel:I
    if-lez p3, :cond_2

    .line 1078
    add-int/lit8 v3, v15, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 1081
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1084
    .local v9, dividerHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int v4, v2, v9

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1088
    .local v14, sel:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v8, :cond_0

    .line 1091
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v2, v18

    .line 1094
    .local v16, spaceAbove:I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v2, v8

    .line 1097
    .local v17, spaceBelow:I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1098
    .local v11, halfVerticalSpace:I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1099
    .local v13, offset:I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1102
    neg-int v2, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1104
    neg-int v2, v13

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1108
    .end local v11           #halfVerticalSpace:I
    .end local v13           #offset:I
    .end local v16           #spaceAbove:I
    .end local v17           #spaceBelow:I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 1109
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1110
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1111
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1192
    .end local v9           #dividerHeight:I
    :goto_0
    return-object v14

    .line 1113
    .restart local v9       #dividerHeight:I
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1114
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1115
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 1117
    .end local v9           #dividerHeight:I
    .end local v14           #sel:Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1138
    if-eqz p2, :cond_4

    .line 1140
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1150
    .restart local v14       #sel:Landroid/view/View;
    :goto_1
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_3

    .line 1152
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v18, v2

    .line 1155
    .restart local v16       #spaceAbove:I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v8, v2

    .line 1158
    .restart local v17       #spaceBelow:I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1159
    .restart local v11       #halfVerticalSpace:I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1160
    .restart local v13       #offset:I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1163
    invoke-virtual {v14, v13}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1167
    .end local v11           #halfVerticalSpace:I
    .end local v13           #offset:I
    .end local v16           #spaceAbove:I
    .end local v17           #spaceBelow:I
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_0

    .line 1145
    .end local v14           #sel:Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .restart local v14       #sel:Landroid/view/View;
    goto :goto_1

    .line 1170
    .end local v14           #sel:Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1175
    .local v4, oldTop:I
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1178
    .restart local v14       #sel:Landroid/view/View;
    move/from16 v0, p4

    if-ge v4, v0, :cond_6

    .line 1181
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 1182
    .local v12, newBottom:I
    add-int/lit8 v2, p4, 0x14

    if-ge v12, v2, :cond_6

    .line 1184
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, p4, v2

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1189
    .end local v12           #newBottom:I
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5
    .parameter "newFocus"

    .prologue
    .line 2976
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 2977
    .local v2, numChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2978
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2979
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2980
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 2977
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2983
    .end local v0           #child:Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7
    .parameter "child"

    .prologue
    .line 2721
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2722
    .local v5, w:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2723
    .local v4, h:I
    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 2724
    .local v1, childLeft:I
    add-int v2, v1, v5

    .line 2725
    .local v2, childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2726
    .local v3, childTop:I
    add-int v0, v3, v4

    .line 2727
    .local v0, childBottom:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 2728
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "v"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 432
    .local p2, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 433
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 434
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 435
    .local v1, info:Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 436
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 440
    .end local v1           #info:Landroid/widget/ListView$FixedViewInfo;
    :cond_0
    return-void

    .line 433
    .restart local v1       #info:Landroid/widget/ListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 12
    .parameter "amount"

    .prologue
    const/4 v11, 0x0

    .line 3059
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3061
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v9, v10

    .line 3062
    .local v5, listBottom:I
    iget-object v9, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 3063
    .local v6, listTop:I
    iget-object v8, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 3065
    .local v8, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    if-gez p1, :cond_3

    .line 3069
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 3070
    .local v7, numChildren:I
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3071
    .local v1, last:Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_0

    .line 3072
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    .line 3073
    .local v3, lastVisiblePosition:I
    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_0

    .line 3074
    invoke-direct {p0, v1, v3}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3075
    add-int/lit8 v7, v7, 0x1

    .line 3079
    goto :goto_0

    .line 3084
    .end local v3           #lastVisiblePosition:I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_1

    .line 3085
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3089
    :cond_1
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3090
    .local v0, first:Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v6, :cond_7

    .line 3091
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 3092
    .local v4, layoutParams:Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3093
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3094
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {v8, v0, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3098
    :goto_2
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3099
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_1

    .line 3096
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_2

    .line 3103
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    .end local v4           #layoutParams:Landroid/widget/AbsListView$LayoutParams;
    .end local v7           #numChildren:I
    :cond_3
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3106
    .restart local v0       #first:Landroid/view/View;
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_4

    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v9, :cond_4

    .line 3107
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3108
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_3

    .line 3113
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_5

    .line 3114
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3117
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 3118
    .local v2, lastIndex:I
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3121
    .restart local v1       #last:Landroid/view/View;
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v5, :cond_7

    .line 3122
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 3123
    .restart local v4       #layoutParams:Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3124
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3125
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v1, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3129
    :goto_5
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3130
    goto :goto_4

    .line 3127
    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_5

    .line 3132
    .end local v2           #lastIndex:I
    .end local v4           #layoutParams:Landroid/widget/AbsListView$LayoutParams;
    :cond_7
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 22
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"

    .prologue
    .line 1964
    if-eqz p6, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v19

    if-eqz v19, :cond_9

    const/4 v11, 0x1

    .line 1965
    .local v11, isSelected:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v19

    move/from16 v0, v19

    if-eq v11, v0, :cond_a

    const/16 v17, 0x1

    .line 1966
    .local v17, updateChildSelected:Z
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ListView;->mTouchMode:I

    .line 1967
    .local v13, mode:I
    if-lez v13, :cond_b

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v13, v0, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mMotionPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    const/4 v10, 0x1

    .line 1969
    .local v10, isPressed:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v19

    move/from16 v0, v19

    if-eq v10, v0, :cond_c

    const/16 v16, 0x1

    .line 1970
    .local v16, updateChildPressed:Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v19

    if-eqz v19, :cond_d

    :cond_0
    const/4 v14, 0x1

    .line 1974
    .local v14, needToMeasure:Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    .line 1975
    .local v15, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v15, :cond_1

    .line 1976
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .end local v15           #p:Landroid/widget/AbsListView$LayoutParams;
    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    .line 1978
    .restart local v15       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1980
    if-eqz p7, :cond_2

    iget-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    :cond_2
    iget-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 1982
    :cond_3
    if-eqz p4, :cond_e

    const/16 v19, -0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Landroid/widget/ListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1991
    :goto_6
    if-eqz v17, :cond_4

    .line 1992
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    .line 1995
    :cond_4
    if-eqz v16, :cond_5

    .line 1996
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    .line 1999
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mChoiceMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 2000
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v19, v0

    if-eqz v19, :cond_12

    move-object/from16 v19, p1

    .line 2001
    check-cast v19, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2008
    :cond_6
    :goto_7
    if-eqz v14, :cond_14

    .line 2009
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 2011
    .local v8, childWidthSpec:I
    iget v12, v15, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 2013
    .local v12, lpHeight:I
    if-lez v12, :cond_13

    .line 2014
    const/high16 v19, 0x4000

    move/from16 v0, v19

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 2018
    .local v5, childHeightSpec:I
    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    .line 2023
    .end local v5           #childHeightSpec:I
    .end local v8           #childWidthSpec:I
    .end local v12           #lpHeight:I
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 2024
    .local v18, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 2025
    .local v9, h:I
    if-eqz p4, :cond_15

    move/from16 v7, p3

    .line 2027
    .local v7, childTop:I
    :goto_a
    if-eqz v14, :cond_16

    .line 2028
    add-int v6, p5, v18

    .line 2029
    .local v6, childRight:I
    add-int v4, v7, v9

    .line 2030
    .local v4, childBottom:I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v7, v6, v4}, Landroid/view/View;->layout(IIII)V

    .line 2036
    .end local v4           #childBottom:I
    .end local v6           #childRight:I
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mCachingStarted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v19

    if-nez v19, :cond_7

    .line 2037
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2040
    :cond_7
    if-eqz p7, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/AbsListView$LayoutParams;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-eq v0, v1, :cond_8

    .line 2042
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2044
    :cond_8
    return-void

    .line 1964
    .end local v7           #childTop:I
    .end local v9           #h:I
    .end local v10           #isPressed:Z
    .end local v11           #isSelected:Z
    .end local v13           #mode:I
    .end local v14           #needToMeasure:Z
    .end local v15           #p:Landroid/widget/AbsListView$LayoutParams;
    .end local v16           #updateChildPressed:Z
    .end local v17           #updateChildSelected:Z
    .end local v18           #w:I
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1965
    .restart local v11       #isSelected:Z
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1967
    .restart local v13       #mode:I
    .restart local v17       #updateChildSelected:Z
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1969
    .restart local v10       #isPressed:Z
    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 1970
    .restart local v16       #updateChildPressed:Z
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 1982
    .restart local v14       #needToMeasure:Z
    .restart local v15       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 1984
    :cond_f
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1985
    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 1986
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1988
    :cond_10
    if-eqz p4, :cond_11

    const/16 v19, -0x1

    :goto_c
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/widget/ListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_6

    :cond_11
    const/16 v19, 0x0

    goto :goto_c

    .line 2002
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v19, v0

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    .line 2004
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_7

    .line 2016
    .restart local v8       #childWidthSpec:I
    .restart local v12       #lpHeight:I
    :cond_13
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .restart local v5       #childHeightSpec:I
    goto/16 :goto_8

    .line 2020
    .end local v5           #childHeightSpec:I
    .end local v8           #childWidthSpec:I
    .end local v12           #lpHeight:I
    :cond_14
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_9

    .line 2025
    .restart local v9       #h:I
    .restart local v18       #w:I
    :cond_15
    sub-int v7, p3, v9

    goto/16 :goto_a

    .line 2032
    .restart local v7       #childTop:I
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, p5, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2033
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, v7, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_b
.end method

.method private showingBottomFadingEdge()Z
    .locals 6

    .prologue
    .line 650
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 651
    .local v1, childCount:I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 652
    .local v0, bottomOfBottomChild:I
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 654
    .local v2, lastVisiblePosition:I
    iget v4, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    .line 656
    .local v3, listBottom:I
    iget v4, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_0

    if-ge v0, v3, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showingTopFadingEdge()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 642
    iget v2, p0, Landroid/widget/ListView;->mScrollY:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v0, v2, v3

    .line 643
    .local v0, listTop:I
    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 486
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 487
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 462
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 463
    .local v0, info:Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 464
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 465
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 466
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 473
    :cond_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 401
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 402
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 371
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 372
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 376
    :cond_0
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 377
    .local v0, info:Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 378
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 379
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 380
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 385
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 387
    :cond_1
    return-void
.end method

.method arrowScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    .line 2515
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2516
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2517
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 2518
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2522
    :cond_0
    iput-boolean v2, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2520
    return v0

    .line 2522
    .end local v0           #handled:Z
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Landroid/widget/ListView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 2048
    invoke-super {p0}, Landroid/widget/AbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 40
    .parameter "canvas"

    .prologue
    .line 3243
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOverScrollAnimationEnabled()Z

    move-result v36

    if-eqz v36, :cond_2

    .line 3244
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v10

    .line 3245
    .local v10, childCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v36, v0

    if-eqz v36, :cond_2

    .line 3246
    const/16 v33, 0x0

    .line 3247
    .local v33, shadowHeight:I
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    if-eqz v36, :cond_1

    const/16 v36, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    if-eqz v36, :cond_1

    const/16 v36, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getTranslationY()F

    move-result v36

    const/16 v37, 0x0

    cmpl-float v36, v36, v37

    if-lez v36, :cond_1

    .line 3248
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 3249
    .local v7, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mOverScrollShadowHeight:I

    move/from16 v33, v0

    .line 3250
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mOverScrollShadowHeight:I

    move/from16 v36, v0

    move/from16 v0, v33

    move/from16 v1, v36

    if-le v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mOverScrollShadowHeight:I

    move/from16 v33, v0

    .line 3251
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mInBouncing:Z

    move/from16 v36, v0

    if-eqz v36, :cond_1

    if-lez v33, :cond_1

    .line 3252
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getWidth()I

    move-result v38

    add-int v39, v7, v33

    move-object/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3253
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3256
    .end local v7           #bottom:I
    :cond_1
    const/16 v24, 0x1

    .local v24, i:I
    :goto_0
    move/from16 v0, v24

    if-ge v0, v10, :cond_2

    .line 3257
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3258
    .local v9, child:Landroid/view/View;
    add-int/lit8 v36, v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 3259
    .local v27, nextChild:Landroid/view/View;
    if-nez v9, :cond_c

    .line 3275
    .end local v9           #child:Landroid/view/View;
    .end local v10           #childCount:I
    .end local v24           #i:I
    .end local v27           #nextChild:Landroid/view/View;
    .end local v33           #shadowHeight:I
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mCachingStarted:Z

    move/from16 v36, v0

    if-eqz v36, :cond_3

    .line 3276
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ListView;->mCachingActive:Z

    .line 3280
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3281
    .local v12, dividerHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v30, v0

    .line 3282
    .local v30, overscrollHeader:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    .line 3283
    .local v29, overscrollFooter:Landroid/graphics/drawable/Drawable;
    if-eqz v30, :cond_f

    const/4 v15, 0x1

    .line 3284
    .local v15, drawOverscrollHeader:Z
    :goto_1
    if-eqz v29, :cond_10

    const/4 v14, 0x1

    .line 3285
    .local v14, drawOverscrollFooter:Z
    :goto_2
    if-lez v12, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v36, v0

    if-eqz v36, :cond_11

    const/4 v13, 0x1

    .line 3287
    .local v13, drawDividers:Z
    :goto_3
    if-nez v13, :cond_4

    if-nez v15, :cond_4

    if-eqz v14, :cond_18

    .line 3289
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3290
    .local v8, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingLeft:I

    move/from16 v36, v0

    move/from16 v0, v36

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 3291
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mRight:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mLeft:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingRight:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    move/from16 v0, v36

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 3293
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v11

    .line 3294
    .local v11, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 3295
    .local v22, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v25, v0

    .line 3296
    .local v25, itemCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v36

    sub-int v36, v25, v36

    add-int/lit8 v21, v36, -0x1

    .line 3297
    .local v21, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    move/from16 v23, v0

    .line 3298
    .local v23, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    move/from16 v20, v0

    .line 3299
    .local v20, footerDividers:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v19, v0

    .line 3300
    .local v19, first:I
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 3301
    .local v6, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3306
    .local v5, adapter:Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v36

    if-eqz v36, :cond_12

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v36

    if-nez v36, :cond_12

    const/16 v18, 0x1

    .line 3308
    .local v18, fillForMissingDividers:Z
    :goto_4
    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v36, v0

    if-nez v36, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    move/from16 v36, v0

    if-eqz v36, :cond_5

    .line 3309
    new-instance v36, Landroid/graphics/Paint;

    invoke-direct/range {v36 .. v36}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3310
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v36, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getCacheColorHint()I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Landroid/graphics/Paint;->setColor(I)V

    .line 3312
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v31, v0

    .line 3314
    .local v31, paint:Landroid/graphics/Paint;
    const/16 v17, 0x0

    .line 3315
    .local v17, effectivePaddingTop:I
    const/16 v16, 0x0

    .line 3316
    .local v16, effectivePaddingBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mGroupFlags:I

    move/from16 v36, v0

    and-int/lit8 v36, v36, 0x22

    const/16 v37, 0x22

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_6

    .line 3317
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    .line 3318
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    .line 3321
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mBottom:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTop:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    sub-int v36, v36, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v37, v0

    add-int v26, v36, v37

    .line 3322
    .local v26, listBottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move/from16 v36, v0

    if-nez v36, :cond_1a

    .line 3323
    const/4 v7, 0x0

    .line 3326
    .restart local v7       #bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v32, v0

    .line 3327
    .local v32, scrollY:I
    if-lez v11, :cond_7

    if-gez v32, :cond_7

    .line 3328
    if-eqz v15, :cond_13

    .line 3329
    const/16 v36, 0x0

    move/from16 v0, v36

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 3330
    move/from16 v0, v32

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 3331
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2, v8}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3339
    :cond_7
    :goto_5
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_6
    move/from16 v0, v24

    if-ge v0, v11, :cond_17

    .line 3340
    if-nez v23, :cond_8

    add-int v36, v19, v24

    move/from16 v0, v36

    move/from16 v1, v22

    if-lt v0, v1, :cond_b

    :cond_8
    if-nez v20, :cond_9

    add-int v36, v19, v24

    move/from16 v0, v36

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    .line 3342
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3343
    .restart local v9       #child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 3346
    if-eqz v13, :cond_b

    move/from16 v0, v26

    if-ge v7, v0, :cond_b

    if-eqz v14, :cond_a

    add-int/lit8 v36, v11, -0x1

    move/from16 v0, v24

    move/from16 v1, v36

    if-eq v0, v1, :cond_b

    .line 3350
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    move/from16 v36, v0

    if-eqz v36, :cond_14

    if-eqz v13, :cond_14

    .line 3351
    iput v7, v8, Landroid/graphics/Rect;->top:I

    .line 3352
    add-int v36, v7, v12

    move/from16 v0, v36

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 3353
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v8, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3339
    .end local v9           #child:Landroid/view/View;
    :cond_b
    :goto_7
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 3261
    .end local v5           #adapter:Landroid/widget/ListAdapter;
    .end local v6           #areAllItemsSelectable:Z
    .end local v7           #bottom:I
    .end local v8           #bounds:Landroid/graphics/Rect;
    .end local v11           #count:I
    .end local v12           #dividerHeight:I
    .end local v13           #drawDividers:Z
    .end local v14           #drawOverscrollFooter:Z
    .end local v15           #drawOverscrollHeader:Z
    .end local v16           #effectivePaddingBottom:I
    .end local v17           #effectivePaddingTop:I
    .end local v18           #fillForMissingDividers:Z
    .end local v19           #first:I
    .end local v20           #footerDividers:Z
    .end local v21           #footerLimit:I
    .end local v22           #headerCount:I
    .end local v23           #headerDividers:Z
    .end local v25           #itemCount:I
    .end local v26           #listBottom:I
    .end local v29           #overscrollFooter:Landroid/graphics/drawable/Drawable;
    .end local v30           #overscrollHeader:Landroid/graphics/drawable/Drawable;
    .end local v31           #paint:Landroid/graphics/Paint;
    .end local v32           #scrollY:I
    .restart local v9       #child:Landroid/view/View;
    .restart local v10       #childCount:I
    .restart local v27       #nextChild:Landroid/view/View;
    .restart local v33       #shadowHeight:I
    :cond_c
    const/16 v33, 0x0

    .line 3262
    if-eqz v27, :cond_d

    .line 3263
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mOverScrollShadowHeight:I

    move/from16 v33, v0

    .line 3264
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mOverScrollShadowHeight:I

    move/from16 v36, v0

    move/from16 v0, v33

    move/from16 v1, v36

    if-le v0, v1, :cond_d

    .line 3265
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mOverScrollShadowHeight:I

    move/from16 v33, v0

    .line 3267
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mInBouncing:Z

    move/from16 v36, v0

    if-eqz v36, :cond_e

    if-lez v33, :cond_e

    .line 3268
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getBottom()I

    move-result v36

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getTranslationY()F

    move-result v37

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    add-int v7, v36, v37

    .line 3269
    .restart local v7       #bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getWidth()I

    move-result v38

    add-int v39, v7, v33

    move-object/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3270
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3256
    .end local v7           #bottom:I
    :cond_e
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_0

    .line 3283
    .end local v9           #child:Landroid/view/View;
    .end local v10           #childCount:I
    .end local v24           #i:I
    .end local v27           #nextChild:Landroid/view/View;
    .end local v33           #shadowHeight:I
    .restart local v12       #dividerHeight:I
    .restart local v29       #overscrollFooter:Landroid/graphics/drawable/Drawable;
    .restart local v30       #overscrollHeader:Landroid/graphics/drawable/Drawable;
    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 3284
    .restart local v15       #drawOverscrollHeader:Z
    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 3285
    .restart local v14       #drawOverscrollFooter:Z
    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 3306
    .restart local v5       #adapter:Landroid/widget/ListAdapter;
    .restart local v6       #areAllItemsSelectable:Z
    .restart local v8       #bounds:Landroid/graphics/Rect;
    .restart local v11       #count:I
    .restart local v13       #drawDividers:Z
    .restart local v19       #first:I
    .restart local v20       #footerDividers:Z
    .restart local v21       #footerLimit:I
    .restart local v22       #headerCount:I
    .restart local v23       #headerDividers:Z
    .restart local v25       #itemCount:I
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 3332
    .restart local v7       #bottom:I
    .restart local v16       #effectivePaddingBottom:I
    .restart local v17       #effectivePaddingTop:I
    .restart local v18       #fillForMissingDividers:Z
    .restart local v26       #listBottom:I
    .restart local v31       #paint:Landroid/graphics/Paint;
    .restart local v32       #scrollY:I
    :cond_13
    if-eqz v13, :cond_7

    .line 3333
    const/16 v36, 0x0

    move/from16 v0, v36

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 3334
    neg-int v0, v12

    move/from16 v36, v0

    move/from16 v0, v36

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 3335
    const/16 v36, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v36

    invoke-virtual {v0, v1, v8, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_5

    .line 3356
    .restart local v9       #child:Landroid/view/View;
    .restart local v24       #i:I
    :cond_14
    if-nez v6, :cond_15

    add-int v36, v19, v24

    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v36

    if-eqz v36, :cond_16

    add-int/lit8 v36, v11, -0x1

    move/from16 v0, v24

    move/from16 v1, v36

    if-eq v0, v1, :cond_15

    add-int v36, v19, v24

    add-int/lit8 v36, v36, 0x1

    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v36

    if-eqz v36, :cond_16

    .line 3359
    :cond_15
    iput v7, v8, Landroid/graphics/Rect;->top:I

    .line 3360
    add-int v36, v7, v12

    move/from16 v0, v36

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 3361
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v8, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_7

    .line 3362
    :cond_16
    if-eqz v18, :cond_b

    .line 3363
    iput v7, v8, Landroid/graphics/Rect;->top:I

    .line 3364
    add-int v36, v7, v12

    move/from16 v0, v36

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 3365
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 3371
    .end local v9           #child:Landroid/view/View;
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mBottom:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v37, v0

    add-int v28, v36, v37

    .line 3372
    .local v28, overFooterBottom:I
    if-eqz v14, :cond_18

    add-int v36, v19, v11

    move/from16 v0, v36

    move/from16 v1, v25

    if-ne v0, v1, :cond_18

    move/from16 v0, v28

    if-le v0, v7, :cond_18

    .line 3374
    iput v7, v8, Landroid/graphics/Rect;->top:I

    .line 3375
    move/from16 v0, v28

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 3376
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v8}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3432
    .end local v5           #adapter:Landroid/widget/ListAdapter;
    .end local v6           #areAllItemsSelectable:Z
    .end local v7           #bottom:I
    .end local v8           #bounds:Landroid/graphics/Rect;
    .end local v11           #count:I
    .end local v16           #effectivePaddingBottom:I
    .end local v17           #effectivePaddingTop:I
    .end local v18           #fillForMissingDividers:Z
    .end local v19           #first:I
    .end local v20           #footerDividers:Z
    .end local v21           #footerLimit:I
    .end local v22           #headerCount:I
    .end local v23           #headerDividers:Z
    .end local v24           #i:I
    .end local v25           #itemCount:I
    .end local v26           #listBottom:I
    .end local v28           #overFooterBottom:I
    .end local v31           #paint:Landroid/graphics/Paint;
    .end local v32           #scrollY:I
    :cond_18
    :goto_8
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3436
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mAnimationRunning:Z

    move/from16 v36, v0

    if-nez v36, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mShouldDrawPressShadow:Z

    move/from16 v36, v0

    if-eqz v36, :cond_19

    .line 3437
    invoke-direct/range {p0 .. p1}, Landroid/widget/ListView;->drawPressShadow(Landroid/graphics/Canvas;)V

    .line 3439
    :cond_19
    return-void

    .line 3381
    .restart local v5       #adapter:Landroid/widget/ListAdapter;
    .restart local v6       #areAllItemsSelectable:Z
    .restart local v8       #bounds:Landroid/graphics/Rect;
    .restart local v11       #count:I
    .restart local v16       #effectivePaddingBottom:I
    .restart local v17       #effectivePaddingTop:I
    .restart local v18       #fillForMissingDividers:Z
    .restart local v19       #first:I
    .restart local v20       #footerDividers:Z
    .restart local v21       #footerLimit:I
    .restart local v22       #headerCount:I
    .restart local v23       #headerDividers:Z
    .restart local v25       #itemCount:I
    .restart local v26       #listBottom:I
    .restart local v31       #paint:Landroid/graphics/Paint;
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v32, v0

    .line 3383
    .restart local v32       #scrollY:I
    if-lez v11, :cond_1b

    if-eqz v15, :cond_1b

    .line 3384
    move/from16 v0, v32

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 3385
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getTop()I

    move-result v36

    move/from16 v0, v36

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 3386
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2, v8}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3389
    :cond_1b
    if-eqz v15, :cond_20

    const/16 v34, 0x1

    .line 3390
    .local v34, start:I
    :goto_9
    move/from16 v24, v34

    .restart local v24       #i:I
    :goto_a
    move/from16 v0, v24

    if-ge v0, v11, :cond_22

    .line 3391
    if-nez v23, :cond_1c

    add-int v36, v19, v24

    move/from16 v0, v36

    move/from16 v1, v22

    if-lt v0, v1, :cond_1f

    :cond_1c
    if-nez v20, :cond_1d

    add-int v36, v19, v24

    move/from16 v0, v36

    move/from16 v1, v21

    if-ge v0, v1, :cond_1f

    .line 3393
    :cond_1d
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3394
    .restart local v9       #child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v35

    .line 3396
    .local v35, top:I
    move/from16 v0, v35

    move/from16 v1, v17

    if-le v0, v1, :cond_1f

    .line 3397
    if-nez v6, :cond_1e

    add-int v36, v19, v24

    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v36

    if-eqz v36, :cond_21

    add-int/lit8 v36, v11, -0x1

    move/from16 v0, v24

    move/from16 v1, v36

    if-eq v0, v1, :cond_1e

    add-int v36, v19, v24

    add-int/lit8 v36, v36, 0x1

    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v36

    if-eqz v36, :cond_21

    .line 3400
    :cond_1e
    sub-int v36, v35, v12

    move/from16 v0, v36

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 3401
    move/from16 v0, v35

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 3406
    add-int/lit8 v36, v24, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v36

    invoke-virtual {v0, v1, v8, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3390
    .end local v9           #child:Landroid/view/View;
    .end local v35           #top:I
    :cond_1f
    :goto_b
    add-int/lit8 v24, v24, 0x1

    goto :goto_a

    .line 3389
    .end local v24           #i:I
    .end local v34           #start:I
    :cond_20
    const/16 v34, 0x0

    goto :goto_9

    .line 3407
    .restart local v9       #child:Landroid/view/View;
    .restart local v24       #i:I
    .restart local v34       #start:I
    .restart local v35       #top:I
    :cond_21
    if-eqz v18, :cond_1f

    .line 3408
    sub-int v36, v35, v12

    move/from16 v0, v36

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 3409
    move/from16 v0, v35

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 3410
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_b

    .line 3416
    .end local v9           #child:Landroid/view/View;
    .end local v35           #top:I
    :cond_22
    if-lez v11, :cond_18

    if-lez v32, :cond_18

    .line 3417
    if-eqz v14, :cond_23

    .line 3418
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mBottom:I

    .line 3419
    .local v4, absListBottom:I
    iput v4, v8, Landroid/graphics/Rect;->top:I

    .line 3420
    add-int v36, v4, v32

    move/from16 v0, v36

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 3421
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v8}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_8

    .line 3422
    .end local v4           #absListBottom:I
    :cond_23
    if-eqz v13, :cond_18

    .line 3423
    move/from16 v0, v26

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 3424
    add-int v36, v26, v12

    move/from16 v0, v36

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 3425
    const/16 v36, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v36

    invoke-virtual {v0, v1, v8, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_8
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 2197
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2198
    .local v1, handled:Z
    if-nez v1, :cond_0

    .line 2200
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2201
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 2204
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2207
    .end local v0           #focused:Landroid/view/View;
    :cond_0
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v2, 0x2

    .line 4431
    iget-boolean v0, p0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    if-eqz v0, :cond_1

    .line 4432
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->isInBouncing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4434
    invoke-direct {p0}, Landroid/widget/ListView;->cancelPressAnimation()V

    .line 4441
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 4435
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget v0, p0, Landroid/widget/ListView;->mTouchMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 4436
    invoke-direct {p0}, Landroid/widget/ListView;->cancelPressAnimation()V

    goto :goto_0

    .line 4437
    :cond_3
    iget v0, p0, Landroid/widget/ListView;->mTouchMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 4438
    invoke-direct {p0}, Landroid/widget/ListView;->cancelPressAnimation()V

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 3443
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3444
    .local v0, more:Z
    iget-boolean v1, p0, Landroid/widget/ListView;->mCachingActive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v1, :cond_0

    .line 3445
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ListView;->mCachingActive:Z

    .line 3447
    :cond_0
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 2
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 3460
    iget-boolean v1, p0, Landroid/widget/ListView;->mInBouncing:Z

    if-eqz v1, :cond_0

    .line 3468
    :goto_0
    return-void

    .line 3464
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3466
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3467
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "canvas"
    .parameter "drawable"
    .parameter "bounds"

    .prologue
    .line 3225
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3227
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3228
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3230
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3231
    .local v1, span:I
    if-ge v1, v0, :cond_0

    .line 3232
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 3235
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3236
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3238
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3239
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "canvas"
    .parameter "drawable"
    .parameter "bounds"

    .prologue
    .line 3208
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3210
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3211
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3213
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3214
    .local v1, span:I
    if-ge v1, v0, :cond_0

    .line 3215
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 3218
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3219
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3221
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3222
    return-void
.end method

.method public enableAnimation(IZ)V
    .locals 2
    .parameter "anim_id"
    .parameter "enable"

    .prologue
    .line 4509
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->enableAnimation(IZ)V

    .line 4510
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 4511
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    .line 4512
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 4514
    :cond_0
    return-void
.end method

.method fillGap(Z)V
    .locals 6
    .parameter "down"

    .prologue
    const/16 v5, 0x22

    .line 745
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 746
    .local v0, count:I
    if-eqz p1, :cond_2

    .line 747
    const/4 v2, 0x0

    .line 748
    .local v2, paddingTop:I
    iget v4, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_0

    .line 749
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v2

    .line 751
    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v3, v4, v5

    .line 753
    .local v3, startOffset:I
    :goto_0
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 754
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 765
    .end local v2           #paddingTop:I
    :goto_1
    return-void

    .end local v3           #startOffset:I
    .restart local v2       #paddingTop:I
    :cond_1
    move v3, v2

    .line 751
    goto :goto_0

    .line 756
    .end local v2           #paddingTop:I
    :cond_2
    const/4 v1, 0x0

    .line 757
    .local v1, paddingBottom:I
    iget v4, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_3

    .line 758
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v1

    .line 760
    :cond_3
    if-lez v0, :cond_4

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v3, v4, v5

    .line 762
    .restart local v3       #startOffset:I
    :goto_2
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 763
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1

    .line 760
    .end local v3           #startOffset:I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    sub-int v3, v4, v1

    goto :goto_2
.end method

.method findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 1449
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 1450
    .local v0, childCount:I
    if-lez v0, :cond_3

    .line 1451
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1452
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1453
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1454
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1455
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1467
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return v3

    .line 1452
    .restart local v1       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1459
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_3

    .line 1460
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1461
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 1462
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 1459
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1467
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter "childToSkip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3772
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    if-eqz p1, :cond_1

    .line 3773
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3776
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3777
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3779
    .local v2, v:Landroid/view/View;
    if-eq v2, p3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3780
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 3782
    if-eqz v2, :cond_0

    .line 3788
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 3776
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3788
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter "childToSkip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3750
    .local p1, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3751
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3752
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3753
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3762
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3757
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3758
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3759
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3762
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3677
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3678
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3681
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3682
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3684
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3685
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3687
    if-eqz v2, :cond_0

    .line 3693
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 3681
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3693
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 3
    .parameter "id"

    .prologue
    .line 3658
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3659
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3660
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3661
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3669
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3664
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3665
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3666
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3669
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3723
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3724
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3727
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3728
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3730
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3731
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3733
    if-eqz v2, :cond_0

    .line 3739
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 3727
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3739
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .parameter "tag"

    .prologue
    .line 3703
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3704
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3705
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3706
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3715
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3710
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3711
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3712
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3715
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method fullScroll(I)Z
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    .line 2430
    const/4 v0, 0x0

    .line 2431
    .local v0, moved:Z
    const/16 v2, 0x21

    if-ne p1, v2, :cond_3

    .line 2432
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eqz v2, :cond_1

    .line 2433
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2434
    .local v1, position:I
    if-ltz v1, :cond_0

    .line 2435
    iput v4, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2436
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2437
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2439
    :cond_0
    const/4 v0, 0x1

    .line 2453
    .end local v1           #position:I
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2454
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2455
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2458
    :cond_2
    return v0

    .line 2441
    :cond_3
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    .line 2442
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 2443
    iget v2, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2444
    .restart local v1       #position:I
    if-ltz v1, :cond_4

    .line 2445
    const/4 v2, 0x3

    iput v2, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2446
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2447
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2449
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 4098
    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4099
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v5

    .line 4128
    :cond_0
    :goto_0
    return-object v5

    .line 4104
    :cond_1
    iget v8, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_3

    .line 4105
    iget-object v7, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 4106
    .local v7, states:Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 4107
    .local v3, count:I
    new-array v5, v3, [J

    .line 4108
    .local v5, ids:[J
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4110
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 4111
    .local v1, checkedCount:I
    const/4 v4, 0x0

    .local v4, i:I
    move v2, v1

    .end local v1           #checkedCount:I
    .local v2, checkedCount:I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 4112
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4113
    add-int/lit8 v1, v2, 0x1

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 4111
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1           #checkedCount:I
    .restart local v2       #checkedCount:I
    goto :goto_1

    .line 4119
    :cond_2
    if-eq v2, v3, :cond_0

    .line 4122
    new-array v6, v2, [J

    .line 4123
    .local v6, result:[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v6

    .line 4125
    goto :goto_0

    .line 4128
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #checkedCount:I
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v5           #ids:[J
    .end local v6           #result:[J
    .end local v7           #states:Landroid/util/SparseBooleanArray;
    :cond_3
    new-array v5, v10, [J

    goto :goto_0

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v2       #checkedCount:I
    .restart local v3       #count:I
    .restart local v4       #i:I
    .restart local v5       #ids:[J
    .restart local v7       #states:Landroid/util/SparseBooleanArray;
    :cond_4
    move v1, v2

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    goto :goto_2
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3476
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 3501
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 3170
    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 306
    const v0, 0x3ea8f5c3

    iget v1, p0, Landroid/widget/ListView;->mBottom:I

    iget v2, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3578
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3559
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method ignoreFooterViewInBouncing()V
    .locals 1

    .prologue
    .line 3828
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->isIgnoreFooterViewInBouncing:Z

    .line 3829
    return-void
.end method

.method isInBouncing()Z
    .locals 1

    .prologue
    .line 4083
    iget-boolean v0, p0, Landroid/widget/ListView;->mInBouncing:Z

    return v0
.end method

.method public isOpaque()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 3175
    iget-boolean v5, p0, Landroid/widget/ListView;->mCachingActive:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->hasOpaqueScrollbars()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    const/4 v4, 0x1

    .line 3177
    .local v4, retValue:Z
    :goto_0
    if-eqz v4, :cond_3

    .line 3179
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 3180
    .local v3, listTop:I
    :goto_1
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3181
    .local v0, first:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v3, :cond_6

    :cond_2
    move v4, v6

    .line 3191
    .end local v0           #first:Landroid/view/View;
    .end local v3           #listTop:I
    .end local v4           #retValue:Z
    :cond_3
    :goto_2
    return v4

    :cond_4
    move v4, v6

    .line 3175
    goto :goto_0

    .line 3179
    .restart local v4       #retValue:Z
    :cond_5
    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    goto :goto_1

    .line 3184
    .restart local v0       #first:Landroid/view/View;
    .restart local v3       #listTop:I
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v7

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    :goto_3
    sub-int v2, v7, v5

    .line 3186
    .local v2, listBottom:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3187
    .local v1, last:Landroid/view/View;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v2, :cond_3

    :cond_7
    move v4, v6

    .line 3188
    goto :goto_2

    .line 3184
    .end local v1           #last:Landroid/view/View;
    .end local v2           #listBottom:I
    :cond_8
    iget v5, p0, Landroid/widget/ListView;->mPaddingBottom:I

    goto :goto_3
.end method

.method protected layoutChildren()V
    .locals 26

    .prologue
    .line 1626
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1627
    .local v8, blockLayoutRequests:Z
    if-nez v8, :cond_0

    .line 1628
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1634
    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1636
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    .line 1638
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    .line 1639
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1640
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1874
    if-nez v8, :cond_0

    .line 1875
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1878
    :cond_0
    return-void

    .line 1644
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 1645
    .local v6, childrenTop:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTop:I

    move/from16 v24, v0

    sub-int v2, v2, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v7, v2, v24

    .line 1647
    .local v7, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v10

    .line 1648
    .local v10, childCount:I
    const/16 v19, 0x0

    .line 1649
    .local v19, index:I
    const/4 v5, 0x0

    .line 1652
    .local v5, delta:I
    const/4 v3, 0x0

    .line 1653
    .local v3, oldSel:Landroid/view/View;
    const/16 v20, 0x0

    .line 1654
    .local v20, oldFirst:Landroid/view/View;
    const/4 v4, 0x0

    .line 1656
    .local v4, newSel:Landroid/view/View;
    const/4 v14, 0x0

    .line 1659
    .local v14, focusLayoutRestoreView:Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_0

    .line 1674
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v19, v2, v24

    .line 1675
    if-ltz v19, :cond_2

    move/from16 v0, v19

    if-ge v0, v10, :cond_2

    .line 1676
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1680
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 1682
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    if-ltz v2, :cond_3

    .line 1683
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move/from16 v24, v0

    sub-int v5, v2, v24

    .line 1687
    :cond_3
    add-int v2, v19, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1691
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/widget/ListView;->mDataChanged:Z

    .line 1692
    .local v11, dataChanged:Z
    if-eqz v11, :cond_5

    .line 1693
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->handleDataChanged()V

    .line 1698
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mItemCount:I

    if-nez v2, :cond_6

    .line 1699
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1700
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 1874
    if-nez v8, :cond_0

    goto/16 :goto_0

    .line 1661
    .end local v11           #dataChanged:Z
    :pswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v19, v2, v24

    .line 1662
    if-ltz v19, :cond_4

    move/from16 v0, v19

    if-ge v0, v10, :cond_4

    .line 1663
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 1702
    .restart local v11       #dataChanged:Z
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Landroid/widget/ListAdapter;->getCount()I

    move-result v24

    move/from16 v0, v24

    if-eq v2, v0, :cond_8

    .line 1703
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") with Adapter("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1874
    .end local v3           #oldSel:Landroid/view/View;
    .end local v4           #newSel:Landroid/view/View;
    .end local v5           #delta:I
    .end local v6           #childrenTop:I
    .end local v7           #childrenBottom:I
    .end local v10           #childCount:I
    .end local v11           #dataChanged:Z
    .end local v14           #focusLayoutRestoreView:Landroid/view/View;
    .end local v19           #index:I
    .end local v20           #oldFirst:Landroid/view/View;
    :catchall_0
    move-exception v2

    if-nez v8, :cond_7

    .line 1875
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1874
    :cond_7
    throw v2

    .line 1710
    .restart local v3       #oldSel:Landroid/view/View;
    .restart local v4       #newSel:Landroid/view/View;
    .restart local v5       #delta:I
    .restart local v6       #childrenTop:I
    .restart local v7       #childrenBottom:I
    .restart local v10       #childCount:I
    .restart local v11       #dataChanged:Z
    .restart local v14       #focusLayoutRestoreView:Landroid/view/View;
    .restart local v19       #index:I
    .restart local v20       #oldFirst:Landroid/view/View;
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1714
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1715
    .local v12, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v22, v0

    .line 1718
    .local v22, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    const/4 v13, 0x0

    .line 1722
    .local v13, focusLayoutRestoreDirectChild:Landroid/view/View;
    if-eqz v11, :cond_9

    .line 1723
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v10, :cond_a

    .line 1724
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int v24, v12, v18

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1723
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 1727
    .end local v18           #i:I
    :cond_9
    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v12}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1734
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v17

    .line 1735
    .local v17, focusedChild:Landroid/view/View;
    if-eqz v17, :cond_d

    .line 1740
    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1741
    :cond_b
    move-object/from16 v13, v17

    .line 1743
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->findFocus()Landroid/view/View;

    move-result-object v14

    .line 1744
    if-eqz v14, :cond_c

    .line 1746
    invoke-virtual {v14}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 1749
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->requestFocus()Z

    .line 1753
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->detachAllViewsFromParent()V

    .line 1754
    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1756
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_1

    .line 1783
    if-nez v10, :cond_17

    .line 1784
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v2, :cond_16

    .line 1785
    const/4 v2, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v21

    .line 1786
    .local v21, position:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1787
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v23

    .line 1808
    .end local v6           #childrenTop:I
    .end local v21           #position:I
    .local v23, sel:Landroid/view/View;
    :goto_3
    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1810
    if-eqz v23, :cond_1f

    .line 1813
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v2, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1814
    move-object/from16 v0, v23

    if-ne v0, v13, :cond_e

    if-eqz v14, :cond_e

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_f
    const/4 v15, 0x1

    .line 1817
    .local v15, focusWasTaken:Z
    :goto_4
    if-nez v15, :cond_1d

    .line 1821
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v16

    .line 1822
    .local v16, focused:Landroid/view/View;
    if-eqz v16, :cond_10

    .line 1823
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->clearFocus()V

    .line 1825
    :cond_10
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1833
    .end local v15           #focusWasTaken:Z
    .end local v16           #focused:Landroid/view/View;
    :goto_5
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ListView;->mSelectedTop:I

    .line 1852
    :cond_11
    :goto_6
    if-eqz v14, :cond_12

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 1854
    invoke-virtual {v14}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 1857
    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ListView;->mLayoutMode:I

    .line 1858
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ListView;->mDataChanged:Z

    .line 1859
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v2, :cond_13

    .line 1860
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1861
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1863
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ListView;->mNeedSync:Z

    .line 1864
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 1866
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->updateScrollIndicators()V

    .line 1868
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mItemCount:I

    if-lez v2, :cond_14

    .line 1869
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 1872
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 1874
    if-nez v8, :cond_0

    goto/16 :goto_0

    .line 1758
    .end local v23           #sel:Landroid/view/View;
    .restart local v6       #childrenTop:I
    :pswitch_2
    if-eqz v4, :cond_15

    .line 1759
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Landroid/widget/ListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1761
    .end local v23           #sel:Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Landroid/widget/ListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v23

    .line 1763
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1765
    .end local v23           #sel:Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSpecificTop:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v2, v1}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .line 1766
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1768
    .end local v23           #sel:Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v23

    .line 1769
    .restart local v23       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 1772
    .end local v23           #sel:Landroid/view/View;
    :pswitch_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1773
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v23

    .line 1774
    .restart local v23       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 1777
    .end local v23           #sel:Landroid/view/View;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSpecificTop:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v2, v1}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .line 1778
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v23           #sel:Landroid/view/View;
    :pswitch_7
    move-object/from16 v2, p0

    .line 1780
    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v23

    .line 1781
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1789
    .end local v23           #sel:Landroid/view/View;
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v21

    .line 1790
    .restart local v21       #position:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1791
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v23

    .line 1792
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1794
    .end local v21           #position:I
    .end local v23           #sel:Landroid/view/View;
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ltz v2, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v2, v0, :cond_19

    .line 1795
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    if-nez v3, :cond_18

    .end local v6           #childrenTop:I
    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v23           #sel:Landroid/view/View;
    .restart local v6       #childrenTop:I
    :cond_18
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_7

    .line 1797
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v2, v0, :cond_1b

    .line 1798
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v20, :cond_1a

    .end local v6           #childrenTop:I
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v23           #sel:Landroid/view/View;
    .restart local v6       #childrenTop:I
    :cond_1a
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_8

    .line 1801
    :cond_1b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1814
    .end local v6           #childrenTop:I
    :cond_1c
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 1827
    .restart local v15       #focusWasTaken:Z
    :cond_1d
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1828
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_5

    .line 1831
    .end local v15           #focusWasTaken:Z
    :cond_1e
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_5

    .line 1835
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mTouchMode:I

    if-lez v2, :cond_21

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mTouchMode:I

    const/16 v24, 0x3

    move/from16 v0, v24

    if-ge v2, v0, :cond_21

    .line 1836
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v2, v2, v24

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1837
    .local v9, child:Landroid/view/View;
    if-eqz v9, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1845
    .end local v9           #child:Landroid/view/View;
    :cond_20
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v14, :cond_11

    .line 1846
    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_6

    .line 1839
    :cond_21
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ListView;->mSelectedTop:I

    .line 1840
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9

    .line 1659
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1756
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 4
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v2, -0x1

    .line 2143
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2144
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2170
    :cond_0
    :goto_0
    return v2

    .line 2148
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2149
    .local v1, count:I
    iget-boolean v3, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_4

    .line 2150
    if-eqz p2, :cond_2

    .line 2151
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2152
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2153
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2156
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2157
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2158
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 2162
    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 2165
    goto :goto_0

    .line 2167
    :cond_4
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 2170
    goto :goto_0
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxHeight"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 1388
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1389
    .local v1, adapter:Landroid/widget/ListAdapter;
    if-nez v1, :cond_1

    .line 1390
    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v6, v10, v11

    .line 1444
    :cond_0
    :goto_0
    return v6

    .line 1394
    :cond_1
    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v9, v10, v11

    .line 1395
    .local v9, returnedHeight:I
    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    if-lez v10, :cond_6

    iget-object v10, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1398
    .local v3, dividerHeight:I
    :goto_1
    const/4 v6, 0x0

    .line 1403
    .local v6, prevHeightWithoutPartialChild:I
    const/4 v10, -0x1

    if-ne p3, v10, :cond_2

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    .line 1404
    :cond_2
    iget-object v7, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1405
    .local v7, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v8

    .line 1406
    .local v8, recyle:Z
    iget-object v5, p0, Landroid/widget/ListView;->mIsScrap:[Z

    .line 1408
    .local v5, isScrap:[Z
    move v4, p2

    .local v4, i:I
    :goto_2
    if-gt v4, p3, :cond_9

    .line 1409
    invoke-virtual {p0, v4, v5}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1411
    .local v2, child:Landroid/view/View;
    invoke-direct {p0, v2, v4, p1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1413
    if-lez v4, :cond_3

    .line 1415
    add-int/2addr v9, v3

    .line 1419
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/AbsListView$LayoutParams;

    iget v10, v10, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v7, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1421
    const/4 v10, -0x1

    invoke-virtual {v7, v2, v10}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1424
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    .line 1426
    move/from16 v0, p4

    if-lt v9, v0, :cond_7

    .line 1429
    if-ltz p5, :cond_5

    move/from16 v0, p5

    if-le v4, v0, :cond_5

    if-lez v6, :cond_5

    move/from16 v0, p4

    if-ne v9, v0, :cond_0

    :cond_5
    move/from16 v6, p4

    goto :goto_0

    .line 1395
    .end local v2           #child:Landroid/view/View;
    .end local v3           #dividerHeight:I
    .end local v4           #i:I
    .end local v5           #isScrap:[Z
    .end local v6           #prevHeightWithoutPartialChild:I
    .end local v7           #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .end local v8           #recyle:Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 1437
    .restart local v2       #child:Landroid/view/View;
    .restart local v3       #dividerHeight:I
    .restart local v4       #i:I
    .restart local v5       #isScrap:[Z
    .restart local v6       #prevHeightWithoutPartialChild:I
    .restart local v7       #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .restart local v8       #recyle:Z
    :cond_7
    if-ltz p5, :cond_8

    move/from16 v0, p5

    if-lt v4, v0, :cond_8

    .line 1438
    move v6, v9

    .line 1408
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v6, v9

    .line 1444
    goto :goto_0
.end method

.method final measureTotalHeightOfChildrenWithBound(IIII)I
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "bound"

    .prologue
    .line 1315
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1317
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 1318
    iget-object v9, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int v8, v9, v10

    .line 1355
    :cond_0
    return v8

    .line 1322
    :cond_1
    iget-object v9, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int v8, v9, v10

    .line 1323
    .local v8, returnedHeight:I
    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    if-lez v9, :cond_5

    iget-object v9, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_5

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1328
    .local v3, dividerHeight:I
    :goto_0
    const/4 v9, -0x1

    if-ne p3, v9, :cond_2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 p3, v9, -0x1

    .line 1329
    :cond_2
    iget-object v6, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1330
    .local v6, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v7

    .line 1331
    .local v7, recyle:Z
    iget-object v5, p0, Landroid/widget/ListView;->mIsScrap:[Z

    .line 1333
    .local v5, isScrap:[Z
    const/4 v1, 0x1

    .line 1335
    .local v1, bInBound:Z
    move v4, p2

    .local v4, i:I
    :goto_1
    if-gt v4, p3, :cond_0

    if-eqz v1, :cond_0

    .line 1337
    invoke-virtual {p0, v4, v5}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1339
    .local v2, child:Landroid/view/View;
    invoke-direct {p0, v2, v4, p1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1341
    if-lez v4, :cond_3

    .line 1343
    add-int/2addr v8, v3

    .line 1347
    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/AbsListView$LayoutParams;

    iget v9, v9, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v6, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1349
    invoke-virtual {v6, v2, v4}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1351
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 1352
    if-gt v8, p4, :cond_6

    const/4 v1, 0x1

    .line 1335
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1323
    .end local v1           #bInBound:Z
    .end local v2           #child:Landroid/view/View;
    .end local v3           #dividerHeight:I
    .end local v4           #i:I
    .end local v5           #isScrap:[Z
    .end local v6           #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .end local v7           #recyle:Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 1352
    .restart local v1       #bInBound:Z
    .restart local v2       #child:Landroid/view/View;
    .restart local v3       #dividerHeight:I
    .restart local v4       #i:I
    .restart local v5       #isScrap:[Z
    .restart local v6       #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .restart local v7       #recyle:Z
    :cond_6
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 4417
    invoke-super {p0}, Landroid/widget/AbsListView;->onDetachedFromWindow()V

    .line 4418
    iget-object v0, p0, Landroid/widget/ListView;->mCheckForItemReleased:Landroid/widget/ListView$CheckForItemReleased;

    if-eqz v0, :cond_0

    .line 4419
    iget-object v0, p0, Landroid/widget/ListView;->mCheckForItemReleased:Landroid/widget/ListView$CheckForItemReleased;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4421
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mPressedViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 4422
    iget-object v0, p0, Landroid/widget/ListView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4424
    :cond_1
    iget-object v0, p0, Landroid/widget/ListView;->mPressAnimators:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 4425
    iget-object v0, p0, Landroid/widget/ListView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4427
    :cond_2
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 4170
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 3640
    invoke-super {p0}, Landroid/widget/AbsListView;->onFinishInflate()V

    .line 3642
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 3643
    .local v0, count:I
    if-lez v0, :cond_1

    .line 3644
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3645
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 3644
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3647
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->removeAllViews()V

    .line 3649
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 4196
    const/4 v0, 0x0

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 15
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 3583
    invoke-super/range {p0 .. p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3585
    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3586
    .local v2, adapter:Landroid/widget/ListAdapter;
    const/4 v5, -0x1

    .line 3587
    .local v5, closetChildIndex:I
    const/4 v4, 0x0

    .line 3588
    .local v4, closestChildTop:I
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 3589
    iget v12, p0, Landroid/widget/ListView;->mScrollX:I

    iget v13, p0, Landroid/widget/ListView;->mScrollY:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 3593
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v13

    iget v14, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_0

    .line 3594
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 3595
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 3600
    :cond_0
    iget-object v11, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3601
    .local v11, otherRect:Landroid/graphics/Rect;
    const v9, 0x7fffffff

    .line 3602
    .local v9, minDistance:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 3603
    .local v3, childCount:I
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3605
    .local v7, firstPosition:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v3, :cond_3

    .line 3607
    add-int v12, v7, v8

    invoke-interface {v2, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 3605
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3611
    :cond_2
    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3612
    .local v10, other:Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3613
    invoke-virtual {p0, v10, v11}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3614
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v11, v1}, Landroid/widget/ListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v6

    .line 3616
    .local v6, distance:I
    if-ge v6, v9, :cond_1

    .line 3617
    move v9, v6

    .line 3618
    move v5, v8

    .line 3619
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_1

    .line 3624
    .end local v3           #childCount:I
    .end local v6           #distance:I
    .end local v7           #firstPosition:I
    .end local v8           #i:I
    .end local v9           #minDistance:I
    .end local v10           #other:Landroid/view/View;
    .end local v11           #otherRect:Landroid/graphics/Rect;
    :cond_3
    if-ltz v5, :cond_4

    .line 3625
    iget v12, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v12, v5

    invoke-virtual {p0, v12, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 3629
    :goto_2
    return-void

    .line 3627
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 4133
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4134
    const-class v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 4135
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 4139
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4140
    const-class v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 4141
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 3803
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 3804
    invoke-virtual {p0}, Landroid/widget/ListView;->isOverScrollAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3805
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mStart:F

    iput v0, p0, Landroid/widget/ListView;->mPre:F

    .line 3806
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->mSame:Z

    .line 3809
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2212
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 2217
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2222
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 4191
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1231
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1233
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1234
    .local v11, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1235
    .local v10, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 1236
    .local v12, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1238
    .local v4, heightSize:I
    const/4 v9, 0x0

    .line 1239
    .local v9, childWidth:I
    const/4 v7, 0x0

    .line 1240
    .local v7, childHeight:I
    const/4 v8, 0x0

    .line 1242
    .local v8, childState:I
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_4

    move v0, v2

    :goto_0
    iput v0, p0, Landroid/widget/ListView;->mItemCount:I

    .line 1243
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez v0, :cond_1

    if-eqz v11, :cond_0

    if-nez v10, :cond_1

    .line 1245
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1247
    .local v6, child:Landroid/view/View;
    invoke-direct {p0, v6, v2, p1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1249
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1250
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1251
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v8, v0}, Landroid/widget/ListView;->combineMeasuredStates(II)I

    move-result v8

    .line 1253
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1255
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, v6, v3}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1259
    .end local v6           #child:Landroid/view/View;
    :cond_1
    if-nez v11, :cond_5

    .line 1260
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v1

    add-int v12, v0, v1

    .line 1266
    :goto_1
    if-nez v10, :cond_2

    .line 1267
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1271
    :cond_2
    const/high16 v0, -0x8000

    if-ne v10, v0, :cond_3

    move-object v0, p0

    move v1, p1

    move v5, v3

    .line 1273
    invoke-virtual/range {v0 .. v5}, Landroid/widget/ListView;->measureHeightOfChildren(IIIII)I

    move-result v4

    .line 1276
    :cond_3
    invoke-virtual {p0, v12, v4}, Landroid/widget/ListView;->setMeasuredDimension(II)V

    .line 1277
    iput p1, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    .line 1278
    return-void

    .line 1242
    :cond_4
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    .line 1263
    :cond_5
    const/high16 v0, -0x100

    and-int/2addr v0, v8

    or-int/2addr v12, v0

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 4185
    iget-boolean v0, p0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    if-eqz v0, :cond_0

    .line 4186
    invoke-direct {p0}, Landroid/widget/ListView;->cancelPressAnimation()V

    .line 4187
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 4175
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 4179
    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1212
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1213
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1214
    .local v2, focusedChild:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1215
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v1, v5, v6

    .line 1216
    .local v1, childPosition:I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1217
    .local v0, childBottom:I
    const/4 v5, 0x0

    iget v6, p0, Landroid/widget/ListView;->mPaddingTop:I

    sub-int v6, p2, v6

    sub-int v6, v0, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1218
    .local v3, offset:I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v4, v5, v3

    .line 1219
    .local v4, top:I
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-nez v5, :cond_0

    .line 1220
    new-instance v5, Landroid/widget/ListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V

    iput-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1222
    :cond_0
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Landroid/widget/ListView$FocusSelector;->setup(II)Landroid/widget/ListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1225
    .end local v0           #childBottom:I
    .end local v1           #childPosition:I
    .end local v2           #focusedChild:Landroid/view/View;
    .end local v3           #offset:I
    .end local v4           #top:I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onSizeChanged(IIII)V

    .line 1226
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "ev"

    .prologue
    .line 3833
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3834
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 3835
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->cancelPressAnimation()V

    .line 3837
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 3838
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isInBouncing()Z

    move-result v18

    if-nez v18, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTouchMode:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 3839
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mPendingCheckForPressAnimation:Landroid/widget/ListView$CheckForPressAnimation;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 3840
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mPendingCheckForPressAnimation:Landroid/widget/ListView$CheckForPressAnimation;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3842
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findMotionRow(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v19, v0

    sub-int v14, v18, v19

    .line 3843
    .local v14, pressedPos:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3844
    .local v5, animatedChild:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->releaseItem(Landroid/view/View;)V

    .line 3846
    .end local v5           #animatedChild:Landroid/view/View;
    .end local v14           #pressedPos:I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOverScrollAnimationEnabled()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 3847
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mSame:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mStart:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-eqz v18, :cond_4

    .line 3848
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ListView;->mSame:Z

    .line 3849
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mInBouncing:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 3851
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3852
    .local v4, animSet:Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mCurrent:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mStart:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_7

    .line 3853
    const/4 v9, 0x1

    .local v9, i:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_5

    .line 3854
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    if-nez v18, :cond_6

    .line 3873
    :cond_5
    new-instance v18, Landroid/widget/ListView$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ListView$1;-><init>(Landroid/widget/ListView;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3896
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 3897
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 4028
    .end local v4           #animSet:Landroid/animation/AnimatorSet;
    .end local v9           #i:I
    :goto_1
    return v8

    .line 3856
    .restart local v4       #animSet:Landroid/animation/AnimatorSet;
    .restart local v9       #i:I
    :cond_6
    const-string/jumbo v18, "translationY"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 3857
    .local v15, pvhTranslationY:Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v15, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 3859
    .local v6, childScaleTransAnim:Landroid/animation/ObjectAnimator;
    const-wide/16 v18, 0x82

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3860
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v6, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3853
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 3863
    .end local v6           #childScaleTransAnim:Landroid/animation/ObjectAnimator;
    .end local v9           #i:I
    .end local v15           #pvhTranslationY:Landroid/animation/PropertyValuesHolder;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v18

    add-int/lit8 v9, v18, -0x2

    .restart local v9       #i:I
    :goto_2
    const/16 v18, -0x1

    move/from16 v0, v18

    if-le v9, v0, :cond_5

    .line 3864
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_5

    .line 3866
    const-string/jumbo v18, "translationY"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 3867
    .restart local v15       #pvhTranslationY:Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v15, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 3869
    .restart local v6       #childScaleTransAnim:Landroid/animation/ObjectAnimator;
    const-wide/16 v18, 0x82

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3870
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v6, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3863
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 3899
    .end local v4           #animSet:Landroid/animation/AnimatorSet;
    .end local v6           #childScaleTransAnim:Landroid/animation/ObjectAnimator;
    .end local v9           #i:I
    .end local v15           #pvhTranslationY:Landroid/animation/PropertyValuesHolder;
    :cond_8
    const/high16 v18, -0x3cb8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView;->mStart:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView;->mPre:F

    .line 4010
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 4011
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findMotionRow(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v19, v0

    sub-int v14, v18, v19

    .line 4012
    .restart local v14       #pressedPos:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4013
    .restart local v5       #animatedChild:Landroid/view/View;
    if-eqz v5, :cond_b

    .line 4014
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mDataChanged:Z

    move/from16 v18, v0

    if-nez v18, :cond_27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    if-nez v18, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v19, v0

    add-int v19, v19, v14

    invoke-interface/range {v18 .. v19}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_27

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isInBouncing()Z

    move-result v18

    if-nez v18, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTouchMode:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_27

    .line 4015
    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/ListView;->mPressedView:Landroid/view/View;

    .line 4016
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mPendingCheckForPressAnimation:Landroid/widget/ListView$CheckForPressAnimation;

    move-object/from16 v18, v0

    if-nez v18, :cond_a

    .line 4017
    new-instance v18, Landroid/widget/ListView$CheckForPressAnimation;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ListView$CheckForPressAnimation;-><init>(Landroid/widget/ListView;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ListView;->mPendingCheckForPressAnimation:Landroid/widget/ListView$CheckForPressAnimation;

    .line 4019
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mPendingCheckForPressAnimation:Landroid/widget/ListView$CheckForPressAnimation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/ListView$CheckForPressAnimation;->setAnimatedView(Landroid/view/View;)V

    .line 4020
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mPendingCheckForPressAnimation:Landroid/widget/ListView$CheckForPressAnimation;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/ListView;->mCheckForPressAnimationDelay:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4027
    .end local v5           #animatedChild:Landroid/view/View;
    .end local v14           #pressedPos:I
    :cond_b
    :goto_4
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 4028
    .local v8, handled:Z
    goto/16 :goto_1

    .line 3901
    .end local v8           #handled:Z
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_26

    .line 3902
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isInBouncing()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 3903
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->cancelPressAnimation()V

    .line 3905
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOverScrollAnimationEnabled()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 3906
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView;->mCurrent:F

    .line 3907
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mSame:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mCurrent:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mStart:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-eqz v18, :cond_e

    .line 3908
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ListView;->mSame:Z

    .line 3910
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mCurrent:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mStart:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_19

    .line 3911
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v18

    if-nez v18, :cond_10

    .line 3912
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_f

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findMotionRow(I)I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 3914
    :cond_f
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->doAnimFinalize()V

    .line 3915
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 3918
    :cond_10
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->doAnimFinalize()V

    .line 3919
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 3922
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mCurrent:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mStart:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/high16 v19, 0x4170

    cmpl-float v18, v18, v19

    if-lez v18, :cond_14

    .line 3923
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ListView;->mInBouncing:Z

    .line 3935
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mCurrent:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPre:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_16

    .line 3936
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mCurrent:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mStart:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/high16 v19, 0x4120

    div-float v7, v18, v19

    .line 3940
    .local v7, dist:F
    :goto_5
    sget v18, Landroid/widget/ListView;->MAX_DIFF:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v7, v18

    if-lez v18, :cond_12

    .line 3941
    sget v18, Landroid/widget/ListView;->MAX_DIFF:I

    move/from16 v0, v18

    int-to-float v7, v0

    .line 3942
    :cond_12
    const/4 v12, 0x0

    .line 3943
    .local v12, mPreSpace:I
    const/4 v9, 0x1

    .restart local v9       #i:I
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_13

    .line 3944
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    if-nez v18, :cond_17

    .line 3950
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    .line 3951
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 3925
    .end local v7           #dist:F
    .end local v9           #i:I
    .end local v12           #mPreSpace:I
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mInBouncing:Z

    move/from16 v18, v0

    if-eqz v18, :cond_15

    .line 3926
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 3927
    .local v16, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 3928
    .local v17, y:I
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView;->mMotionX:I

    .line 3929
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView;->mLastY:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView;->mMotionY:I

    .line 3930
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView;->mMotionPosition:I

    .line 3932
    .end local v16           #x:I
    .end local v17           #y:I
    :cond_15
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 3938
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPre:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mStart:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/high16 v19, 0x4120

    div-float v7, v18, v19

    .restart local v7       #dist:F
    goto :goto_5

    .line 3946
    .restart local v9       #i:I
    .restart local v12       #mPreSpace:I
    :cond_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    int-to-float v0, v12

    move/from16 v19, v0

    add-float v19, v19, v7

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setTranslationY(F)V

    .line 3947
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mStart:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_18

    .line 3948
    int-to-float v0, v12

    move/from16 v18, v0

    add-float v18, v18, v7

    move/from16 v0, v18

    float-to-int v12, v0

    .line 3943
    :cond_18
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    .line 3952
    .end local v7           #dist:F
    .end local v9           #i:I
    .end local v12           #mPreSpace:I
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mCurrent:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mStart:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_25

    .line 3953
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v13

    .line 3954
    .local v13, p:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 3955
    .local v11, m:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getCount()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1b

    .line 3956
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findMotionRow(I)I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1c

    .line 3959
    :cond_1a
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->doAnimFinalize()V

    .line 3960
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 3963
    :cond_1b
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->doAnimFinalize()V

    .line 3964
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 3966
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mStart:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mCurrent:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/high16 v19, 0x4170

    cmpl-float v18, v18, v19

    if-lez v18, :cond_1f

    .line 3967
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ListView;->mInBouncing:Z

    .line 3979
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mCurrent:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPre:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_21

    .line 3980
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mCurrent:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mStart:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/high16 v19, 0x4120

    div-float v7, v18, v19

    .line 3984
    .restart local v7       #dist:F
    :goto_7
    sget v18, Landroid/widget/ListView;->MAX_DIFF:I

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v7, v18

    if-gez v18, :cond_1d

    .line 3985
    sget v18, Landroid/widget/ListView;->MAX_DIFF:I

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v7, v0

    .line 3986
    :cond_1d
    const/4 v12, 0x0

    .line 3988
    .restart local v12       #mPreSpace:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->isIgnoreFooterViewInBouncing:Z

    move/from16 v18, v0

    if-eqz v18, :cond_22

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v18

    add-int/lit8 v10, v18, -0x3

    .line 3989
    .local v10, index:I
    :goto_8
    move v9, v10

    .restart local v9       #i:I
    :goto_9
    const/16 v18, -0x1

    move/from16 v0, v18

    if-le v9, v0, :cond_1e

    .line 3990
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    if-nez v18, :cond_23

    .line 3996
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    .line 3997
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 3969
    .end local v7           #dist:F
    .end local v9           #i:I
    .end local v10           #index:I
    .end local v12           #mPreSpace:I
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mInBouncing:Z

    move/from16 v18, v0

    if-eqz v18, :cond_20

    .line 3970
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 3971
    .restart local v16       #x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 3972
    .restart local v17       #y:I
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView;->mMotionX:I

    .line 3973
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView;->mLastY:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView;->mMotionY:I

    .line 3974
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView;->mMotionPosition:I

    .line 3976
    .end local v16           #x:I
    .end local v17           #y:I
    :cond_20
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 3982
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPre:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mStart:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/high16 v19, 0x4120

    div-float v7, v18, v19

    .restart local v7       #dist:F
    goto/16 :goto_7

    .line 3988
    .restart local v12       #mPreSpace:I
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v18

    add-int/lit8 v10, v18, -0x2

    goto :goto_8

    .line 3992
    .restart local v9       #i:I
    .restart local v10       #index:I
    :cond_23
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    int-to-float v0, v12

    move/from16 v19, v0

    add-float v19, v19, v7

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setTranslationY(F)V

    .line 3993
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mStart:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_24

    .line 3994
    int-to-float v0, v12

    move/from16 v18, v0

    add-float v18, v18, v7

    move/from16 v0, v18

    float-to-int v12, v0

    .line 3989
    :cond_24
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_9

    .line 3999
    .end local v7           #dist:F
    .end local v9           #i:I
    .end local v10           #index:I
    .end local v11           #m:Landroid/view/View;
    .end local v12           #mPreSpace:I
    .end local v13           #p:I
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView;->mPre:F

    goto/16 :goto_3

    .line 4001
    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    if-nez v18, :cond_9

    .line 4003
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mItemsCanFocus:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v18

    if-eqz v18, :cond_9

    .line 4006
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 4021
    .restart local v5       #animatedChild:Landroid/view/View;
    .restart local v14       #pressedPos:I
    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTouchMode:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 4022
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->cancelPressAnimation()V

    goto/16 :goto_4
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 4402
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onWindowFocusChanged(Z)V

    .line 4403
    if-nez p1, :cond_1

    .line 4404
    iget-object v0, p0, Landroid/widget/ListView;->mCheckForItemReleased:Landroid/widget/ListView$CheckForItemReleased;

    if-eqz v0, :cond_0

    .line 4405
    iget-object v0, p0, Landroid/widget/ListView;->mCheckForItemReleased:Landroid/widget/ListView$CheckForItemReleased;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4410
    :cond_0
    iget-boolean v0, p0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    if-eqz v0, :cond_1

    .line 4411
    invoke-direct {p0}, Landroid/widget/ListView;->cancelPressAnimation()V

    .line 4413
    :cond_1
    return-void
.end method

.method pageScroll(I)Z
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2384
    const/4 v1, -0x1

    .line 2385
    .local v1, nextPage:I
    const/4 v0, 0x0

    .line 2387
    .local v0, down:Z
    const/16 v5, 0x21

    if-ne p1, v5, :cond_4

    .line 2388
    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2394
    :cond_0
    :goto_0
    if-ltz v1, :cond_5

    .line 2395
    invoke-virtual {p0, v1, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2396
    .local v2, position:I
    if-ltz v2, :cond_5

    .line 2397
    const/4 v4, 0x4

    iput v4, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2398
    iget v4, p0, Landroid/widget/ListView;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/ListView;->mSpecificTop:I

    .line 2400
    if-eqz v0, :cond_1

    iget v4, p0, Landroid/widget/ListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_1

    .line 2401
    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2404
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 2405
    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2408
    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2409
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2410
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2411
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2418
    .end local v2           #position:I
    :cond_3
    :goto_1
    return v3

    .line 2389
    :cond_4
    const/16 v5, 0x82

    if-ne p1, v5, :cond_0

    .line 2390
    iget v5, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2391
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v3, v4

    .line 2418
    goto :goto_1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 2
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/high16 v1, 0x3f80

    .line 4390
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 4391
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mCheckForItemReleased:Landroid/widget/ListView$CheckForItemReleased;

    if-nez v0, :cond_1

    .line 4392
    new-instance v0, Landroid/widget/ListView$CheckForItemReleased;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ListView$CheckForItemReleased;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V

    iput-object v0, p0, Landroid/widget/ListView;->mCheckForItemReleased:Landroid/widget/ListView$CheckForItemReleased;

    .line 4394
    :cond_1
    iget-object v0, p0, Landroid/widget/ListView;->mCheckForItemReleased:Landroid/widget/ListView$CheckForItemReleased;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/ListView$CheckForItemReleased;->start(Landroid/view/View;IJ)V

    .line 4395
    const/4 v0, 0x1

    .line 4397
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 1
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 3817
    invoke-virtual {p0}, Landroid/widget/ListView;->isInBouncing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3818
    const/4 v0, 0x1

    .line 3820
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1308
    const/4 v0, 0x1

    return v0
.end method

.method protected releaseItem(Landroid/view/View;)V
    .locals 7
    .parameter "releasedView"

    .prologue
    const/high16 v6, 0x3f80

    .line 4300
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Landroid/widget/ListView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 4301
    iget-object v4, p0, Landroid/widget/ListView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 4302
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 4303
    iget-object v4, p0, Landroid/widget/ListView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 4304
    .local v0, animator:Landroid/animation/Animator;
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Landroid/widget/ListView;->get2DReleaseAnimation(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 4305
    .local v2, releaseAnim:Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x32

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 4306
    new-instance v4, Landroid/widget/ListView$3;

    invoke-direct {v4, p0, v0}, Landroid/widget/ListView$3;-><init>(Landroid/widget/ListView;Landroid/animation/Animator;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4321
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 4300
    .end local v0           #animator:Landroid/animation/Animator;
    .end local v2           #releaseAnim:Landroid/animation/ObjectAnimator;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4324
    .end local v3           #v:Landroid/view/View;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    iget v4, p0, Landroid/widget/ListView;->mTouchMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Landroid/widget/ListView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/widget/ListView;->mPressedView:Landroid/view/View;

    if-ne v4, p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4327
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Landroid/widget/ListView;->get2DReleaseAnimation(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 4328
    .restart local v2       #releaseAnim:Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/widget/ListView$4;

    invoke-direct {v4, p0}, Landroid/widget/ListView$4;-><init>(Landroid/widget/ListView;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4340
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 4342
    .end local v2           #releaseAnim:Landroid/animation/ObjectAnimator;
    :cond_2
    iget-object v4, p0, Landroid/widget/ListView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4343
    iget-object v4, p0, Landroid/widget/ListView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 4344
    return-void
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 502
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 503
    const/4 v0, 0x0

    .line 504
    .local v0, result:Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 505
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 508
    :cond_0
    const/4 v0, 0x1

    .line 510
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 513
    .end local v0           #result:Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 417
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 418
    const/4 v0, 0x0

    .line 419
    .local v0, result:Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 423
    :cond_0
    const/4 v0, 0x1

    .line 425
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 428
    .end local v0           #result:Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 15
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 664
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 667
    .local v9, rectTopWithinChild:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 668
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 670
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v6

    .line 671
    .local v6, height:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v8

    .line 672
    .local v8, listUnfadedTop:I
    add-int v7, v8, v6

    .line 673
    .local v7, listUnfadedBottom:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 675
    .local v5, fadingEdge:I
    invoke-direct {p0}, Landroid/widget/ListView;->showingTopFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 677
    iget v13, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-gtz v13, :cond_0

    if-le v9, v5, :cond_1

    .line 678
    :cond_0
    add-int/2addr v8, v5

    .line 682
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 683
    .local v2, childCount:I
    add-int/lit8 v13, v2, -0x1

    invoke-virtual {p0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 685
    .local v1, bottomOfBottomChild:I
    invoke-direct {p0}, Landroid/widget/ListView;->showingBottomFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 687
    iget v13, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v14, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_2

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v1, v5

    if-ge v13, v14, :cond_3

    .line 689
    :cond_2
    sub-int/2addr v7, v5

    .line 693
    :cond_3
    const/4 v11, 0x0

    .line 695
    .local v11, scrollYDelta:I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-le v13, v7, :cond_7

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-le v13, v8, :cond_7

    .line 700
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_6

    .line 702
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v8

    add-int/2addr v11, v13

    .line 709
    :goto_0
    sub-int v4, v1, v7

    .line 710
    .local v4, distanceToBottom:I
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 730
    .end local v4           #distanceToBottom:I
    :cond_4
    :goto_1
    if-eqz v11, :cond_9

    const/4 v10, 0x1

    .line 731
    .local v10, scroll:Z
    :goto_2
    if-eqz v10, :cond_5

    .line 732
    neg-int v13, v11

    invoke-direct {p0, v13}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 733
    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v13, v0}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 734
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v13

    iput v13, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 735
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 737
    :cond_5
    return v10

    .line 705
    .end local v10           #scroll:Z
    :cond_6
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v7

    add-int/2addr v11, v13

    goto :goto_0

    .line 711
    :cond_7
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-ge v13, v8, :cond_4

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v13, v7, :cond_4

    .line 716
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_8

    .line 718
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v7, v13

    sub-int/2addr v11, v13

    .line 725
    :goto_3
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 726
    .local v12, top:I
    sub-int v3, v12, v8

    .line 727
    .local v3, deltaToTop:I
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_1

    .line 721
    .end local v3           #deltaToTop:I
    .end local v12           #top:I
    :cond_8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int v13, v8, v13

    sub-int/2addr v11, v13

    goto :goto_3

    .line 730
    :cond_9
    const/4 v10, 0x0

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 617
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 619
    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 621
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 622
    return-void
.end method

.method public set2DPressAnimationEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 4203
    iput-boolean p1, p0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    .line 4204
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 4205
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/widget/ListView;->enableAnimation(IZ)V

    .line 4206
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .parameter "adapter"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 555
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 556
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 559
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->resetList()V

    .line 560
    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 562
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 563
    :cond_1
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 568
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/ListView;->mOldSelectedPosition:I

    .line 569
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Landroid/widget/ListView;->mOldSelectedRowId:J

    .line 572
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 574
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    .line 575
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 576
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    iput v1, p0, Landroid/widget/ListView;->mOldItemCount:I

    .line 577
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mItemCount:I

    .line 578
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 580
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 581
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 583
    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 586
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-eqz v1, :cond_4

    .line 587
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 591
    .local v0, position:I
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 592
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 594
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    if-nez v1, :cond_2

    .line 596
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 605
    .end local v0           #position:I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 606
    return-void

    .line 565
    :cond_3
    iput-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 589
    :cond_4
    invoke-virtual {p0, v4, v5}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_1

    .line 599
    .end local v0           #position:I
    :cond_5
    iput-boolean v5, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 600
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 602
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 3196
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 3197
    .local v0, opaque:Z
    :goto_0
    iput-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    .line 3198
    if-eqz v0, :cond_1

    .line 3199
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 3200
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3202
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3204
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 3205
    return-void

    .line 3196
    .end local v0           #opaque:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDarkModeEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 4505
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "divider"

    .prologue
    const/4 v0, 0x0

    .line 3486
    if-eqz p1, :cond_2

    .line 3487
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3491
    :goto_0
    iput-object p1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3492
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    .line 3493
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3494
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3495
    return-void

    .line 3489
    :cond_2
    iput v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 3511
    iput p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3512
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3513
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3514
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 1
    .parameter "onTop"

    .prologue
    .line 4491
    iget-boolean v0, p0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    if-eqz v0, :cond_0

    .line 4492
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/AbsListView;->setDrawSelectorOnTop(Z)V

    .line 4496
    :goto_0
    return-void

    .line 4494
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setDrawSelectorOnTop(Z)V

    goto :goto_0
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .parameter "footerDividersEnabled"

    .prologue
    .line 3538
    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 3539
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3540
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .parameter "headerDividersEnabled"

    .prologue
    .line 3525
    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3526
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3527
    return-void
.end method

.method public setIntroAnimationDelay(I)V
    .locals 0
    .parameter "delay"

    .prologue
    .line 4165
    return-void
.end method

.method public setIntroAnimationType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 4149
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .parameter "itemsCanFocus"

    .prologue
    .line 3159
    iput-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 3160
    if-nez p1, :cond_0

    .line 3161
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 3163
    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "footer"

    .prologue
    .line 3570
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3571
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3572
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 3549
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3550
    iget v0, p0, Landroid/widget/ListView;->mScrollY:I

    if-gez v0, :cond_0

    .line 3551
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3553
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 537
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 538
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 2060
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 2061
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .prologue
    .line 2179
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2180
    .local v0, count:I
    if-lez v0, :cond_0

    .line 2181
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2192
    :goto_0
    return-void

    .line 2185
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2186
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 2188
    :cond_1
    iput v0, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2189
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    goto :goto_0
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .parameter "position"
    .parameter "y"

    .prologue
    .line 2073
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 2100
    :cond_0
    :goto_0
    return-void

    .line 2077
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2078
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 2079
    if-ltz p1, :cond_2

    .line 2080
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2086
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 2087
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2088
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/ListView;->mSpecificTop:I

    .line 2090
    iget-boolean v0, p0, Landroid/widget/ListView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 2091
    iput p1, p0, Landroid/widget/ListView;->mSyncPosition:I

    .line 2092
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/ListView;->mSyncRowId:J

    .line 2095
    :cond_3
    iget-object v0, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v0, :cond_4

    .line 2096
    iget-object v0, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 2098
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_0

    .line 2083
    :cond_5
    iput p1, p0, Landroid/widget/ListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 2109
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2110
    const/4 v0, 0x0

    .line 2112
    .local v0, awakeScrollbars:Z
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 2114
    .local v1, selectedPosition:I
    if-ltz v1, :cond_0

    .line 2115
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_3

    .line 2116
    const/4 v0, 0x1

    .line 2122
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v2, :cond_1

    .line 2123
    iget-object v2, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 2126
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2128
    if-eqz v0, :cond_2

    .line 2129
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2131
    :cond_2
    return-void

    .line 2117
    :cond_3
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    .line 2118
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "sel"

    .prologue
    .line 4471
    iget-boolean v4, p0, Landroid/widget/ListView;->m2DPressAnimationEnabled:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/ListView;->mOriginalSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/ListView;->mOriginalSelector:Landroid/graphics/drawable/Drawable;

    instance-of v4, v4, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v4, :cond_0

    .line 4473
    const/4 v1, 0x0

    .line 4474
    .local v1, listSelectionHighlight:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/ListView;->mOriginalSelector:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    .line 4475
    .local v3, stateListSelector:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 4476
    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    .line 4477
    .local v2, selectorTransition:Landroid/graphics/drawable/TransitionDrawable;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4478
    if-eqz v1, :cond_0

    .line 4479
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 4480
    .local v0, keypadSeletor:Landroid/graphics/drawable/StateListDrawable;
    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 4481
    invoke-super {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 4482
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 4488
    .end local v0           #keypadSeletor:Landroid/graphics/drawable/StateListDrawable;
    .end local v1           #listSelectionHighlight:Landroid/graphics/drawable/Drawable;
    .end local v2           #selectorTransition:Landroid/graphics/drawable/TransitionDrawable;
    .end local v3           #stateListSelector:Landroid/graphics/drawable/StateListDrawable;
    :goto_0
    return-void

    .line 4487
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4480
    nop

    :array_0
    .array-data 0x4
        0x9ct 0x0t 0x1t 0x1t
        0x59t 0xfft 0xfet 0xfet
    .end array-data
.end method

.method skipScroll()Z
    .locals 1

    .prologue
    .line 4517
    iget-boolean v0, p0, Landroid/widget/ListView;->mInBouncing:Z

    return v0
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .parameter "offset"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1024
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 1025
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .parameter "position"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1014
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 1015
    return-void
.end method

.method public startIntroAnimation()V
    .locals 0

    .prologue
    .line 4157
    return-void
.end method
