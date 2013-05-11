.class public Lcom/android/internal/policy/impl/MagnifierContainer;
.super Landroid/widget/FrameLayout;
.source "MagnifierContainer.java"


# instance fields
.field private backgroundView:Landroid/view/View;

.field private decorView:Landroid/view/ViewGroup;

.field private magnifyingView:Lcom/android/internal/policy/impl/MagnifyingGlassView;

.field private visible:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "decorView"

    .prologue
    const/4 v4, -0x1

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p1, p0, Lcom/android/internal/policy/impl/MagnifierContainer;->decorView:Landroid/view/ViewGroup;

    .line 48
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MagnifierContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MagnifierContainer;->backgroundView:Landroid/view/View;

    .line 49
    iget-object v2, p0, Lcom/android/internal/policy/impl/MagnifierContainer;->backgroundView:Landroid/view/View;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 50
    iget-object v2, p0, Lcom/android/internal/policy/impl/MagnifierContainer;->backgroundView:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/MagnifierContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    const/16 v0, 0xc8

    .line 54
    .local v0, sizeDp:I
    const/4 v2, 0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MagnifierContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v1, v2

    .line 56
    .local v1, sizePx:I
    new-instance v2, Lcom/android/internal/policy/impl/MagnifyingGlassView;

    invoke-direct {v2, p1, v1, v1}, Lcom/android/internal/policy/impl/MagnifyingGlassView;-><init>(Landroid/view/ViewGroup;II)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MagnifierContainer;->magnifyingView:Lcom/android/internal/policy/impl/MagnifyingGlassView;

    .line 57
    iget-object v2, p0, Lcom/android/internal/policy/impl/MagnifierContainer;->magnifyingView:Lcom/android/internal/policy/impl/MagnifyingGlassView;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MagnifierContainer;->addView(Landroid/view/View;)V

    .line 58
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MagnifierContainer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MagnifierContainer;->setVisibile(Z)V

    .line 124
    const/4 v0, 0x1

    .line 126
    :cond_0
    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MagnifierContainer;->visible:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 76
    iget-object v1, p0, Lcom/android/internal/policy/impl/MagnifierContainer;->decorView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, firstView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/MagnifierContainer;->setMeasuredDimension(II)V

    .line 81
    :cond_0
    return-void
.end method

.method public setBackgroundVisible(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    const/4 v4, 0x1

    const v1, 0x3ea8f5c3

    const/4 v2, 0x0

    .line 66
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    if-eqz p1, :cond_0

    move v3, v2

    :goto_0
    if-eqz p1, :cond_1

    :goto_1
    invoke-direct {v0, v3, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 67
    .local v0, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 68
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 69
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 70
    iget-object v1, p0, Lcom/android/internal/policy/impl/MagnifierContainer;->backgroundView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 71
    return-void

    .end local v0           #alphaAnimation:Landroid/view/animation/AlphaAnimation;
    :cond_0
    move v3, v1

    .line 66
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public setMagnifyingVisible(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    const/4 v4, 0x1

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    .line 88
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    if-eqz p1, :cond_0

    move v3, v2

    :goto_0
    if-eqz p1, :cond_1

    :goto_1
    invoke-direct {v0, v3, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 89
    .local v0, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 90
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 91
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 92
    iget-object v1, p0, Lcom/android/internal/policy/impl/MagnifierContainer;->magnifyingView:Lcom/android/internal/policy/impl/MagnifyingGlassView;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/MagnifyingGlassView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 93
    return-void

    .end local v0           #alphaAnimation:Landroid/view/animation/AlphaAnimation;
    :cond_0
    move v3, v1

    .line 88
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public setNeedsRedraw()V
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MagnifierContainer;->invalidate()V

    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierContainer;->magnifyingView:Lcom/android/internal/policy/impl/MagnifyingGlassView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MagnifyingGlassView;->invalidate()V

    .line 157
    return-void
.end method

.method public setPosition(Landroid/graphics/Point;)V
    .locals 1
    .parameter "position"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierContainer;->magnifyingView:Lcom/android/internal/policy/impl/MagnifyingGlassView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/MagnifyingGlassView;->setPosition(Landroid/graphics/Point;)V

    .line 152
    return-void
.end method

.method public setVisibile(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 101
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MagnifierContainer;->visible:Z

    if-nez v0, :cond_1

    .line 103
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MagnifierContainer;->setBackgroundVisible(Z)V

    .line 104
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MagnifierContainer;->setMagnifyingVisible(Z)V

    .line 105
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MagnifierContainer;->visible:Z

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MagnifierContainer;->visible:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MagnifierContainer;->setBackgroundVisible(Z)V

    .line 110
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MagnifierContainer;->setMagnifyingVisible(Z)V

    .line 111
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MagnifierContainer;->visible:Z

    goto :goto_0
.end method

.method public setZoom(F)V
    .locals 1
    .parameter "zoom"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierContainer;->magnifyingView:Lcom/android/internal/policy/impl/MagnifyingGlassView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/MagnifyingGlassView;->setZoom(F)V

    .line 143
    return-void
.end method
