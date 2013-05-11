.class public Lcom/android/internal/view/menu/ActionMenuItemView;
.super Landroid/widget/TextView;
.source "ActionMenuItemView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuView$ItemView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuItemView"


# instance fields
.field private final DISABLE_ALPHA:F

.field private final ENABLE_ALPHA:F

.field private final animDuration:I

.field private enableItemText:Z

.field private forceMultiply:Z

.field private internalForceMultiply:Z

.field private mAllowTextWithIcon:Z

.field private mExpandedFormat:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

.field private mMinWidth:I

.field private mSavedPaddingLeft:I

.field mSavedPaddingRight:I
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mTitle:Ljava/lang/CharSequence;

.field private multiplyPaint:Landroid/graphics/Paint;

.field private scaleDownAnimator:Landroid/animation/ObjectAnimator;

.field private scaleUpAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->ENABLE_ALPHA:F

    .line 112
    const v2, 0x3e4ccccd

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->DISABLE_ALPHA:F

    .line 295
    iput-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->enableItemText:Z

    .line 318
    iput-object v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->multiplyPaint:Landroid/graphics/Paint;

    .line 328
    const/16 v2, 0x3c

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->animDuration:I

    .line 330
    iput-object v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 331
    iput-object v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    .line 474
    iput-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->forceMultiply:Z

    .line 487
    iput-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->internalForceMultiply:Z

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 75
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x1110036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 77
    sget-object v2, Lcom/android/internal/R$styleable;->ActionMenuItemView:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 86
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/ActionMenuItemView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setInternalMultiplyForceEnabled(Z)V

    return-void
.end method

.method private setInternalMultiplyForceEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->internalForceMultiply:Z

    if-eq v0, p1, :cond_0

    .line 494
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->internalForceMultiply:Z

    .line 495
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->invalidate()V

    .line 497
    :cond_0
    return-void
.end method

