.class public Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;
.super Ljava/lang/Object;
.source "HtcFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller$ScrollFade;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BIG_OVERLAY_WH:I = 0xc8

.field public static final STATE_DRAGGING:I = 0x3

.field public static final STATE_ENTER:I = 0x1

.field public static final STATE_EXIT:I = 0x4

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_VISIBLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HtcFastScroller"

.field static sSymbol:Ljava/lang/String;


# instance fields
.field private mChangedBounds:Z

.field private mContext:Landroid/content/Context;

.field private mDrawOverlay:Z

.field private mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

.field private mHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

.field private mListOffset:I

.field private mOffset:I

.field private mOldTotalItemCount:I

.field private mOrientation:I

.field private mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverlayFading:Z

.field private mOverlayH:I

.field private mOverlayPadding:I

.field private mOverlayPos:Landroid/graphics/RectF;

.field private mOverlaySize:I

.field mOverlaySprite:Lcom/htc/sunnyCore/Sprite;

.field private mOverlayTextMargin:I

.field private mOverlayTextSize:I

.field mOverlayTexture:Lcom/htc/sunnyCore/Texture;

.field private mOverlayW:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintShadow:Landroid/graphics/Paint;

.field private mParentSceneNode:Lcom/htc/sunnyCore/SceneNode;

.field protected mResOverlay:I

.field protected mResThumb:I

.field protected mResTrack:I

.field private mScrollCompleted:Z

.field private mScrollFade:Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller$ScrollFade;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSectionText:Ljava/lang/String;

.field private mSections:[Ljava/lang/Object;

.field private mSectionsDirty:Z

.field mSizeChangeProcessed:Z

.field private mState:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbH:I

.field mThumbSprite:Lcom/htc/sunnyCore/Sprite;

.field mThumbTexture:Lcom/htc/sunnyCore/Texture;

.field private mThumbW:I

.field private mThumbX:I

.field private mThumbY:I

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field mTrackSprite:Lcom/htc/sunnyCore/Sprite;

.field mTrackTexture:Lcom/htc/sunnyCore/Texture;

.field private mVisibleItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const-string v0, "#"

    sput-object v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->sSymbol:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/RenderThread;Lcom/htc/sunnyCore/SceneNode;ILcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;)V
    .locals 6
    .parameter "context"
    .parameter "gView"
    .parameter "r"
    .parameter "parent"
    .parameter "orientation"
    .parameter "resItem"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTextSize:I

    .line 65
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTextMargin:I

    .line 70
    const/16 v0, 0x68

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlaySize:I

    .line 95
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mResThumb:I

    .line 96
    const v0, 0x208003e

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mResOverlay:I

    .line 98
    const v0, 0x208003f

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mResTrack:I

    .line 105
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionsDirty:Z

    .line 108
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayPadding:I

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSizeChangeProcessed:Z

    .line 141
    iput-object p2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p3

    move v4, p5

    move-object v5, p6

    .line 142
    invoke-direct/range {v0 .. v5}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->init(Landroid/content/Context;Lcom/htc/sunnyCore/SceneNode;Lcom/htc/sunnyCore/RenderThread;ILcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;)V

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;)Lcom/htc/sunnyCore/SceneNode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mParentSceneNode:Lcom/htc/sunnyCore/SceneNode;

    return-object v0
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 900
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 901
    .local v8, cancelFling:Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0, v8, v7}, Lcom/htc/sunnyCore/widget/gridview/GridView;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    .line 902
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 903
    return-void
.end method

