.class public Lcom/htc/painting/penmenu/history/PenHistory;
.super Landroid/widget/FrameLayout;
.source "PenHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu/history/PenHistory$State;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PenHistory"


# instance fields
.field private final DURATION:I

.field private final HISTORY_SIZE:I

.field private final INTERVAL:I

.field private final PEN_VIEW_SIZE:I

.field private mAnimInProgress:Z

.field private mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

.field private mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

.field private mOnCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

.field private mPenDataReady:Z

.field private mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

.field private mPenViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/history/PenHistoryPenView;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

.field private mSize:I

.field private mState:Lcom/htc/painting/penmenu/history/PenHistory$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/painting/penmenu/history/PenHistory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/painting/penmenu/history/PenHistory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    .line 922
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenDataReady:Z

    .line 116
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e00dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->HISTORY_SIZE:I

    .line 118
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e00dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->PEN_VIEW_SIZE:I

    .line 120
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e00de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->DURATION:I

    .line 121
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e00df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->INTERVAL:I

    .line 123
    invoke-direct {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->init()V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/htc/painting/penmenu/history/PenHistory;)Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/painting/penmenu/history/PenHistory;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mAnimInProgress:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/painting/penmenu/history/PenHistory;)Lcom/htc/painting/penmenu/menu/OnCollapseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mOnCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/painting/penmenu/history/PenHistory;)Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/painting/penmenu/history/PenHistory;)Lcom/htc/painting/penmenu/history/PenHistory$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mState:Lcom/htc/painting/penmenu/history/PenHistory$State;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/painting/penmenu/history/PenHistory;Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/history/PenHistory;->getAppearAnim(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private findPenViewIndexByHistoryIndex(I)I
    .locals 3
    .parameter "historyIndex"

    .prologue
    .line 308
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/history/HistoryQueue;->size()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 309
    :cond_0
    const/4 v1, -0x1

    .line 318
    :cond_1
    :goto_0
    return v1

    .line 311
    :cond_2
    const/4 v1, -0x1

    .line 312
    .local v1, ret:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 313
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getHistoryIndex()I

    move-result v2

    if-ne v2, p1, :cond_3

    .line 314
    move v1, v0

    .line 315
    goto :goto_0

    .line 312
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getAppearAnim(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;
    .locals 7
    .parameter "penView"

    .prologue
    const/4 v6, 0x0

    .line 602
    if-nez p1, :cond_0

    .line 603
    const-string v3, "PenHistory"

    const-string v4, "getAppearAnim - penView is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/4 v0, 0x0

    .line 630
    :goto_0
    return-object v0

    .line 606
    :cond_0
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 607
    .local v0, appearAnim:Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getSize()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-direct {v2, v3, v6, v4, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 609
    .local v2, moveIn:Landroid/view/animation/TranslateAnimation;
    iget v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->DURATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 610
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    invoke-direct {v1, v6, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 611
    .local v1, fadeIn:Landroid/view/animation/AlphaAnimation;
    iget v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->DURATION:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 613
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 614
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 615
    new-instance v3, Lcom/htc/painting/penmenu/history/PenHistory$5;

    invoke-direct {v3, p0}, Lcom/htc/painting/penmenu/history/PenHistory$5;-><init>(Lcom/htc/painting/penmenu/history/PenHistory;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private getDisappearAnim(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;
    .locals 7
    .parameter "penView"

    .prologue
    const/4 v6, 0x0

    .line 584
    if-nez p1, :cond_0

    .line 585
    const-string v3, "PenHistory"

    const-string v4, "getDisappearAnim - penView is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v0, 0x0

    .line 597
    :goto_0
    return-object v0

    .line 588
    :cond_0
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 589
    .local v0, disappearAnim:Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getSize()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-direct {v2, v6, v3, v6, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 591
    .local v2, moveOut:Landroid/view/animation/TranslateAnimation;
    iget v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->DURATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 592
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    invoke-direct {v1, v3, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 593
    .local v1, fadeOut:Landroid/view/animation/AlphaAnimation;
    iget v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->DURATION:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 595
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 596
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private getHideBackgroundAnimation()Landroid/view/animation/Animation;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 528
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 530
    .local v1, hideAnim:Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->getShadowSize()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->getShadowSize()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v5, v3, v5, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 532
    .local v2, moveOut:Landroid/view/animation/TranslateAnimation;
    iget v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->DURATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 533
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    invoke-direct {v0, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 534
    .local v0, fadeOut:Landroid/view/animation/AlphaAnimation;
    iget v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->DURATION:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 536
    new-instance v3, Lcom/htc/painting/penmenu/history/PenHistory$4;

    invoke-direct {v3, p0}, Lcom/htc/painting/penmenu/history/PenHistory$4;-><init>(Lcom/htc/painting/penmenu/history/PenHistory;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 554
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 555
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 557
    return-object v1
.end method

.method private getHidePenAnimation(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;
    .locals 7
    .parameter "penView"

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 504
    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getSize()I

    move-result v1

    .line 506
    .local v1, size:I
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getX()F

    move-result v2

    int-to-float v3, v1

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getY()F

    move-result v3

    int-to-float v4, v1

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-direct {v0, v5, v2, v5, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 508
    .local v0, moveOut:Landroid/view/animation/TranslateAnimation;
    iget v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 509
    new-instance v2, Lcom/htc/painting/penmenu/history/PenHistory$3;

    invoke-direct {v2, p0, p1}, Lcom/htc/painting/penmenu/history/PenHistory$3;-><init>(Lcom/htc/painting/penmenu/history/PenHistory;Lcom/htc/painting/penmenu/history/PenHistoryPenView;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 524
    return-object v0
.end method

.method private getPenIcon(Lcom/htc/painting/penmenu/Pen;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "pen"

    .prologue
    const/4 v1, 0x0

    .line 322
    if-nez p1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-object v1

    .line 325
    :cond_1
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-nez v2, :cond_2

    .line 326
    const-string v2, "PenHistory"

    const-string v3, "getPenIcon - mPenMenu is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 329
    :cond_2
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/Pen;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/PenMenu;->getPenTypeItem(I)Lcom/htc/painting/penmenu/menu/PenTypeItem;

    move-result-object v0

    .line 330
    .local v0, item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p1}, Lcom/htc/painting/penmenu/Pen;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getHistoryIcon(I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method private getRotateNextAnim(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;
    .locals 7
    .parameter "penView"

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f80

    .line 635
    if-nez p1, :cond_0

    .line 636
    const-string v1, "PenHistory"

    const-string v2, "getRotateNextAnim - penView is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v0, 0x0

    .line 644
    :goto_0
    return-object v0

    .line 640
    :cond_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3d4c

    iget v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->PEN_VIEW_SIZE:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 643
    .local v0, rotateNext:Landroid/view/animation/RotateAnimation;
    iget v1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    goto :goto_0
.end method

.method private getRotatePreviousAnim(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;
    .locals 7
    .parameter "penView"

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f80

    .line 649
    if-nez p1, :cond_0

    .line 650
    const-string v1, "PenHistory"

    const-string v2, "getRotatePreviousAnim - penView is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const/4 v0, 0x0

    .line 658
    :goto_0
    return-object v0

    .line 654
    :cond_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x42b4

    iget v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->PEN_VIEW_SIZE:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 657
    .local v0, rotatePrev:Landroid/view/animation/RotateAnimation;
    iget v1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    goto :goto_0
.end method

.method private getShowBackgroundAnimation()Landroid/view/animation/Animation;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 403
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 404
    .local v2, showAnim:Landroid/view/animation/AnimationSet;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->getShadowSize()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->getShadowSize()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v3, v5, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 407
    .local v1, moveIn:Landroid/view/animation/TranslateAnimation;
    iget v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->DURATION:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 408
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    invoke-direct {v0, v5, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 409
    .local v0, fadeIn:Landroid/view/animation/AlphaAnimation;
    iget v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->DURATION:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 411
    new-instance v3, Lcom/htc/painting/penmenu/history/PenHistory$2;

    invoke-direct {v3, p0}, Lcom/htc/painting/penmenu/history/PenHistory$2;-><init>(Lcom/htc/painting/penmenu/history/PenHistory;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 426
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 427
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 429
    return-object v2
.end method

.method private getShowPenAnimation(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;
    .locals 7
    .parameter "penView"

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 379
    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getSize()I

    move-result v1

    .line 381
    .local v1, size:I
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getX()F

    move-result v2

    int-to-float v3, v1

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getY()F

    move-result v3

    int-to-float v4, v1

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-direct {v0, v2, v5, v3, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 383
    .local v0, moveIn:Landroid/view/animation/TranslateAnimation;
    iget v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 384
    new-instance v2, Lcom/htc/painting/penmenu/history/PenHistory$1;

    invoke-direct {v2, p0, p1}, Lcom/htc/painting/penmenu/history/PenHistory$1;-><init>(Lcom/htc/painting/penmenu/history/PenHistory;Lcom/htc/painting/penmenu/history/PenHistoryPenView;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 399
    return-object v0
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    .line 780
    iget-object v11, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mState:Lcom/htc/painting/penmenu/history/PenHistory$State;

    sget-object v12, Lcom/htc/painting/penmenu/history/PenHistory$State;->HIDE:Lcom/htc/painting/penmenu/history/PenHistory$State;

    if-ne v11, v12, :cond_1

    .line 781
    const/4 v5, 0x0

    .line 856
    :cond_0
    :goto_0
    return v5

    .line 784
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 786
    const/4 v5, 0x1

    goto :goto_0

    .line 789
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    invoke-direct {p0, v11, v12}, Lcom/htc/painting/penmenu/history/PenHistory;->isValideArea(FF)Z

    move-result v5

    .line 791
    .local v5, inValidArea:Z
    iget-boolean v11, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenDataReady:Z

    if-eqz v11, :cond_0

    .line 793
    const/4 v8, 0x0

    .line 794
    .local v8, ret:Z
    const/4 v11, 0x1

    if-ne v5, v11, :cond_9

    .line 795
    iget-object v11, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-nez v11, :cond_3

    .line 796
    const-string v11, "PenHistory"

    const-string v12, "handleMotionEvent - mPenMenu is null!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const/4 v5, 0x1

    goto :goto_0

    .line 800
    :cond_3
    iget-object v11, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/painting/penmenu/PenMenu;->setUseTime(Z)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-boolean v11, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mAnimInProgress:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 803
    :cond_4
    const/4 v5, 0x1

    goto :goto_0

    .line 806
    :cond_5
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget-object v11, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_9

    .line 807
    iget-object v11, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    .line 808
    .local v6, obj:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    sub-float v2, v11, v12

    .line 809
    .local v2, dx:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    sub-float v3, v11, v12

    .line 810
    .local v3, dy:F
    invoke-virtual {v6, v2, v3}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->contain(FF)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 811
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    if-nez v11, :cond_9

    .line 812
    sget-boolean v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v11, :cond_6

    .line 813
    const-string v11, "PenHistory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleMotionEvent - select pen in view: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_6
    invoke-virtual {v6}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 816
    const/4 v8, 0x1

    .line 818
    invoke-virtual {v6}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getHistoryIndex()I

    move-result v9

    .line 819
    .local v9, selectedIndex:I
    sget-boolean v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v11, :cond_7

    .line 820
    const-string v11, "PenHistory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleMotionEvent - select pen index: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_7
    iget-object v11, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    invoke-virtual {v11, v9}, Lcom/htc/painting/penmenu/history/HistoryQueue;->peek(I)Lcom/htc/painting/penmenu/Pen;

    move-result-object v10

    .line 825
    .local v10, selectedPen:Lcom/htc/painting/penmenu/Pen;
    invoke-direct {p0, v10}, Lcom/htc/painting/penmenu/history/PenHistory;->getPenIcon(Lcom/htc/painting/penmenu/Pen;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-direct {p0, v6, v11}, Lcom/htc/painting/penmenu/history/PenHistory;->setupSelectPenView(Lcom/htc/painting/penmenu/history/PenHistoryPenView;Landroid/graphics/Bitmap;)V

    .line 828
    iget-object v11, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v11}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPen()Lcom/htc/painting/penmenu/Pen;

    move-result-object v1

    .line 831
    .local v1, currentPen:Lcom/htc/painting/penmenu/Pen;
    iget-object v11, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    invoke-virtual {v11, v9, v1}, Lcom/htc/painting/penmenu/history/HistoryQueue;->update(ILcom/htc/painting/penmenu/Pen;)I

    move-result v7

    .line 834
    .local v7, orderInHistory:I
    invoke-direct {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->matchUpPenView()V

    .line 837
    const/4 v0, -0x1

    .line 838
    .local v0, appearViewIndex:I
    const/4 v11, -0x1

    if-eq v7, v11, :cond_8

    .line 839
    invoke-direct {p0, v7}, Lcom/htc/painting/penmenu/history/PenHistory;->findPenViewIndexByHistoryIndex(I)I

    move-result v0

    .line 840
    sget-boolean v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v11, :cond_8

    .line 841
    const-string v11, "PenHistory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleMotionEvent - currnet pen should be added to index: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", view: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_8
    iget-object v11, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v11, v10}, Lcom/htc/painting/penmenu/PenMenu;->setCurrentPen(Lcom/htc/painting/penmenu/Pen;)V

    .line 849
    invoke-direct {p0, v4, v0}, Lcom/htc/painting/penmenu/history/PenHistory;->startPenViewAnimation(II)V

    .end local v0           #appearViewIndex:I
    .end local v1           #currentPen:Lcom/htc/painting/penmenu/Pen;
    .end local v2           #dx:F
    .end local v3           #dy:F
    .end local v4           #i:I
    .end local v6           #obj:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    .end local v7           #orderInHistory:I
    .end local v9           #selectedIndex:I
    .end local v10           #selectedPen:Lcom/htc/painting/penmenu/Pen;
    :cond_9
    move v5, v8

    .line 856
    goto/16 :goto_0

    .line 806
    .restart local v2       #dx:F
    .restart local v3       #dy:F
    .restart local v4       #i:I
    .restart local v6       #obj:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method

.method private init()V
    .locals 21

    .prologue
    .line 127
    new-instance v17, Lcom/htc/painting/penmenu/history/HistoryQueue;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/painting/penmenu/history/PenHistory;->HISTORY_SIZE:I

    move/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/htc/painting/penmenu/history/HistoryQueue;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 130
    .local v10, inflator:Landroid/view/LayoutInflater;
    const v17, 0x2090062

    const/16 v18, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 132
    sget-object v17, Lcom/htc/painting/penmenu/history/PenHistory$State;->SHOW:Lcom/htc/painting/penmenu/history/PenHistory$State;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/painting/penmenu/history/PenHistory;->mState:Lcom/htc/painting/penmenu/history/PenHistory$State;

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x2080205

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 136
    .local v6, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/painting/penmenu/history/PenHistory;->mSize:I

    .line 138
    const v17, 0x202011b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistory;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->setPenHistory(Lcom/htc/painting/penmenu/history/PenHistory;)V

    .line 141
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/painting/penmenu/history/PenHistory;->PEN_VIEW_SIZE:I

    .line 142
    .local v8, count:I
    const/high16 v17, 0x42b4

    mul-int/lit8 v18, v8, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v7, v17, v18

    .line 143
    .local v7, beginAngle:F
    const/high16 v17, 0x42b4

    int-to-float v0, v8

    move/from16 v18, v0

    div-float v5, v17, v18

    .line 144
    .local v5, angleRange:F
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    const/16 v19, 0x55

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v11, v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 146
    .local v11, params:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/painting/penmenu/history/PenHistory;->mSize:I

    .line 148
    .local v3, ICON_ORBIT_RADIUS:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v8, :cond_0

    .line 149
    new-instance v12, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;-><init>(Landroid/content/Context;)V

    .line 150
    .local v12, penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    invoke-virtual {v12, v11}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    int-to-float v0, v9

    move/from16 v17, v0

    mul-float v17, v17, v5

    add-float v4, v7, v17

    .line 153
    .local v4, angle:F
    int-to-double v0, v3

    move-wide/from16 v17, v0

    float-to-double v0, v4

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v13, v17, v19

    .line 154
    .local v13, x:D
    int-to-double v0, v3

    move-wide/from16 v17, v0

    float-to-double v0, v4

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v15, v17, v19

    .line 156
    .local v15, y:D
    double-to-float v0, v13

    move/from16 v17, v0

    double-to-float v0, v15

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setIconPos(FF)V

    .line 157
    invoke-virtual {v12, v4}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setIconAngle(F)V

    .line 158
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setPenHistory(Lcom/htc/painting/penmenu/history/PenHistory;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/painting/penmenu/history/PenHistory;->addView(Landroid/view/View;)V

    .line 148
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 163
    .end local v4           #angle:F
    .end local v12           #penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    .end local v13           #x:D
    .end local v15           #y:D
    :cond_0
    new-instance v17, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setPenHistory(Lcom/htc/painting/penmenu/history/PenHistory;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistory;->addView(Landroid/view/View;)V

    .line 168
    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/penmenu/history/PenHistory;->matchUpPenView()V

    .line 169
    return-void
.end method

.method private isValideArea(FF)Z
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 757
    iget-object v5, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/PenMenu;->getActionPanelSize()I

    move-result v5

    int-to-float v2, v5

    .line 758
    .local v2, innerRadius:F
    iget-object v5, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/PenMenu;->getSize()I

    move-result v5

    int-to-float v3, v5

    .line 759
    .local v3, outerRadius:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float v0, v5, p1

    .line 760
    .local v0, dx:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float v1, v5, p2

    .line 761
    .local v1, dy:F
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    .line 762
    const-string v5, "PenHistory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isValideArea - (w, h):("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), (x,y):("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_0
    mul-float v5, v0, v0

    mul-float v6, v1, v1

    add-float v4, v5, v6

    .line 766
    .local v4, rr:F
    mul-float v5, v2, v2

    cmpg-float v5, v5, v4

    if-gez v5, :cond_1

    mul-float v5, v3, v3

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_1

    .line 767
    const/4 v5, 0x1

    .line 769
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private matchUpPenView()V
    .locals 4

    .prologue
    .line 287
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/history/HistoryQueue;->size()I

    move-result v0

    .line 288
    .local v0, count:I
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 289
    if-lez v0, :cond_0

    .line 290
    add-int/lit8 v0, v0, -0x1

    .line 291
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {v2, v0}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setHistoryIndex(I)V

    .line 292
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    iget-object v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    invoke-virtual {v3, v0}, Lcom/htc/painting/penmenu/history/HistoryQueue;->peek(I)Lcom/htc/painting/penmenu/Pen;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/painting/penmenu/history/PenHistory;->getPenIcon(Lcom/htc/painting/penmenu/Pen;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setIcon(Landroid/graphics/Bitmap;)V

    .line 288
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 295
    :cond_0
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setHistoryIndex(I)V

    .line 296
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 299
    :cond_1
    return-void
.end method

.method private processPenEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 874
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 875
    const-string v0, "PenHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPenEvent, action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 879
    :cond_1
    const-string v0, "PenHistory"

    const-string v1, "onPenEvent, receive event after destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const/4 v0, 0x0

    .line 883
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/history/PenHistory;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 888
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    .line 889
    const-string v1, "PenHistory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent, action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 893
    :cond_1
    const-string v1, "PenHistory"

    const-string v2, "onTouchEvent, receive event after destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const/4 v1, 0x0

    .line 902
    :goto_0
    return v1

    .line 897
    :cond_2
    invoke-static {p1}, Lcom/htc/pen/PenEvent;->isPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 898
    .local v0, isPen:Z
    if-eqz v0, :cond_3

    .line 899
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/history/PenHistory;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 902
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/htc/painting/penmenu/history/PenHistory;->isValideArea(FF)Z

    move-result v1

    goto :goto_0
.end method

.method private setupSelectPenView(Lcom/htc/painting/penmenu/history/PenHistoryPenView;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "selectedPenView"
    .parameter "icon"

    .prologue
    .line 568
    if-nez p1, :cond_0

    .line 569
    const-string v0, "PenHistory"

    const-string v1, "setupSelectPenView - selectedPenView is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :goto_0
    return-void

    .line 572
    :cond_0
    if-nez p2, :cond_1

    .line 573
    const-string v0, "PenHistory"

    const-string v1, "setupSelectPenView - icon is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {v0, p2}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setIcon(Landroid/graphics/Bitmap;)V

    .line 578
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getIconAngle()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setIconAngle(F)V

    .line 579
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setIconPos(FF)V

    goto :goto_0
.end method

.method private startPenViewAnimation(II)V
    .locals 7
    .parameter "disappearIndex"
    .parameter "appearIndex"

    .prologue
    .line 663
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    .line 664
    const-string v4, "PenHistory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startPenViewAnimation - disappearIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", appearIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mAnimInProgress:Z

    .line 669
    const/4 v4, -0x1

    if-ne p2, v4, :cond_2

    .line 672
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-gt v2, p1, :cond_1

    .line 673
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    .line 674
    .local v3, penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    invoke-direct {p0, v3}, Lcom/htc/painting/penmenu/history/PenHistory;->getRotateNextAnim(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 672
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 677
    .end local v3           #penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    :cond_1
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-direct {p0, v4}, Lcom/htc/painting/penmenu/history/PenHistory;->getDisappearAnim(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 678
    .local v1, disappearAnim:Landroid/view/animation/Animation;
    new-instance v4, Lcom/htc/painting/penmenu/history/PenHistory$6;

    invoke-direct {v4, p0}, Lcom/htc/painting/penmenu/history/PenHistory$6;-><init>(Lcom/htc/painting/penmenu/history/PenHistory;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 695
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {v4, v1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 747
    :goto_1
    return-void

    .line 701
    .end local v1           #disappearAnim:Landroid/view/animation/Animation;
    .end local v2           #i:I
    :cond_2
    if-gt p1, p2, :cond_3

    .line 705
    move v2, p1

    .restart local v2       #i:I
    :goto_2
    if-ge v2, p2, :cond_4

    .line 706
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    .line 707
    .restart local v3       #penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    invoke-direct {p0, v3}, Lcom/htc/painting/penmenu/history/PenHistory;->getRotatePreviousAnim(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 705
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 714
    .end local v2           #i:I
    .end local v3           #penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    :cond_3
    add-int/lit8 v2, p2, 0x1

    .restart local v2       #i:I
    :goto_3
    if-gt v2, p1, :cond_4

    .line 715
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    .line 716
    .restart local v3       #penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    invoke-direct {p0, v3}, Lcom/htc/painting/penmenu/history/PenHistory;->getRotateNextAnim(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 714
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 720
    .end local v3           #penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    :cond_4
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    .line 721
    .local v0, appearView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setVisibility(I)V

    .line 722
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-direct {p0, v4}, Lcom/htc/painting/penmenu/history/PenHistory;->getDisappearAnim(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 723
    .restart local v1       #disappearAnim:Landroid/view/animation/Animation;
    new-instance v4, Lcom/htc/painting/penmenu/history/PenHistory$7;

    invoke-direct {v4, p0, v0}, Lcom/htc/painting/penmenu/history/PenHistory$7;-><init>(Lcom/htc/painting/penmenu/history/PenHistory;Lcom/htc/painting/penmenu/history/PenHistoryPenView;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 745
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {v4, v1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method


# virtual methods
.method public addPen(Lcom/htc/painting/penmenu/Pen;)I
    .locals 5
    .parameter "pen"

    .prologue
    const/4 v2, -0x1

    .line 263
    if-nez p1, :cond_0

    .line 264
    const-string v3, "PenHistory"

    const-string v4, "addPen - null pen"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 279
    :goto_0
    return v1

    .line 267
    :cond_0
    const/4 v1, -0x1

    .line 269
    .local v1, ret:I
    iget-object v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    invoke-virtual {v3, p1}, Lcom/htc/painting/penmenu/history/HistoryQueue;->findPen(Lcom/htc/painting/penmenu/Pen;)I

    move-result v0

    .line 270
    .local v0, foundPenIndex:I
    if-eq v0, v2, :cond_1

    .line 271
    const-string v2, "PenHistory"

    const-string v3, "addPen - warning: find same pen in history "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    invoke-virtual {v2, v0}, Lcom/htc/painting/penmenu/history/HistoryQueue;->remove(I)Lcom/htc/painting/penmenu/Pen;

    .line 275
    :cond_1
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    invoke-virtual {v2, p1}, Lcom/htc/painting/penmenu/history/HistoryQueue;->add(Lcom/htc/painting/penmenu/Pen;)I

    move-result v1

    .line 277
    invoke-direct {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->matchUpPenView()V

    goto :goto_0
.end method

.method public findOrderInHistory(I)I
    .locals 1
    .parameter "seqNo"

    .prologue
    .line 910
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu/history/HistoryQueue;->findOrder(I)I

    move-result v0

    return v0
.end method

.method public getHistoryPens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/Pen;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/history/HistoryQueue;->getPens()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getInnerRadius()I
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenu;->getActionPanelSize()I

    move-result v0

    return v0
.end method

.method public getSamePen(Lcom/htc/painting/penmenu/Pen;)Lcom/htc/painting/penmenu/Pen;
    .locals 4
    .parameter "penToFind"

    .prologue
    .line 227
    if-nez p1, :cond_1

    .line 228
    const-string v2, "PenHistory"

    const-string v3, "getSamePen - null pen"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v1, 0x0

    .line 237
    :cond_0
    :goto_0
    return-object v1

    .line 231
    :cond_1
    const/4 v1, 0x0

    .line 232
    .local v1, ret:Lcom/htc/painting/penmenu/Pen;
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    invoke-virtual {v2, p1}, Lcom/htc/painting/penmenu/history/HistoryQueue;->findPen(Lcom/htc/painting/penmenu/Pen;)I

    move-result v0

    .line 233
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    invoke-virtual {v2, v0}, Lcom/htc/painting/penmenu/history/HistoryQueue;->remove(I)Lcom/htc/painting/penmenu/Pen;

    move-result-object v1

    .line 235
    invoke-direct {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->matchUpPenView()V

    goto :goto_0
.end method

.method getSize()I
    .locals 1

    .prologue
    .line 918
    iget v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mSize:I

    return v0
.end method

.method public hide(Z)V
    .locals 10
    .parameter "playAnimation"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    .line 465
    sget-object v4, Lcom/htc/painting/penmenu/history/PenHistory$State;->HIDE:Lcom/htc/painting/penmenu/history/PenHistory$State;

    iput-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mState:Lcom/htc/painting/penmenu/history/PenHistory$State;

    .line 467
    if-ne p1, v8, :cond_3

    .line 469
    iput-boolean v8, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mAnimInProgress:Z

    .line 470
    const/4 v1, 0x0

    .line 472
    .local v1, delayMillis:I
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 473
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    .line 474
    .local v3, penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->isSet()Z

    move-result v4

    if-ne v4, v8, :cond_0

    .line 476
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-direct {p0, v4}, Lcom/htc/painting/penmenu/history/PenHistory;->getHidePenAnimation(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 477
    .local v0, anim:Landroid/view/animation/Animation;
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 478
    invoke-virtual {v3, v0}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 479
    iget v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->INTERVAL:I

    add-int/2addr v1, v4

    .line 472
    .end local v0           #anim:Landroid/view/animation/Animation;
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 483
    :cond_0
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {v4, v9}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setVisibility(I)V

    goto :goto_1

    .line 487
    .end local v3           #penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    :cond_1
    invoke-direct {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getHideBackgroundAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 488
    .restart local v0       #anim:Landroid/view/animation/Animation;
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 490
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    invoke-virtual {v4, v0}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 501
    .end local v0           #anim:Landroid/view/animation/Animation;
    .end local v1           #delayMillis:I
    :cond_2
    :goto_2
    return-void

    .line 493
    .end local v2           #i:I
    :cond_3
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .restart local v2       #i:I
    :goto_3
    if-ltz v2, :cond_4

    .line 494
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {v4, v9}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setVisibility(I)V

    .line 493
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 496
    :cond_4
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    invoke-virtual {v4, v9}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->setVisibility(I)V

    .line 497
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mOnCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    if-eqz v4, :cond_2

    .line 498
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mOnCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    invoke-interface {v4}, Lcom/htc/painting/penmenu/menu/OnCollapseListener;->onCollapseFinish()V

    goto :goto_2
.end method

.method public onPenDataStateChanged(Z)V
    .locals 0
    .parameter "ready"

    .prologue
    .line 928
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenDataReady:Z

    .line 929
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 866
    invoke-static {p1}, Lcom/htc/pen/PenEvent;->isPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/history/PenHistory;->processPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 869
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/history/PenHistory;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public releaseResources()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 192
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    .line 193
    .local v1, penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->releaseIcon()V

    goto :goto_0

    .line 195
    .end local v1           #penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    :cond_0
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->releaseIcon()V

    .line 196
    iput-object v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    .line 197
    iput-object v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    .line 198
    iput-object v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mOnCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    .line 200
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->removeAllViews()V

    .line 201
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 248
    new-instance v0, Lcom/htc/painting/penmenu/history/HistoryQueue;

    iget v1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->HISTORY_SIZE:I

    invoke-direct {v0, v1}, Lcom/htc/painting/penmenu/history/HistoryQueue;-><init>(I)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mHistoryQueue:Lcom/htc/painting/penmenu/history/HistoryQueue;

    .line 249
    invoke-direct {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->matchUpPenView()V

    .line 250
    return-void
.end method

.method public setOnCollapseListener(Lcom/htc/painting/penmenu/menu/OnCollapseListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mOnCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    .line 214
    return-void
.end method

.method public setPenMenu(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter "penMenu"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    .line 103
    return-void
.end method

.method public setState(Lcom/htc/painting/penmenu/history/PenHistory$State;)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 442
    iput-object p1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mState:Lcom/htc/painting/penmenu/history/PenHistory$State;

    .line 443
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 444
    iget-object v1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mState:Lcom/htc/painting/penmenu/history/PenHistory$State;

    sget-object v2, Lcom/htc/painting/penmenu/history/PenHistory$State;->HIDE:Lcom/htc/painting/penmenu/history/PenHistory$State;

    if-ne v1, v2, :cond_0

    .line 445
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mAnimInProgress:Z

    .line 446
    iget-object v1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {v1, v4}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setVisibility(I)V

    .line 447
    iget-object v1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    invoke-virtual {v1, v4}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->setVisibility(I)V

    .line 443
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {v1, v3}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setVisibility(I)V

    .line 451
    iget-object v1, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    invoke-virtual {v1, v3}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->setVisibility(I)V

    .line 452
    iput-boolean v3, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mAnimInProgress:Z

    goto :goto_1

    .line 455
    :cond_1
    return-void
.end method

.method public show(Z)V
    .locals 10
    .parameter "playAnimation"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 344
    sget-object v4, Lcom/htc/painting/penmenu/history/PenHistory$State;->SHOW:Lcom/htc/painting/penmenu/history/PenHistory$State;

    iput-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mState:Lcom/htc/painting/penmenu/history/PenHistory$State;

    .line 346
    if-ne p1, v9, :cond_2

    .line 347
    const/4 v1, 0x0

    .line 349
    .local v1, delayMillis:I
    iput-boolean v9, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mAnimInProgress:Z

    .line 351
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 352
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    .line 353
    .local v3, penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->isSet()Z

    move-result v4

    if-ne v4, v9, :cond_0

    .line 355
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-direct {p0, v4}, Lcom/htc/painting/penmenu/history/PenHistory;->getShowPenAnimation(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 356
    .local v0, anim:Landroid/view/animation/Animation;
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 357
    invoke-virtual {v3, v0}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 358
    iget v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->INTERVAL:I

    add-int/2addr v1, v4

    .line 351
    .end local v0           #anim:Landroid/view/animation/Animation;
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 362
    :cond_0
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {v4, v8}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setVisibility(I)V

    goto :goto_1

    .line 366
    .end local v3           #penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    :cond_1
    invoke-direct {p0}, Lcom/htc/painting/penmenu/history/PenHistory;->getShowBackgroundAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 367
    .restart local v0       #anim:Landroid/view/animation/Animation;
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 368
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    invoke-virtual {v4, v0}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 376
    .end local v0           #anim:Landroid/view/animation/Animation;
    .end local v1           #delayMillis:I
    :goto_2
    return-void

    .line 371
    .end local v2           #i:I
    :cond_2
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .restart local v2       #i:I
    :goto_3
    if-ltz v2, :cond_3

    .line 372
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mPenViewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {v4, v8}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setVisibility(I)V

    .line 371
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 374
    :cond_3
    iget-object v4, p0, Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    invoke-virtual {v4, v8}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->setVisibility(I)V

    goto :goto_2
.end method
