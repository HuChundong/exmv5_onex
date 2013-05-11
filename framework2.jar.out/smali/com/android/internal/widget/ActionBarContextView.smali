.class public Lcom/android/internal/widget/ActionBarContextView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field private static final ANIMATE_IDLE:I = 0x0

.field private static final ANIMATE_IN:I = 0x1

.field private static final ANIMATE_OUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ActionBarContextView"


# instance fields
.field private childDivider:Landroid/graphics/drawable/Drawable;

.field private enableHTCActionBar:Z

.field private internalHeight:I

.field private internalPadding:I

.field private mAnimateInOnLayout:Z

.field private mAnimationMode:I

.field private mClose:Landroid/view/View;

.field private mCurrentAnimation:Landroid/animation/Animator;

.field private mCustomView:Landroid/view/View;

.field private mOnOverflowListener:Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 87
    const v0, 0x1010394

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/high16 v1, -0x8000

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mOnOverflowListener:Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;

    .line 708
    iput-boolean v2, p0, Lcom/android/internal/widget/ActionBarContextView;->enableHTCActionBar:Z

    .line 729
    iput v1, p0, Lcom/android/internal/widget/ActionBarContextView;->internalHeight:I

    .line 730
    iput v1, p0, Lcom/android/internal/widget/ActionBarContextView;->internalPadding:I

    .line 769
    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->childDivider:Landroid/graphics/drawable/Drawable;

    .line 93
    sget-object v1, Lcom/android/internal/R$styleable;->ActionMode:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 94
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 98
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    .line 101
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 104
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 107
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    return-void
.end method

.method private finishAnimation()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 438
    .local v0, a:Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 439
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 440
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 442
    :cond_0
    return-void
.end method