.method private getSectionsFromIndexer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 771
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getMediaList()Lcom/htc/sunnyCore/IMediaList;

    move-result-object v0

    .line 772
    .local v0, mediaList:Lcom/htc/sunnyCore/IMediaList;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 781
    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_0

    .line 782
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0           #mediaList:Lcom/htc/sunnyCore/IMediaList;
    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 783
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSections:[Ljava/lang/Object;

    .line 789
    :goto_0
    iput-boolean v3, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionsDirty:Z

    .line 790
    return-void

    .line 786
    .restart local v0       #mediaList:Lcom/htc/sunnyCore/IMediaList;
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, " "

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Lcom/htc/sunnyCore/SceneNode;Lcom/htc/sunnyCore/RenderThread;ILcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;)V
    .locals 6
    .parameter "context"
    .parameter "parent"
    .parameter "r"
    .parameter "orientation"
    .parameter "resItem"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 294
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mContext:Landroid/content/Context;

    .line 297
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 299
    .local v1, res:Landroid/content/res/Resources;
    if-ne p4, v4, :cond_0

    .line 300
    iget v2, p5, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;->mResThumbHor:I

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mResThumb:I

    .line 308
    :goto_0
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mResThumb:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->useThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    iget v2, p5, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;->mResTrack:I

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mResTrack:I

    .line 311
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mResTrack:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->useTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    const-string v2, "common_scroller_base"

    iget v3, p5, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;->mResOverlay:I

    invoke-static {p1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mResOverlay:I

    .line 316
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mResOverlay:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->useOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v1           #res:Landroid/content/res/Resources;
    :goto_1
    iput-boolean v4, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mScrollCompleted:Z

    .line 324
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->getSectionsFromIndexer()V

    .line 326
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 327
    new-instance v2, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller$ScrollFade;

    invoke-direct {v2, p0}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller$ScrollFade;-><init>(Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;)V

    iput-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mScrollFade:Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller$ScrollFade;

    .line 329
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    .line 330
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 331
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 332
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 333
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 335
    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    .line 336
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    const v3, -0xe5e5e6

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 338
    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mState:I

    .line 339
    iput-boolean v5, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayFading:Z

    .line 341
    iput-object p2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mParentSceneNode:Lcom/htc/sunnyCore/SceneNode;

    .line 342
    iput p4, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOrientation:I

    .line 343
    new-instance v2, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller$1;

    const-string v3, "HtcFastScroller"

    invoke-direct {v2, p0, p1, v3, p3}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller$1;-><init>(Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/RenderThread;)V

    iput-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    .line 351
    return-void

    .line 305
    .restart local v1       #res:Landroid/content/res/Resources;
    :cond_0
    :try_start_1
    iget v2, p5, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;->mResThumbVer:I

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mResThumb:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 318
    .end local v1           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 319
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcFastScroller"

    const-string v3, "[HTCAlbum] [init] fail to init FastScroller"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private onScrollNormal(Lcom/htc/sunnyCore/widget/gridview/GridView;III)Z
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 670
    sub-int v2, p4, p3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 671
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOrientation:I

    if-ne v2, v1, :cond_1

    .line 672
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->getAdjHostHight()I

    move-result v2

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbH:I

    sub-int/2addr v2, v3

    mul-int/2addr v2, p2

    sub-int v3, p4, p3

    div-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbY:I

    .line 686
    :goto_0
    iget-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mChangedBounds:Z

    if-eqz v2, :cond_0

    .line 687
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->resetThumbPos()V

    .line 688
    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mChangedBounds:Z

    .line 691
    :cond_0
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mVisibleItem:I

    if-ne p2, v2, :cond_3

    .line 696
    :goto_1
    return v0

    .line 676
    :cond_1
    if-lez p4, :cond_2

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOldTotalItemCount:I

    if-eq v2, p4, :cond_2

    .line 677
    iput p4, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOldTotalItemCount:I

    .line 678
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getWidth()I

    move-result v2

    mul-int/2addr v2, p3

    div-int/2addr v2, p4

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbW:I

    .line 679
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbW:I

    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 680
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbW:I

    .line 683
    :cond_2
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbW:I

    sub-int/2addr v2, v3

    mul-int/2addr v2, p2

    sub-int v3, p4, p3

    div-int/2addr v2, v3

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbX:I

    goto :goto_0

    .line 695
    :cond_3
    iput p2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mVisibleItem:I

    move v0, v1

    .line 696
    goto :goto_1
.end method

.method private onScrollSmooth(III)Z
    .locals 6
    .parameter "range"
    .parameter "offset"
    .parameter "extent"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 701
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    .line 702
    const-string v3, "HtcFastScroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcFastScroller][onScroll2] range "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", offset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", extent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_0
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getWidth()I

    move-result v3

    if-ne p3, v3, :cond_2

    .line 742
    :cond_1
    :goto_0
    return v1

    .line 708
    :cond_2
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    .line 709
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 710
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 712
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOrientation:I

    if-ne v3, v2, :cond_5

    .line 713
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->getAdjHostHight()I

    move-result v3

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, p2

    int-to-float v5, p1

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbY:I

    .line 732
    :goto_1
    iget-boolean v3, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mChangedBounds:Z

    if-eqz v3, :cond_3

    .line 733
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->resetThumbPos()V

    .line 734
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mChangedBounds:Z

    .line 737
    :cond_3
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOffset:I

    if-ne p2, v3, :cond_4

    iget-boolean v3, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSizeChangeProcessed:Z

    if-eq v3, v2, :cond_1

    .line 741
    :cond_4
    iput p2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOffset:I

    move v1, v2

    .line 742
    goto :goto_0

    .line 717
    :cond_5
    if-lez p3, :cond_7

    .line 718
    move v0, p3

    .line 719
    .local v0, thumbW:I
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 720
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 722
    :cond_6
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbW:I

    if-eq v0, v3, :cond_8

    .line 723
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSizeChangeProcessed:Z

    .line 724
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbW:I

    .line 730
    .end local v0           #thumbW:I
    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbW:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, p2

    int-to-float v5, p1

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbX:I

    goto :goto_1

    .line 727
    .restart local v0       #thumbW:I
    :cond_8
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSizeChangeProcessed:Z

    goto :goto_2
.end method

.method private resetBoundOverlayDrawable()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v9, -0x1

    .line 223
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    iput v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayW:I

    .line 224
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    iput v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayH:I

    .line 228
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayW:I

    .line 229
    .local v2, oldOverlayW:I
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayH:I

    .line 231
    .local v1, oldOverlayH:I
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    if-nez v8, :cond_1

    .line 288
    :cond_0
    :goto_0
    return v6

    .line 235
    :cond_1
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 237
    .local v3, res:Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v7, :cond_6

    move v0, v7

    .line 239
    .local v0, isBig:Z
    :goto_1
    if-ne v7, v0, :cond_7

    .line 241
    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTextSize:I

    if-eq v8, v9, :cond_2

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTextMargin:I

    if-ne v8, v9, :cond_4

    .line 242
    :cond_2
    const-string v8, "com.htc.R.dimen.random_access_m"

    invoke-static {v8}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v4

    .line 243
    .local v4, resId:I
    if-eqz v4, :cond_3

    .line 244
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTextSize:I

    .line 249
    :cond_3
    const v8, 0x2050006

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayPadding:I

    iput v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTextMargin:I

    .line 252
    .end local v4           #resId:I
    :cond_4
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTextSize:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 253
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    iget v9, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTextSize:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 255
    const/16 v8, 0xc8

    iput v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayH:I

    iput v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayW:I

    .line 284
    :goto_2
    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayW:I

    if-ne v2, v8, :cond_5

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayH:I

    if-eq v1, v8, :cond_0

    :cond_5
    move v6, v7

    .line 285
    goto :goto_0

    .end local v0           #isBig:Z
    :cond_6
    move v0, v6

    .line 237
    goto :goto_1

    .line 258
    .restart local v0       #isBig:Z
    :cond_7
    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTextSize:I

    if-eq v8, v9, :cond_8

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTextMargin:I

    if-ne v8, v9, :cond_a

    .line 259
    :cond_8
    const-string v8, "com.htc.R.dimen.random_access_s"

    invoke-static {v8}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v4

    .line 260
    .restart local v4       #resId:I
    if-eqz v4, :cond_9

    .line 261
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTextSize:I

    .line 266
    :cond_9
    const v8, 0x2050001

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayPadding:I

    iput v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTextMargin:I

    .line 269
    .end local v4           #resId:I
    :cond_a
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTextSize:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 270
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    iget v9, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTextSize:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 272
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 273
    .local v5, textBound:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v6, v10, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 274
    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayPadding:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayPadding:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayW:I

    .line 275
    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTextMargin:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTextMargin:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayH:I

    goto :goto_2
.end method

.method private resetOverlayPos()V
    .locals 6

    .prologue
    .line 196
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getWidth()I

    move-result v0

    .line 200
    .local v0, viewWidth:I
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v2, v0, 0x2

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayH:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 202
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 203
    return-void
.end method

.method private resetThumbPos()V
    .locals 5

    .prologue
    .line 189
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getWidth()I

    move-result v0

    .line 191
    .local v0, viewWidth:I
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbW:I

    sub-int v2, v0, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbH:I

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 192
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 193
    return-void
.end method

.method private scrollTo(F)V
    .locals 20
    .parameter "position"

    .prologue
    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getCount()I

    move-result v2

    .line 794
    .local v2, count:I
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mScrollCompleted:Z

    .line 795
    const/high16 v18, 0x3f80

    int-to-float v0, v2

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x4100

    div-float v6, v18, v19

    .line 796
    .local v6, fThreshold:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 798
    .local v16, sections:[Ljava/lang/Object;
    if-eqz v16, :cond_b

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_b

    .line 799
    move-object/from16 v0, v16

    array-length v8, v0

    .line 800
    .local v8, nSections:I
    int-to-float v0, v8

    move/from16 v18, v0

    mul-float v18, v18, p1

    move/from16 v0, v18

    float-to-int v14, v0

    .line 801
    .local v14, section:I
    if-lt v14, v8, :cond_0

    .line 802
    add-int/lit8 v14, v8, -0x1

    .line 804
    :cond_0
    move v3, v14

    .line 805
    .local v3, exactSection:I
    move v15, v14

    .line 806
    .local v15, sectionIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    .line 813
    .local v7, index:I
    move v9, v2

    .line 814
    .local v9, nextIndex:I
    move v12, v7

    .line 815
    .local v12, prevIndex:I
    move v13, v14

    .line 816
    .local v13, prevSection:I
    add-int/lit8 v11, v14, 0x1

    .line 818
    .local v11, nextSection:I
    add-int/lit8 v18, v8, -0x1

    move/from16 v0, v18

    if-ge v14, v0, :cond_1

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    add-int/lit8 v19, v14, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 823
    :cond_1
    if-ne v9, v7, :cond_3

    .line 825
    :cond_2
    if-lez v14, :cond_3

    .line 826
    add-int/lit8 v14, v14, -0x1

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v12

    .line 828
    if-eq v12, v7, :cond_2

    .line 829
    move v13, v14

    .line 830
    move v15, v14

    .line 840
    :cond_3
    add-int/lit8 v10, v11, 0x1

    .line 842
    .local v10, nextNextSection:I
    :goto_0
    if-ge v10, v8, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    move/from16 v0, v18

    if-ne v0, v9, :cond_4

    .line 843
    add-int/lit8 v10, v10, 0x1

    .line 844
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 849
    :cond_4
    int-to-float v0, v13

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    div-float v5, v18, v19

    .line 850
    .local v5, fPrev:F
    int-to-float v0, v11

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    div-float v4, v18, v19

    .line 851
    .local v4, fNext:F
    if-ne v13, v3, :cond_a

    sub-float v18, p1, v5

    cmpg-float v18, v18, v6

    if-gez v18, :cond_a

    .line 852
    move v7, v12

    .line 862
    :cond_5
    :goto_1
    add-int/lit8 v18, v2, -0x1

    move/from16 v0, v18

    if-le v7, v0, :cond_6

    add-int/lit8 v7, v2, -0x1

    .line 863
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v7

    invoke-virtual/range {v18 .. v19}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setSelection(I)V

    .line 870
    .end local v3           #exactSection:I
    .end local v4           #fNext:F
    .end local v5           #fPrev:F
    .end local v8           #nSections:I
    .end local v9           #nextIndex:I
    .end local v10           #nextNextSection:I
    .end local v11           #nextSection:I
    .end local v12           #prevIndex:I
    .end local v13           #prevSection:I
    .end local v14           #section:I
    :goto_2
    if-ltz v15, :cond_e

    .line 871
    aget-object v18, v16, v15

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    .line 872
    .local v17, text:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    :cond_7
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v15, v0, :cond_c

    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mDrawOverlay:Z

    .line 874
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 878
    if-nez v15, :cond_8

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    add-int/lit8 v19, v15, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    if-nez v18, :cond_d

    .line 884
    const/16 v18, 0x1

    aget-object v18, v16, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .end local v17           #text:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    .line 890
    .restart local v17       #text:Ljava/lang/String;
    :cond_8
    :goto_4
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mDrawOverlay:Z

    .line 896
    .end local v17           #text:Ljava/lang/String;
    :cond_9
    :goto_5
    return-void

    .line 855
    .restart local v3       #exactSection:I
    .restart local v4       #fNext:F
    .restart local v5       #fPrev:F
    .restart local v8       #nSections:I
    .restart local v9       #nextIndex:I
    .restart local v10       #nextNextSection:I
    .restart local v11       #nextSection:I
    .restart local v12       #prevIndex:I
    .restart local v13       #prevSection:I
    .restart local v14       #section:I
    :cond_a
    add-int/lit8 v7, v12, -0x1

    .line 856
    if-gez v7, :cond_5

    .line 857
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 865
    .end local v3           #exactSection:I
    .end local v4           #fNext:F
    .end local v5           #fPrev:F
    .end local v7           #index:I
    .end local v8           #nSections:I
    .end local v9           #nextIndex:I
    .end local v10           #nextNextSection:I
    .end local v11           #nextSection:I
    .end local v12           #prevIndex:I
    .end local v13           #prevSection:I
    .end local v14           #section:I
    .end local v15           #sectionIndex:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-object/from16 v18, v0

    int-to-float v0, v2

    move/from16 v19, v0

    mul-float v19, v19, p1

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getValidIndexDuringFastScroller(I)I

    move-result v7

    .line 866
    .restart local v7       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v7

    invoke-virtual/range {v18 .. v19}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setSelection(I)V

    .line 867
    const/4 v15, -0x1

    .restart local v15       #sectionIndex:I
    goto/16 :goto_2

    .line 872
    .restart local v17       #text:Ljava/lang/String;
    :cond_c
    const/16 v18, 0x0

    goto :goto_3

    .line 887
    :cond_d
    sget-object v17, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->sSymbol:Ljava/lang/String;

    .end local v17           #text:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    .restart local v17       #text:Ljava/lang/String;
    goto :goto_4

    .line 894
    .end local v17           #text:Ljava/lang/String;
    :cond_e
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mDrawOverlay:Z

    goto :goto_5
.end method

.method private useOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 218
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->resetBoundOverlayDrawable()Z

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mChangedBounds:Z

    .line 220
    return-void
.end method

.method private useThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 211
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbW:I

    .line 212
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbH:I

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mChangedBounds:Z

    .line 214
    return-void
.end method

.method private useTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 207
    return-void
.end method


# virtual methods
.method destroy(Lcom/htc/sunnyCore/SceneNode;)V
    .locals 2
    .parameter "parentSceneNode"

    .prologue
    const/4 v1, 0x0

    .line 371
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThreadHandler;->release()V

    .line 373
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 378
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunnyCore/Texture;

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v0, :cond_2

    .line 382
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {p1, v0}, Lcom/htc/sunnyCore/SceneNode;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 383
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 384
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunnyCore/Sprite;

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mTrackTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_3

    .line 388
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mTrackTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 389
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mTrackTexture:Lcom/htc/sunnyCore/Texture;

    .line 392
    :cond_3
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mTrackSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v0, :cond_4

    .line 393
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mTrackSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {p1, v0}, Lcom/htc/sunnyCore/SceneNode;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 394
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mTrackSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 395
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mTrackSprite:Lcom/htc/sunnyCore/Sprite;

    .line 398
    :cond_4
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_5

    .line 399
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 400
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbTexture:Lcom/htc/sunnyCore/Texture;

    .line 403
    :cond_5
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v0, :cond_6

    .line 404
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {p1, v0}, Lcom/htc/sunnyCore/SceneNode;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 405
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 406
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunnyCore/Sprite;

    .line 408
    :cond_6
    return-void
.end method

.method public drawIRT(ILcom/htc/sunnyCore/SceneNode;)V
    .locals 23
    .parameter "sunnyEnv"
    .parameter "parentSceneNode"

    .prologue
    .line 425
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mState:I

    if-nez v3, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingRight()I

    move-result v20

    .line 431
    .local v20, viewPaddingRight:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingBottom()I

    move-result v19

    .line 432
    .local v19, viewPaddingBottom:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getWidth()I

    move-result v21

    .line 433
    .local v21, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->getAdjHostHight()I

    move-result v18

    .line 435
    .local v18, viewHeight:I
    const/4 v3, 0x1

    move/from16 v0, v21

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    move/from16 v0, v18

    if-lt v0, v3, :cond_0

    .line 439
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSizeChangeProcessed:Z

    if-nez v3, :cond_4

    .line 440
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbW:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbH:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 441
    .local v9, bmp:Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 443
    .local v11, c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbW:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbH:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v3, :cond_14

    .line 446
    invoke-static {v9}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbTexture:Lcom/htc/sunnyCore/Texture;

    .line 452
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v3, :cond_3

    .line 453
    invoke-static {}, Lcom/htc/sunnyCore/Sprite;->obtain()Lcom/htc/sunnyCore/Sprite;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunnyCore/Sprite;

    .line 454
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/SceneNode;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 456
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    .line 457
    .local v2, layer:Lcom/htc/sunnyCore/Sprite$Layer;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbW:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbW:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbH:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 458
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 461
    .end local v2           #layer:Lcom/htc/sunnyCore/Sprite$Layer;
    .end local v9           #bmp:Landroid/graphics/Bitmap;
    .end local v11           #c:Landroid/graphics/Canvas;
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mTrackTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSizeChangeProcessed:Z

    if-nez v3, :cond_7

    .line 462
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    .line 464
    .local v17, trackHeight:I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v21

    move/from16 v1, v17

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 465
    .restart local v9       #bmp:Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 467
    .restart local v11       #c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mTrackTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v3, :cond_15

    .line 471
    invoke-static {v9}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mTrackTexture:Lcom/htc/sunnyCore/Texture;

    .line 477
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mTrackSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v3, :cond_6

    .line 478
    invoke-static {}, Lcom/htc/sunnyCore/Sprite;->obtain()Lcom/htc/sunnyCore/Sprite;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mTrackSprite:Lcom/htc/sunnyCore/Sprite;

    .line 479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mTrackSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/SceneNode;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 481
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mTrackSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    .line 482
    .restart local v2       #layer:Lcom/htc/sunnyCore/Sprite$Layer;
    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, v21

    neg-int v5, v0

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v17, 0x2

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 483
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mTrackTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mTrackSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getHeight()I

    move-result v5

    sub-int v5, v5, v17

    neg-int v5, v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    .line 488
    .end local v2           #layer:Lcom/htc/sunnyCore/Sprite$Layer;
    .end local v9           #bmp:Landroid/graphics/Bitmap;
    .end local v11           #c:Landroid/graphics/Canvas;
    .end local v17           #trackHeight:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSizeChangeProcessed:Z

    if-nez v3, :cond_a

    .line 489
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayW:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayH:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 490
    .restart local v9       #bmp:Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 492
    .restart local v11       #c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayW:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayH:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 493
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v3, :cond_16

    .line 495
    invoke-static {v9}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunnyCore/Texture;

    .line 501
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v3, :cond_9

    .line 502
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunnyCore/Sprite;

    .line 503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/SceneNode;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 505
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    .line 506
    .restart local v2       #layer:Lcom/htc/sunnyCore/Sprite$Layer;
    move/from16 v0, v21

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayH:I

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 507
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 509
    div-int/lit8 v3, v18, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v4, v4, 0x2

    sub-int v22, v3, v4

    .line 510
    .local v22, y2:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunnyCore/Sprite;

    div-int/lit8 v4, v21, 0x2

    int-to-float v4, v4

    move/from16 v0, v22

    neg-int v5, v0

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    .line 513
    .end local v2           #layer:Lcom/htc/sunnyCore/Sprite$Layer;
    .end local v9           #bmp:Landroid/graphics/Bitmap;
    .end local v11           #c:Landroid/graphics/Canvas;
    .end local v22           #y2:I
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSizeChangeProcessed:Z

    if-nez v3, :cond_b

    .line 514
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSizeChangeProcessed:Z

    .line 517
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mScrollFade:Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller$ScrollFade;

    .line 518
    .local v15, scrollFade:Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller$ScrollFade;
    const/4 v8, -0x1

    .line 519
    .local v8, alpha:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_c

    .line 520
    invoke-virtual {v15}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller$ScrollFade;->getAlpha()I

    move-result v8

    .line 521
    const/16 v3, 0x68

    if-ge v8, v3, :cond_c

    .line 522
    mul-int/lit8 v3, v8, 0x2

    int-to-float v3, v3

    const/high16 v4, 0x4350

    div-float/2addr v3, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/SceneNode;->setAlpha(F)V

    .line 526
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_e

    .line 527
    :cond_d
    const/high16 v3, 0x3f80

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/SceneNode;->setAlpha(F)V

    .line 529
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    .line 530
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbW:I

    sub-int v4, v21, v4

    sub-int v4, v4, v20

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbY:I

    neg-int v5, v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    .line 537
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    .line 539
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mDrawOverlay:Z

    if-nez v3, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_13

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayFading:Z

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mDrawOverlay:Z

    if-eqz v3, :cond_13

    .line 541
    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_13

    .line 542
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    .line 544
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->resetBoundOverlayDrawable()Z

    move-result v12

    .line 546
    .local v12, isBoundChange:Z
    const/4 v10, 0x0

    .line 547
    .local v10, bounds:Landroid/graphics/Rect;
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 549
    .local v16, textbounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 550
    if-nez v10, :cond_13

    .line 552
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayW:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayH:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 554
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayW:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayH:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 555
    .restart local v9       #bmp:Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 556
    .restart local v11       #c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 558
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayPadding:I

    int-to-float v13, v3

    .line 559
    .local v13, px:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayH:I

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTextMargin:I

    sub-int/2addr v3, v4

    int-to-float v14, v3

    .line 560
    .local v14, py:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_11

    .line 561
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayW:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v13, v3, v4

    .line 564
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    const/high16 v4, 0x3f80

    sub-float v4, v13, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTextMargin:I

    int-to-float v5, v5

    add-float/2addr v5, v14

    const/high16 v6, 0x3f80

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTextMargin:I

    int-to-float v4, v4

    add-float/2addr v4, v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v3, v13, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3, v9}, Lcom/htc/sunnyCore/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayW:I

    int-to-float v4, v4

    move/from16 v0, v21

    int-to-float v5, v0

    div-float/2addr v4, v5

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunnyCore/Sprite;->setScale(FFF)V

    .line 570
    const/4 v3, 0x1

    if-ne v3, v12, :cond_12

    .line 571
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    .line 572
    .restart local v2       #layer:Lcom/htc/sunnyCore/Sprite$Layer;
    move/from16 v0, v21

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayH:I

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 574
    div-int/lit8 v3, v18, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v4, v4, 0x2

    sub-int v22, v3, v4

    .line 575
    .restart local v22       #y2:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunnyCore/Sprite;

    div-int/lit8 v4, v21, 0x2

    int-to-float v4, v4

    move/from16 v0, v22

    neg-int v5, v0

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    .line 578
    .end local v2           #layer:Lcom/htc/sunnyCore/Sprite$Layer;
    .end local v22           #y2:I
    :cond_12
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 584
    .end local v9           #bmp:Landroid/graphics/Bitmap;
    .end local v10           #bounds:Landroid/graphics/Rect;
    .end local v11           #c:Landroid/graphics/Canvas;
    .end local v12           #isBoundChange:Z
    .end local v13           #px:F
    .end local v14           #py:F
    .end local v16           #textbounds:Landroid/graphics/Rect;
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 585
    if-nez v8, :cond_18

    .line 586
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->setState(I)V

    goto/16 :goto_0

    .line 449
    .end local v8           #alpha:I
    .end local v15           #scrollFade:Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller$ScrollFade;
    .restart local v9       #bmp:Landroid/graphics/Bitmap;
    .restart local v11       #c:Landroid/graphics/Canvas;
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3, v9}, Lcom/htc/sunnyCore/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 474
    .restart local v17       #trackHeight:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mTrackTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3, v9}, Lcom/htc/sunnyCore/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 498
    .end local v17           #trackHeight:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3, v9}, Lcom/htc/sunnyCore/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 533
    .end local v9           #bmp:Landroid/graphics/Bitmap;
    .end local v11           #c:Landroid/graphics/Canvas;
    .restart local v8       #alpha:I
    .restart local v15       #scrollFade:Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller$ScrollFade;
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbX:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbH:I

    sub-int/2addr v5, v6

    neg-int v5, v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    goto/16 :goto_4

    .line 588
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    const v4, -0xffffff

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/RenderThreadHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 590
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    const v4, -0xffffff

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunnyCore/RenderThreadHandler;->sendEmptyMessageDelayed(II)V

    goto/16 :goto_0
