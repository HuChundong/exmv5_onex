.class public Landroid/widget/HTCExtractEditText;
.super Landroid/inputmethodservice/ExtractEditText;
.source "HTCExtractEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/HTCExtractEditText$ScaleDimDrawable;
    }
.end annotation


# static fields
.field private static final DONW_DURATION:I = 0x12c

.field static final INDEX_DARK_BACKGROUND:I = 0x0

.field static final INDEX_LIGHTFULL_BACKGROUND:I = 0x6

.field static final INDEX_LIGHT_BACKGROUND:I = 0x3

.field private static final MAX_ALPHA:I = 0xff

.field private static final MIN_ALPHA:I = 0x0

.field public static final MODE_BRIGHT_BACKGROUND:I = 0x0

.field public static final MODE_BRIGHT_FULL_BACKGROUND:I = 0x2

.field public static final MODE_DARK_BACKGROUND:I = 0x1

.field static final NUMBER_BACKGROUND_DRAWABLE:I = 0x3

.field static final NUMBER_MODE:I = 0x3


# instance fields
.field private BRIGHT_PADDING_BOTTOM:I

.field private BRIGHT_PADDING_TOP:I

.field private DARK_PADDING_BOTTOM:I

.field private DARK_PADDING_TOP:I

.field private mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