.method private initTitle()V
    .locals 13

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v12, -0x2

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->miuiInitTitle()Z

    move-result v3

    if-eqz v3, :cond_miui_0

    return-void

    :cond_miui_0
    .line 204
    iget-boolean v5, p0, Lcom/android/internal/widget/ActionBarContextView;->enableHTCActionBar:Z

    if-ne v5, v6, :cond_7

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v5, :cond_7

    .line 208
    iget v5, p0, Lcom/android/internal/widget/ActionBarContextView;->internalPadding:I

    if-gez v5, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x4090003

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/widget/ActionBarContextView;->internalPadding:I

    .line 212
    :cond_0
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 213
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 214
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    iget v9, p0, Lcom/android/internal/widget/ActionBarContextView;->internalPadding:I

    iget v10, p0, Lcom/android/internal/widget/ActionBarContextView;->internalPadding:I

    invoke-virtual {v5, v9, v7, v10, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 215
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v9, 0x10

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 216
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    const/high16 v0, -0x8000

    .line 221
    .local v0, fontStyle:I
    new-instance v5, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 222
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 223
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 224
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 227
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v9, "title_primary_m"

    const-string v10, "style"

    const-string v11, "com.htc"

    invoke-virtual {v5, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 229
    if-eqz v0, :cond_5

    .line 231
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 232
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 237
    :goto_0
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    new-instance v5, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 241
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 244
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v9, "title_secondary_m"

    const-string v10, "style"

    const-string v11, "com.htc"

    invoke-virtual {v5, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 246
    if-eqz v0, :cond_6

    .line 248
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 249
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 255
    :goto_1
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 256
    .local v4, lparams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, -0x4

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 258
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 262
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 263
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 281
    .end local v0           #fontStyle:I
    .end local v4           #lparams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    move v2, v6

    .line 285
    .local v2, hasTitle:Z
    :goto_3
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    move v1, v6

    .line 286
    .local v1, hasSubtitle:Z
    :goto_4
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    move v5, v7

    :goto_5
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v8, v7

    :cond_3
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 288
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_4

    .line 289
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 291
    :cond_4
    return-void

    .line 235
    .end local v1           #hasSubtitle:Z
    .end local v2           #hasTitle:Z
    .restart local v0       #fontStyle:I
    :cond_5
    const-string v5, "HTCActionBar"

    const-string v9, "title_primary_m no found"

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 252
    :cond_6
    const-string v5, "HTCActionBar"

    const-string v9, "title_secondary_m not found"

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 265
    .end local v0           #fontStyle:I
    :cond_7
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v5, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 268
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v5, 0x1090019

    invoke-virtual {v3, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 270
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v9, 0x1020242

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 271
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v9, 0x1020243

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 272
    iget v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v5, :cond_8

    .line 273
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v5, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 275
    :cond_8
    iget v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v5, :cond_1

    .line 276
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v5, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_2

    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_9
    move v2, v7

    .line 284
    goto/16 :goto_3

    .restart local v2       #hasTitle:Z
    :cond_a
    move v1, v7

    .line 285
    goto/16 :goto_4

    .restart local v1       #hasSubtitle:Z
    :cond_b
    move v5, v8

    .line 286
    goto/16 :goto_5
.end method

.method private makeInAnimation()Landroid/animation/Animator;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 572
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    neg-int v10, v8

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v8, v10, v8

    int-to-float v8, v8

    invoke-virtual {v9, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 574
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const-string v9, "translationX"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 575
    .local v2, buttonAnimator:Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 576
    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 577
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 579
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 580
    .local v7, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 582
    .local v1, b:Landroid/animation/AnimatorSet$Builder;
    iget-object v8, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v8, :cond_0

    .line 583
    iget-object v8, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v8}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v4

    .line 584
    .local v4, count:I
    if-lez v4, :cond_0

    .line 585
    add-int/lit8 v5, v4, -0x1

    .local v5, i:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_0
    if-ltz v5, :cond_0

    .line 586
    iget-object v8, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v8, v5}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 587
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3, v12}, Landroid/view/View;->setScaleY(F)V

    .line 588
    const-string v8, "scaleY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-static {v3, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 589
    .local v0, a:Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 590
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 585
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 595
    .end local v0           #a:Landroid/animation/ObjectAnimator;
    .end local v3           #child:Landroid/view/View;
    .end local v4           #count:I
    .end local v5           #i:I
    .end local v6           #j:I
    :cond_0
    return-object v7

    .line 588
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private makeOutAnimation()Landroid/animation/Animator;
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 599
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const-string v9, "translationX"

    new-array v10, v14, [F

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    neg-int v11, v7

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v7, v11, v7

    int-to-float v7, v7

    aput v7, v10, v13

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 601
    .local v2, buttonAnimator:Landroid/animation/ObjectAnimator;
    const-wide/16 v7, 0xc8

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 602
    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 603
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 605
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 606
    .local v6, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 608
    .local v1, b:Landroid/animation/AnimatorSet$Builder;
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v7, :cond_0

    .line 609
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v4

    .line 610
    .local v4, count:I
    if-lez v4, :cond_0

    .line 611
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-gez v5, :cond_0

    .line 612
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v7, v5}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 613
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3, v12}, Landroid/view/View;->setScaleY(F)V

    .line 614
    const-string v7, "scaleY"

    new-array v8, v14, [F

    aput v12, v8, v13

    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 615
    .local v0, a:Landroid/animation/ObjectAnimator;
    const-wide/16 v7, 0x12c

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 616
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 611
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 621
    .end local v0           #a:Landroid/animation/ObjectAnimator;
    .end local v3           #child:Landroid/view/View;
    .end local v4           #count:I
    .end local v5           #i:I
    :cond_0
    return-object v6
.end method


# virtual methods
.method public closeMode()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 421
    iget v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    if-ne v0, v1, :cond_0

    .line 434
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_1

    .line 426
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    goto :goto_0

    .line 430
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 431
    iput v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 432
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->makeOutAnimation()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 433
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 735
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 737
    iget v3, p0, Lcom/android/internal/widget/ActionBarContextView;->internalPadding:I

    if-gez v3, :cond_0

    .line 738
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x4090003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ActionBarContextView;->internalPadding:I

    .line 741
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->childDivider:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 745
    const/4 v1, 0x0

    .line 746
    .local v1, resourceID:I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "common_b_div"

    const-string v5, "drawable"

    const-string v6, "com.htc"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 748
    if-eqz v1, :cond_3

    .line 749
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->childDivider:Landroid/graphics/drawable/Drawable;

    .line 757
    .end local v1           #resourceID:I
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    .line 759
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 760
    .local v2, rightBound:I
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->childDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int v0, v2, v3

    .line 763
    .local v0, leftBound:I
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->childDivider:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/android/internal/widget/ActionBarContextView;->internalPadding:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/internal/widget/ActionBarContextView;->internalPadding:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v0, v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 764
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->childDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 766
    .end local v0           #leftBound:I
    .end local v2           #rightBound:I
    :cond_2
    return-void

    .line 752
    .restart local v1       #resourceID:I
    :cond_3
    const-string v3, "HTCActionBar"

    const-string v4, "common_b_div not found"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x4020002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->childDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public enableHTCActionBar()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 712
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarContextView;->enableHTCActionBar:Z

    .line 715
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_app_bkg_top_src"

    const-string v3, "drawable"

    const-string v4, "com.htc"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 717
    .local v0, resource:I
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    const-string v2, "common_app_bkg_top_src"

    invoke-static {v1, v2, v0}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 719
    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContextView;->setBackgroundResource(I)V

    .line 722
    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/android/internal/widget/ActionBarContextView;->setPadding(IIII)V

    .line 726
    :goto_0
    return-void

    .line 725
    :cond_0
    const-string v1, "HTCActionBar"

    const-string v2, "common_app_bkg_to_src not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 483
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 488
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getAnimationMode()I
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleLayout()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getTitleStyleRes()I
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    return v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 468
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .locals 12
    .parameter "mode"

    .prologue
    const/4 v8, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 296
    iget-boolean v6, p0, Lcom/android/internal/widget/ActionBarContextView;->enableHTCActionBar:Z

    if-ne v6, v10, :cond_9

    .line 298
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v6, :cond_8

    .line 300
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x4030001

    invoke-virtual {v6, v7, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 303
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "icon_btn_done_dark"

    const-string v8, "drawable"

    const-string v9, "com.htc"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 306
    .local v5, resource:I
    if-eqz v5, :cond_7

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v6, :cond_7

    .line 308
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "action_mode_done"

    const-string v8, "string"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 309
    .local v4, resId:I
    if-eqz v4, :cond_0

    .line 310
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    check-cast v6, Lcom/android/internal/view/menu/OverflowMenuView;

    invoke-virtual {v6, v4}, Lcom/android/internal/view/menu/OverflowMenuView;->setText(I)V

    .line 312
    :cond_0
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    check-cast v6, Lcom/android/internal/view/menu/OverflowMenuView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/OverflowMenuView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 318
    .end local v4           #resId:I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setMinimumWidth(I)V

    .line 321
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 328
    .end local v5           #resource:I
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v6, :cond_2

    .line 329
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    new-instance v7, Lcom/android/internal/widget/ActionBarContextView$1;

    invoke-direct {v7, p0, p1}, Lcom/android/internal/widget/ActionBarContextView$1;-><init>(Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    :cond_2
    :goto_2
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuBuilder;

    .line 356
    .local v3, menu:Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v6, :cond_3

    .line 357
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 359
    :cond_3
    new-instance v6, Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 360
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6, v10}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 364
    iget-boolean v6, p0, Lcom/android/internal/widget/ActionBarContextView;->enableHTCActionBar:Z

    if-ne v6, v10, :cond_4

    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v6, :cond_4

    .line 366
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6, v10}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 367
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableActionLimit(Landroid/content/Context;)V

    .line 368
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/high16 v7, 0x403

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setCustomItemRes(I)V

    .line 369
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6, v10}, Lcom/android/internal/view/menu/ActionMenuPresenter;->enableHtcPopup(Z)V

    .line 375
    :cond_4
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mOnOverflowListener:Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;

    if-eqz v6, :cond_5

    .line 376
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mOnOverflowListener:Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ActionBarContextView;->setOverFlowMenuListener(Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;)V

    .line 379
    :cond_5
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v2, v6, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 381
    .local v2, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-nez v6, :cond_c

    .line 382
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v3, v6}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 383
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v6

    check-cast v6, Lcom/android/internal/view/menu/ActionMenuView;

    iput-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    .line 384
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 387
    iget-boolean v6, p0, Lcom/android/internal/widget/ActionBarContextView;->enableHTCActionBar:Z

    if-ne v6, v10, :cond_6

    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v6, :cond_6

    .line 388
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuView;->disableLayoutDivider()V

    .line 390
    :cond_6
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v6, v2}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    :goto_3
    iput-boolean v10, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 418
    return-void

    .line 315
    .end local v2           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #menu:Lcom/android/internal/view/menu/MenuBuilder;
    .restart local v5       #resource:I
    :cond_7
    const-string v6, "HTCActionBar"

    const-string v7, "icon_btn_done_dark not found"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 324
    .end local v5           #resource:I
    :cond_8
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_1

    .line 325
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 339
    :cond_9
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v6, :cond_b

    .line 340
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 341
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v6, 0x109001d

    invoke-virtual {v1, v6, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 342
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 347
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_a
    :goto_4
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const v7, 0x1020244

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 348
    .local v0, closeButton:Landroid/view/View;
    new-instance v6, Lcom/android/internal/widget/ActionBarContextView$2;

    invoke-direct {v6, p0, p1}, Lcom/android/internal/widget/ActionBarContextView$2;-><init>(Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 343
    .end local v0           #closeButton:Landroid/view/View;
    :cond_b
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_a

    .line 344
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 393
    .restart local v2       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .restart local v3       #menu:Lcom/android/internal/view/menu/MenuBuilder;
    :cond_c
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v6, v7, v10}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 396
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v7, 0x7fffffff

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 398
    iput v11, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 399
    iget v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 402
    iget-boolean v6, p0, Lcom/android/internal/widget/ActionBarContextView;->enableHTCActionBar:Z

    if-ne v6, v10, :cond_e

    .line 404
    iget v6, p0, Lcom/android/internal/widget/ActionBarContextView;->internalHeight:I

    if-gez v6, :cond_d

    .line 405
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x40a0003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ActionBarContextView;->internalHeight:I

    .line 407
    :cond_d
    iget v6, p0, Lcom/android/internal/widget/ActionBarContextView;->internalHeight:I

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 411
    :cond_e
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v3, v6}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 412
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v6

    check-cast v6, Lcom/android/internal/view/menu/ActionMenuView;

    iput-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    .line 413
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 414
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v6, v7, v2}, Lcom/android/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 476
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 705
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    return v0
.end method