.method private setupAnimationEnv()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3c

    const/4 v3, 0x2

    .line 337
    const-string v1, "viewScale"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 338
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 339
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 341
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/internal/view/menu/ActionMenuItemView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/view/menu/ActionMenuItemView$1;-><init>(Lcom/android/internal/view/menu/ActionMenuItemView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 358
    const-string v1, "viewScale"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    .line 359
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 360
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 362
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/internal/view/menu/ActionMenuItemView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/view/menu/ActionMenuItemView$2;-><init>(Lcom/android/internal/view/menu/ActionMenuItemView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 376
    new-instance v1, Lcom/android/internal/view/menu/ActionMenuItemView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/view/menu/ActionMenuItemView$3;-><init>(Lcom/android/internal/view/menu/ActionMenuItemView;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 386
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->multiplyPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 388
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "4.5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mContext:Landroid/content/Context;

    const-string v2, "overlay_color"

    const v3, 0x40c0006

    invoke-static {v1, v2, v3}, Landroid/widget/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 391
    .local v0, colorID:I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->multiplyPaint:Landroid/graphics/Paint;

    .line 392
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 393
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->multiplyPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 404
    .end local v0           #colorID:I
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mContext:Landroid/content/Context;

    const-string v2, "multiply_color"

    const v3, 0x40c0002

    invoke-static {v1, v2, v3}, Landroid/widget/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 398
    .restart local v0       #colorID:I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->multiplyPaint:Landroid/graphics/Paint;

    .line 399
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 400
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->multiplyPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 337
    nop

    :array_0
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 358
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data
.end method

.method private updateTextButtonVisibility()V
    .locals 4
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 161
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 162
    .local v0, visible:Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isForceShowText()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    and-int/2addr v0, v2

    .line 167
    iget-boolean v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->enableItemText:Z

    or-int/2addr v0, v1

    .line 170
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-void

    .end local v0           #visible:Z
    :cond_2
    move v0, v2

    .line 161
    goto :goto_0

    .line 170
    .restart local v0       #visible:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 435
    :goto_0
    return v0

    .line 412
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->enableItemText:Z

    if-eqz v0, :cond_2

    .line 413
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 435
    :cond_2
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 416
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 417
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 421
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 422
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 426
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 427
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 429
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setViewScale(F)V

    .line 430
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setInternalMultiplyForceEnabled(Z)V

    goto :goto_1

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public enableItemText()V
    .locals 5

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setupAnimationEnv()V

    .line 301
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->enableItemText:Z

    .line 304
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "label_off_m"

    const-string v3, "style"

    const-string v4, "com.htc"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 306
    .local v0, fontStyle:I
    if-eqz v0, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setTextAppearance(Landroid/content/Context;I)V

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setTextColor(I)V

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    const-string v1, "HTCActionBar"

    const-string v2, "label_off_m not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .locals 1
    .parameter "itemData"
    .parameter "menuType"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 102
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 103
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setId(I)V

    .line 106
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setVisibility(I)V

    .line 107
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setEnabled(Z)V

    .line 108
    return-void

    .line 106
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method miuiOnMeasure(II)Z
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v5

    iget v6, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingRight:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v7

    invoke-super {p0, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    const/4 v4, 0x0

    invoke-super {p0, v4, p2}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v0

    .local v0, contentWidth:I
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v3

    .local v3, w:I
    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .local v1, dw:I
    sub-int v4, v3, v1

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v7

    invoke-super {p0, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .end local v0           #contentWidth:I
    .end local v1           #dw:I
    .end local v3           #w:I
    :cond_1
    :goto_0
    const/4 v4, 0x1

    return v4

    .restart local v0       #contentWidth:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v3

    .restart local v3       #w:I
    sub-int v4, v3, v0

    div-int/lit8 v2, v4, 0x2

    .local v2, extraWidth:I
    iget v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mPaddingLeft:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mPaddingTop:I

    iget v6, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mPaddingRight:I

    add-int/2addr v6, v2

    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mPaddingBottom:I

    invoke-super {p0, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    goto :goto_0
.end method

.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-interface {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 133
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->internalForceMultiply:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->forceMultiply:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 451
    const/4 v7, 0x0

    .line 454
    .local v7, canvasCount:I
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mScrollX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mScrollY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mScrollY:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    .line 455
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 457
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "4.5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 466
    :goto_0
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 470
    .end local v7           #canvasCount:I
    :goto_1
    return-void

    .line 463
    .restart local v7       #canvasCount:I
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 469
    .end local v7           #canvasCount:I
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 12
    .parameter "v"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 235
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 261
    :goto_0
    return v8

    .line 240
    :cond_0
    const/4 v10, 0x2

    new-array v5, v10, [I

    .line 241
    .local v5, screenPos:[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 242
    .local v2, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Lcom/android/internal/view/menu/ActionMenuItemView;->getLocationOnScreen([I)V

    .line 243
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 246
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getWidth()I

    move-result v7

    .line 247
    .local v7, width:I
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getHeight()I

    move-result v3

    .line 248
    .local v3, height:I
    aget v10, v5, v9

    div-int/lit8 v11, v3, 0x2

    add-int v4, v10, v11

    .line 249
    .local v4, midy:I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v6, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 251
    .local v6, screenWidth:I
    iget-object v10, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v10}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v1, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 252
    .local v0, cheatSheet:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-ge v4, v10, :cond_1

    .line 254
    const/16 v10, 0x35

    aget v8, v5, v8

    sub-int v8, v6, v8

    div-int/lit8 v11, v7, 0x2

    sub-int/2addr v8, v11

    invoke-virtual {v0, v10, v8, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 260
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v8, v9

    .line 261
    goto :goto_0

    .line 258
    :cond_1
    const/16 v10, 0x51

    invoke-virtual {v0, v10, v8, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/high16 v11, 0x4000

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenuItemView;->miuiOnMeasure(II)Z

    move-result v7

    if-eqz v7, :cond_ff

    return-void

    :cond_ff
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v3

    .local v3, textVisible:Z
    if-eqz v3, :cond_0

    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    if-ltz v7, :cond_0

    .line 268
    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 272
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 274
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 275
    .local v5, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 276
    .local v6, widthSize:I
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v1

    .line 277
    .local v1, oldMeasuredWidth:I
    const/high16 v7, -0x8000

    if-ne v5, v7, :cond_3

    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 280
    .local v2, targetWidth:I
    :goto_0
    if-eq v5, v11, :cond_1

    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    if-lez v7, :cond_1

    if-ge v1, v2, :cond_1

    .line 282
    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-super {p0, v7, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 286
    :cond_1
    if-nez v3, :cond_2

    iget-object v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    .line 289
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v4

    .line 290
    .local v4, w:I
    iget-object v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 291
    .local v0, dw:I
    sub-int v7, v4, v0

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 293
    .end local v0           #dw:I
    .end local v4           #w:I
    :cond_2
    return-void

    .line 277
    .end local v2           #targetWidth:I
    :cond_3
    iget v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    goto :goto_0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/widget/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 210
    .local v0, cdesc:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_0
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .parameter "checkable"

    .prologue
    .line 145
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 149
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->enableItemText:Z

    if-eqz v0, :cond_1

    .line 122
    if-eqz p1, :cond_2

    const/high16 v0, 0x3f80

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setAlpha(F)V

    .line 125
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 122
    :cond_2
    const v0, 0x3e4ccccd

    goto :goto_1
.end method

.method public setExpandedFormat(Z)V
    .locals 1
    .parameter "expandedFormat"

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eq v0, p1, :cond_0

    .line 153
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    .line 154
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->actionFormatChanged()V

    .line 158
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "icon"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 174
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 175
    iget-boolean v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->enableItemText:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x40a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 177
    .local v0, IconSize:I
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4, v4, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 178
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v1, v3, v3}, Lcom/android/internal/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 182
    .end local v0           #IconSize:I
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 183
    return-void

    .line 180
    :cond_0
    invoke-virtual {p0, p1, v3, v3, v3}, Lcom/android/internal/view/menu/ActionMenuItemView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .parameter "invoker"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 137
    return-void
.end method

.method setMultiplyForceEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->forceMultiply:Z

    if-eq v0, p1, :cond_0

    .line 481
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->forceMultiply:Z

    .line 482
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->invalidate()V

    .line 484
    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    iput p3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingRight:I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .parameter "showShortcut"
    .parameter "shortcutKey"

    .prologue
    .line 191
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    .line 196
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 197
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 198
    return-void
.end method

.method protected setViewScale(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setScaleX(F)V

    .line 324
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setScaleY(F)V

    .line 325
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    return v0
.end method
