.class public Lcom/htc/sunnyCore/widget/gridview/animation/IntroAnimDropIn;
.super Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;
.source "IntroAnimDropIn.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DURATION_FOLDER_INTRO:I = 0xc8

.field public static final DURATION_FOLDER_INTRO_ITEM_DELAY:I = 0x32

.field public static final DURATION_FOLDER_INTRO_ITEM_SCALE_BEGIN:Lcom/htc/sunnyCore/view/Vector3F;

.field public static final DURATION_FOLDER_INTRO_ITEM_SCALE_END:Lcom/htc/sunnyCore/view/Vector3F;


# instance fields
.field private mView:Lcom/htc/sunnyCore/widget/gridview/GridView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    const v1, 0x3f19999a

    .line 30
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0, v1, v1, v1}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    sput-object v0, Lcom/htc/sunnyCore/widget/gridview/animation/IntroAnimDropIn;->DURATION_FOLDER_INTRO_ITEM_SCALE_BEGIN:Lcom/htc/sunnyCore/view/Vector3F;

    .line 34
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0, v2, v2, v2}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    sput-object v0, Lcom/htc/sunnyCore/widget/gridview/animation/IntroAnimDropIn;->DURATION_FOLDER_INTRO_ITEM_SCALE_END:Lcom/htc/sunnyCore/view/Vector3F;

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/animation/IntroAnimDropIn;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    .line 44
    return-void
.end method

.method private createSAnimationController(Lcom/htc/sunnyCore/view/SView;I)Lcom/htc/sunnyCore/view/animation/SAnimationController;
    .locals 6
    .parameter "view"
    .parameter "delayTime"

    .prologue
    const/4 v5, 0x0

    .line 74
    new-instance v1, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    .line 76
    .local v1, controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    invoke-virtual {p1}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v2

    .line 78
    .local v2, pos:Lcom/htc/sunnyCore/view/Vector3F;
    sget-object v3, Lcom/htc/sunnyCore/widget/gridview/animation/IntroAnimDropIn;->DURATION_FOLDER_INTRO_ITEM_SCALE_BEGIN:Lcom/htc/sunnyCore/view/Vector3F;

    sget-object v4, Lcom/htc/sunnyCore/widget/gridview/animation/IntroAnimDropIn;->DURATION_FOLDER_INTRO_ITEM_SCALE_END:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v1, v3, v4}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 81
    invoke-virtual {p1}, Lcom/htc/sunnyCore/view/SView;->getAlpha()F

    move-result v0

    .line 82
    .local v0, alpha:F
    const/high16 v3, 0x437f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v1, v5, v3}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 84
    int-to-long v3, p2

    invoke-virtual {v1, v3, v4}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setStartOffset(J)V

    .line 86
    invoke-virtual {v1, v5}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 87
    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    .line 88
    sget-object v3, Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v1, v3}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 89
    invoke-virtual {v1, p0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 91
    return-object v1
.end method


# virtual methods
.method protected onStart()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 50
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/animation/IntroAnimDropIn;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    if-nez v5, :cond_0

    .line 51
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Can\'t prepare the ExpandOutAnimation for null GridView"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 54
    :cond_0
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;->onStart()V

    .line 56
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/animation/IntroAnimDropIn;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v4

    .line 57
    .local v4, start:I
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/animation/IntroAnimDropIn;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getLastVisiblePosition()I

    move-result v3

    .line 58
    .local v3, last:I
    if-eq v4, v6, :cond_1

    if-ne v3, v6, :cond_4

    .line 59
    :cond_1
    iget-object v5, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    if-eqz v5, :cond_2

    .line 60
    iget-object v5, p0, Lcom/htc/sunnyCore/view/animation/SAnimationController;->mListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v5}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/animation/IntroAnimDropIn;->reset()V

    .line 71
    :cond_3
    return-void

    .line 65
    :cond_4
    move v2, v4

    .local v2, i:I
    const/4 v1, 0x0

    .local v1, delayTime:I
    :goto_0
    add-int/lit8 v5, v3, 0x1

    if-ge v2, v5, :cond_3

    .line 67
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/animation/IntroAnimDropIn;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    sub-int v6, v2, v4

    invoke-virtual {v5, v6}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getChild(I)Lcom/htc/sunnyCore/view/SView;

    move-result-object v0

    .line 68
    .local v0, child:Lcom/htc/sunnyCore/view/SView;
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-direct {p0, v0, v1}, Lcom/htc/sunnyCore/widget/gridview/animation/IntroAnimDropIn;->createSAnimationController(Lcom/htc/sunnyCore/view/SView;I)Lcom/htc/sunnyCore/view/animation/SAnimationController;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/sunnyCore/view/SView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 65
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x32

    goto :goto_0
.end method