.method public killMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 445
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 446
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 447
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 450
    :cond_0
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 451
    iput-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 453
    return-void
.end method

.method protected miuiInitTitle()Z
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 673
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 665
    iget v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 666
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 668
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 669
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 677
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 661
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 113
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 115
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    .line 117
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 686
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 688
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 689
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 690
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 691
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 695
    :goto_0
    return-void

    .line 693
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/16 v6, 0x8

    .line 626
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v2

    .line 627
    .local v2, x:I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v3

    .line 628
    .local v3, y:I
    sub-int v4, p5, p3

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 630
    .local v0, contentHeight:I
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_0

    .line 631
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 632
    .local v1, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    .line 633
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v4, v2, v3, v0}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;III)I

    move-result v4

    add-int/2addr v2, v4

    .line 634
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 636
    iget-boolean v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    if-eqz v4, :cond_0

    .line 637
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 638
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->makeInAnimation()Landroid/animation/Animator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 639
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    .line 640
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 644
    .end local v1           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_1

    .line 645
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4, v2, v3, v0}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;III)I

    move-result v4

    add-int/2addr v2, v4

    .line 648
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 649
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v4, v2, v3, v0}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;III)I

    move-result v4

    add-int/2addr v2, v4

    .line 652
    :cond_2
    sub-int v4, p4, p2

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 654
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v4, :cond_3

    .line 655
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v4, v2, v3, v0}, Lcom/android/internal/widget/ActionBarContextView;->positionChildInverse(Landroid/view/View;III)I

    move-result v4

    sub-int/2addr v2, v4

    .line 657
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 27
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 493
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 494
    .local v23, widthMode:I
    const/high16 v24, 0x4000

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 495
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " can only be used "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 499
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 500
    .local v12, heightMode:I
    if-nez v12, :cond_1

    .line 501
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " can only be used "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 505
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 507
    .local v5, contentWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v24, v0

    if-lez v24, :cond_8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 510
    .local v15, maxHeight:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v25

    add-int v22, v24, v25

    .line 511
    .local v22, verticalPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v24

    sub-int v24, v5, v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v25

    sub-int v3, v24, v25

    .line 512
    .local v3, availableWidth:I
    sub-int v11, v15, v22

    .line 513
    .local v11, height:I
    const/high16 v24, -0x8000

    move/from16 v0, v24

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 515
    .local v4, childSpecHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 518
    .local v14, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v24, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v25, v0

    add-int v24, v24, v25

    sub-int v3, v3, v24

    .line 521
    .end local v14           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_3

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 526
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    if-nez v24, :cond_5

    .line 527
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 528
    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 529
    .local v20, titleWidthSpec:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->measure(II)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v19

    .line 531
    .local v19, titleWidth:I
    move/from16 v0, v19

    if-gt v0, v3, :cond_9

    const/16 v18, 0x1

    .line 532
    .local v18, titleFits:Z
    :goto_1
    if-eqz v18, :cond_4

    .line 533
    sub-int v3, v3, v19

    .line 535
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    if-eqz v18, :cond_a

    const/16 v24, 0x0

    :goto_2
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 541
    .end local v18           #titleFits:Z
    .end local v19           #titleWidth:I
    .end local v20           #titleWidthSpec:I
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 543
    .local v14, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    const/high16 v10, 0x4000

    .line 545
    .local v10, customWidthMode:I
    :goto_4
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    if-ltz v24, :cond_d

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 547
    .local v9, customWidth:I
    :goto_5
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_e

    const/high16 v8, 0x4000

    .line 549
    .local v8, customHeightMode:I
    :goto_6
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    if-ltz v24, :cond_f

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 551
    .local v7, customHeight:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->measure(II)V

    .line 555
    .end local v7           #customHeight:I
    .end local v8           #customHeightMode:I
    .end local v9           #customWidth:I
    .end local v10           #customWidthMode:I
    .end local v14           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v24, v0

    if-gtz v24, :cond_11

    .line 556
    const/16 v16, 0x0

    .line 557
    .local v16, measuredHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v6

    .line 558
    .local v6, count:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_8
    if-ge v13, v6, :cond_10

    .line 559
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 560
    .local v21, v:Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v17, v24, v22

    .line 561
    .local v17, paddedViewHeight:I
    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_7

    .line 562
    move/from16 v16, v17

    .line 558
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 507
    .end local v3           #availableWidth:I
    .end local v4           #childSpecHeight:I
    .end local v6           #count:I
    .end local v11           #height:I
    .end local v13           #i:I
    .end local v15           #maxHeight:I
    .end local v16           #measuredHeight:I
    .end local v17           #paddedViewHeight:I
    .end local v21           #v:Landroid/view/View;
    .end local v22           #verticalPadding:I
    :cond_8
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    goto/16 :goto_0

    .line 531
    .restart local v3       #availableWidth:I
    .restart local v4       #childSpecHeight:I
    .restart local v11       #height:I
    .restart local v15       #maxHeight:I
    .restart local v19       #titleWidth:I
    .restart local v20       #titleWidthSpec:I
    .restart local v22       #verticalPadding:I
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 535
    .restart local v18       #titleFits:Z
    :cond_a
    const/16 v24, 0x8

    goto/16 :goto_2

    .line 537
    .end local v18           #titleFits:Z
    .end local v19           #titleWidth:I
    .end local v20           #titleWidthSpec:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    goto/16 :goto_3

    .line 543
    .restart local v14       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    const/high16 v10, -0x8000

    goto/16 :goto_4

    .restart local v10       #customWidthMode:I
    :cond_d
    move v9, v3

    .line 545
    goto :goto_5

    .line 547
    .restart local v9       #customWidth:I
    :cond_e
    const/high16 v8, -0x8000

    goto :goto_6

    .restart local v8       #customHeightMode:I
    :cond_f
    move v7, v11

    .line 549
    goto :goto_7

    .line 565
    .end local v8           #customHeightMode:I
    .end local v9           #customWidth:I
    .end local v10           #customWidthMode:I
    .end local v14           #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v6       #count:I
    .restart local v13       #i:I
    .restart local v16       #measuredHeight:I
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 569
    .end local v6           #count:I
    .end local v13           #i:I
    .end local v16           #measuredHeight:I
    :goto_9
    return-void

    .line 567
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15}, Lcom/android/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_9
.end method

