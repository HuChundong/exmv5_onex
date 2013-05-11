.class public Lcom/android/internal/view/menu/OverflowMenuView;
.super Landroid/widget/TextView;
.source "OverflowMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;


# instance fields
.field private final DISABLE_ALPHA:F

.field private final ENABLE_ALPHA:F

.field private final animDuration:I

.field private forceMultiply:Z

.field private internalForceMultiply:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconSize:I

.field private multiplyPaint:Landroid/graphics/Paint;

.field private scaleDownAnimator:Landroid/animation/ObjectAnimator;

.field private scaleUpAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrset"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput-object v2, p0, Lcom/android/internal/view/menu/OverflowMenuView;->multiplyPaint:Landroid/graphics/Paint;

    .line 58
    iput v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mIconSize:I

    .line 67
    iput v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->animDuration:I

    .line 69
    iput-object v2, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 70
    iput-object v2, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    .line 222
    iput-boolean v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->forceMultiply:Z

    .line 234
    iput-boolean v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->internalForceMultiply:Z

    .line 259
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->ENABLE_ALPHA:F

    .line 260
    const v1, 0x3e4ccccd

    iput v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->DISABLE_ALPHA:F

    .line 34
    invoke-direct {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->setupAnimationEnv()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x40a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mIconSize:I

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "label_off_m"

    const-string v3, "style"

    const-string v4, "com.htc"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 37
    .local v0, fontStyle:I
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/view/menu/OverflowMenuView;->setTextAppearance(Landroid/content/Context;I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/OverflowMenuView;->setTextColor(I)V

    .line 42
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/OverflowMenuView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/OverflowMenuView;->setInternalMultiplyForceEnabled(Z)V

    return-void
.end method

.method private setInternalMultiplyForceEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->internalForceMultiply:Z

    if-eq v0, p1, :cond_0

    .line 241
    iput-boolean p1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->internalForceMultiply:Z

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->invalidate()V

    .line 244
    :cond_0
    return-void
.end method

.method private setupAnimationEnv()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x2

    .line 75
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string v1, "viewScale"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 80
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 81
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 83
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/internal/view/menu/OverflowMenuView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/view/menu/OverflowMenuView$1;-><init>(Lcom/android/internal/view/menu/OverflowMenuView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 106
    const-string v1, "viewScale"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    .line 107
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 108
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 110
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/internal/view/menu/OverflowMenuView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/view/menu/OverflowMenuView$2;-><init>(Lcom/android/internal/view/menu/OverflowMenuView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 123
    new-instance v1, Lcom/android/internal/view/menu/OverflowMenuView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/view/menu/OverflowMenuView$3;-><init>(Lcom/android/internal/view/menu/OverflowMenuView;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/OverflowMenuView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 133
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->multiplyPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 136
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "4.5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mContext:Landroid/content/Context;

    const-string v2, "overlay_color"

    const v3, 0x40c0006

    invoke-static {v1, v2, v3}, Landroid/widget/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 139
    .local v0, colorID:I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->multiplyPaint:Landroid/graphics/Paint;

    .line 140
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->multiplyPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto/16 :goto_0

    .line 145
    .end local v0           #colorID:I
    :cond_2
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mContext:Landroid/content/Context;

    const-string v2, "multiply_color"

    const v3, 0x40c0002

    invoke-static {v1, v2, v3}, Landroid/widget/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 146
    .restart local v0       #colorID:I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->multiplyPaint:Landroid/graphics/Paint;

    .line 147
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    iget-object v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->multiplyPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto/16 :goto_0

    .line 79
    :array_0
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 106
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->internalForceMultiply:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->forceMultiply:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 199
    const/4 v7, 0x0

    .line 202
    .local v7, canvasCount:I
    iget v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mScrollX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mScrollY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mScrollY:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    .line 203
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 205
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "4.5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 214
    :goto_0
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 218
    .end local v7           #canvasCount:I
    :goto_1
    return-void

    .line 211
    .restart local v7       #canvasCount:I
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 217
    .end local v7           #canvasCount:I
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 182
    :goto_0
    return v0

    .line 161
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 182
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 164
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 165
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 169
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 170
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 174
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 175
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 177
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/OverflowMenuView;->setViewScale(F)V

    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/OverflowMenuView;->setInternalMultiplyForceEnabled(Z)V

    goto :goto_1

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 274
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 272
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f80

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/OverflowMenuView;->setAlpha(F)V

    goto :goto_0

    :cond_1
    const v0, 0x3e4ccccd

    goto :goto_1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "icon"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 250
    iput-object p1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 251
    iget v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mIconSize:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mIcon:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mIconSize:I

    iget v2, p0, Lcom/android/internal/view/menu/OverflowMenuView;->mIconSize:I

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 254
    :cond_0
    invoke-virtual {p0, v3, p1, v3, v3}, Lcom/android/internal/view/menu/OverflowMenuView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 256
    return-void
.end method

.method setMultiplyForceEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/android/internal/view/menu/OverflowMenuView;->forceMultiply:Z

    if-eq v0, p1, :cond_0

    .line 229
    iput-boolean p1, p0, Lcom/android/internal/view/menu/OverflowMenuView;->forceMultiply:Z

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/view/menu/OverflowMenuView;->invalidate()V

    .line 232
    :cond_0
    return-void
.end method

.method protected setViewScale(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/OverflowMenuView;->setScaleX(F)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/OverflowMenuView;->setScaleY(F)V

    .line 64
    return-void
.end method
