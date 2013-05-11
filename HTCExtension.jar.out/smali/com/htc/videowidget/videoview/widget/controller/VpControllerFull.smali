.class Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;
.super Ljava/lang/Object;
.source "VpControllerFull.java"

# interfaces
.implements Lcom/htc/videowidget/videoview/widget/controller/IControllerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;
    }
.end annotation


# static fields
.field private static final MARGIN_BOTTOM:I = 0x3

.field private static final MARGIN_LEFT:I = 0x0

.field private static final MARGIN_RIGHT:I = 0x2

.field private static final MARGIN_TOP:I = 0x1

.field private static final NAV_BAR_HEIGHT:I = 0x54

.field public static final TYPE_LANDSCAPE_FULL:I = 0x0

.field public static final TYPE_LANDSCAPE_SIMPLE:I = 0x1

.field public static final TYPE_PORTRAIL_FULL:I = 0x2

.field public static final TYPE_PORTRAIL_SIMPLE:I = 0x3


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

.field private mContext:Landroid/content/Context;

.field private mCurrentShowAnim:Landroid/animation/Animator;

.field private mFooterbar:Lcom/htc/widget/HtcFooter;

.field final mHideListener:Landroid/animation/Animator$AnimatorListener;

.field private mIsNavigationBar:Z

.field private mLinearInFooter:Landroid/widget/LinearLayout;

.field protected mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

.field private mMoreButton:Lcom/htc/videowidget/videoview/widget/MoreButton;

.field private mRootView:Landroid/view/View;

.field private mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

.field private mSeekbarLp:Landroid/widget/LinearLayout$LayoutParams;

.field final mShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

.field private mTopRow:Landroid/widget/LinearLayout;

.field private mType:I

.field private mWeightLandFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

.field private mWeightLandSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

.field private mWeightPortFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