.method protected setAnimationMode(I)V
    .locals 0
    .parameter "mode"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iput p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    return-void
.end method

.method public setContentHeight(I)V
    .locals 2
    .parameter "height"

    .prologue
    .line 153
    iput p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 157
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->enableHTCActionBar:Z

    if-eqz v0, :cond_1

    .line 159
    iget v0, p0, Lcom/android/internal/widget/ActionBarContextView;->internalHeight:I

    if-gez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x40a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarContextView;->internalHeight:I

    .line 162
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ActionBarContextView;->internalHeight:I

    iput v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 165
    :cond_1
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 171
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 176
    :cond_1
    if-eqz p1, :cond_2

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 179
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->requestLayout()V

    .line 180
    return-void
.end method

.method public setOverFlowMenuListener(Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setOverFlowMenuListener(Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;)V

    .line 822
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mOnOverflowListener:Lcom/android/internal/view/menu/ActionMenuPresenter$OverFlowMenuListener;

    .line 823
    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 6
    .parameter "split"

    .prologue
    const/4 v5, -0x1

    .line 121
    iget-boolean v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-eq v2, p1, :cond_2

    .line 122
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v2, :cond_1

    .line 124
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 126
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    if-nez p1, :cond_3

    .line 127
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView;

    iput-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    .line 128
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 130
    .local v1, oldParent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    .end local v0           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v1           #oldParent:Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 150
    :cond_2
    return-void

    .line 134
    .restart local v0       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 137
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 139
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 140
    iget v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 141
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView;

    iput-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    .line 142
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 144
    .restart local v1       #oldParent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 145
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "subtitle"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    .line 189
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->initTitle()V

    .line 190
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 184
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->initTitle()V

    .line 185
    return-void
.end method

.method public setTitleLayout(Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter "titleLayout"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1
    .parameter "titleOptional"

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->requestLayout()V

    .line 701
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    .line 702
    return-void
.end method

.method public setTitleView(Landroid/widget/TextView;)V
    .locals 0
    .parameter "titleView"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 681
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 460
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateFontResource()V
    .locals 5

    .prologue
    .line 774
    const/high16 v0, -0x8000

    .line 777
    .local v0, fontStyle:I
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 779
    const/high16 v0, -0x8000

    .line 780
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "title_primary_m"

    const-string v3, "style"

    const-string v4, "com.htc"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 782
    if-eqz v0, :cond_3

    .line 783
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 789
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 791
    const/high16 v0, -0x8000

    .line 792
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "title_secondary_m"

    const-string v3, "style"

    const-string v4, "com.htc"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 794
    if-eqz v0, :cond_4

    .line 795
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 800
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarContextView;->enableHTCActionBar:Z

    if-eqz v1, :cond_2

    .line 801
    const-string v1, "HTCActionBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFontResource():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_2
    return-void

    .line 785
    :cond_3
    const-string v1, "HTCActionBar"

    const-string v2, "title_primary_m not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 797
    :cond_4
    const-string v1, "HTCActionBar"

    const-string v2, "title_secondary_m not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
