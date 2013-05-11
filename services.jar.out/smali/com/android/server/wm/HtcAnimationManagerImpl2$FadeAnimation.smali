.class Lcom/android/server/wm/HtcAnimationManagerImpl2$FadeAnimation;
.super Landroid/view/animation/Animation;
.source "HtcAnimationManagerImpl2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/HtcAnimationManagerImpl2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadeAnimation"
.end annotation


# instance fields
.field mFadeIn:Z

.field mWidth:I


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .parameter "fadeIn"

    .prologue
    .line 240
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 241
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/HtcAnimationManagerImpl2$FadeAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 242
    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/HtcAnimationManagerImpl2$FadeAnimation;->setDuration(J)V

    .line 243
    iput-boolean p1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2$FadeAnimation;->mFadeIn:Z

    .line 244
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 264
    move v0, p1

    .line 265
    .local v0, x:F
    iget-boolean v1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2$FadeAnimation;->mFadeIn:Z

    if-nez v1, :cond_0

    .line 266
    const/high16 v1, 0x3f80

    sub-float v0, v1, v0

    .line 268
    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 269
    return-void
.end method

.method public getZAdjustment()I
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method public initialize(IIII)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 274
    iput p1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2$FadeAnimation;->mWidth:I

    .line 275
    return-void
.end method