.field private mAllBackgroundResourceIds:[I

.field private mBackground:Landroid/widget/HTCExtractEditText$ScaleDimDrawable;

.field private mDefaultPaddingBottom:I

.field private mDefaultPaddingLeft:I

.field private mDefaultPaddingRight:I

.field private mDefaultPaddingTop:I

.field private mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mDownAnimatorSet:Landroid/animation/AnimatorSet;

.field private mDownInterpolator:Landroid/view/animation/LinearInterpolator;

.field private mDrawableAlpha:I

.field private mDrawableDisableAlpha:I

.field private mInit:Z

.field mIsDefaultPaddingEnabled:Z

.field private mIsDown:Z

.field private mIsDownAnimating:Z

.field private mIsMove:Z

.field private mIsUserSetAlpha:Z

.field private mMode:I

.field private mMultiplyColor:I

.field private mTouchSlop:I

.field private mUserPadding:I

.field private mUserPaddingBottom:I

.field private mUserPaddingLeft:I

.field private mUserPaddingRight:I

.field private mUserPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 103
    invoke-direct {p0, p1}, Landroid/inputmethodservice/ExtractEditText;-><init>(Landroid/content/Context;)V

    .line 58
    iput v2, p0, Landroid/widget/HTCExtractEditText;->mMode:I

    .line 59
    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mInit:Z

    .line 60
    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsDown:Z

    .line 61
    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsMove:Z

    .line 70
    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsUserSetAlpha:Z

    .line 71
    const/16 v0, 0xff

    iput v0, p0, Landroid/widget/HTCExtractEditText;->mDrawableAlpha:I

    .line 72
    const/16 v0, 0x66

    iput v0, p0, Landroid/widget/HTCExtractEditText;->mDrawableDisableAlpha:I

    .line 73
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPadding:I

    .line 74
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingLeft:I

    .line 75
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingTop:I

    .line 76
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingRight:I

    .line 77
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingBottom:I

    .line 78
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingLeft:I

    .line 79
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingTop:I

    .line 80
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingRight:I

    .line 81
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingBottom:I

    .line 83
    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsDownAnimating:Z

    .line 85
    const/4 v0, 0x6

    iput v0, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_TOP:I

    .line 86
    const/16 v0, 0x8

    iput v0, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_BOTTOM:I

    .line 87
    const/16 v0, 0xa

    iput v0, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_TOP:I

    .line 88
    const/16 v0, 0xc

    iput v0, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_BOTTOM:I

    .line 90
    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsDefaultPaddingEnabled:Z

    .line 104
    const/4 v0, 0x0

    const v1, 0x201003c

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/HTCExtractEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attr"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/ExtractEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iput v2, p0, Landroid/widget/HTCExtractEditText;->mMode:I

    .line 59
    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mInit:Z

    .line 60
    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsDown:Z

    .line 61
    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsMove:Z

    .line 70
    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsUserSetAlpha:Z

    .line 71
    const/16 v0, 0xff

    iput v0, p0, Landroid/widget/HTCExtractEditText;->mDrawableAlpha:I

    .line 72
    const/16 v0, 0x66

    iput v0, p0, Landroid/widget/HTCExtractEditText;->mDrawableDisableAlpha:I

    .line 73
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPadding:I

    .line 74
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingLeft:I

    .line 75
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingTop:I

    .line 76
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingRight:I

    .line 77
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingBottom:I

    .line 78
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingLeft:I

    .line 79
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingTop:I

    .line 80
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingRight:I

    .line 81
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingBottom:I

    .line 83
    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsDownAnimating:Z

    .line 85
    const/4 v0, 0x6

    iput v0, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_TOP:I

    .line 86
    const/16 v0, 0x8

    iput v0, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_BOTTOM:I

    .line 87
    const/16 v0, 0xa

    iput v0, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_TOP:I

    .line 88
    const/16 v0, 0xc

    iput v0, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_BOTTOM:I

    .line 90
    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsDefaultPaddingEnabled:Z

    .line 109
    const v0, 0x201003c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/HTCExtractEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attr"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/inputmethodservice/ExtractEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput v2, p0, Landroid/widget/HTCExtractEditText;->mMode:I

    .line 59
    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mInit:Z

    .line 60
    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsDown:Z

    .line 61
    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsMove:Z

    .line 70
    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsUserSetAlpha:Z

    .line 71
    const/16 v0, 0xff

    iput v0, p0, Landroid/widget/HTCExtractEditText;->mDrawableAlpha:I

    .line 72
    const/16 v0, 0x66

    iput v0, p0, Landroid/widget/HTCExtractEditText;->mDrawableDisableAlpha:I

    .line 73
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPadding:I

    .line 74
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingLeft:I

    .line 75
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingTop:I

    .line 76
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingRight:I

    .line 77
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingBottom:I

    .line 78
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingLeft:I

    .line 79
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingTop:I

    .line 80
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingRight:I

    .line 81
    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingBottom:I

    .line 83
    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsDownAnimating:Z

    .line 85
    const/4 v0, 0x6

    iput v0, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_TOP:I

    .line 86
    const/16 v0, 0x8

    iput v0, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_BOTTOM:I

    .line 87
    const/16 v0, 0xa

    iput v0, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_TOP:I

    .line 88
    const/16 v0, 0xc

    iput v0, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_BOTTOM:I

    .line 90
    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsDefaultPaddingEnabled:Z

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HTCExtractEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method static synthetic access$000(Landroid/widget/HTCExtractEditText;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/HTCExtractEditText;->onDownAnimationStart()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/HTCExtractEditText;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/HTCExtractEditText;->onDownAnimationEnd()V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/HTCExtractEditText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_BOTTOM:I

    return v0
.end method

.method static synthetic access$1002(Landroid/widget/HTCExtractEditText;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_BOTTOM:I

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/HTCExtractEditText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Landroid/widget/HTCExtractEditText;->mMultiplyColor:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/HTCExtractEditText;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Landroid/widget/HTCExtractEditText;->mIsDown:Z

    return v0
.end method

.method static synthetic access$1302(Landroid/widget/HTCExtractEditText;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Landroid/widget/HTCExtractEditText;->mIsUserSetAlpha:Z

    return p1
.end method

.method static synthetic access$1400(Landroid/widget/HTCExtractEditText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Landroid/widget/HTCExtractEditText;->mDrawableAlpha:I

    return v0
.end method

.method static synthetic access$1402(Landroid/widget/HTCExtractEditText;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Landroid/widget/HTCExtractEditText;->mDrawableAlpha:I

    return p1
.end method

.method static synthetic access$1500(Landroid/widget/HTCExtractEditText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingLeft:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/HTCExtractEditText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingRight:I

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/HTCExtractEditText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Landroid/widget/HTCExtractEditText;->mDrawableDisableAlpha:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/HTCExtractEditText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Landroid/widget/HTCExtractEditText;->mMode:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/HTCExtractEditText;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/HTCExtractEditText;->checkBackgroundAssets(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/HTCExtractEditText;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/HTCExtractEditText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_TOP:I

    return v0
.end method

.method static synthetic access$502(Landroid/widget/HTCExtractEditText;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_TOP:I

    return p1
.end method

.method static synthetic access$600(Landroid/widget/HTCExtractEditText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_BOTTOM:I

    return v0
.end method

.method static synthetic access$602(Landroid/widget/HTCExtractEditText;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_BOTTOM:I

    return p1
.end method

.method static synthetic access$700(Landroid/widget/HTCExtractEditText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingTop:I

    return v0
.end method

.method static synthetic access$702(Landroid/widget/HTCExtractEditText;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingTop:I

    return p1
.end method

.method static synthetic access$800(Landroid/widget/HTCExtractEditText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingBottom:I

    return v0
.end method

.method static synthetic access$802(Landroid/widget/HTCExtractEditText;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingBottom:I

    return p1
.end method

.method static synthetic access$900(Landroid/widget/HTCExtractEditText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_TOP:I

    return v0
.end method

.method static synthetic access$902(Landroid/widget/HTCExtractEditText;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_TOP:I

    return p1
.end method

.method private checkBackgroundAssets(I)V
    .locals 5
    .parameter "mode"

    .prologue
    .line 216
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 217
    iget-object v3, p0, Landroid/widget/HTCExtractEditText;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-nez v3, :cond_2

    .line 218
    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 219
    .local v2, res:Landroid/content/res/Resources;
    const/4 v1, 0x3

    .line 220
    .local v1, last:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 221
    iget-object v3, p0, Landroid/widget/HTCExtractEditText;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/HTCExtractEditText;->mAllBackgroundResourceIds:[I

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v0

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    .end local v0           #i:I
    .end local v1           #last:I
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_0
    if-nez p1, :cond_1

    .line 225
    iget-object v3, p0, Landroid/widget/HTCExtractEditText;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    if-nez v3, :cond_2

    .line 226
    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 227
    .restart local v2       #res:Landroid/content/res/Resources;
    const/4 v1, 0x6

    .line 228
    .restart local v1       #last:I
    const/4 v0, 0x3

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 229
    iget-object v3, p0, Landroid/widget/HTCExtractEditText;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/HTCExtractEditText;->mAllBackgroundResourceIds:[I

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v0

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 233
    .end local v0           #i:I
    .end local v1           #last:I
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_1
    iget-object v3, p0, Landroid/widget/HTCExtractEditText;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    if-nez v3, :cond_2

    .line 234
    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 235
    .restart local v2       #res:Landroid/content/res/Resources;
    const/16 v1, 0x9

    .line 236
    .restart local v1       #last:I
    const/4 v0, 0x6

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v1, :cond_2

    .line 237
    iget-object v3, p0, Landroid/widget/HTCExtractEditText;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/HTCExtractEditText;->mAllBackgroundResourceIds:[I

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v0

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 241
    .end local v0           #i:I
    .end local v1           #last:I
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_2
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v5, 0x9

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 137
    const/16 v3, 0x9

    .line 138
    .local v3, totalAssets:I
    new-array v4, v5, [I

    iput-object v4, p0, Landroid/widget/HTCExtractEditText;->mAllBackgroundResourceIds:[I

    .line 139
    new-array v4, v5, [Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroid/widget/HTCExtractEditText;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 143
    .local v2, res:Landroid/content/res/Resources;
    sget-object v4, Lcom/htc/internal/R$styleable;->HtcEditText:[I

    const v5, 0x203008d

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 145
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/HTCExtractEditText;->mUserPadding:I

    .line 146
    invoke-virtual {v0, v9, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingLeft:I

    .line 147
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingTop:I

    .line 148
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingRight:I

    .line 149
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingBottom:I

    .line 151
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/HTCExtractEditText;->mapXMLMode(I)I

    move-result v4

    iput v4, p0, Landroid/widget/HTCExtractEditText;->mMode:I

    .line 153
    const v4, 0x207000e

    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 155
    .local v1, b:Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Landroid/widget/HTCExtractEditText;->initBackgroundIdList(Landroid/content/res/TypedArray;)V

    .line 157
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 160
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Landroid/widget/HTCExtractEditText;->mMultiplyColor:I

    .line 163
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    iget v4, p0, Landroid/widget/HTCExtractEditText;->mMultiplyColor:I

    if-nez v4, :cond_0

    const v4, 0x2060003

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Landroid/widget/HTCExtractEditText;->mMultiplyColor:I

    .line 167
    :cond_0
    iput-boolean v7, p0, Landroid/widget/HTCExtractEditText;->mIsDefaultPaddingEnabled:Z

    .line 169
    iget-boolean v4, p0, Landroid/widget/HTCExtractEditText;->mIsDefaultPaddingEnabled:Z

    invoke-direct {p0, v4}, Landroid/widget/HTCExtractEditText;->setUpDefaultPadding(Z)V

    .line 170
    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->setTextCursorDrawableToNull()V

    .line 172
    iget v4, p0, Landroid/widget/HTCExtractEditText;->mMode:I

    invoke-virtual {p0, v4}, Landroid/widget/HTCExtractEditText;->setMode(I)V

    .line 174
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Landroid/widget/HTCExtractEditText;->mTouchSlop:I

    .line 176
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Landroid/widget/HTCExtractEditText;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 177
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v4, p0, Landroid/widget/HTCExtractEditText;->mDownInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 178
    const-string v4, "drawableAlpha"

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/HTCExtractEditText;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 179
    iget-object v4, p0, Landroid/widget/HTCExtractEditText;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Landroid/widget/HTCExtractEditText;->mDownInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 180
    iget-object v4, p0, Landroid/widget/HTCExtractEditText;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v8, [Landroid/animation/Animator;

    iget-object v6, p0, Landroid/widget/HTCExtractEditText;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 181
    iget-object v4, p0, Landroid/widget/HTCExtractEditText;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 183
    iget-object v4, p0, Landroid/widget/HTCExtractEditText;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/widget/HTCExtractEditText$1;

    invoke-direct {v5, p0}, Landroid/widget/HTCExtractEditText$1;-><init>(Landroid/widget/HTCExtractEditText;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 199
    const/16 v4, 0x5dd

    const-string v5, "AC_TEXT_VIEW_PAD_IN"

    invoke-static {v8, p0, v4, v5}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/HTCExtractEditText;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 200
    return-void

    .line 178
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private initBackgroundIdList(Landroid/content/res/TypedArray;)V
    .locals 9
    .parameter "array"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    iget-object v2, p0, Landroid/widget/HTCExtractEditText;->mAllBackgroundResourceIds:[I

    const v3, 0x208000c

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v2, v4

    .line 119
    iget-object v2, p0, Landroid/widget/HTCExtractEditText;->mAllBackgroundResourceIds:[I

    const v3, 0x208000d

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v2, v5

    .line 120
    iget-object v2, p0, Landroid/widget/HTCExtractEditText;->mAllBackgroundResourceIds:[I

    const v3, 0x208000e

    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v2, v6

    .line 122
    iget-object v2, p0, Landroid/widget/HTCExtractEditText;->mAllBackgroundResourceIds:[I

    const v3, 0x2080175

    invoke-virtual {p1, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v2, v7

    .line 123
    iget-object v2, p0, Landroid/widget/HTCExtractEditText;->mAllBackgroundResourceIds:[I

    const v3, 0x2080176

    invoke-virtual {p1, v8, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v2, v8

    .line 124
    iget-object v2, p0, Landroid/widget/HTCExtractEditText;->mAllBackgroundResourceIds:[I

    const/4 v3, 0x5

    const/4 v4, 0x5

    const v5, 0x2080177

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v3

    .line 126
    iget-object v2, p0, Landroid/widget/HTCExtractEditText;->mAllBackgroundResourceIds:[I

    const/4 v3, 0x6

    const/4 v4, 0x6

    const v5, 0x2080175

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v3

    .line 127
    iget-object v2, p0, Landroid/widget/HTCExtractEditText;->mAllBackgroundResourceIds:[I

    const/4 v3, 0x7

    const/4 v4, 0x7

    const v5, 0x2080176

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v3

    .line 128
    iget-object v2, p0, Landroid/widget/HTCExtractEditText;->mAllBackgroundResourceIds:[I

    const/16 v3, 0x8

    const/16 v4, 0x8

    const v5, 0x2080177

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v3

    .line 130
    const/16 v1, 0x9

    .line 131
    .local v1, totalAssets:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    .line 132
    iget-object v2, p0, Landroid/widget/HTCExtractEditText;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method

.method private mapXMLMode(I)I
    .locals 1
    .parameter "xmlMode"

    .prologue
    const/4 v0, 0x0

    .line 203
    packed-switch p1, :pswitch_data_0

    .line 211
    :goto_0
    :pswitch_0
    return v0

    .line 207
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 209
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onDownAnimationEnd()V
    .locals 1

    .prologue
    .line 675
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HTCExtractEditText;->mIsDownAnimating:Z

    .line 676
    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 678
    :cond_0
    return-void
.end method

.method private onDownAnimationStart()V
    .locals 1

    .prologue
    .line 669
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HTCExtractEditText;->mIsDownAnimating:Z

    .line 670
    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 672
    :cond_0
    return-void
.end method

.method private setUpDefaultPadding(Z)V
    .locals 9
    .parameter "enabled"

    .prologue
    const/16 v8, 0x140

    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 401
    iget v2, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingLeft:I

    if-gez v2, :cond_0

    .line 402
    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2050001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingLeft:I

    .line 403
    iget v2, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingLeft:I

    iput v2, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingRight:I

    .line 406
    :cond_0
    if-eqz p1, :cond_4

    .line 407
    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 409
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0xf0

    if-lt v2, v3, :cond_1

    .line 411
    iput v6, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_TOP:I

    .line 412
    const/16 v2, 0x8

    iput v2, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_BOTTOM:I

    .line 413
    const/16 v2, 0xa

    iput v2, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_TOP:I

    .line 414
    const/16 v2, 0xc

    iput v2, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_BOTTOM:I

    .line 447
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    :goto_0
    iget v2, p0, Landroid/widget/HTCExtractEditText;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 448
    iget v2, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_TOP:I

    iput v2, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingTop:I

    .line 449
    iget v2, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_BOTTOM:I

    iput v2, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingBottom:I

    .line 457
    :goto_1
    return-void

    .line 416
    .restart local v0       #dm:Landroid/util/DisplayMetrics;
    :cond_1
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v8, :cond_2

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v2, v8, :cond_3

    .line 418
    :cond_2
    const/4 v2, 0x4

    iput v2, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_TOP:I

    .line 419
    iput v5, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_BOTTOM:I

    .line 420
    iput v6, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_TOP:I

    .line 421
    iput v7, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_BOTTOM:I

    goto :goto_0

    .line 424
    :cond_3
    iput v5, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_TOP:I

    .line 425
    iput v7, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_BOTTOM:I

    .line 426
    const/16 v2, 0x9

    iput v2, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_TOP:I

    .line 427
    const/16 v2, 0xb

    iput v2, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_BOTTOM:I

    goto :goto_0

    .line 431
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    :cond_4
    iget-object v2, p0, Landroid/widget/HTCExtractEditText;->mBackground:Landroid/widget/HTCExtractEditText$ScaleDimDrawable;

    if-nez v2, :cond_5

    .line 432
    iput v4, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_TOP:I

    .line 433
    iput v4, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_BOTTOM:I

    .line 434
    iput v4, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_TOP:I

    .line 435
    iput v4, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_BOTTOM:I

    goto :goto_0

    .line 437
    :cond_5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 438
    .local v1, padding:Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/widget/HTCExtractEditText;->mBackground:Landroid/widget/HTCExtractEditText$ScaleDimDrawable;

    invoke-virtual {v2, v1}, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->getRestPadding(Landroid/graphics/Rect;)V

    .line 440
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_TOP:I

    .line 441
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_BOTTOM:I

    .line 442
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_TOP:I

    .line 443
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_BOTTOM:I

    goto :goto_0

    .line 450
    .end local v1           #padding:Landroid/graphics/Rect;
    :cond_6
    iget v2, p0, Landroid/widget/HTCExtractEditText;->mMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 451
    iget v2, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_TOP:I

    iput v2, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingTop:I

    .line 452
    iget v2, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_BOTTOM:I

    iput v2, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingBottom:I

    goto :goto_1

    .line 454
    :cond_7
    iget v2, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_TOP:I

    iput v2, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingTop:I

    .line 455
    iget v2, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_BOTTOM:I

    iput v2, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingBottom:I

    goto :goto_1
.end method

.method private startDownAnimation()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HTCExtractEditText;->mIsDown:Z

    .line 323
    iget-boolean v0, p0, Landroid/widget/HTCExtractEditText;->mIsDownAnimating:Z

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 326
    :cond_0
    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 327
    return-void
.end method

.method private startMoveAnimation()V
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HTCExtractEditText;->mIsDown:Z

    .line 336
    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->invalidate()V

    .line 337
    return-void
.end method

.method private startUpAnimation()V
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HTCExtractEditText;->mIsDown:Z

    .line 331
    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->invalidate()V

    .line 332
    return-void
.end method


# virtual methods
.method public enableDefaultPadding(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 393
    iget-boolean v0, p0, Landroid/widget/HTCExtractEditText;->mIsDefaultPaddingEnabled:Z

    if-ne v0, p1, :cond_0

    .line 398
    :goto_0
    return-void

    .line 395
    :cond_0
    iput-boolean p1, p0, Landroid/widget/HTCExtractEditText;->mIsDefaultPaddingEnabled:Z

    .line 396
    invoke-direct {p0, p1}, Landroid/widget/HTCExtractEditText;->setUpDefaultPadding(Z)V

    .line 397
    iget v0, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingLeft:I

    iget v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingTop:I

    iget v2, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingRight:I

    iget v3, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingBottom:I

    invoke-super {p0, v0, v1, v2, v3}, Landroid/inputmethodservice/ExtractEditText;->setPadding(IIII)V

    goto :goto_0
.end method

.method onDownAnimationCancel()V
    .locals 1

    .prologue
    .line 681
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HTCExtractEditText;->mIsDownAnimating:Z

    .line 682
    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 684
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 298
    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 300
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/HTCExtractEditText;->mIsMove:Z

    .line 301
    invoke-direct {p0}, Landroid/widget/HTCExtractEditText;->startDownAnimation()V

    .line 318
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/inputmethodservice/ExtractEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 302
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 303
    :cond_2
    iget-boolean v3, p0, Landroid/widget/HTCExtractEditText;->mIsMove:Z

    if-nez v3, :cond_0

    .line 304
    invoke-direct {p0}, Landroid/widget/HTCExtractEditText;->startUpAnimation()V

    goto :goto_0

    .line 305
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 306
    iget-boolean v3, p0, Landroid/widget/HTCExtractEditText;->mIsMove:Z

    if-nez v3, :cond_0

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 308
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 309
    .local v2, y:I
    iget v0, p0, Landroid/widget/HTCExtractEditText;->mTouchSlop:I

    .line 310
    .local v0, slop:I
    rsub-int/lit8 v3, v0, 0x0

    if-lt v1, v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-ge v1, v3, :cond_4

    rsub-int/lit8 v3, v0, 0x0

    if-lt v2, v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    if-lt v2, v3, :cond_0

    .line 312
    :cond_4
    iput-boolean v5, p0, Landroid/widget/HTCExtractEditText;->mIsMove:Z

    .line 313
    invoke-direct {p0}, Landroid/widget/HTCExtractEditText;->startMoveAnimation()V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 287
    iget-boolean v0, p0, Landroid/widget/HTCExtractEditText;->mInit:Z

    if-eqz v0, :cond_0

    .line 288
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You should not setBackground to HtcEditText"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_0
    invoke-super {p0, p1}, Landroid/inputmethodservice/ExtractEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    return-void
.end method

.method protected setDrawableAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 347
    iget-boolean v0, p0, Landroid/widget/HTCExtractEditText;->mIsUserSetAlpha:Z

    if-eqz v0, :cond_0

    .line 353
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->invalidate()V

    .line 354
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mBackground:Landroid/widget/HTCExtractEditText$ScaleDimDrawable;

    invoke-virtual {v0}, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->getMutiplyDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 362
    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 363
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;

    if-eqz v1, :cond_0

    .line 364
    if-nez p1, :cond_1

    .line 365
    check-cast v0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->setDisableAlpha()V

    .line 370
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    .line 371
    return-void

    .line 367
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    check-cast v0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->setEnableAlpha()V

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 258
    if-eqz p1, :cond_0

    if-eq p1, v4, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 260
    :cond_0
    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mInit:Z

    .line 261
    iput p1, p0, Landroid/widget/HTCExtractEditText;->mMode:I

    .line 262
    new-instance v0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;

    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;-><init>(Landroid/widget/HTCExtractEditText;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/HTCExtractEditText;->mBackground:Landroid/widget/HTCExtractEditText$ScaleDimDrawable;

    .line 263
    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mBackground:Landroid/widget/HTCExtractEditText$ScaleDimDrawable;

    invoke-virtual {p0, v0}, Landroid/widget/HTCExtractEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    invoke-virtual {p0, v2}, Landroid/widget/HTCExtractEditText;->setEnabled(Z)V

    .line 266
    :cond_1
    iget v0, p0, Landroid/widget/HTCExtractEditText;->mUserPadding:I

    if-ltz v0, :cond_3

    .line 267
    iget v0, p0, Landroid/widget/HTCExtractEditText;->mUserPadding:I

    iget v1, p0, Landroid/widget/HTCExtractEditText;->mUserPadding:I

    iget v2, p0, Landroid/widget/HTCExtractEditText;->mUserPadding:I

    iget v3, p0, Landroid/widget/HTCExtractEditText;->mUserPadding:I

    invoke-super {p0, v0, v1, v2, v3}, Landroid/inputmethodservice/ExtractEditText;->setPadding(IIII)V

    .line 274
    :cond_2
    :goto_1
    iput-boolean v4, p0, Landroid/widget/HTCExtractEditText;->mInit:Z

    goto :goto_0

    .line 268
    :cond_3
    iget v0, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingLeft:I

    if-gez v0, :cond_4

    iget v0, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingTop:I

    if-gez v0, :cond_4

    iget v0, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingRight:I

    if-gez v0, :cond_4

    iget v0, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingBottom:I

    if-ltz v0, :cond_2

    .line 269
    :cond_4
    iget v0, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingLeft:I

    if-ltz v0, :cond_5

    iget v0, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingLeft:I

    :goto_2
    iget v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingTop:I

    if-ltz v1, :cond_6

    iget v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingTop:I

    :goto_3
    iget v2, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingRight:I

    if-ltz v2, :cond_7

    iget v2, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingRight:I

    :goto_4
    iget v3, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingBottom:I

    if-ltz v3, :cond_8

    iget v3, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingBottom:I

    :goto_5
    invoke-super {p0, v0, v1, v2, v3}, Landroid/inputmethodservice/ExtractEditText;->setPadding(IIII)V

    goto :goto_1

    :cond_5
    iget v0, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingLeft:I

    goto :goto_2

    :cond_6
    iget v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingTop:I

    goto :goto_3

    :cond_7
    iget v2, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingRight:I

    goto :goto_4

    :cond_8
    iget v3, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingBottom:I

    goto :goto_5
.end method

.method public setPadding(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 376
    invoke-super {p0, p1, p2, p3, p4}, Landroid/inputmethodservice/ExtractEditText;->setPadding(IIII)V

    .line 377
    iget-boolean v0, p0, Landroid/widget/HTCExtractEditText;->mInit:Z

    if-eqz v0, :cond_0

    .line 378
    iput p1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingLeft:I

    .line 379
    iput p2, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingTop:I

    .line 380
    iput p3, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingRight:I

    .line 381
    iput p4, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingBottom:I

    .line 383
    :cond_0
    return-void
.end method