.field private mWeightPortSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "context"
    .parameter "rootView"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "VpControllerFull"

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->TAG:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mContext:Landroid/content/Context;

    .line 41
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;

    .line 43
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    .line 44
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    .line 45
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    .line 47
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mTopRow:Landroid/widget/LinearLayout;

    .line 48
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mFooterbar:Lcom/htc/widget/HtcFooter;

    .line 49
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mLinearInFooter:Landroid/widget/LinearLayout;

    .line 51
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mMoreButton:Lcom/htc/videowidget/videoview/widget/MoreButton;

    .line 53
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mIsNavigationBar:Z

    .line 56
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekbarLp:Landroid/widget/LinearLayout$LayoutParams;

    .line 77
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    .line 78
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    .line 79
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    .line 80
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    .line 82
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    .line 83
    iput v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mType:I

    .line 166
    new-instance v0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$2;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$2;-><init>(Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 173
    new-instance v0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$3;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$3;-><init>(Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 87
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;

    .line 89
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->getView()V

    .line 90
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->initView()V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Z)V
    .locals 3
    .parameter "context"
    .parameter "rootView"
    .parameter "isNavigationBarExist"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "VpControllerFull"

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->TAG:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mContext:Landroid/content/Context;

    .line 41
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;

    .line 43
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    .line 44
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    .line 45
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    .line 47
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mTopRow:Landroid/widget/LinearLayout;

    .line 48
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mFooterbar:Lcom/htc/widget/HtcFooter;

    .line 49
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mLinearInFooter:Landroid/widget/LinearLayout;

    .line 51
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mMoreButton:Lcom/htc/videowidget/videoview/widget/MoreButton;

    .line 53
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mIsNavigationBar:Z

    .line 56
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekbarLp:Landroid/widget/LinearLayout$LayoutParams;

    .line 77
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    .line 78
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    .line 79
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    .line 80
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    .line 82
    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    .line 83
    iput v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mType:I

    .line 166
    new-instance v0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$2;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$2;-><init>(Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 173
    new-instance v0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$3;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$3;-><init>(Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 95
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;

    .line 97
    iput-boolean p3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mIsNavigationBar:Z

    .line 98
    const-string v0, "VpControllerFull"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsNavigationBar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mIsNavigationBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->getView()V

    .line 100
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->initView()V

    .line 101
    return-void
.end method

.method static synthetic access$002(Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mCurrentShowAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method private calculateLandFullWeight()Z
    .locals 12

    .prologue
    .line 646
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->getDisplayWidthAndHeight()Landroid/graphics/Point;

    move-result-object v7

    .line 647
    .local v7, p:Landroid/graphics/Point;
    if-nez v7, :cond_0

    .line 648
    const/4 v9, 0x0

    .line 675
    :goto_0
    return v9

    .line 649
    :cond_0
    new-instance v9, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;-><init>(Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$1;)V

    iput-object v9, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    .line 650
    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v10, v7, Landroid/graphics/Point;->y:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 651
    .local v3, displayWidth:I
    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v10, v7, Landroid/graphics/Point;->y:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 652
    .local v2, diaplayHeight:I
    invoke-direct {p0, v2, v3}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->getWidthFromHeight(II)I

    move-result v3

    .line 654
    const-string v9, "VpControllerFull"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[calculateLandFullWeight], (displayWidth, diaplayHeight) = ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v9, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x2050001

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 657
    .local v5, m2:I
    iget-object v9, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x2080014

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 658
    .local v8, playBtnWidth:I
    iget-object v9, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x2080011

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 659
    .local v4, ffrfBtnWidth:I
    div-int/lit8 v6, v2, 0x6

    .line 661
    .local v6, moreBtnWidth:I
    mul-int/lit8 v9, v4, 0x2

    add-int v1, v8, v9

    .line 663
    .local v1, buttonsWidth:I
    mul-int/lit8 v9, v5, 0x6

    add-int v0, v1, v9

    .line 664
    .local v0, buttonWidthWithMargin:I
    iget-object v9, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iput v0, v9, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mButtonAreaWeightIfSlowMotionShown:I

    .line 665
    iget-object v9, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    sub-int v10, v3, v0

    mul-int/lit8 v11, v6, 0x2

    sub-int/2addr v10, v11

    iput v10, v9, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionShown:I

    .line 666
    iget-boolean v9, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mIsNavigationBar:Z

    if-eqz v9, :cond_1

    .line 667
    iget-object v9, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v10, v9, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionShown:I

    add-int/lit8 v10, v10, -0x54

    iput v10, v9, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionShown:I

    .line 668
    :cond_1
    mul-int/lit8 v9, v5, 0x5

    add-int v0, v1, v9

    .line 669
    iget-object v9, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iput v0, v9, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mButtonAreaWeightIfSlowMotionGone:I

    .line 670
    iget-object v9, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    sub-int v10, v3, v0

    sub-int/2addr v10, v6

    iput v10, v9, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionGone:I

    .line 671
    iget-boolean v9, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mIsNavigationBar:Z

    if-eqz v9, :cond_2

    .line 672
    iget-object v9, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v10, v9, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionGone:I

    add-int/lit8 v10, v10, -0x54

    iput v10, v9, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionGone:I

    .line 673
    :cond_2
    iget-object v9, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iput v6, v9, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mMoreButtonAreaWeight:I

    .line 674
    iget-object v9, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iput v5, v9, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarMargin:I

    .line 675
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method private calculatePortFullWeight()Z
    .locals 8

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->getDisplayWidthAndHeight()Landroid/graphics/Point;

    move-result-object v4

    .line 681
    .local v4, p:Landroid/graphics/Point;
    if-nez v4, :cond_0

    .line 682
    const/4 v5, 0x0

    .line 699
    :goto_0
    return v5

    .line 683
    :cond_0
    new-instance v5, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;-><init>(Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$1;)V

    iput-object v5, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    .line 684
    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v6, v4, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 685
    .local v1, displayWidth:I
    const-string v5, "VpControllerFull"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[calculatePortFullWeight], displayWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    div-int/lit8 v3, v1, 0x6

    .line 688
    .local v3, moreBtnWidth:I
    sub-int v0, v1, v3

    .line 689
    .local v0, buttonsWidth:I
    iget-object v5, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x205000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 691
    .local v2, m3_3:I
    iget-object v5, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iput v0, v5, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mButtonAreaWeightIfSlowMotionShown:I

    .line 692
    iget-object v5, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iput v0, v5, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mButtonAreaWeightIfSlowMotionGone:I

    .line 694
    iget-object v5, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    sub-int v6, v1, v3

    iput v6, v5, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionShown:I

    .line 695
    iget-object v5, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iput v1, v5, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionGone:I

    .line 697
    iget-object v5, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iput v3, v5, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mMoreButtonAreaWeight:I

    .line 698
    iget-object v5, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iput v2, v5, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarMargin:I

    .line 699
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private calculateSimpleWeight()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 704
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->getDisplayWidthAndHeight()Landroid/graphics/Point;

    move-result-object v3

    .line 705
    .local v3, p:Landroid/graphics/Point;
    if-nez v3, :cond_0

    .line 706
    const/4 v6, 0x0

    .line 741
    :goto_0
    return v6

    .line 708
    :cond_0
    iget-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x2050001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 709
    .local v2, m2:I
    iget-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x2080014

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 711
    .local v4, playBtnWidth:I
    new-instance v6, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    invoke-direct {v6, p0, v8}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;-><init>(Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$1;)V

    iput-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    .line 712
    new-instance v6, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    invoke-direct {v6, p0, v8}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;-><init>(Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$1;)V

    iput-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    .line 714
    add-int v5, v4, v2

    .line 716
    .local v5, playBtnWidthWidthMargin:I
    iget-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iput v5, v6, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mButtonAreaWeightIfSlowMotionShown:I

    .line 717
    iget-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iput v5, v6, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mButtonAreaWeightIfSlowMotionGone:I

    .line 719
    iget-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iput v5, v6, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mButtonAreaWeightIfSlowMotionShown:I

    .line 720
    iget-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iput v5, v6, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mButtonAreaWeightIfSlowMotionGone:I

    .line 722
    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 723
    .local v1, displayLong:I
    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 724
    .local v0, diaplayShort:I
    invoke-direct {p0, v0, v1}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->getWidthFromHeight(II)I

    move-result v1

    .line 725
    iget-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    div-int/lit8 v7, v0, 0x6

    iput v7, v6, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mMoreButtonAreaWeight:I

    .line 726
    iget-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    div-int/lit8 v7, v0, 0x6

    iput v7, v6, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mMoreButtonAreaWeight:I

    .line 728
    iget-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    sub-int v7, v1, v5

    iget-object v8, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v8, v8, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mMoreButtonAreaWeight:I

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionShown:I

    .line 729
    iget-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget-object v7, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v7, v7, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionShown:I

    iput v7, v6, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionGone:I

    .line 730
    iget-boolean v6, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mIsNavigationBar:Z

    if-eqz v6, :cond_1

    .line 732
    iget-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v7, v6, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionShown:I

    add-int/lit8 v7, v7, -0x54

    iput v7, v6, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionShown:I

    .line 733
    iget-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v7, v6, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionGone:I

    add-int/lit8 v7, v7, -0x54

    iput v7, v6, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionGone:I

    .line 736
    :cond_1
    iget-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    sub-int v7, v0, v5

    iget-object v8, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v8, v8, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mMoreButtonAreaWeight:I

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionShown:I

    .line 737
    iget-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget-object v7, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v7, v7, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionShown:I

    iput v7, v6, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionGone:I

    .line 739
    iget-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iput v2, v6, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarMargin:I

    .line 740
    iget-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iput v2, v6, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarMargin:I

    .line 741
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method private getDisplayWidthAndHeight()Landroid/graphics/Point;
    .locals 6

    .prologue
    .line 631
    :try_start_0
    iget-object v4, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 632
    .local v2, mgr:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 633
    .local v0, display:Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 634
    .local v3, size:Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    .end local v0           #display:Landroid/view/Display;
    .end local v2           #mgr:Landroid/view/WindowManager;
    .end local v3           #size:Landroid/graphics/Point;
    :goto_0
    return-object v3

    .line 637
    :catch_0
    move-exception v1

    .line 639
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "VpControllerFull"

    const-string v5, "[getDisplayWidthAndHeight], error in get display width/height"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getView()V
    .locals 4

    .prologue
    .line 150
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;

    const v3, 0x60b004b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mTopRow:Landroid/widget/LinearLayout;

    .line 151
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;

    const v3, 0x60b004c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooter;

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mFooterbar:Lcom/htc/widget/HtcFooter;

    .line 152
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;

    const v3, 0x60b004d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mLinearInFooter:Landroid/widget/LinearLayout;

    .line 153
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;

    const v3, 0x60b004e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/videowidget/videoview/widget/MoreButton;

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mMoreButton:Lcom/htc/videowidget/videoview/widget/MoreButton;

    .line 155
    new-instance v2, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    .line 156
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 157
    .local v0, btnArea:Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 158
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mLinearInFooter:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 161
    new-instance v2, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    .line 163
    new-instance v2, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    .line 164
    return-void
.end method

.method private getWidthFromHeight(II)I
    .locals 1
    .parameter "shortEdge"
    .parameter "defaultValue"

    .prologue
    .line 806
    move v0, p2

    .line 807
    .local v0, longEdge:I
    sparse-switch p1, :sswitch_data_0

    .line 822
    :goto_0
    return v0

    .line 810
    :sswitch_0
    const/16 v0, 0x320

    .line 811
    goto :goto_0

    .line 813
    :sswitch_1
    const/16 v0, 0x3c0

    .line 814
    goto :goto_0

    .line 816
    :sswitch_2
    const/16 v0, 0x500

    .line 817
    goto :goto_0

    .line 819
    :sswitch_3
    const/16 v0, 0x780

    goto :goto_0

    .line 807
    nop

    :sswitch_data_0
    .sparse-switch
        0x1e0 -> :sswitch_0
        0x21c -> :sswitch_1
        0x2d0 -> :sswitch_2
        0x438 -> :sswitch_3
    .end sparse-switch
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mFooterbar:Lcom/htc/widget/HtcFooter;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mFooterbar:Lcom/htc/widget/HtcFooter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 108
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mFooterbar:Lcom/htc/widget/HtcFooter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooter;->SetDisplayMode(I)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mMoreButton:Lcom/htc/videowidget/videoview/widget/MoreButton;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mMoreButton:Lcom/htc/videowidget/videoview/widget/MoreButton;

    new-instance v1, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$1;

    invoke-direct {v1, p0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$1;-><init>(Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;)V

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/widget/MoreButton;->setListener(Lcom/htc/videowidget/videoview/widget/MoreButton$IOnMoreListener;)V

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->initView()V

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->initView()V

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    if-eqz v0, :cond_4

    .line 145
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->initView()V

    .line 146
    :cond_4
    return-void
.end method

.method private removeViewInLeaner(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 746
    if-nez p1, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mLinearInFooter:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 750
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mLinearInFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 752
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mLinearInFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 756
    :cond_2
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mTopRow:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mTopRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mTopRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setMarginToRoot(II)V
    .locals 2
    .parameter "type_margin"
    .parameter "vol_margin"

    .prologue
    .line 783
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 785
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 786
    .local v0, rlp:Landroid/widget/RelativeLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 802
    .end local v0           #rlp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 789
    .restart local v0       #rlp:Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 792
    :pswitch_1
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 795
    :pswitch_2
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 798
    :pswitch_3
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 786
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setSeekbarLayoutParam(Landroid/view/View;)V
    .locals 3
    .parameter "seekbar"

    .prologue
    .line 768
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekbarLp:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 770
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekbarLp:Landroid/widget/LinearLayout$LayoutParams;

    .line 771
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekbarLp:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 773
    :cond_0
    if-eqz p1, :cond_1

    .line 774
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekbarLp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 775
    :cond_1
    return-void
.end method

.method private setViewWeight(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "weight"

    .prologue
    .line 619
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 620
    .local v0, vlp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz p1, :cond_0

    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 622
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v2, p2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 623
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 625
    :cond_0
    return-void
.end method

.method private setViewWidth(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "width"

    .prologue
    .line 608
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 609
    .local v0, vlp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz p1, :cond_1

    .line 611
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 612
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 613
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 614
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    :cond_1
    return-void
.end method

.method private switchToLandscapeFull()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/16 v7, 0x28f

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 446
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    if-nez v3, :cond_1

    .line 447
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->calculateLandFullWeight()Z

    move-result v3

    if-nez v3, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mTopRow:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mLinearInFooter:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 452
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    invoke-virtual {v3}, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 453
    .local v1, slowMotion:Landroid/view/View;
    :goto_1
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    if-eqz v3, :cond_7

    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 455
    .local v0, seekbar:Landroid/view/View;
    :goto_2
    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->removeViewInLeaner(Landroid/view/View;)V

    .line 456
    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->removeViewInLeaner(Landroid/view/View;)V

    .line 458
    if-eqz v1, :cond_2

    .line 459
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mLinearInFooter:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 460
    :cond_2
    if-eqz v0, :cond_3

    .line 461
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mLinearInFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 463
    :cond_3
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    if-eqz v2, :cond_4

    .line 464
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v3, v3, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarMargin:I

    invoke-virtual {v2, v3}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->setMarginLeftAndRight(I)V

    .line 466
    :cond_4
    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setSeekbarLayoutParam(Landroid/view/View;)V

    .line 468
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    if-eqz v2, :cond_5

    .line 470
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    .line 472
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    invoke-virtual {v2, v5}, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->setLeftDividerVisibility(I)V

    .line 473
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    invoke-virtual {v2, v5}, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->setRightDividerVisibility(I)V

    .line 474
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v3, v3, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mMoreButtonAreaWeight:I

    invoke-virtual {v2, v3}, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->setWidth(I)V

    .line 475
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->getRootView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v3, v3, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mButtonAreaWeightIfSlowMotionShown:I

    invoke-direct {p0, v2, v3}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setViewWidth(Landroid/view/View;I)V

    .line 476
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v2, v2, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionShown:I

    invoke-direct {p0, v0, v2}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setViewWidth(Landroid/view/View;I)V

    .line 477
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mLinearInFooter:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v3, v3, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionShown:I

    iget-object v4, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v4, v4, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mButtonAreaWeightIfSlowMotionShown:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v4, v4, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mMoreButtonAreaWeight:I

    add-int/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setViewWeight(Landroid/view/View;I)V

    .line 478
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v3, v3, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarMargin:I

    invoke-virtual {v2, v7, v3}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->setBtnMarginRight(II)V

    .line 489
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mMoreButton:Lcom/htc/videowidget/videoview/widget/MoreButton;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v3, v3, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mMoreButtonAreaWeight:I

    invoke-direct {p0, v2, v3}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setViewWeight(Landroid/view/View;I)V

    .line 490
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mTopRow:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 491
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    const/16 v3, 0x209

    invoke-virtual {v2, v3}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->switchType(I)V

    .line 493
    iget-boolean v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mIsNavigationBar:Z

    if-eqz v2, :cond_0

    .line 495
    const/16 v2, 0x54

    invoke-direct {p0, v6, v2}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setMarginToRoot(II)V

    .line 496
    const/4 v2, 0x3

    invoke-direct {p0, v2, v5}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setMarginToRoot(II)V

    goto/16 :goto_0

    .end local v0           #seekbar:Landroid/view/View;
    .end local v1           #slowMotion:Landroid/view/View;
    :cond_6
    move-object v1, v2

    .line 452
    goto/16 :goto_1

    .restart local v1       #slowMotion:Landroid/view/View;
    :cond_7
    move-object v0, v2

    .line 453
    goto/16 :goto_2

    .line 482
    .restart local v0       #seekbar:Landroid/view/View;
    :cond_8
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    invoke-virtual {v2, v5}, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->setWidth(I)V

    .line 483
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->getRootView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v3, v3, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mButtonAreaWeightIfSlowMotionGone:I

    invoke-direct {p0, v2, v3}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setViewWidth(Landroid/view/View;I)V

    .line 484
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v2, v2, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionGone:I

    invoke-direct {p0, v0, v2}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setViewWidth(Landroid/view/View;I)V

    .line 485
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mLinearInFooter:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v3, v3, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mButtonAreaWeightIfSlowMotionGone:I

    iget-object v4, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v4, v4, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionGone:I

    add-int/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setViewWeight(Landroid/view/View;I)V

    .line 486
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    invoke-virtual {v2, v7, v5}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->setBtnMarginRight(II)V

    goto :goto_3
.end method

.method private switchToPortrailFull()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 502
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    if-nez v3, :cond_1

    .line 503
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->calculatePortFullWeight()Z

    move-result v3

    if-nez v3, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mTopRow:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mLinearInFooter:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 508
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    invoke-virtual {v3}, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 509
    .local v1, slowMotion:Landroid/view/View;
    :goto_1
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    if-eqz v3, :cond_7

    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 511
    .local v0, seekbar:Landroid/view/View;
    :goto_2
    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->removeViewInLeaner(Landroid/view/View;)V

    .line 512
    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->removeViewInLeaner(Landroid/view/View;)V

    .line 514
    if-eqz v1, :cond_2

    .line 515
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mTopRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 516
    :cond_2
    if-eqz v0, :cond_3

    .line 517
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mTopRow:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 519
    :cond_3
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    if-eqz v2, :cond_4

    .line 520
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v3, v3, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarMargin:I

    invoke-virtual {v2, v3}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->setMarginLeftAndRight(I)V

    .line 522
    :cond_4
    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setSeekbarLayoutParam(Landroid/view/View;)V

    .line 524
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    if-eqz v2, :cond_5

    .line 526
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    .line 528
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->setLeftDividerVisibility(I)V

    .line 529
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    invoke-virtual {v2, v4}, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->setRightDividerVisibility(I)V

    .line 530
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v3, v3, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mMoreButtonAreaWeight:I

    invoke-virtual {v2, v3}, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->setWidth(I)V

    .line 531
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v2, v2, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionShown:I

    invoke-direct {p0, v0, v2}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setViewWidth(Landroid/view/View;I)V

    .line 539
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->getRootView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v3, v3, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mButtonAreaWeightIfSlowMotionShown:I

    invoke-direct {p0, v2, v3}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setViewWidth(Landroid/view/View;I)V

    .line 540
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mLinearInFooter:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v3, v3, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mButtonAreaWeightIfSlowMotionShown:I

    invoke-direct {p0, v2, v3}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setViewWeight(Landroid/view/View;I)V

    .line 541
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mMoreButton:Lcom/htc/videowidget/videoview/widget/MoreButton;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v3, v3, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mMoreButtonAreaWeight:I

    invoke-direct {p0, v2, v3}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setViewWeight(Landroid/view/View;I)V

    .line 542
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mTopRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 543
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    const/16 v3, 0x209

    invoke-virtual {v2, v3}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->switchType(I)V

    .line 545
    iget-boolean v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mIsNavigationBar:Z

    if-eqz v2, :cond_0

    .line 547
    const/4 v2, 0x2

    invoke-direct {p0, v2, v4}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setMarginToRoot(II)V

    .line 548
    const/4 v2, 0x3

    const/16 v3, 0x54

    invoke-direct {p0, v2, v3}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setMarginToRoot(II)V

    goto/16 :goto_0

    .end local v0           #seekbar:Landroid/view/View;
    .end local v1           #slowMotion:Landroid/view/View;
    :cond_6
    move-object v1, v2

    .line 508
    goto/16 :goto_1

    .restart local v1       #slowMotion:Landroid/view/View;
    :cond_7
    move-object v0, v2

    .line 509
    goto/16 :goto_2

    .line 535
    .restart local v0       #seekbar:Landroid/view/View;
    :cond_8
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    invoke-virtual {v2, v4}, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->setWidth(I)V

    .line 536
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortFull:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    iget v2, v2, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionGone:I

    invoke-direct {p0, v0, v2}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setViewWidth(Landroid/view/View;I)V

    goto :goto_3
.end method

.method private switchToSimple(I)V
    .locals 10
    .parameter "orientation"

    .prologue
    const/16 v9, 0x54

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 554
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    if-nez v3, :cond_2

    .line 555
    :cond_0
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->calculateSimpleWeight()Z

    move-result v3

    if-nez v3, :cond_2

    .line 604
    :cond_1
    :goto_0
    return-void

    .line 557
    :cond_2
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mTopRow:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mLinearInFooter:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    .line 559
    if-ne p1, v6, :cond_7

    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightLandSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    .line 561
    .local v2, tempWeight:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;
    :goto_1
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    if-eqz v3, :cond_3

    .line 562
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    invoke-virtual {v3}, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->removeViewInLeaner(Landroid/view/View;)V

    .line 564
    :cond_3
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    if-eqz v3, :cond_6

    .line 566
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    iget v4, v2, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarMargin:I

    invoke-virtual {v3, v4}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->setMarginLeftAndRight(I)V

    .line 567
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    invoke-virtual {v3}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 568
    .local v1, seekbar:Landroid/view/View;
    if-eqz v1, :cond_6

    .line 570
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mTopRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_4

    .line 571
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mTopRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 572
    :cond_4
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mLinearInFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 573
    .local v0, index:I
    if-gez v0, :cond_8

    .line 574
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mLinearInFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 580
    :cond_5
    :goto_2
    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setSeekbarLayoutParam(Landroid/view/View;)V

    .line 581
    iget v3, v2, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionGone:I

    invoke-direct {p0, v1, v3}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setViewWidth(Landroid/view/View;I)V

    .line 585
    .end local v0           #index:I
    .end local v1           #seekbar:Landroid/view/View;
    :cond_6
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    invoke-virtual {v3}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->getRootView()Landroid/view/View;

    move-result-object v3

    iget v4, v2, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mButtonAreaWeightIfSlowMotionGone:I

    invoke-direct {p0, v3, v4}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setViewWidth(Landroid/view/View;I)V

    .line 586
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mLinearInFooter:Landroid/widget/LinearLayout;

    iget v4, v2, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mButtonAreaWeightIfSlowMotionGone:I

    iget v5, v2, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mSeekbarWeightIfSlowMotionGone:I

    add-int/2addr v4, v5

    invoke-direct {p0, v3, v4}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setViewWeight(Landroid/view/View;I)V

    .line 587
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mMoreButton:Lcom/htc/videowidget/videoview/widget/MoreButton;

    iget v4, v2, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;->mMoreButtonAreaWeight:I

    invoke-direct {p0, v3, v4}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setViewWeight(Landroid/view/View;I)V

    .line 588
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mTopRow:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 589
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    const/16 v4, 0x20a

    invoke-virtual {v3, v4}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->switchType(I)V

    .line 591
    iget-boolean v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mIsNavigationBar:Z

    if-eqz v3, :cond_1

    .line 593
    if-ne p1, v6, :cond_9

    .line 595
    invoke-direct {p0, v6, v9}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setMarginToRoot(II)V

    .line 596
    invoke-direct {p0, v8, v7}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setMarginToRoot(II)V

    goto/16 :goto_0

    .line 559
    .end local v2           #tempWeight:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;
    :cond_7
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mWeightPortSimple:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;

    goto :goto_1

    .line 575
    .restart local v0       #index:I
    .restart local v1       #seekbar:Landroid/view/View;
    .restart local v2       #tempWeight:Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull$Weight;
    :cond_8
    if-eq v0, v5, :cond_5

    .line 577
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mLinearInFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 578
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mLinearInFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 600
    .end local v0           #index:I
    .end local v1           #seekbar:Landroid/view/View;
    :cond_9
    invoke-direct {p0, v6, v7}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setMarginToRoot(II)V

    .line 601
    invoke-direct {p0, v8, v9}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setMarginToRoot(II)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dismissPopWindows()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mMoreButton:Lcom/htc/videowidget/videoview/widget/MoreButton;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mMoreButton:Lcom/htc/videowidget/videoview/widget/MoreButton;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/MoreButton;->hide()V

    .line 312
    :cond_0
    return-void
.end method

.method public hide()V
    .locals 6

    .prologue
    .line 210
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 216
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 217
    .local v0, anim:Landroid/animation/AnimatorSet;
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v1, v2

    .line 218
    .local v1, endingY:F
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;

    const-string v3, "translationY"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v1, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 219
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mContext:Landroid/content/Context;

    const/high16 v3, 0x605

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 220
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 221
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 222
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 223
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 225
    .end local v0           #anim:Landroid/animation/AnimatorSet;
    .end local v1           #endingY:F
    :cond_1
    return-void
.end method

.method public invokeFunction(IZZ)V
    .locals 2
    .parameter "nFunctionID"
    .parameter "isEnable"
    .parameter "bToggleState"

    .prologue
    .line 389
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    .line 391
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    if-eqz v0, :cond_0

    .line 393
    if-eqz p2, :cond_1

    .line 394
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->setVisibility(I)V

    .line 397
    :goto_0
    iget v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mType:I

    invoke-virtual {p0, v0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->switchType(I)V

    .line 405
    :cond_0
    :goto_1
    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->setVisibility(I)V

    goto :goto_0

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mMoreButton:Lcom/htc/videowidget/videoview/widget/MoreButton;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mMoreButton:Lcom/htc/videowidget/videoview/widget/MoreButton;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/videowidget/videoview/widget/MoreButton;->invokeFunction(IZZ)V

    goto :goto_1
.end method

.method public isGrayOut(I)Z
    .locals 2
    .parameter "grayOutID"

    .prologue
    .line 277
    packed-switch p1, :pswitch_data_0

    .line 292
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 280
    :pswitch_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    const/16 v1, 0x28e

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->isGrayOut(I)Z

    move-result v0

    goto :goto_0

    .line 284
    :pswitch_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    const/16 v1, 0x28f

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->isGrayOut(I)Z

    move-result v0

    goto :goto_0

    .line 288
    :pswitch_2
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->isGrayOut()Z

    move-result v0

    goto :goto_0

    .line 277
    :pswitch_data_0
    .packed-switch 0x259
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 237
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 239
    :cond_0
    return v0
.end method

.method public setButtonIcon(II)V
    .locals 2
    .parameter "btnID"
    .parameter "resID"

    .prologue
    .line 317
    packed-switch p1, :pswitch_data_0

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 320
    :pswitch_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    const/16 v1, 0x28e

    invoke-virtual {v0, v1, p2}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->setIcon(II)V

    goto :goto_0

    .line 324
    :pswitch_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    const/16 v1, 0x28f

    invoke-virtual {v0, v1, p2}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->setIcon(II)V

    goto :goto_0

    .line 328
    :pswitch_2
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    const/16 v1, 0x290

    invoke-virtual {v0, v1, p2}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->setIcon(II)V

    goto :goto_0

    .line 332
    :pswitch_3
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    invoke-virtual {v0, p2}, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->setIcon(I)V

    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setButtonVisibility(II)V
    .locals 2
    .parameter "btnID"
    .parameter "visibility"

    .prologue
    .line 341
    packed-switch p1, :pswitch_data_0

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 344
    :pswitch_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    const/16 v1, 0x28e

    invoke-virtual {v0, v1, p2}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->setVisibility(II)V

    goto :goto_0

    .line 348
    :pswitch_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    const/16 v1, 0x28f

    invoke-virtual {v0, v1, p2}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->setVisibility(II)V

    goto :goto_0

    .line 352
    :pswitch_2
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    const/16 v1, 0x290

    invoke-virtual {v0, v1, p2}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->setVisibility(II)V

    goto :goto_0

    .line 356
    :pswitch_3
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    invoke-virtual {v0, p2}, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->setVisibility(I)V

    goto :goto_0

    .line 360
    :pswitch_4
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    invoke-virtual {v0, p2}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->setDurationTextVisibility(I)V

    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setGrayOut(IZ)V
    .locals 2
    .parameter "grayOutID"
    .parameter "isEnable"

    .prologue
    .line 245
    packed-switch p1, :pswitch_data_0

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 248
    :pswitch_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    const/16 v1, 0x28e

    invoke-virtual {v0, v1, p2}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->setGrayOut(IZ)V

    goto :goto_0

    .line 252
    :pswitch_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    const/16 v1, 0x28f

    invoke-virtual {v0, v1, p2}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->setGrayOut(IZ)V

    .line 255
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    const/16 v1, 0x290

    invoke-virtual {v0, v1, p2}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->setGrayOut(IZ)V

    goto :goto_0

    .line 259
    :pswitch_2
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    invoke-virtual {v0, p2}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->setGrayOut(Z)V

    goto :goto_0

    .line 263
    :pswitch_3
    const/16 v0, 0x259

    invoke-virtual {p0, v0, p2}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setGrayOut(IZ)V

    .line 264
    const/16 v0, 0x25a

    invoke-virtual {p0, v0, p2}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setGrayOut(IZ)V

    .line 265
    const/16 v0, 0x25b

    invoke-virtual {p0, v0, p2}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->setGrayOut(IZ)V

    goto :goto_0

    .line 268
    :pswitch_4
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mMoreButton:Lcom/htc/videowidget/videoview/widget/MoreButton;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mMoreButton:Lcom/htc/videowidget/videoview/widget/MoreButton;

    invoke-virtual {v0, p2}, Lcom/htc/videowidget/videoview/widget/MoreButton;->setEnabled(Z)V

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x259
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setIsNavigationBarExit(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mIsNavigationBar:Z

    if-eq v0, p1, :cond_0

    .line 437
    iput-boolean p1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mIsNavigationBar:Z

    .line 438
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->calculateLandFullWeight()Z

    .line 439
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->calculatePortFullWeight()Z

    .line 440
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->calculateSimpleWeight()Z

    .line 441
    iget v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mType:I

    invoke-virtual {p0, v0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->switchType(I)V

    .line 443
    :cond_0
    return-void
.end method

.method public setListener(Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    .line 299
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mButtonArea:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->setListener(Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->setListener(Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;)V

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSlowMotionArea:Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/widget/controller/SlowMotionButtonArea;->setListener(Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;)V

    .line 305
    :cond_2
    return-void
.end method

.method public setMoreMenuItemText(II)V
    .locals 1
    .parameter "itemId"
    .parameter "resId"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mMoreButton:Lcom/htc/videowidget/videoview/widget/MoreButton;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mMoreButton:Lcom/htc/videowidget/videoview/widget/MoreButton;

    invoke-virtual {v0, p1, p2}, Lcom/htc/videowidget/videoview/widget/MoreButton;->setListItemText(II)V

    .line 411
    :cond_0
    return-void
.end method

.method public setSeekBarParam(II)V
    .locals 1
    .parameter "seekbarID"
    .parameter "nn"

    .prologue
    .line 369
    packed-switch p1, :pswitch_data_0

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 372
    :pswitch_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    invoke-virtual {v0, p2}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->setMax(I)V

    goto :goto_0

    .line 376
    :pswitch_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    invoke-virtual {v0, p2}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->setProgress(I)V

    goto :goto_0

    .line 380
    :pswitch_2
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mSeekBarArea:Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;

    invoke-virtual {v0, p2}, Lcom/htc/videowidget/videoview/widget/controller/SeekbarArea;->setSecondaryProgress(I)V

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x385
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public show()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 189
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    .line 191
    :cond_0
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 193
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 195
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v1, v2

    .line 196
    .local v1, startingY:F
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 197
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 198
    .local v0, anim:Landroid/animation/AnimatorSet;
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;

    const-string v3, "translationY"

    const/4 v4, 0x1

    new-array v4, v4, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 199
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mContext:Landroid/content/Context;

    const v3, 0x6050001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 200
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 201
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 202
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 203
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 205
    .end local v0           #anim:Landroid/animation/AnimatorSet;
    .end local v1           #startingY:F
    :cond_1
    return-void
.end method

.method public simpleHide()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mRootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :cond_0
    return-void
.end method

.method public switchType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 415
    iput p1, p0, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->mType:I

    .line 416
    packed-switch p1, :pswitch_data_0

    .line 431
    :goto_0
    return-void

    .line 419
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->switchToLandscapeFull()V

    goto :goto_0

    .line 422
    :pswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->switchToSimple(I)V

    goto :goto_0

    .line 425
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->switchToPortrailFull()V

    goto :goto_0

    .line 428
    :pswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/widget/controller/VpControllerFull;->switchToSimple(I)V

    goto :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