.end method

.method getAdjHostHight()I
    .locals 3

    .prologue
    .line 1044
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getHeight()I

    move-result v0

    .line 1045
    .local v0, h:I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1047
    .end local v0           #h:I
    :goto_0
    return v0

    .restart local v0       #h:I
    :cond_0
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingTop()I

    move-result v1

    sub-int v1, v0, v1

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingBottom()I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method getAdjHostWidth()I
    .locals 3

    .prologue
    .line 1054
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getWidth()I

    move-result v0

    .line 1055
    .local v0, w:I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1057
    .end local v0           #w:I
    :goto_0
    return v0

    .restart local v0       #w:I
    :cond_0
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingLeft()I

    move-result v1

    sub-int v1, v0, v1

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingRight()I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    if-eqz v0, :cond_0

    .line 765
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->getSectionsFromIndexer()V

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSections:[Ljava/lang/Object;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mState:I

    return v0
.end method

.method isPointInside(FF)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1022
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOrientation:I

    if-ne v5, v3, :cond_1

    .line 1023
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbY:I

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbH:I

    div-int/lit8 v6, v6, 0x2

    add-int v0, v5, v6

    .line 1024
    .local v0, bound:I
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x32

    iget-object v6, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-lez v5, :cond_0

    add-int/lit8 v5, v0, -0x19

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_0

    add-int/lit8 v5, v0, 0x19

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_0

    .line 1036
    .end local v0           #bound:I
    :goto_0
    return v3

    .restart local v0       #bound:I
    :cond_0
    move v3, v4

    .line 1024
    goto :goto_0

    .line 1028
    .end local v0           #bound:I
    :cond_1
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbX:I

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbW:I

    div-int/lit8 v6, v6, 0x2

    add-int v1, v5, v6

    .line 1029
    .local v1, boundX:I
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x14

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-lez v5, :cond_3

    add-int/lit8 v5, v1, -0x19

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_3

    add-int/lit8 v5, v1, 0x19

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_3

    move v2, v3

    .line 1032
    .local v2, isInside:Z
    :goto_1
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-ne v3, v4, :cond_2

    .line 1033
    const-string v3, "HtcFastScroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "x=, isInside="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " c="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x14

    iget-object v6, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v3, v2

    .line 1036
    goto :goto_0

    .end local v2           #isInside:Z
    :cond_3
    move v2, v4

    .line 1029
    goto :goto_1
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 909
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mState:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 911
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->setState(I)V

    .line 913
    const/4 v0, 0x1

    .line 916
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onLayoutOrientationChange(Landroid/content/Context;ILcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;)V
    .locals 4
    .parameter "context"
    .parameter "orientation"
    .parameter "resItem"

    .prologue
    .line 600
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 602
    .local v1, res:Landroid/content/res/Resources;
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 603
    iget v2, p3, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;->mResThumbHor:I

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mResThumb:I

    .line 611
    :goto_0
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mResThumb:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->useThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 612
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mResTrack:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->useTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 613
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mResOverlay:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->useOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 615
    iput p2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOrientation:I

    .line 619
    .end local v1           #res:Landroid/content/res/Resources;
    :goto_1
    return-void

    .line 608
    .restart local v1       #res:Landroid/content/res/Resources;
    :cond_0
    iget v2, p3, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;->mResThumbVer:I

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mResThumb:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 616
    .end local v1           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 617
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcFastScroller"

    const-string v3, "[HTCAlbum] [init] fail to init FastScroller"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method onScroll(Lcom/htc/sunnyCore/widget/gridview/GridView;III)V
    .locals 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v2, 0x1

    .line 647
    const/4 v0, 0x0

    .line 649
    .local v0, reDraw:Z
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOrientation:I

    if-ne v1, v2, :cond_0

    .line 650
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->onScrollNormal(Lcom/htc/sunnyCore/widget/gridview/GridView;III)Z

    move-result v0

    .line 658
    :cond_0
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mScrollCompleted:Z

    .line 659
    if-nez v0, :cond_2

    .line 666
    :cond_1
    :goto_0
    return-void

    .line 662
    :cond_2
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 663
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->setState(I)V

    .line 664
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mScrollFade:Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller$ScrollFade;

    const-wide/16 v3, 0x320

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/sunnyCore/RenderThreadHandler;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v3, 0x0

    .line 625
    iput-boolean v3, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSizeChangeProcessed:Z

    .line 626
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbW:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbH:I

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayW:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayH:I

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 640
    :cond_1
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "me"

    .prologue
    .line 924
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 925
    .local v2, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    const/4 v5, 0x1

    .line 932
    .local v5, is2Point:Z
    :goto_0
    iget v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mState:I

    if-nez v11, :cond_1

    if-nez v5, :cond_1

    .line 933
    const/4 v11, 0x0

    .line 1014
    :goto_1
    return v11

    .line 925
    .end local v5           #is2Point:Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 937
    .restart local v5       #is2Point:Z
    :cond_1
    if-eqz v5, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    add-float/2addr v11, v12

    const/high16 v12, 0x4000

    div-float v0, v11, v12

    .line 938
    .local v0, X:F
    :goto_2
    if-eqz v5, :cond_8

    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    add-float/2addr v11, v12

    const/high16 v12, 0x4000

    div-float v1, v11, v12

    .line 940
    .local v1, Y:F
    :goto_3
    if-eqz v2, :cond_2

    const/16 v11, 0x105

    if-ne v2, v11, :cond_9

    .line 941
    :cond_2
    if-nez v5, :cond_3

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->isPointInside(FF)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 942
    :cond_3
    iget v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mState:I

    if-nez v11, :cond_4

    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->setState(I)V

    .line 943
    :cond_4
    const/4 v11, 0x3

    invoke-virtual {p0, v11}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->setState(I)V

    .line 944
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    if-nez v11, :cond_5

    iget-boolean v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionsDirty:Z

    if-eqz v11, :cond_6

    .line 945
    :cond_5
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->getSectionsFromIndexer()V

    .line 948
    :cond_6
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->cancelFling()V

    .line 949
    const/4 v11, 0x1

    goto :goto_1

    .line 937
    .end local v0           #X:F
    .end local v1           #Y:F
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_2

    .line 938
    .restart local v0       #X:F
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    goto :goto_3

    .line 951
    .restart local v1       #Y:F
    :cond_9
    const/4 v11, 0x1

    if-ne v2, v11, :cond_a

    .line 952
    iget v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mState:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_14

    .line 953
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayFading:Z

    .line 954
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->setState(I)V

    .line 955
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    .line 956
    .local v4, handler:Lcom/htc/sunnyCore/RenderThreadHandler;
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mScrollFade:Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller$ScrollFade;

    invoke-virtual {v4, v11}, Lcom/htc/sunnyCore/RenderThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 957
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mScrollFade:Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller$ScrollFade;

    const-wide/16 v12, 0x320

    invoke-virtual {v4, v11, v12, v13}, Lcom/htc/sunnyCore/RenderThreadHandler;->postDelayed(Ljava/lang/Runnable;J)V

    .line 958
    const/4 v11, 0x1

    goto :goto_1

    .line 960
    .end local v4           #handler:Lcom/htc/sunnyCore/RenderThreadHandler;
    :cond_a
    const/4 v11, 0x2

    if-ne v2, v11, :cond_13

    .line 961
    iget v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mState:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_14

    .line 963
    iget v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOrientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_f

    .line 964
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->getAdjHostHight()I

    move-result v9

    .line 965
    .local v9, viewHeight:I
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v11}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingTop()I

    move-result v8

    .line 967
    .local v8, padding:I
    float-to-int v11, v1

    iget v12, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbH:I

    sub-int/2addr v11, v12

    add-int/lit8 v7, v11, 0xa

    .line 968
    .local v7, newThumbY:I
    add-int/lit8 v11, v8, 0x0

    if-ge v7, v11, :cond_c

    .line 969
    add-int/lit8 v7, v8, 0x0

    .line 973
    :cond_b
    :goto_4
    iget v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbY:I

    sub-int/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_d

    .line 974
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 970
    :cond_c
    iget v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbH:I

    add-int/2addr v11, v7

    add-int v12, v9, v8

    if-le v11, v12, :cond_b

    .line 971
    iget v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbH:I

    sub-int v11, v9, v11

    add-int v7, v11, v8

    goto :goto_4

    .line 976
    :cond_d
    iput v7, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbY:I

    .line 978
    iget-boolean v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mScrollCompleted:Z

    if-eqz v11, :cond_e

    .line 979
    iget v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbY:I

    sub-int/2addr v11, v8

    int-to-float v11, v11

    iget v12, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbH:I

    sub-int v12, v9, v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-direct {p0, v11}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->scrollTo(F)V

    .line 1000
    .end local v7           #newThumbY:I
    .end local v8           #padding:I
    .end local v9           #viewHeight:I
    :cond_e
    :goto_5
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    const v12, -0xffffff

    invoke-virtual {v11, v12}, Lcom/htc/sunnyCore/RenderThreadHandler;->sendEmptyMessage(I)V

    .line 1001
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 983
    :cond_f
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v11}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getWidth()I

    move-result v10

    .line 985
    .local v10, viewWidth:I
    float-to-int v11, v0

    iget v12, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbW:I

    sub-int/2addr v11, v12

    add-int/lit8 v6, v11, 0xa

    .line 986
    .local v6, newThumbX:I
    if-gez v6, :cond_11

    .line 987
    const/4 v6, 0x0

    .line 991
    :cond_10
    :goto_6
    iget v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbX:I

    sub-int/2addr v11, v6

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_12

    .line 992
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 988
    :cond_11
    iget v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbH:I

    add-int/2addr v11, v6

    if-le v11, v10, :cond_10

    .line 989
    iget v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbW:I

    sub-int v6, v10, v11

    goto :goto_6

    .line 994
    :cond_12
    iput v6, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbX:I

    .line 995
    iget-boolean v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mScrollCompleted:Z

    if-eqz v11, :cond_e

    .line 996
    iget v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbX:I

    int-to-float v11, v11

    iget v12, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mThumbW:I

    sub-int v12, v10, v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-direct {p0, v11}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->scrollTo(F)V

    goto :goto_5

    .line 1003
    .end local v6           #newThumbX:I
    .end local v10           #viewWidth:I
    :cond_13
    const/4 v11, 0x3

    if-ne v2, v11, :cond_14

    .line 1004
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 1005
    .local v3, fingerCount:I
    iget v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mState:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_14

    const/4 v11, 0x2

    if-lt v3, v11, :cond_14

    .line 1006
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayFading:Z

    .line 1007
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->setState(I)V

    .line 1008
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    .line 1009
    .restart local v4       #handler:Lcom/htc/sunnyCore/RenderThreadHandler;
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mScrollFade:Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller$ScrollFade;

    invoke-virtual {v4, v11}, Lcom/htc/sunnyCore/RenderThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1010
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mScrollFade:Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller$ScrollFade;

    const-wide/16 v12, 0x320

    invoke-virtual {v4, v11, v12, v13}, Lcom/htc/sunnyCore/RenderThreadHandler;->postDelayed(Ljava/lang/Runnable;J)V

    .line 1011
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 1014
    .end local v3           #fingerCount:I
    .end local v4           #handler:Lcom/htc/sunnyCore/RenderThreadHandler;
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_1
.end method

.method public setSectionsDirty()V
    .locals 1

    .prologue
    .line 750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mSectionsDirty:Z

    .line 751
    return-void
.end method

.method public setState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 149
    packed-switch p1, :pswitch_data_0

    .line 177
    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mState:I

    .line 178
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    const v1, -0xffffff

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->sendEmptyMessage(I)V

    .line 179
    return-void

    .line 151
    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mScrollFade:Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mOverlayFading:Z

    goto :goto_0

    .line 156
    :pswitch_2
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->resetThumbPos()V

    .line 161
    :cond_0
    :pswitch_3
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 162
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->resetOverlayPos()V

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->mScrollFade:Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method stop()V
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/gridview/HtcFastScroller;->setState(I)V

    .line 358
    return-void
.end method
