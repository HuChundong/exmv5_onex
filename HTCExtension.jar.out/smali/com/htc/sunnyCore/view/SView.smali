.class public Lcom/htc/sunnyCore/view/SView;
.super Lcom/htc/sunnyCore/SceneNode;
.source "SView.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/view/SView$SViewHandler;,
        Lcom/htc/sunnyCore/view/SView$OverlapRoundCornerParam;,
        Lcom/htc/sunnyCore/view/SView$OnClickListener;,
        Lcom/htc/sunnyCore/view/SView$ViewDef;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BACKGROUND_RENDER_ORDER:I = -0xc8

.field public static final BOTTOM_MOST_RENDER_ORDER:I = -0x64

.field static final DISABLED:I = 0x20

.field static final DRAWABLE_STATE_DIRTY:I = 0x400

.field protected static final EMPTY_STATE_SET:[I = null

.field static final ENABLED:I = 0x0

.field protected static final ENABLED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final ENABLED_MASK:I = 0x20

.field protected static final ENABLED_SELECTED_STATE_SET:[I = null

.field protected static final ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_STATE_SET:[I = null

.field protected static final ENABLED_WINDOW_FOCUSED_STATE_SET:[I = null

.field private static final FOCUSABLE:I = 0x1

.field private static final FOCUSABLE_MASK:I = 0x1

.field static final FOCUSED:I = 0x2

.field protected static final FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final FOCUSED_STATE_SET:[I = null

.field protected static final FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final FORCE_LAYOUT:I = 0x1000

.field public static final GONE:I = 0x8

.field public static final HAPTIC_FEEDBACK_ENABLED:I = 0x10000000

.field static final HAS_BOUNDS:I = 0x10

.field protected static final INVALID_ID:I = 0x0

.field private static final INVISIBLE:I = 0x4

.field static final IS_RESOURCE_CREATED:I = 0x8

.field static final LAYOUT_REQUIRED:I = 0x2000

.field static final MEASURED_DIMENSION_SET:I = 0x800

.field public static final NORMAL_RENDER_ORDER:I = 0x0

.field private static final PRESSED:I = 0x4000

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_STATE_SET:[I = null

.field protected static final PRESSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final SELECTED:I = 0x4

.field protected static final SELECTED_STATE_SET:[I = null

.field protected static final SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field private static final TAG:Ljava/lang/String; = "SView"

.field public static final TOP_MOST_RENDER_ORDER:I = 0x64

.field private static final VIEW_STATE_SETS:[[I = null

.field private static final VISIBILITY_FLAGS:[I = null

.field static final VISIBILITY_MASK:I = 0xc

.field public static final VISIBLE:I = 0x0

.field static final WANTS_FOCUS:I = 0x1

.field protected static final WINDOW_FOCUSED_STATE_SET:[I

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private LAYOUT_LOCKER:Ljava/lang/Object;

.field protected mAlpha:F

.field protected mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

.field protected mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mBGDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResource:I

.field private mBackgroundSizeChanged:Z

.field private mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

.field private mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

.field private mBlurParameter:F

.field protected mClickListener:Lcom/htc/sunnyCore/view/SView$OnClickListener;

.field protected mContext:Landroid/content/Context;

.field private mDrawableState:[I

.field protected mEnlargeSensorAreaB:I

.field protected mEnlargeSensorAreaL:I

.field protected mEnlargeSensorAreaR:I

.field protected mEnlargeSensorAreaT:I

.field protected mHasLayoutAnimation:Z

.field protected mHeight:I

.field protected mHostContextName:Ljava/lang/String;

.field protected mLayoutParams:Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;

.field protected mMeasuredHeight:I

.field protected mMeasuredWidth:I

.field private mMinHeight:I

.field private mMinWidth:I

.field mOldHeightMeasureSpec:I

.field mOldWidthMeasureSpec:I

.field protected mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mOrder:I

.field protected mPaddingBottom:I

.field protected mPaddingLeft:I

.field protected mPaddingRight:I

.field protected mPaddingTop:I

.field protected mParentView:Lcom/htc/sunnyCore/view/SViewParent;

.field mPrivateFlags:I

.field protected mRenderOrder:Z

.field protected mResources:Landroid/content/res/Resources;

.field protected mRotation:Lcom/htc/sunnyCore/view/Vector3F;

.field protected mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

.field protected mScale:Lcom/htc/sunnyCore/view/Vector3F;

.field protected mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

.field protected mTouchable:Z

.field protected mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

.field mViewFlags:I

.field protected mViewTagObject:Ljava/lang/Object;

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 149
    new-array v0, v2, [I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->EMPTY_STATE_SET:[I

    .line 160
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->ENABLED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->ENABLED_STATE_SET:[I

    .line 171
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->FOCUSED_STATE_SET:[I

    .line 182
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->SELECTED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->SELECTED_STATE_SET:[I

    .line 193
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->PRESSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->PRESSED_STATE_SET:[I

    .line 202
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->WINDOW_FOCUSED_STATE_SET:[I

    .line 210
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->ENABLED_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->ENABLED_FOCUSED_STATE_SET:[I

    .line 217
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->ENABLED_SELECTED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->ENABLED_SELECTED_STATE_SET:[I

    .line 224
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->ENABLED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 231
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->FOCUSED_SELECTED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->FOCUSED_SELECTED_STATE_SET:[I

    .line 238
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->FOCUSED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 245
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 254
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->ENABLED_FOCUSED_SELECTED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 262
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 270
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 278
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 288
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 295
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->PRESSED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 303
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->PRESSED_SELECTED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->PRESSED_SELECTED_STATE_SET:[I

    .line 312
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 320
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->PRESSED_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->PRESSED_FOCUSED_STATE_SET:[I

    .line 329
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 338
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->PRESSED_FOCUSED_SELECTED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    .line 348
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 356
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->PRESSED_ENABLED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->PRESSED_ENABLED_STATE_SET:[I

    .line 365
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 374
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->PRESSED_ENABLED_SELECTED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    .line 387
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 398
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->PRESSED_ENABLED_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    .line 411
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 423
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 437
    sget-object v0, Lcom/htc/sunnyCore/view/SView$ViewDef;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 442
    const/16 v0, 0x20

    new-array v0, v0, [[I

    sget-object v1, Lcom/htc/sunnyCore/view/SView;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/htc/sunnyCore/view/SView;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v1, v0, v3

    const/4 v1, 0x4

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->FOCUSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->ENABLED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->ENABLED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->ENABLED_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->PRESSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->PRESSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->PRESSED_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->PRESSED_ENABLED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/htc/sunnyCore/view/SView;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->VIEW_STATE_SETS:[[I

    .line 484
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->sThreadLocal:Ljava/lang/ThreadLocal;

    .line 527
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/sunnyCore/view/SView;->VISIBILITY_FLAGS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V
    .locals 6
    .parameter "context"
    .parameter "sContext"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, -0x8000

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 829
    invoke-direct {p0}, Lcom/htc/sunnyCore/SceneNode;-><init>()V

    .line 580
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SView;->LAYOUT_LOCKER:Ljava/lang/Object;

    .line 585
    iput-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    .line 617
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    .line 621
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    .line 625
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0, v2, v2, v2}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    .line 629
    iput v2, p0, Lcom/htc/sunnyCore/view/SView;->mAlpha:F

    .line 659
    iput-boolean v5, p0, Lcom/htc/sunnyCore/view/SView;->mRenderOrder:Z

    .line 663
    iput-boolean v1, p0, Lcom/htc/sunnyCore/view/SView;->mTouchable:Z

    .line 667
    iput-boolean v1, p0, Lcom/htc/sunnyCore/view/SView;->mHasLayoutAnimation:Z

    .line 672
    iput-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    .line 676
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 682
    iput-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mViewTagObject:Ljava/lang/Object;

    .line 687
    iput-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mClickListener:Lcom/htc/sunnyCore/view/SView$OnClickListener;

    .line 718
    iput v1, p0, Lcom/htc/sunnyCore/view/SView;->mOrder:I

    .line 723
    iput v4, p0, Lcom/htc/sunnyCore/view/SView;->mOldWidthMeasureSpec:I

    .line 727
    iput v4, p0, Lcom/htc/sunnyCore/view/SView;->mOldHeightMeasureSpec:I

    .line 769
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/view/SView;->mBlurParameter:F

    .line 778
    iput v1, p0, Lcom/htc/sunnyCore/view/SView;->mEnlargeSensorAreaL:I

    .line 782
    iput v1, p0, Lcom/htc/sunnyCore/view/SView;->mEnlargeSensorAreaT:I

    .line 786
    iput v1, p0, Lcom/htc/sunnyCore/view/SView;->mEnlargeSensorAreaR:I

    .line 790
    iput v1, p0, Lcom/htc/sunnyCore/view/SView;->mEnlargeSensorAreaB:I

    .line 830
    invoke-direct {p0, p1, p2, v5}, Lcom/htc/sunnyCore/view/SView;->init(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Z)V

    .line 831
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Z)V
    .locals 5
    .parameter "context"
    .parameter "sContext"
    .parameter "bRenderOrder"

    .prologue
    const/high16 v4, -0x8000

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 837
    invoke-direct {p0}, Lcom/htc/sunnyCore/SceneNode;-><init>()V

    .line 580
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SView;->LAYOUT_LOCKER:Ljava/lang/Object;

    .line 585
    iput-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    .line 617
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    .line 621
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    .line 625
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0, v2, v2, v2}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    .line 629
    iput v2, p0, Lcom/htc/sunnyCore/view/SView;->mAlpha:F

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/view/SView;->mRenderOrder:Z

    .line 663
    iput-boolean v1, p0, Lcom/htc/sunnyCore/view/SView;->mTouchable:Z

    .line 667
    iput-boolean v1, p0, Lcom/htc/sunnyCore/view/SView;->mHasLayoutAnimation:Z

    .line 672
    iput-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    .line 676
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 682
    iput-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mViewTagObject:Ljava/lang/Object;

    .line 687
    iput-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mClickListener:Lcom/htc/sunnyCore/view/SView$OnClickListener;

    .line 718
    iput v1, p0, Lcom/htc/sunnyCore/view/SView;->mOrder:I

    .line 723
    iput v4, p0, Lcom/htc/sunnyCore/view/SView;->mOldWidthMeasureSpec:I

    .line 727
    iput v4, p0, Lcom/htc/sunnyCore/view/SView;->mOldHeightMeasureSpec:I

    .line 769
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/view/SView;->mBlurParameter:F

    .line 778
    iput v1, p0, Lcom/htc/sunnyCore/view/SView;->mEnlargeSensorAreaL:I

    .line 782
    iput v1, p0, Lcom/htc/sunnyCore/view/SView;->mEnlargeSensorAreaT:I

    .line 786
    iput v1, p0, Lcom/htc/sunnyCore/view/SView;->mEnlargeSensorAreaR:I

    .line 790
    iput v1, p0, Lcom/htc/sunnyCore/view/SView;->mEnlargeSensorAreaB:I

    .line 838
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunnyCore/view/SView;->init(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Z)V

    .line 839
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;ZF)V
    .locals 5
    .parameter "context"
    .parameter "sContext"
    .parameter "bRenderOrder"
    .parameter "fBlurParameter"

    .prologue
    const/high16 v4, -0x8000

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 845
    invoke-direct {p0}, Lcom/htc/sunnyCore/SceneNode;-><init>()V

    .line 580
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SView;->LAYOUT_LOCKER:Ljava/lang/Object;

    .line 585
    iput-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    .line 617
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    .line 621
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    .line 625
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0, v2, v2, v2}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    .line 629
    iput v2, p0, Lcom/htc/sunnyCore/view/SView;->mAlpha:F

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/view/SView;->mRenderOrder:Z

    .line 663
    iput-boolean v1, p0, Lcom/htc/sunnyCore/view/SView;->mTouchable:Z

    .line 667
    iput-boolean v1, p0, Lcom/htc/sunnyCore/view/SView;->mHasLayoutAnimation:Z

    .line 672
    iput-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    .line 676
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 682
    iput-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mViewTagObject:Ljava/lang/Object;

    .line 687
    iput-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mClickListener:Lcom/htc/sunnyCore/view/SView$OnClickListener;

    .line 718
    iput v1, p0, Lcom/htc/sunnyCore/view/SView;->mOrder:I

    .line 723
    iput v4, p0, Lcom/htc/sunnyCore/view/SView;->mOldWidthMeasureSpec:I

    .line 727
    iput v4, p0, Lcom/htc/sunnyCore/view/SView;->mOldHeightMeasureSpec:I

    .line 769
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/view/SView;->mBlurParameter:F

    .line 778
    iput v1, p0, Lcom/htc/sunnyCore/view/SView;->mEnlargeSensorAreaL:I

    .line 782
    iput v1, p0, Lcom/htc/sunnyCore/view/SView;->mEnlargeSensorAreaT:I

    .line 786
    iput v1, p0, Lcom/htc/sunnyCore/view/SView;->mEnlargeSensorAreaR:I

    .line 790
    iput v1, p0, Lcom/htc/sunnyCore/view/SView;->mEnlargeSensorAreaB:I

    .line 846
    iput p4, p0, Lcom/htc/sunnyCore/view/SView;->mBlurParameter:F

    .line 847
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunnyCore/view/SView;->init(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Z)V

    .line 848
    return-void
.end method

.method protected constructor <init>(Lcom/htc/sunnyCore/SceneNode$NODE_MODE;Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Z)V
    .locals 5
    .parameter "mode"
    .parameter "context"
    .parameter "sContext"
    .parameter "bRenderOrder"

    .prologue
    const/high16 v4, -0x8000

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 821
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/SceneNode;-><init>(Lcom/htc/sunnyCore/SceneNode$NODE_MODE;)V

    .line 580
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SView;->LAYOUT_LOCKER:Ljava/lang/Object;

    .line 585
    iput-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    .line 617
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    .line 621
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    .line 625
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0, v2, v2, v2}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    .line 629
    iput v2, p0, Lcom/htc/sunnyCore/view/SView;->mAlpha:F

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/view/SView;->mRenderOrder:Z

    .line 663
    iput-boolean v1, p0, Lcom/htc/sunnyCore/view/SView;->mTouchable:Z

    .line 667
    iput-boolean v1, p0, Lcom/htc/sunnyCore/view/SView;->mHasLayoutAnimation:Z

    .line 672
    iput-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    .line 676
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 682
    iput-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mViewTagObject:Ljava/lang/Object;

    .line 687
    iput-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mClickListener:Lcom/htc/sunnyCore/view/SView$OnClickListener;

    .line 718
    iput v1, p0, Lcom/htc/sunnyCore/view/SView;->mOrder:I

    .line 723
    iput v4, p0, Lcom/htc/sunnyCore/view/SView;->mOldWidthMeasureSpec:I

    .line 727
    iput v4, p0, Lcom/htc/sunnyCore/view/SView;->mOldHeightMeasureSpec:I

    .line 769
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/view/SView;->mBlurParameter:F

    .line 778
    iput v1, p0, Lcom/htc/sunnyCore/view/SView;->mEnlargeSensorAreaL:I

    .line 782
    iput v1, p0, Lcom/htc/sunnyCore/view/SView;->mEnlargeSensorAreaT:I

    .line 786
    iput v1, p0, Lcom/htc/sunnyCore/view/SView;->mEnlargeSensorAreaR:I

    .line 790
    iput v1, p0, Lcom/htc/sunnyCore/view/SView;->mEnlargeSensorAreaB:I

    .line 822
    invoke-direct {p0, p2, p3, p4}, Lcom/htc/sunnyCore/view/SView;->init(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Z)V

    .line 823
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunnyCore/view/SView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/sunnyCore/view/SView;->cancelAnimationIRT()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/sunnyCore/view/SView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/sunnyCore/view/SView;->applyAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/sunnyCore/view/SView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/sunnyCore/view/SView;->invalidateBackgroundDrawable()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/sunnyCore/view/SView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/view/SView;->setBackgroundResource_IRT(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/sunnyCore/view/SView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/view/SView;->setGlobalBackgroundResource_IRT(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/sunnyCore/view/SView;ILandroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/view/SView;->enableOverlapRoundCorner_IRT(ILandroid/graphics/Rect;)V

    return-void
.end method

.method private applyAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1703
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    if-eqz v0, :cond_2

    .line 1704
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->isReady()Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 1705
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->start()V

    .line 1706
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->onAnimationStart()V

    .line 1709
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->animate()V

    .line 1710
    invoke-direct {p0}, Lcom/htc/sunnyCore/view/SView;->updateLayoutParameter()V

    .line 1712
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->isEnded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1713
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->sendEmptyMessage(I)V

    .line 1722
    :goto_0
    return-void

    .line 1716
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->onAnimationEnd()V

    goto :goto_0

    .line 1720
    :cond_2
    invoke-direct {p0}, Lcom/htc/sunnyCore/view/SView;->updateLayoutParameter()V

    goto :goto_0
.end method

.method private cancelAnimationIRT()V
    .locals 2

    .prologue
    .line 1667
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1668
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->isEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1670
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->cancel()V

    .line 1672
    invoke-direct {p0}, Lcom/htc/sunnyCore/view/SView;->updateLayoutParameter()V

    .line 1674
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->onAnimationCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1677
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1679
    return-void

    .line 1677
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private enableOverlapRoundCorner_IRT(ILandroid/graphics/Rect;)V
    .locals 1
    .parameter "resourceId"
    .parameter "cornerRect"

    .prologue
    .line 2815
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    if-eqz v0, :cond_0

    .line 2816
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    invoke-interface {v0, p1, p2}, Lcom/htc/sunnyCore/view/SViewParent;->enableOverlapRoundCorner(ILandroid/graphics/Rect;)V

    .line 2818
    :cond_0
    return-void
.end method

.method public static getDefaultSize(II)I
    .locals 3
    .parameter "size"
    .parameter "measureSpec"

    .prologue
    .line 2068
    move v0, p0

    .line 2069
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2070
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 2072
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 2081
    :goto_0
    return v0

    .line 2074
    :sswitch_0
    move v0, p0

    .line 2075
    goto :goto_0

    .line 2078
    :sswitch_1
    move v0, v2

    goto :goto_0

    .line 2072
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private init(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Z)V
    .locals 4
    .parameter "context"
    .parameter "sContext"
    .parameter "bRenderOrder"

    .prologue
    .line 851
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    .line 852
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mResources:Landroid/content/res/Resources;

    .line 853
    iput-object p2, p0, Lcom/htc/sunnyCore/view/SView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    .line 854
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mHostContextName:Ljava/lang/String;

    .line 856
    new-instance v0, Lcom/htc/sunnyCore/view/SView$SViewHandler;

    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SViewHandler-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->getNodeId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/htc/sunnyCore/view/SView$SViewHandler;-><init>(Lcom/htc/sunnyCore/view/SView;Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/RenderThread;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    .line 858
    const/high16 v0, 0x1000

    iput v0, p0, Lcom/htc/sunnyCore/view/SView;->mViewFlags:I

    .line 860
    iput-boolean p3, p0, Lcom/htc/sunnyCore/view/SView;->mRenderOrder:Z

    .line 861
    return-void
.end method

.method private invalidateBackgroundDrawable()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 931
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 932
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->getWidth()I

    move-result v6

    if-lt v6, v9, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->getHeight()I

    move-result v6

    if-ge v6, v9, :cond_1

    .line 980
    :cond_0
    :goto_0
    return-void

    .line 937
    :cond_1
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    .line 938
    .local v1, bkgSprite:Lcom/htc/sunnyCore/Sprite;
    if-eqz v4, :cond_6

    .line 940
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 941
    .local v3, config:Landroid/graphics/Bitmap$Config;
    iget v6, p0, Lcom/htc/sunnyCore/view/SView;->mWidth:I

    iget v7, p0, Lcom/htc/sunnyCore/view/SView;->mHeight:I

    invoke-static {v6, v7, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 942
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 943
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 944
    invoke-static {v0}, Lcom/htc/sunnyCore/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunnyCore/SBitmap;

    move-result-object v5

    .line 945
    .local v5, sbmp:Lcom/htc/sunnyCore/SBitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 946
    const/4 v0, 0x0

    .line 948
    iget-object v6, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v6, :cond_4

    .line 949
    invoke-static {v5}, Lcom/htc/sunnyCore/Texture;->createTexture(Lcom/htc/sunnyCore/SBitmap;)Lcom/htc/sunnyCore/Texture;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    .line 950
    iget v6, p0, Lcom/htc/sunnyCore/view/SView;->mBlurParameter:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_3

    .line 951
    iget-object v6, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v7, p0, Lcom/htc/sunnyCore/view/SView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1, v6, v7}, Lcom/htc/sunnyCore/Sprite;->setBlurTexture(Lcom/htc/sunnyCore/Texture;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 967
    :goto_1
    if-eqz v5, :cond_2

    .line 968
    invoke-virtual {v5}, Lcom/htc/sunnyCore/SBitmap;->recycle()V

    .line 971
    :cond_2
    iget v6, p0, Lcom/htc/sunnyCore/view/SView;->mWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/htc/sunnyCore/view/SView;->mHeight:I

    int-to-float v7, v7

    invoke-virtual {v1, v6, v7, v8, v8}, Lcom/htc/sunnyCore/Sprite;->setupGeometry(FFFF)V

    .line 973
    invoke-virtual {v1, v9}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    .line 974
    invoke-virtual {v1, v9}, Lcom/htc/sunnyCore/Sprite;->setTouchable(Z)V

    goto :goto_0

    .line 953
    :cond_3
    iget-object v6, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1, v6}, Lcom/htc/sunnyCore/Sprite;->setTexture(Lcom/htc/sunnyCore/Texture;)V

    goto :goto_1

    .line 957
    :cond_4
    iget v6, p0, Lcom/htc/sunnyCore/view/SView;->mBlurParameter:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_5

    .line 960
    iget-object v6, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 961
    invoke-static {v5}, Lcom/htc/sunnyCore/Texture;->createTexture(Lcom/htc/sunnyCore/SBitmap;)Lcom/htc/sunnyCore/Texture;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    .line 962
    iget-object v6, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    iget-object v7, p0, Lcom/htc/sunnyCore/view/SView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1, v6, v7}, Lcom/htc/sunnyCore/Sprite;->setBlurTexture(Lcom/htc/sunnyCore/Texture;Lcom/htc/sunnyCore/SunnyContext;)V

    goto :goto_1

    .line 964
    :cond_5
    iget-object v6, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v6, v5}, Lcom/htc/sunnyCore/Texture;->setSBitmap(Lcom/htc/sunnyCore/SBitmap;)V

    goto :goto_1

    .line 977
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #config:Landroid/graphics/Bitmap$Config;
    .end local v5           #sbmp:Lcom/htc/sunnyCore/SBitmap;
    :cond_6
    invoke-virtual {v1, v7}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    .line 978
    invoke-virtual {v1, v7}, Lcom/htc/sunnyCore/Sprite;->setTouchable(Z)V

    goto :goto_0
.end method

.method public static resolveSize(II)I
    .locals 3
    .parameter "size"
    .parameter "measureSpec"

    .prologue
    .line 2039
    move v0, p0

    .line 2040
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2041
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 2042
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 2053
    :goto_0
    return v0

    .line 2044
    :sswitch_0
    move v0, p0

    .line 2045
    goto :goto_0

    .line 2047
    :sswitch_1
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2048
    goto :goto_0

    .line 2050
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 2042
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private setBackgroundResource_IRT(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 1027
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v1, :cond_0

    .line 1029
    iget v1, p0, Lcom/htc/sunnyCore/view/SView;->mBlurParameter:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 1030
    iget v1, p0, Lcom/htc/sunnyCore/view/SView;->mBlurParameter:F

    invoke-static {v1}, Lcom/htc/sunnyCore/Sprite;->obtain(F)Lcom/htc/sunnyCore/Sprite;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    .line 1034
    :goto_0
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/view/SView;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 1035
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    .line 1036
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v2, -0xc8

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->setRenderOrder(I)V

    .line 1039
    :cond_0
    if-eqz p1, :cond_2

    iget v1, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundResource:I

    if-ne p1, v1, :cond_2

    .line 1051
    :goto_1
    return-void

    .line 1032
    :cond_1
    invoke-static {}, Lcom/htc/sunnyCore/Sprite;->obtain()Lcom/htc/sunnyCore/Sprite;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    goto :goto_0

    .line 1042
    :cond_2
    const/4 v0, 0x0

    .line 1043
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_3

    .line 1044
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1046
    :cond_3
    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/view/SView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1048
    iput p1, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundResource:I

    goto :goto_1
.end method

.method private setGlobalBackgroundResource_IRT(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 2779
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    if-eqz v0, :cond_0

    .line 2780
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    invoke-interface {v0, p1}, Lcom/htc/sunnyCore/view/SViewParent;->setGlobalBackgroundResource(I)V

    .line 2782
    :cond_0
    return-void
.end method

.method private updateLayoutParameter()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1733
    const/4 v0, 0x0

    .line 1734
    .local v0, bAnimationLayout:Z
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->isEnded()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->isFillAfter()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->isEnded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1737
    :cond_0
    const/4 v0, 0x1

    .line 1740
    :cond_1
    if-ne v7, v0, :cond_3

    iget-object v4, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->isPositionAnimation()Z

    move-result v4

    if-ne v7, v4, :cond_3

    .line 1742
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->onUpdatePositionAnimation()V

    .line 1749
    :goto_0
    if-ne v7, v0, :cond_4

    iget-object v4, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->isRotateAnimation()Z

    move-result v4

    if-ne v7, v4, :cond_4

    .line 1750
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->getCurrentRotation()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v3

    .line 1751
    .local v3, v:Lcom/htc/sunnyCore/view/Vector3F;
    iget v4, v3, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget v5, v3, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget v6, v3, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-super {p0, v4, v5, v6}, Lcom/htc/sunnyCore/SceneNode;->setRotate(FFF)V

    .line 1756
    .end local v3           #v:Lcom/htc/sunnyCore/view/Vector3F;
    :goto_1
    if-ne v7, v0, :cond_5

    iget-object v4, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->isScaleAnimation()Z

    move-result v4

    if-ne v7, v4, :cond_5

    .line 1757
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->getCurrentScale()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v3

    .line 1758
    .restart local v3       #v:Lcom/htc/sunnyCore/view/Vector3F;
    iget v4, v3, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget v5, v3, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget v6, v3, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-super {p0, v4, v5, v6}, Lcom/htc/sunnyCore/SceneNode;->setScale(FFF)V

    .line 1763
    .end local v3           #v:Lcom/htc/sunnyCore/view/Vector3F;
    :goto_2
    if-ne v7, v0, :cond_6

    iget-object v4, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->isAlphaAnimation()Z

    move-result v4

    if-ne v7, v4, :cond_6

    .line 1764
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->getCurrentAlpha()I

    move-result v1

    .line 1765
    .local v1, nAlpha:I
    int-to-float v4, v1

    const/high16 v5, 0x437f

    div-float v2, v4, v5

    .line 1766
    .local v2, newAlpha:F
    const/high16 v4, 0x3f80

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    .line 1767
    float-to-int v4, v2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 1769
    :cond_2
    invoke-super {p0, v2}, Lcom/htc/sunnyCore/SceneNode;->setAlpha(F)V

    .line 1774
    .end local v1           #nAlpha:I
    .end local v2           #newAlpha:F
    :goto_3
    return-void

    .line 1746
    :cond_3
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SView;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v4, v4, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget-object v5, p0, Lcom/htc/sunnyCore/view/SView;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v5, v5, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget-object v6, p0, Lcom/htc/sunnyCore/view/SView;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v6, v6, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-super {p0, v4, v5, v6}, Lcom/htc/sunnyCore/SceneNode;->setPosition(FFF)V

    goto :goto_0

    .line 1753
    :cond_4
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SView;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v4, v4, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget-object v5, p0, Lcom/htc/sunnyCore/view/SView;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v5, v5, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget-object v6, p0, Lcom/htc/sunnyCore/view/SView;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v6, v6, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-super {p0, v4, v5, v6}, Lcom/htc/sunnyCore/SceneNode;->setRotate(FFF)V

    goto :goto_1

    .line 1760
    :cond_5
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SView;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    iget v4, v4, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget-object v5, p0, Lcom/htc/sunnyCore/view/SView;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    iget v5, v5, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget-object v6, p0, Lcom/htc/sunnyCore/view/SView;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    iget v6, v6, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-super {p0, v4, v5, v6}, Lcom/htc/sunnyCore/SceneNode;->setScale(FFF)V

    goto :goto_2

    .line 1772
    :cond_6
    iget v4, p0, Lcom/htc/sunnyCore/view/SView;->mAlpha:F

    invoke-super {p0, v4}, Lcom/htc/sunnyCore/SceneNode;->setAlpha(F)V

    goto :goto_3
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 2

    .prologue
    .line 1657
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1658
    invoke-direct {p0}, Lcom/htc/sunnyCore/view/SView;->cancelAnimationIRT()V

    .line 1663
    :goto_0
    return-void

    .line 1661
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->sendEmptyMessage(I)V

    goto :goto_0
.end method

.method public clearFocus()V
    .locals 0

    .prologue
    .line 2478
    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 2646
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    .line 2650
    .local v1, menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    new-instance v0, Lcom/htc/wrap/com/android/internal/view/menu/HtcWrapMenuBuilder;

    invoke-direct {v0}, Lcom/htc/wrap/com/android/internal/view/menu/HtcWrapMenuBuilder;-><init>()V

    .line 2651
    .local v0, htcMenuBuilder:Lcom/htc/wrap/com/android/internal/view/menu/HtcWrapMenuBuilder;
    invoke-static {p1, v1}, Lcom/htc/wrap/com/android/internal/view/menu/HtcWrapMenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 2655
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/view/SView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 2656
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v2, :cond_0

    .line 2657
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v2, p1, v3, v1}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 2662
    :cond_0
    invoke-static {p1, v3}, Lcom/htc/wrap/com/android/internal/view/menu/HtcWrapMenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 2665
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    if-eqz v2, :cond_1

    .line 2666
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    invoke-interface {v2, p1}, Lcom/htc/sunnyCore/view/SViewParent;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 2668
    :cond_1
    return-void
.end method

.method protected createResource()V
    .locals 4

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    if-nez v0, :cond_0

    .line 1418
    new-instance v0, Lcom/htc/sunnyCore/view/SView$SViewHandler;

    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SViewHandler-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->getNodeId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/htc/sunnyCore/view/SView$SViewHandler;-><init>(Lcom/htc/sunnyCore/view/SView;Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/RenderThread;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    .line 1424
    :goto_0
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    .line 1425
    return-void

    .line 1421
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->attachRenderThread(Lcom/htc/sunnyCore/RenderThread;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1467
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/view/SView;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchRenderOrderChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 2414
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/view/SView;->onRenderOrderChanged(Z)V

    .line 2415
    return-void
.end method

.method public dispatchResourceCreation(Z)V
    .locals 2
    .parameter "isCreated"

    .prologue
    const/16 v1, 0x8

    .line 1389
    if-eqz p1, :cond_2

    .line 1390
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->isBindedSurface()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1408
    :cond_0
    :goto_0
    return-void

    .line 1395
    :cond_1
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eq v0, v1, :cond_0

    .line 1399
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->createResource()V

    goto :goto_0

    .line 1402
    :cond_2
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v1, :cond_0

    .line 1406
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->freeResource()V

    goto :goto_0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 2581
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 1
    .parameter "event"
    .parameter "nHitSpriteId"

    .prologue
    .line 1547
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunnyCore/view/SView;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 1143
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1144
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1146
    :cond_0
    return-void
.end method

.method public enableOverlapRoundCorner(ILandroid/graphics/Rect;)V
    .locals 3
    .parameter "resourceId"
    .parameter "cornerRect"

    .prologue
    .line 2824
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    const/4 v1, 0x7

    new-instance v2, Lcom/htc/sunnyCore/view/SView$OverlapRoundCornerParam;

    invoke-direct {v2, p1, p2}, Lcom/htc/sunnyCore/view/SView$OverlapRoundCornerParam;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/RenderThreadHandler;->sendEmptyMessage(ILjava/lang/Object;)V

    .line 2825
    return-void
.end method

.method protected freeResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1431
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThreadHandler;->release()V

    .line 1435
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v0, :cond_1

    .line 1436
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/view/SView;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 1437
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->setTexture(Lcom/htc/sunnyCore/Texture;)V

    .line 1438
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 1439
    iput-object v1, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    .line 1442
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_2

    .line 1443
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1444
    iput-object v1, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    .line 1447
    :cond_2
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    .line 1448
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 2273
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mAlpha:F

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2776
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 2683
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDrawableState()[I
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mDrawableState:[I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mDrawableState:[I

    .line 1242
    :goto_0
    return-object v0

    .line 1240
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/view/SView;->onCreateDrawableState(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mDrawableState:[I

    .line 1241
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    .line 1242
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mDrawableState:[I

    goto :goto_0
.end method

.method public getGlobalBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2807
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    if-eqz v0, :cond_0

    .line 2808
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/SViewParent;->getGlobalBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2810
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 884
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mHeight:I

    return v0
.end method

.method public getLayoutParams()Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mLayoutParams:Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;

    return-object v0
.end method

.method public final getMeasuredHeight()I
    .locals 1

    .prologue
    .line 2185
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mMeasuredHeight:I

    return v0
.end method

.method public final getMeasuredWidth()I
    .locals 1

    .prologue
    .line 2172
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mMeasuredWidth:I

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 1383
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 1362
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 1376
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 1369
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingTop:I

    return v0
.end method

.method public final getPosition()Lcom/htc/sunnyCore/view/Vector3F;
    .locals 1

    .prologue
    .line 2232
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    return-object v0
.end method

.method public getRenderOrder()I
    .locals 1

    .prologue
    .line 2393
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mOrder:I

    return v0
.end method

.method public getRenderThread()Lcom/htc/sunnyCore/RenderThread;
    .locals 1

    .prologue
    .line 2726
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    if-eqz v0, :cond_0

    .line 2727
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/SViewParent;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    .line 2730
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSpritePosition(Lcom/htc/sunnyCore/Sprite;)Lcom/htc/sunnyCore/view/Vector3F;
    .locals 1
    .parameter "sprite"

    .prologue
    .line 2610
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    if-eqz v0, :cond_0

    .line 2611
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    invoke-interface {v0, p1}, Lcom/htc/sunnyCore/view/SViewParent;->getSpritePosition(Lcom/htc/sunnyCore/Sprite;)Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v0

    .line 2613
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 2098
    iget v1, p0, Lcom/htc/sunnyCore/view/SView;->mMinHeight:I

    .line 2100
    .local v1, suggestedMinHeight:I
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 2101
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 2102
    .local v0, bgMinHeight:I
    if-ge v1, v0, :cond_0

    .line 2103
    move v1, v0

    .line 2107
    .end local v0           #bgMinHeight:I
    :cond_0
    return v1
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    .line 2124
    iget v1, p0, Lcom/htc/sunnyCore/view/SView;->mMinWidth:I

    .line 2126
    .local v1, suggestedMinWidth:I
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 2127
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 2128
    .local v0, bgMinWidth:I
    if-ge v1, v0, :cond_0

    .line 2129
    move v1, v0

    .line 2133
    .end local v0           #bgMinWidth:I
    :cond_0
    return v1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2467
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mViewTagObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getViewNodeId()I
    .locals 1

    .prologue
    .line 2206
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->getNodeId()I

    move-result v0

    return v0
.end method

.method public getViewScale()Lcom/htc/sunnyCore/view/Vector3F;
    .locals 5

    .prologue
    .line 1575
    new-instance v1, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v1}, Lcom/htc/sunnyCore/view/Vector3F;-><init>()V

    .line 1576
    .local v1, vRes:Lcom/htc/sunnyCore/view/Vector3F;
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->isEnded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->isFillAfter()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->isStarted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1577
    :cond_0
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->isScaleAnimation()Z

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1578
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->getCurrentScale()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v0

    .line 1579
    .local v0, v:Lcom/htc/sunnyCore/view/Vector3F;
    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 1585
    .end local v0           #v:Lcom/htc/sunnyCore/view/Vector3F;
    :cond_1
    :goto_0
    return-object v1

    .line 1582
    :cond_2
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    iget v2, v2, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    iget v3, v3, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget-object v4, p0, Lcom/htc/sunnyCore/view/SView;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    iget v4, v4, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(FFF)V

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 872
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mWidth:I

    return v0
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 2490
    const/4 v0, 0x0

    return v0
.end method

.method public hasLayoutAnimation()Z
    .locals 1

    .prologue
    .line 1336
    iget-boolean v0, p0, Lcom/htc/sunnyCore/view/SView;->mHasLayoutAnimation:Z

    return v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 2515
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "drawable"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x4

    .line 1171
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/view/SView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-ne v2, v0, :cond_1

    .line 1172
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->hasMessages(I)Z

    move-result v0

    if-ne v2, v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->removeMessages(I)V

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->sendEmptyMessage(I)V

    .line 1177
    :cond_1
    return-void
.end method

.method public isBindedSurface()Z
    .locals 1

    .prologue
    .line 2737
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    if-eqz v0, :cond_0

    .line 2738
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/SViewParent;->isBindedSurface()Z

    move-result v0

    .line 2740
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 2527
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 2502
    const/4 v0, 0x0

    return v0
.end method

.method public isLayoutRequested()Z
    .locals 2

    .prologue
    .line 2706
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPressed()Z
    .locals 2

    .prologue
    .line 2597
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 2315
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final layout(FFFII)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1856
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->LAYOUT_LOCKER:Ljava/lang/Object;

    monitor-enter v2

    .line 1857
    :try_start_0
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    .line 1858
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1859
    invoke-virtual/range {p0 .. p5}, Lcom/htc/sunnyCore/view/SView;->setFrame(FFFII)Z

    move-result v1

    .line 1860
    .local v1, changed:Z
    if-nez v1, :cond_0

    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v2, 0x2000

    if-ne v0, v2, :cond_1

    :cond_0
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 1861
    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunnyCore/view/SView;->onLayout(ZFFFII)V

    .line 1862
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    .line 1864
    :cond_1
    return-void

    .line 1858
    .end local v1           #changed:Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final measure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v1, 0x1

    .line 1924
    const/4 v0, 0x0

    .line 1925
    .local v0, isForceLayout:Z
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->LAYOUT_LOCKER:Ljava/lang/Object;

    monitor-enter v2

    .line 1926
    :try_start_0
    iget v3, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    and-int/lit16 v3, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_3

    move v0, v1

    .line 1927
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1928
    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/htc/sunnyCore/view/SView;->mOldWidthMeasureSpec:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/htc/sunnyCore/view/SView;->mOldHeightMeasureSpec:I

    if-eq p2, v1, :cond_2

    .line 1933
    :cond_0
    iget v1, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    and-int/lit16 v1, v1, -0x801

    iput v1, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    .line 1936
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunnyCore/view/SView;->onMeasure(II)V

    .line 1940
    iget v1, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-eq v1, v2, :cond_1

    .line 1946
    const-string v1, "SView"

    const-string v2, "onMeasure() did not set the measured dimension by calling setMeasuredDimension()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    :cond_1
    iget v1, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    .line 1954
    :cond_2
    iput p1, p0, Lcom/htc/sunnyCore/view/SView;->mOldWidthMeasureSpec:I

    .line 1955
    iput p2, p0, Lcom/htc/sunnyCore/view/SView;->mOldHeightMeasureSpec:I

    .line 1956
    return-void

    .line 1926
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1927
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onAnimationCancel()V
    .locals 0

    .prologue
    .line 1700
    return-void
.end method

.method protected onAnimationEnd()V
    .locals 0

    .prologue
    .line 1693
    return-void
.end method

.method protected onAnimationStart()V
    .locals 0

    .prologue
    .line 1686
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 2193
    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 2695
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 9
    .parameter "extraSpace"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1266
    iget v3, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    .line 1268
    .local v3, privateFlags:I
    and-int/lit16 v7, v3, 0x4000

    if-eqz v7, :cond_0

    move v4, v5

    .line 1270
    .local v4, viewStateIndex:I
    :goto_0
    shl-int/lit8 v8, v4, 0x1

    iget v7, p0, Lcom/htc/sunnyCore/view/SView;->mViewFlags:I

    and-int/lit8 v7, v7, 0x20

    if-nez v7, :cond_1

    move v7, v5

    :goto_1
    add-int v4, v8, v7

    .line 1273
    shl-int/lit8 v8, v4, 0x1

    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v5

    :goto_2
    add-int v4, v8, v7

    .line 1275
    shl-int/lit8 v8, v4, 0x1

    and-int/lit8 v7, v3, 0x4

    if-eqz v7, :cond_3

    move v7, v5

    :goto_3
    add-int v4, v8, v7

    .line 1278
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->hasWindowFocus()Z

    move-result v2

    .line 1279
    .local v2, hasWindowFocus:Z
    shl-int/lit8 v7, v4, 0x1

    if-eqz v2, :cond_4

    :goto_4
    add-int v4, v7, v5

    .line 1281
    sget-object v5, Lcom/htc/sunnyCore/view/SView;->VIEW_STATE_SETS:[[I

    aget-object v0, v5, v4

    .line 1283
    .local v0, drawableState:[I
    if-nez p1, :cond_5

    .line 1295
    .end local v0           #drawableState:[I
    :goto_5
    return-object v0

    .end local v2           #hasWindowFocus:Z
    .end local v4           #viewStateIndex:I
    :cond_0
    move v4, v6

    .line 1268
    goto :goto_0

    .restart local v4       #viewStateIndex:I
    :cond_1
    move v7, v6

    .line 1270
    goto :goto_1

    :cond_2
    move v7, v6

    .line 1273
    goto :goto_2

    :cond_3
    move v7, v6

    .line 1275
    goto :goto_3

    .restart local v2       #hasWindowFocus:Z
    :cond_4
    move v5, v6

    .line 1279
    goto :goto_4

    .line 1288
    .restart local v0       #drawableState:[I
    :cond_5
    if-eqz v0, :cond_6

    .line 1289
    array-length v5, v0

    add-int/2addr v5, p1

    new-array v1, v5, [I

    .line 1290
    .local v1, fullState:[I
    array-length v5, v0

    invoke-static {v0, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_6
    move-object v0, v1

    .line 1295
    goto :goto_5

    .line 1292
    .end local v1           #fullState:[I
    :cond_6
    new-array v1, p1, [I

    .restart local v1       #fullState:[I
    goto :goto_6
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 2199
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/view/SView;->dispatchResourceCreation(Z)V

    .line 2200
    return-void
.end method

.method protected onFreeResource()V
    .locals 0

    .prologue
    .line 1455
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1517
    const/4 v0, 0x0

    .line 1525
    .local v0, result:Z
    return v0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1475
    const/4 v0, 0x0

    .line 1477
    .local v0, result:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1493
    :goto_0
    return v0

    .line 1481
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/htc/sunnyCore/view/SView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1482
    goto :goto_0

    .line 1486
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/htc/sunnyCore/view/SView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1487
    goto :goto_0

    .line 1477
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1533
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1501
    const/4 v0, 0x0

    .line 1509
    .local v0, result:Z
    return v0
.end method

.method protected onLayout(ZFFFII)V
    .locals 4
    .parameter "changed"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1883
    if-ne v2, p1, :cond_0

    .line 1884
    invoke-direct {p0}, Lcom/htc/sunnyCore/view/SView;->updateLayoutParameter()V

    .line 1887
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundSizeChanged:Z

    if-ne v2, v0, :cond_2

    .line 1889
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1892
    iput-boolean v1, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundSizeChanged:Z

    .line 1894
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/RenderThreadHandler;->hasMessages(I)Z

    move-result v0

    if-ne v2, v0, :cond_1

    .line 1895
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/RenderThreadHandler;->removeMessages(I)V

    .line 1897
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/RenderThreadHandler;->sendEmptyMessage(I)V

    .line 1899
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 2007
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/htc/sunnyCore/view/SView;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/htc/sunnyCore/view/SView;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunnyCore/view/SView;->setMeasuredDimension(II)V

    .line 2009
    return-void
.end method

.method protected onRenderOrderChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 2427
    if-nez p1, :cond_0

    .line 2428
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2429
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/view/SView;->setPressed(Z)V

    .line 2439
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->refreshDrawableState()V

    .line 2441
    const-string v0, "SView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onRenderOrderChanged() hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1831
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 3
    .parameter "event"
    .parameter "nHitSpriteId"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1556
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 1558
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1563
    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/view/SView;->setPressed(Z)V

    .line 1567
    :cond_0
    :goto_0
    iget v2, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    if-ne p2, v2, :cond_1

    :goto_1
    return v0

    .line 1560
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/view/SView;->setPressed(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1567
    goto :goto_1

    .line 1558
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onUpdatePositionAnimation()V
    .locals 4

    .prologue
    .line 1728
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->getCurrentPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v0

    .line 1729
    .local v0, v:Lcom/htc/sunnyCore/view/Vector3F;
    iget v1, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget v2, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget v3, v0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-super {p0, v1, v2, v3}, Lcom/htc/sunnyCore/SceneNode;->setPosition(FFF)V

    .line 1730
    return-void
.end method

.method public performHapticFeedback(I)Z
    .locals 1
    .parameter "feedbackConstant"

    .prologue
    .line 2756
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    if-eqz v0, :cond_0

    .line 2757
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    invoke-interface {v0, p1}, Lcom/htc/sunnyCore/view/SViewParent;->performHapticFeedback(I)Z

    move-result v0

    .line 2759
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performHapticFeedback(II)Z
    .locals 1
    .parameter "feedbackConstant"
    .parameter "flags"

    .prologue
    .line 2766
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    if-eqz v0, :cond_0

    .line 2767
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    invoke-interface {v0, p1, p2}, Lcom/htc/sunnyCore/view/SViewParent;->performHapticFeedback(II)Z

    move-result v0

    .line 2769
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playSoundEffect(I)V
    .locals 1
    .parameter "soundConstant"

    .prologue
    .line 2747
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    if-eqz v0, :cond_0

    .line 2748
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    invoke-interface {v0, p1}, Lcom/htc/sunnyCore/view/SViewParent;->playSoundEffect(I)V

    .line 2750
    :cond_0
    return-void
.end method

.method public refreshDrawableState()V
    .locals 1

    .prologue
    .line 1159
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    .line 1160
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->drawableStateChanged()V

    .line 1161
    return-void
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    .line 2713
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView;->LAYOUT_LOCKER:Ljava/lang/Object;

    monitor-enter v1

    .line 2714
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    if-eqz v0, :cond_0

    .line 2715
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/SViewParent;->requestLayout()V

    .line 2718
    :cond_0
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    .line 2719
    monitor-exit v1

    .line 2720
    return-void

    .line 2719
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    invoke-virtual {v0, p2, p1, p3, p4}, Lcom/htc/sunnyCore/RenderThreadHandler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)V

    .line 1187
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 2295
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 2296
    float-to-int v0, p1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 2299
    :cond_0
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mAlpha:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    .line 2304
    :goto_0
    return-void

    .line 2300
    :cond_1
    iput p1, p0, Lcom/htc/sunnyCore/view/SView;->mAlpha:F

    .line 2302
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/SceneNode;->setAlpha(F)V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 2284
    int-to-float v0, p1

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/view/SView;->setAlpha(F)V

    .line 2285
    return-void
.end method

.method public setAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V
    .locals 2
    .parameter "controller"

    .prologue
    .line 1639
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1641
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    .line 1642
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    if-eqz v0, :cond_0

    .line 1643
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setReady()V

    .line 1644
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->sendEmptyMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1647
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1649
    return-void

    .line 1647
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 1002
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/view/SView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1003
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 9
    .parameter "d"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 1066
    const/4 v1, 0x0

    .line 1068
    .local v1, requestLayout:Z
    iput v8, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundResource:I

    .line 1074
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 1075
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1078
    :cond_0
    if-eqz p1, :cond_7

    .line 1079
    sget-object v2, Lcom/htc/sunnyCore/view/SView;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1080
    .local v0, padding:Landroid/graphics/Rect;
    if-nez v0, :cond_1

    .line 1081
    new-instance v0, Landroid/graphics/Rect;

    .end local v0           #padding:Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1082
    .restart local v0       #padding:Landroid/graphics/Rect;
    sget-object v2, Lcom/htc/sunnyCore/view/SView;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1084
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingTop:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingBottom:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingLeft:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingRight:I

    if-nez v2, :cond_2

    .line 1085
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/htc/sunnyCore/view/SView;->setPadding(IIII)V

    .line 1090
    :cond_2
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 1092
    :cond_3
    const/4 v1, 0x1

    .line 1095
    :cond_4
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1096
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1097
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1099
    :cond_5
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->isVisible()Z

    move-result v2

    invoke-virtual {p1, v2, v8}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1100
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 1117
    .end local v0           #padding:Landroid/graphics/Rect;
    :goto_0
    iput-boolean v6, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundSizeChanged:Z

    .line 1119
    if-eqz v1, :cond_8

    .line 1120
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->requestLayout()V

    .line 1128
    :cond_6
    :goto_1
    return-void

    .line 1103
    :cond_7
    iput-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 1114
    const/4 v1, 0x1

    goto :goto_0

    .line 1122
    :cond_8
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->isBindedSurface()Z

    move-result v2

    if-ne v6, v2, :cond_6

    .line 1123
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    invoke-virtual {v2, v7}, Lcom/htc/sunnyCore/RenderThreadHandler;->hasMessages(I)Z

    move-result v2

    if-ne v6, v2, :cond_9

    .line 1124
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    invoke-virtual {v2, v7}, Lcom/htc/sunnyCore/RenderThreadHandler;->removeMessages(I)V

    .line 1126
    :cond_9
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    invoke-virtual {v2, v7}, Lcom/htc/sunnyCore/RenderThreadHandler;->sendEmptyMessage(I)V

    goto :goto_1
.end method

.method public setBackgroundRenderOrder(I)V
    .locals 1
    .parameter "nOrder"

    .prologue
    .line 990
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Sprite;->setRenderOrder(I)V

    .line 993
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0
    .parameter "resid"

    .prologue
    .line 1015
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/view/SView;->setBackgroundResource_IRT(I)V

    .line 1023
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/16 v1, 0x20

    .line 2539
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2548
    :goto_0
    return-void

    .line 2541
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/htc/sunnyCore/view/SView;->setFlags(II)V

    .line 2547
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->refreshDrawableState()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2541
    goto :goto_1
.end method

.method public setEnlargeSensorArea(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1310
    iput p1, p0, Lcom/htc/sunnyCore/view/SView;->mEnlargeSensorAreaL:I

    .line 1311
    iput p2, p0, Lcom/htc/sunnyCore/view/SView;->mEnlargeSensorAreaT:I

    .line 1312
    iput p3, p0, Lcom/htc/sunnyCore/view/SView;->mEnlargeSensorAreaR:I

    .line 1313
    iput p4, p0, Lcom/htc/sunnyCore/view/SView;->mEnlargeSensorAreaB:I

    .line 1315
    return-void
.end method

.method setFlags(II)V
    .locals 5
    .parameter "flags"
    .parameter "mask"

    .prologue
    .line 2346
    iget v1, p0, Lcom/htc/sunnyCore/view/SView;->mViewFlags:I

    .line 2347
    .local v1, old:I
    iget v3, p0, Lcom/htc/sunnyCore/view/SView;->mViewFlags:I

    xor-int/lit8 v4, p2, -0x1

    and-int/2addr v3, v4

    and-int v4, p1, p2

    or-int/2addr v3, v4

    iput v3, p0, Lcom/htc/sunnyCore/view/SView;->mViewFlags:I

    .line 2349
    iget v3, p0, Lcom/htc/sunnyCore/view/SView;->mViewFlags:I

    xor-int v0, v3, v1

    .line 2350
    .local v0, changed:I
    if-nez v0, :cond_1

    .line 2387
    :cond_0
    :goto_0
    return-void

    .line 2353
    :cond_1
    iget v2, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    .line 2356
    .local v2, privateFlags:I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_2

    .line 2357
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_2

    .line 2359
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->clearFocus()V

    .line 2372
    :cond_2
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_0

    .line 2378
    iget v3, p0, Lcom/htc/sunnyCore/view/SView;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2379
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->clearFocus()V

    goto :goto_0
.end method

.method protected setFrame(FFFII)Z
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1790
    const/4 v0, 0x0

    .line 1792
    .local v0, changed:Z
    iget-object v8, p0, Lcom/htc/sunnyCore/view/SView;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v5, v8, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 1793
    .local v5, oldX:F
    iget-object v8, p0, Lcom/htc/sunnyCore/view/SView;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v6, v8, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 1794
    .local v6, oldY:F
    iget-object v8, p0, Lcom/htc/sunnyCore/view/SView;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v7, v8, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 1796
    .local v7, oldZ:F
    invoke-static {v5, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v6, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v7, p3}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_0

    iget v8, p0, Lcom/htc/sunnyCore/view/SView;->mWidth:I

    if-ne v8, p4, :cond_0

    iget v8, p0, Lcom/htc/sunnyCore/view/SView;->mHeight:I

    if-eq v8, p5, :cond_3

    .line 1800
    :cond_0
    const/4 v0, 0x1

    .line 1802
    iget v4, p0, Lcom/htc/sunnyCore/view/SView;->mWidth:I

    .line 1803
    .local v4, oldWidth:I
    iget v3, p0, Lcom/htc/sunnyCore/view/SView;->mHeight:I

    .line 1805
    .local v3, oldHeight:I
    iget-object v8, p0, Lcom/htc/sunnyCore/view/SView;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iput p1, v8, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 1806
    iget-object v8, p0, Lcom/htc/sunnyCore/view/SView;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iput p2, v8, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 1807
    iget-object v8, p0, Lcom/htc/sunnyCore/view/SView;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iput p3, v8, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    .line 1809
    iput p4, p0, Lcom/htc/sunnyCore/view/SView;->mWidth:I

    .line 1810
    iput p5, p0, Lcom/htc/sunnyCore/view/SView;->mHeight:I

    .line 1812
    iget v8, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    .line 1814
    iget v2, p0, Lcom/htc/sunnyCore/view/SView;->mWidth:I

    .line 1815
    .local v2, newWidth:I
    iget v1, p0, Lcom/htc/sunnyCore/view/SView;->mHeight:I

    .line 1817
    .local v1, newHeight:I
    if-ne v2, v4, :cond_1

    if-eq v1, v3, :cond_2

    .line 1818
    :cond_1
    invoke-virtual {p0, v2, v1, v4, v3}, Lcom/htc/sunnyCore/view/SView;->onSizeChanged(IIII)V

    .line 1821
    :cond_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/sunnyCore/view/SView;->mBackgroundSizeChanged:Z

    .line 1823
    .end local v1           #newHeight:I
    .end local v2           #newWidth:I
    .end local v3           #oldHeight:I
    .end local v4           #oldWidth:I
    :cond_3
    return v0
.end method

.method public setGlobalBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 2801
    return-void
.end method

.method public setGlobalBackgroundResource(I)V
    .locals 3
    .parameter "resourceId"

    .prologue
    .line 2788
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2789
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/view/SView;->setGlobalBackgroundResource_IRT(I)V

    .line 2794
    :goto_0
    return-void

    .line 2792
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/RenderThreadHandler;->sendEmptyMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public setLayoutAnimation(Z)V
    .locals 0
    .parameter "bEnableAnimation"

    .prologue
    .line 1343
    iput-boolean p1, p0, Lcom/htc/sunnyCore/view/SView;->mHasLayoutAnimation:Z

    .line 1344
    return-void
.end method

.method public setLayoutParams(Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 913
    if-nez p1, :cond_0

    .line 914
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "params == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 916
    :cond_0
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SView;->mLayoutParams:Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;

    .line 917
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->requestLayout()V

    .line 918
    return-void
.end method

.method public setLayoutParamsWithoutLayout(Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 924
    if-nez p1, :cond_0

    .line 925
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "params == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 927
    :cond_0
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SView;->mLayoutParams:Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;

    .line 928
    return-void
.end method

.method protected final setMeasuredDimension(II)V
    .locals 1
    .parameter "measuredWidth"
    .parameter "measuredHeight"

    .prologue
    .line 2022
    iput p1, p0, Lcom/htc/sunnyCore/view/SView;->mMeasuredWidth:I

    .line 2023
    iput p2, p0, Lcom/htc/sunnyCore/view/SView;->mMeasuredHeight:I

    .line 2025
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    .line 2026
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0
    .parameter "minHeight"

    .prologue
    .line 2146
    iput p1, p0, Lcom/htc/sunnyCore/view/SView;->mMinHeight:I

    .line 2147
    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0
    .parameter "minWidth"

    .prologue
    .line 2159
    iput p1, p0, Lcom/htc/sunnyCore/view/SView;->mMinWidth:I

    .line 2160
    return-void
.end method

.method public setOnClickListener(Lcom/htc/sunnyCore/view/SView$OnClickListener;)V
    .locals 0
    .parameter "listner"

    .prologue
    .line 1327
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SView;->mClickListener:Lcom/htc/sunnyCore/view/SView$OnClickListener;

    .line 1328
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2628
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SView;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 2629
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1350
    iput p2, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingTop:I

    .line 1351
    iput p1, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingLeft:I

    .line 1352
    iput p4, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingBottom:I

    .line 1353
    iput p3, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingRight:I

    .line 1355
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->requestLayout()V

    .line 1356
    return-void
.end method

.method public setParent(Lcom/htc/sunnyCore/view/SViewParent;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 2603
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    .line 2604
    return-void
.end method

.method public setPosition(FFF)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 2219
    iget v4, p0, Lcom/htc/sunnyCore/view/SView;->mWidth:I

    iget v5, p0, Lcom/htc/sunnyCore/view/SView;->mHeight:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/view/SView;->setFrame(FFFII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2220
    invoke-super {p0, p1, p2, p3}, Lcom/htc/sunnyCore/SceneNode;->setPosition(FFF)V

    .line 2221
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(FFF)V

    .line 2226
    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 2562
    if-eqz p1, :cond_0

    .line 2563
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    .line 2567
    :goto_0
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->refreshDrawableState()V

    .line 2568
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/view/SView;->dispatchSetPressed(Z)V

    .line 2569
    return-void

    .line 2565
    :cond_0
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/htc/sunnyCore/view/SView;->mPrivateFlags:I

    goto :goto_0
.end method

.method public setRenderOrder(I)V
    .locals 0
    .parameter "nOrder"

    .prologue
    .line 2400
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/SceneNode;->setRenderOrder(I)V

    .line 2401
    iput p1, p0, Lcom/htc/sunnyCore/view/SView;->mOrder:I

    .line 2402
    return-void
.end method

.method public setRotate(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 2262
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(FFF)V

    .line 2263
    invoke-super {p0, p1, p2, p3}, Lcom/htc/sunnyCore/SceneNode;->setRotate(FFF)V

    .line 2267
    return-void
.end method

.method public setScale(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 2245
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(FFF)V

    .line 2246
    invoke-super {p0, p1, p2, p3}, Lcom/htc/sunnyCore/SceneNode;->setScale(FFF)V

    .line 2250
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 2455
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SView;->mViewTagObject:Ljava/lang/Object;

    .line 2456
    return-void
.end method

.method public setVisibility(Z)V
    .locals 4
    .parameter "bVisible"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2326
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->isVisible()Z

    move-result v3

    if-ne v3, p1, :cond_0

    .line 2335
    :goto_0
    return-void

    .line 2328
    :cond_0
    if-ne p1, v2, :cond_2

    move v0, v1

    .line 2329
    .local v0, visibility:I
    :goto_1
    const/16 v3, 0xc

    invoke-virtual {p0, v0, v3}, Lcom/htc/sunnyCore/view/SView;->setFlags(II)V

    .line 2330
    iget-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 2331
    iget-object v3, p0, Lcom/htc/sunnyCore/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v3, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2334
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/SceneNode;->setVisibility(Z)V

    goto :goto_0

    .line 2328
    .end local v0           #visibility:I
    :cond_2
    const/16 v0, 0x8

    goto :goto_1

    .restart local v0       #visibility:I
    :cond_3
    move v2, v1

    .line 2331
    goto :goto_2
.end method

.method public startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V
    .locals 2
    .parameter "controller"

    .prologue
    .line 1596
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunnyCore/RenderThreadHandler;->sendEmptyMessage(ILjava/lang/Object;)V

    .line 1602
    :goto_0
    return-void

    .line 1600
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/view/SView;->startAnimationIRT(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto :goto_0
.end method

.method protected startAnimationIRT(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V
    .locals 2
    .parameter "controller"

    .prologue
    .line 1609
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1611
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->isEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1613
    const-string v0, "SView"

    const-string v1, "Can\'t apply two animation at the same time."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->cancel()V

    .line 1617
    :cond_0
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    .line 1618
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    if-eqz v0, :cond_1

    .line 1619
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationController:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->start()V

    .line 1620
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SView;->onAnimationStart()V

    .line 1623
    :cond_1
    invoke-direct {p0}, Lcom/htc/sunnyCore/view/SView;->applyAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1626
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1628
    return-void

    .line 1626
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "who"
    .parameter "what"

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/view/SView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    invoke-virtual {v0, p2, p1}, Lcom/htc/sunnyCore/RenderThreadHandler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 1197
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
