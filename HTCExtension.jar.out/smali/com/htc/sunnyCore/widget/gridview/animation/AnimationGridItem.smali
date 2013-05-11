.class public Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;
.super Ljava/lang/Object;
.source "AnimationGridItem.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CLICK_ANIM_DURATION_IN:I = 0x3c

.field private static final CLICK_ANIM_DURATION_OUT:I = 0x6e

.field private static final CLICK_ANIM_IN:Lcom/htc/sunnyCore/view/Vector3F; = null

.field private static final CLICK_ANIM_OUT:Lcom/htc/sunnyCore/view/Vector3F; = null

.field private static final PRESS_ANIM_DURATION_IN:I = 0x50

.field private static final PRESS_ANIM_DURATION_OUT:I = 0x64


# instance fields
.field private mDurationAnimIn:I

.field private mDurationAnimOut:I

.field private mDurationClickAnimIn:I

.field private mDurationClickAnimOut:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    const v1, 0x3f666666

    .line 30
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0, v2, v2, v2}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    sput-object v0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->CLICK_ANIM_IN:Lcom/htc/sunnyCore/view/Vector3F;

    .line 31
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0, v1, v1, v1}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    sput-object v0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->CLICK_ANIM_OUT:Lcom/htc/sunnyCore/view/Vector3F;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->mDurationAnimIn:I

    .line 34
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->mDurationAnimOut:I

    .line 35
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->mDurationClickAnimIn:I

    .line 36
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->mDurationClickAnimOut:I

    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->mDurationClickAnimOut:I

    return v0
.end method

.method static synthetic access$100()Lcom/htc/sunnyCore/view/Vector3F;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->CLICK_ANIM_OUT:Lcom/htc/sunnyCore/view/Vector3F;

    return-object v0
.end method

.method static synthetic access$200()Lcom/htc/sunnyCore/view/Vector3F;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->CLICK_ANIM_IN:Lcom/htc/sunnyCore/view/Vector3F;

    return-object v0
.end method


# virtual methods
.method public onClickAnimation(Lcom/htc/sunnyCore/view/SView;)V
    .locals 4
    .parameter "sview"

    .prologue
    .line 58
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->mDurationClickAnimIn:I

    if-nez v2, :cond_0

    .line 59
    const/16 v2, 0x3c

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->mDurationClickAnimIn:I

    .line 60
    :cond_0
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->mDurationClickAnimOut:I

    if-nez v2, :cond_1

    .line 61
    const/16 v2, 0x6e

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->mDurationClickAnimOut:I

    .line 63
    :cond_1
    move-object v1, p1

    .line 64
    .local v1, view:Lcom/htc/sunnyCore/view/SView;
    new-instance v0, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    .line 66
    .local v0, controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->mDurationClickAnimIn:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    .line 67
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 68
    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->CLICK_ANIM_IN:Lcom/htc/sunnyCore/view/Vector3F;

    sget-object v3, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->CLICK_ANIM_OUT:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0, v2, v3}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 69
    new-instance v2, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem$1;

    invoke-direct {v2, p0, v1}, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem$1;-><init>(Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;Lcom/htc/sunnyCore/view/SView;)V

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 88
    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/view/SView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 90
    return-void
.end method

.method public onPressAnimation(Lcom/htc/sunnyCore/view/SView;)V
    .locals 4
    .parameter "sview"

    .prologue
    .line 100
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->mDurationAnimIn:I

    if-nez v2, :cond_0

    .line 101
    const/16 v2, 0x50

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->mDurationAnimIn:I

    .line 103
    :cond_0
    move-object v1, p1

    .line 104
    .local v1, view:Lcom/htc/sunnyCore/view/SView;
    new-instance v0, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    .line 105
    .local v0, controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->mDurationAnimIn:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    .line 106
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 107
    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->CLICK_ANIM_IN:Lcom/htc/sunnyCore/view/Vector3F;

    sget-object v3, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->CLICK_ANIM_OUT:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0, v2, v3}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 109
    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/view/SView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 110
    return-void
.end method

.method public onReleaseAnimation(Lcom/htc/sunnyCore/view/SView;)V
    .locals 4
    .parameter "sview"

    .prologue
    .line 118
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->mDurationAnimOut:I

    if-nez v2, :cond_0

    .line 119
    const/16 v2, 0x64

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->mDurationAnimOut:I

    .line 122
    :cond_0
    move-object v1, p1

    .line 123
    .local v1, view:Lcom/htc/sunnyCore/view/SView;
    new-instance v0, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    .line 124
    .local v0, controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->mDurationAnimOut:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    .line 125
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 126
    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->CLICK_ANIM_OUT:Lcom/htc/sunnyCore/view/Vector3F;

    sget-object v3, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->CLICK_ANIM_IN:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0, v2, v3}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 128
    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/view/SView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 129
    return-void
.end method

.method public setAnimInDuration(I)V
    .locals 0
    .parameter "nTime"

    .prologue
    .line 43
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->mDurationAnimIn:I

    .line 44
    return-void
.end method

.method public setAnimOutDuration(I)V
    .locals 0
    .parameter "nTime"

    .prologue
    .line 50
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;->mDurationAnimOut:I

    .line 51
    return-void
.end method
