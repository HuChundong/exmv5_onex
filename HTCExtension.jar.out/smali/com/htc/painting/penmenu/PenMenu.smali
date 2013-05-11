.class public Lcom/htc/painting/penmenu/PenMenu;
.super Landroid/widget/FrameLayout;
.source "PenMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu/PenMenu$11;,
        Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;,
        Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;,
        Lcom/htc/painting/penmenu/PenMenu$DockCorner;,
        Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;,
        Lcom/htc/painting/penmenu/PenMenu$SignatureState;,
        Lcom/htc/painting/penmenu/PenMenu$StrokeVisibleState;,
        Lcom/htc/painting/penmenu/PenMenu$StateMonitor;,
        Lcom/htc/painting/penmenu/PenMenu$State;
    }
.end annotation


# static fields
.field private static final ALPHA_BLURRED:I = 0xc0

.field public static final BASE_ID:I = 0x0

.field public static final CLEAR_ACTION_ID:I = 0x12c

.field public static final COLOR_MENU_ID:I = 0x3

.field private static final DEFAULT_ACTION_COUNT:I = 0x4

.field private static final DEFAULT_COLOR_COUNT:I = 0x8

.field private static final DEFAULT_HISTORY_COUNT:I = 0x5

.field private static final DEFAULT_MENU_COUNT:I = 0x3

.field private static final DEFAULT_SIZE_COUNT:I = 0x5

.field private static final DEFAULT_TYPE_COUNT:I = 0x7

.field public static final DISMISS_INTERVAL_DEFAULT:J = -0x1L

.field public static final DISMISS_INTERVAL_LONG:J = 0x2710L

.field public static final DISMISS_INTERVAL_MIN:J = 0x3e8L

.field public static final DISMISS_INTERVAL_NEVER:J = -0x1L

.field public static final DISMISS_INTERVAL_SHORT:J = 0x1388L

.field private static final ERASER_MODE_MIN_SIZE:F = 12.0f

.field private static final LOG_TAG:Ljava/lang/String; = "PenMenu"

.field public static final L_SIZE_ID:I = 0x1d

.field private static final MAX_ACTION_COUNT:I = 0x6

.field private static final MAX_HISTORY_COUNT:I = 0x8

.field private static final MAX_MENU_COUNT:I = 0x5

.field private static final MAX_OPTION_COUNT:I = 0x8

.field private static final MIN_ACTION_COUNT:I = 0x1

.field private static final MIN_HISTORY_COUNT:I = 0x1

.field private static final MIN_MENU_COUNT:I = 0x1

.field private static final MIN_OPTION_COUNT:I = 0x1

.field public static final M_SIZE_ID:I = 0x11

.field public static final PENSET_ALL:I = 0x0

.field public static final PENSET_DEFAULT:I = 0x0

.field public static final PENSET_SIMPLE:I = 0x1

.field public static final PENSET_SINGLE:I = 0x2

.field private static final PEN_KEY_ID:I = 0xd8

.field private static final PROMPT_EXTEND_WIDTH:I = 0x3c

.field private static final QUICK_BUTTON_ERASER_RATION:F = 2.5f

.field public static final REDO_ACTION_ID:I = 0x190

.field public static final SIZE_MENU_ID:I = 0x1

.field public static final STROKE_INVISIBLE:I = 0x0

.field public static final STROKE_VISIBLE:I = 0x1

.field public static final S_SIZE_ID:I = 0x9

.field public static final TYPE_MENU_ID:I = 0x2

.field public static final UNDO_ACTION_ID:I = 0x64

.field public static final VISIBLE_ACTION_ID:I = 0xc8

.field public static final XL_SIZE_ID:I = 0x2b

.field public static final XS_SIZE_ID:I = 0x5

.field private static sCacheWaterWaveDrawable:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/AnimationDrawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ANIM_DURATION:I

.field private final STROKE_INVISIBLE_ALPHA:I

.field private final STROKE_VISIBLE_ALPHA:I

.field private mActionCount:I

.field private mActionListener:Lcom/htc/painting/penmenu/OnActionPerformListener;

.field private mActionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/painting/penmenu/action/ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

.field private mAnimInProgress:Z

.field private mAnimationEnabled:Z

.field private mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

.field private mCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

.field private mColorCount:I

.field private mCurrentPen:Lcom/htc/painting/penmenu/Pen;

.field private volatile mDestoryStarted:Z

.field private mDismissTimerTask:Ljava/lang/Runnable;

.field private mDissmissInterval:J

.field private mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

.field private mEraserModeSize:F

.field private mForceHideStroke:Z

.field private mHandler:Landroid/os/Handler;

.field private mHistoryCount:I

.field private mIMERecever:Landroid/content/BroadcastReceiver;

.field mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsEraserMode:Z

.field private mLastUseTime:J

.field private mListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

.field private mMenu:Lcom/htc/painting/penmenu/menu/Menu;

.field private mMenuCount:I

.field private mMenuOptionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/painting/penmenu/menu/MenuOptions",
            "<+",
            "Lcom/htc/painting/penmenu/menu/OptionItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

.field private mMoveInAnim:Landroid/view/animation/Animation;

.field private mMoveInAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field private mMoveOutAnim:Landroid/view/animation/Animation;

.field private mMoveOutAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field private mOuterActionPerformListener:Lcom/htc/painting/penmenu/OnActionPerformListener;

.field private mOuterOptionChangedListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

.field private mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

.field private mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

.field private mPenSetType:I

.field mPenTypeLoadingListener:Lcom/htc/painting/penmenu/PenManager$IPenTypeLoadingListener;

.field private mPromptDismissInterval:J

.field private mPromptView:Landroid/widget/TextView;

.field private mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

.field private mRestoreSettingThread:Landroid/os/HandlerThread;

.field private mRestoreSettingToken:I

.field private mSelectedMenuId:I

.field private mSizeCount:I

.field private mState:Lcom/htc/painting/penmenu/PenMenu$State;

.field private mStateManager:Lcom/htc/painting/penmenu/StateManager;

.field private mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

.field private mStrokeListener:Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;

.field private mStrokeVisibility:I

.field private mTypeCount:I

.field private mWarningEraserForFirstStroke:Z

.field private mWaterWaveAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 868
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/painting/penmenu/PenMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 869
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 875
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/painting/penmenu/PenMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 876
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 882
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 230
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mHandler:Landroid/os/Handler;

    .line 268
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    .line 273
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mLastUseTime:J

    .line 279
    new-instance v5, Lcom/htc/painting/penmenu/PenMenu$1;

    invoke-direct {v5, p0}, Lcom/htc/painting/penmenu/PenMenu$1;-><init>(Lcom/htc/painting/penmenu/PenMenu;)V

    iput-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mDismissTimerTask:Ljava/lang/Runnable;

    .line 291
    const/4 v5, 0x4

    iput v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionCount:I

    .line 296
    iput v11, p0, Lcom/htc/painting/penmenu/PenMenu;->mHistoryCount:I

    .line 301
    iput v10, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuCount:I

    .line 306
    const/4 v5, 0x7

    iput v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mTypeCount:I

    .line 311
    iput v11, p0, Lcom/htc/painting/penmenu/PenMenu;->mSizeCount:I

    .line 316
    const/16 v5, 0x8

    iput v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mColorCount:I

    .line 372
    iput-boolean v7, p0, Lcom/htc/painting/penmenu/PenMenu;->mForceHideStroke:Z

    .line 374
    iput v9, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeVisibility:I

    .line 384
    iput v7, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    .line 390
    iput-boolean v9, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimationEnabled:Z

    .line 403
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 409
    new-instance v5, Lcom/htc/painting/penmenu/PenMenu$2;

    invoke-direct {v5, p0}, Lcom/htc/painting/penmenu/PenMenu$2;-><init>(Lcom/htc/painting/penmenu/PenMenu;)V

    iput-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 448
    new-instance v5, Lcom/htc/painting/penmenu/PenMenu$3;

    invoke-direct {v5, p0}, Lcom/htc/painting/penmenu/PenMenu$3;-><init>(Lcom/htc/painting/penmenu/PenMenu;)V

    iput-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 526
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuOptionsMap:Ljava/util/Map;

    .line 531
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    .line 536
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    .line 542
    iput v10, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    .line 548
    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mEraserModeSize:F

    .line 555
    iput-boolean v7, p0, Lcom/htc/painting/penmenu/PenMenu;->mIsEraserMode:Z

    .line 567
    iput-boolean v9, p0, Lcom/htc/painting/penmenu/PenMenu;->mWarningEraserForFirstStroke:Z

    .line 581
    const-wide/16 v5, 0x1388

    iput-wide v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptDismissInterval:J

    .line 683
    new-instance v5, Lcom/htc/painting/penmenu/PenMenu$4;

    invoke-direct {v5, p0}, Lcom/htc/painting/penmenu/PenMenu$4;-><init>(Lcom/htc/painting/penmenu/PenMenu;)V

    iput-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    .line 719
    new-instance v5, Lcom/htc/painting/penmenu/PenMenu$5;

    invoke-direct {v5, p0}, Lcom/htc/painting/penmenu/PenMenu$5;-><init>(Lcom/htc/painting/penmenu/PenMenu;)V

    iput-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionListener:Lcom/htc/painting/penmenu/OnActionPerformListener;

    .line 819
    new-instance v5, Lcom/htc/painting/penmenu/PenMenu$6;

    invoke-direct {v5, p0}, Lcom/htc/painting/penmenu/PenMenu$6;-><init>(Lcom/htc/painting/penmenu/PenMenu;)V

    iput-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    .line 840
    new-instance v5, Lcom/htc/painting/penmenu/PenMenu$7;

    invoke-direct {v5, p0}, Lcom/htc/painting/penmenu/PenMenu$7;-><init>(Lcom/htc/painting/penmenu/PenMenu;)V

    iput-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenTypeLoadingListener:Lcom/htc/painting/penmenu/PenManager$IPenTypeLoadingListener;

    .line 1070
    new-instance v5, Lcom/htc/painting/penmenu/StateManager;

    invoke-direct {v5}, Lcom/htc/painting/penmenu/StateManager;-><init>()V

    iput-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    .line 2511
    new-instance v5, Lcom/htc/painting/penmenu/PenMenu$9;

    invoke-direct {v5, p0}, Lcom/htc/painting/penmenu/PenMenu$9;-><init>(Lcom/htc/painting/penmenu/PenMenu;)V

    iput-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeListener:Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;

    .line 2805
    iput-boolean v7, p0, Lcom/htc/painting/penmenu/PenMenu;->mDestoryStarted:Z

    .line 3666
    sget-object v5, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->RIGHT_BOTTOM:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    iput-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    .line 3964
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingThread:Landroid/os/HandlerThread;

    .line 3966
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    .line 3968
    iput v7, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingToken:I

    .line 883
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    .line 884
    const-string v5, "PenMenu"

    const-string v6, "constructor - begin"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_0
    new-instance v4, Landroid/util/TimingLogger;

    const-string v5, "PenMenu"

    const-string v6, "Constructor"

    invoke-direct {v4, v5, v6}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    .local v4, timings:Landroid/util/TimingLogger;
    if-eqz p2, :cond_3

    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_3

    .line 889
    const-string v3, ""

    .line 890
    .local v3, s:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 891
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2, v0}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 892
    invoke-interface {p2, v0}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v1

    .line 893
    .local v1, id:I
    if-eqz v1, :cond_1

    .line 894
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 896
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 890
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 898
    .end local v1           #id:I
    :cond_2
    const-string v5, "PenMenu"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    .end local v0           #i:I
    .end local v3           #s:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20e00cb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/painting/penmenu/PenMenu;->STROKE_INVISIBLE_ALPHA:I

    .line 902
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20e00cc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/painting/penmenu/PenMenu;->STROKE_VISIBLE_ALPHA:I

    .line 903
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20e00cd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/painting/penmenu/PenMenu;->ANIM_DURATION:I

    .line 904
    invoke-static {}, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->values()[Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x20e00c7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    aget-object v5, v5, v6

    iput-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    .line 906
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->init()V

    .line 907
    const-string v5, "init()"

    invoke-virtual {v4, v5}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 908
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_4

    .line 909
    const-string v5, "PenMenu"

    const-string v6, "constructor - init end."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_4
    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "IME_CURRENT_STATE"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 915
    .local v2, intentfilter:Landroid/content/IntentFilter;
    new-instance v5, Lcom/htc/painting/penmenu/PenMenu$8;

    invoke-direct {v5, p0}, Lcom/htc/painting/penmenu/PenMenu$8;-><init>(Lcom/htc/painting/penmenu/PenMenu;)V

    iput-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mIMERecever:Landroid/content/BroadcastReceiver;

    .line 930
    iget-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mIMERecever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 932
    const-string v5, "finish"

    invoke-virtual {v4, v5}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 933
    invoke-virtual {v4}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 934
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_5

    .line 935
    invoke-virtual {v4}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 936
    const-string v5, "PenMenu"

    const-string v6, "constructor - end"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/htc/painting/penmenu/PenMenu;Lcom/htc/painting/penmenu/PenMenu$State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenMenu;->setStateVisible(Lcom/htc/painting/penmenu/PenMenu$State;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->getPaintingViewUndoRedo()V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/painting/penmenu/PenMenu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimInProgress:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/PenMenu$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/painting/penmenu/PenMenu;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/painting/penmenu/PenMenu;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/painting/penmenu/PenMenu;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/penmenu/PenMenu;->updateBlockConditions(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1502(Lcom/htc/painting/penmenu/PenMenu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeVisibility:I

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/painting/penmenu/PenMenu;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenMenu;->getIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/Pen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->onPainting()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/painting/penmenu/PenMenu;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mIsEraserMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/PenMenu$StateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/painting/penmenu/PenMenu;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mWarningEraserForFirstStroke:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/painting/penmenu/PenMenu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mWarningEraserForFirstStroke:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->restoreGlobalState()V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->reloadPenData()V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->saveGlobalState()V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/painting/penmenu/PenMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingToken:I

    return v0
.end method

.method static synthetic access$2508(Lcom/htc/painting/penmenu/PenMenu;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingToken:I

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->refreshAfterRestore()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/menu/Menu$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/history/PenHistory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/action/ActionPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mOuterOptionChangedListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/OnActionPerformListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mOuterActionPerformListener:Lcom/htc/painting/penmenu/OnActionPerformListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/engine/IStrokeNotifyPaintingView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setPaintingViewDisplayAlpha()V

    return-void
.end method

.method private addAction(Lcom/htc/painting/penmenu/action/ActionItem;)Z
    .locals 4
    .parameter "item"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1500
    if-nez p1, :cond_0

    .line 1501
    const-string v1, "PenMenu"

    const-string v2, "addAction - item is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    :goto_0
    return v0

    .line 1505
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/action/ActionItem;->getActionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1506
    const-string v1, "PenMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAction - action has existed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/action/ActionItem;->getActionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1510
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/action/ActionItem;->getActionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private addMenu(Lcom/htc/painting/penmenu/menu/MenuOptions;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/painting/penmenu/menu/MenuOptions",
            "<+",
            "Lcom/htc/painting/penmenu/menu/OptionItem;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, item:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    const/4 v0, 0x0

    .line 1485
    if-nez p1, :cond_0

    .line 1486
    const-string v1, "PenMenu"

    const-string v2, "addMenu - item is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    :goto_0
    return v0

    .line 1490
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuOptionsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1491
    const-string v1, "PenMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addMenu - menu has existed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1495
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuOptionsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static adjustCanvasByCorner(Lcom/htc/painting/penmenu/PenMenu$DockCorner;Landroid/graphics/Canvas;II)V
    .locals 5
    .parameter "corner"
    .parameter "canvas"
    .parameter "iconWidth"
    .parameter "iconHeight"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/high16 v2, -0x4080

    .line 3692
    sget-object v0, Lcom/htc/painting/penmenu/PenMenu$11;->$SwitchMap$com$htc$painting$penmenu$PenMenu$DockCorner:[I

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3708
    :goto_0
    return-void

    .line 3694
    :pswitch_0
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3695
    neg-int v0, p2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 3698
    :pswitch_1
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3699
    neg-int v0, p2

    int-to-float v0, v0

    neg-int v1, p3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 3702
    :pswitch_2
    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3703
    neg-int v0, p3

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 3692
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private adjustCoordinate(Landroid/view/MotionEvent;)Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;
    .locals 7
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 3099
    if-nez p1, :cond_0

    move-object v2, v5

    .line 3128
    :goto_0
    return-object v2

    .line 3103
    :cond_0
    new-instance v2, Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;

    invoke-direct {v2, p1, v5}, Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;-><init>(Landroid/view/MotionEvent;Lcom/htc/painting/penmenu/PenMenu$1;)V

    .line 3105
    .local v2, record:Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getX()F

    move-result v5

    neg-float v0, v5

    .line 3106
    .local v0, offsetX:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getY()F

    move-result v5

    neg-float v1, v5

    .line 3108
    .local v1, offsetY:F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 3111
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 3112
    .local v4, y:F
    sget-object v5, Lcom/htc/painting/penmenu/PenMenu$11;->$SwitchMap$com$htc$painting$penmenu$PenMenu$DockCorner:[I

    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 3126
    :goto_1
    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 3114
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v3, v5, v6

    .line 3115
    goto :goto_1

    .line 3117
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v3, v5, v6

    .line 3118
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float v4, v5, v6

    .line 3119
    goto :goto_1

    .line 3121
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float v4, v5, v6

    .line 3122
    goto :goto_1

    .line 3112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private adjustLayoutByParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 7
    .parameter "p"

    .prologue
    const/16 v6, 0x55

    const/16 v5, 0x53

    const/16 v4, 0x35

    const/16 v3, 0x33

    const/4 v1, -0x2

    .line 4214
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4215
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4217
    instance-of v1, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_7

    move-object v0, p1

    .line 4218
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4219
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->RIGHT_BOTTOM:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->LEFT_BOTTOM:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-ne v1, v2, :cond_1

    .line 4220
    :cond_0
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4222
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->RIGHT_TOP:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->LEFT_TOP:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-ne v1, v2, :cond_3

    .line 4223
    :cond_2
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4225
    :cond_3
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->LEFT_TOP:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->LEFT_BOTTOM:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-ne v1, v2, :cond_5

    .line 4226
    :cond_4
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4228
    :cond_5
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->RIGHT_TOP:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->RIGHT_BOTTOM:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-ne v1, v2, :cond_7

    .line 4229
    :cond_6
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4233
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    instance-of v1, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_8

    move-object v0, p1

    .line 4234
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 4235
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->RIGHT_BOTTOM:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-ne v1, v2, :cond_a

    .line 4236
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 4246
    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    :goto_0
    instance-of v1, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_9

    move-object v0, p1

    .line 4247
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 4248
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->RIGHT_BOTTOM:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-ne v1, v2, :cond_d

    .line 4249
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4258
    .end local v0           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_9
    :goto_1
    return-void

    .line 4237
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_a
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->LEFT_BOTTOM:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-ne v1, v2, :cond_b

    .line 4238
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 4239
    :cond_b
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->RIGHT_TOP:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-ne v1, v2, :cond_c

    .line 4240
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 4241
    :cond_c
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->LEFT_TOP:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-ne v1, v2, :cond_8

    .line 4242
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 4250
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_d
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->LEFT_BOTTOM:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-ne v1, v2, :cond_e

    .line 4251
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 4252
    :cond_e
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->RIGHT_TOP:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-ne v1, v2, :cond_f

    .line 4253
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 4254
    :cond_f
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->LEFT_TOP:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    if-ne v1, v2, :cond_9

    .line 4255
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1
.end method

.method private adjustMotionEvent(Landroid/view/MotionEvent;)Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;
    .locals 5
    .parameter "ev"

    .prologue
    .line 3794
    new-instance v0, Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;-><init>(Landroid/view/MotionEvent;Lcom/htc/painting/penmenu/PenMenu$1;)V

    .line 3795
    .local v0, record:Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 3796
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 3798
    .local v2, y:F
    sget-object v3, Lcom/htc/painting/penmenu/PenMenu$11;->$SwitchMap$com$htc$painting$penmenu$PenMenu$DockCorner:[I

    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3812
    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 3814
    return-object v0

    .line 3800
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float v1, v3, v4

    .line 3801
    goto :goto_0

    .line 3803
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float v1, v3, v4

    .line 3804
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float v2, v3, v4

    .line 3805
    goto :goto_0

    .line 3807
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float v2, v3, v4

    .line 3808
    goto :goto_0

    .line 3798
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private applyCurrentPen(Lcom/htc/painting/penmenu/Pen;)V
    .locals 1
    .parameter "pen"

    .prologue
    .line 2025
    if-eqz p1, :cond_0

    .line 2026
    invoke-virtual {p1}, Lcom/htc/painting/penmenu/Pen;->clone()Lcom/htc/painting/penmenu/Pen;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    .line 2030
    :goto_0
    return-void

    .line 2028
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    goto :goto_0
.end method

.method private applyHistoryPens(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/Pen;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, historyPens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/Pen;>;"
    const/4 v2, 0x1

    .line 2033
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    if-nez v0, :cond_1

    .line 2034
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/Pen;->getHistorySeqNo()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/painting/penmenu/PenMenu;->setupHitoryPens(ZILjava/util/List;)V

    .line 2042
    :cond_0
    :goto_0
    return-void

    .line 2036
    :cond_1
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    if-ne v0, v2, :cond_2

    .line 2037
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/Pen;->getHistorySeqNo()I

    move-result v0

    invoke-direct {p0, v2, v0, p1}, Lcom/htc/painting/penmenu/PenMenu;->setupHitoryPens(ZILjava/util/List;)V

    goto :goto_0

    .line 2039
    :cond_2
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2040
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/Pen;->getHistorySeqNo()I

    move-result v0

    invoke-direct {p0, v2, v0, p1}, Lcom/htc/painting/penmenu/PenMenu;->setupHitoryPens(ZILjava/util/List;)V

    goto :goto_0
.end method

.method private getColorOptions(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/menu/ColorItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1257
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/menu/ColorItem;>;"
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1259
    .local v5, res:Landroid/content/res/Resources;
    const v6, 0x207001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1260
    .local v1, colors:Landroid/content/res/TypedArray;
    const v6, 0x20801e4

    invoke-direct {p0, v6}, Lcom/htc/painting/penmenu/PenMenu;->getIcon(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1262
    .local v4, platter:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 1263
    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 1264
    .local v0, color:I
    new-instance v3, Lcom/htc/painting/penmenu/menu/ColorItem;

    invoke-direct {v3, v0, v4}, Lcom/htc/painting/penmenu/menu/ColorItem;-><init>(ILandroid/graphics/Bitmap;)V

    .line 1265
    .local v3, item:Lcom/htc/painting/penmenu/menu/ColorItem;
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mWaterWaveAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v6}, Lcom/htc/painting/penmenu/menu/ColorItem;->setAnimationDrawable(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 1269
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1262
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1271
    .end local v0           #color:I
    .end local v3           #item:Lcom/htc/painting/penmenu/menu/ColorItem;
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1272
    const/4 v4, 0x0

    .line 1273
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1274
    return-void
.end method

.method private getIcon(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "resId"

    .prologue
    .line 1907
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1909
    .local v0, icon:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private getIconsFromTypedArray(I)[Landroid/graphics/Bitmap;
    .locals 5
    .parameter "typedArrayId"

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1098
    .local v1, iconArray:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    new-array v2, v4, [Landroid/graphics/Bitmap;

    .line 1099
    .local v2, icons:[Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 1100
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1101
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1099
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1104
    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1105
    return-object v2
.end method

.method private getMostRecentConfigByType(ILjava/util/List;)Lcom/htc/painting/penmenu/Pen;
    .locals 4
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/Pen;",
            ">;)",
            "Lcom/htc/painting/penmenu/Pen;"
        }
    .end annotation

    .prologue
    .local p2, configList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/Pen;>;"
    const/4 v2, 0x0

    .line 1152
    if-nez p2, :cond_0

    move-object v0, v2

    .line 1163
    :goto_0
    return-object v0

    .line 1156
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/Pen;

    .line 1157
    .local v0, config:Lcom/htc/painting/penmenu/Pen;
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/Pen;->getType()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 1158
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #config:Lcom/htc/painting/penmenu/Pen;
    :cond_2
    move-object v0, v2

    .line 1163
    goto :goto_0
.end method

.method private getPaintingViewUndoRedo()V
    .locals 4

    .prologue
    .line 2633
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    if-eqz v2, :cond_0

    .line 2634
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    invoke-interface {v2}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->canUndo()Z

    move-result v1

    .line 2635
    .local v1, enabled:Z
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/action/ActionItem;

    .line 2636
    .local v0, action:Lcom/htc/painting/penmenu/action/ActionItem;
    if-eqz v0, :cond_1

    .line 2637
    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/action/ActionItem;->setEnabled(Z)V

    .line 2643
    :goto_0
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    invoke-interface {v2}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->canRedo()Z

    move-result v1

    .line 2644
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #action:Lcom/htc/painting/penmenu/action/ActionItem;
    check-cast v0, Lcom/htc/painting/penmenu/action/ActionItem;

    .line 2645
    .restart local v0       #action:Lcom/htc/painting/penmenu/action/ActionItem;
    if-eqz v0, :cond_2

    .line 2646
    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/action/ActionItem;->setEnabled(Z)V

    .line 2652
    :goto_1
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/action/ActionPanel;->invalidate()V

    .line 2654
    .end local v0           #action:Lcom/htc/painting/penmenu/action/ActionItem;
    .end local v1           #enabled:Z
    :cond_0
    return-void

    .line 2639
    .restart local v0       #action:Lcom/htc/painting/penmenu/action/ActionItem;
    .restart local v1       #enabled:Z
    :cond_1
    const-string v2, "PenMenu"

    const-string v3, "getPaintingViewUndoRedo - can\'t find undo action item! PenMenu may be destroyed by onDestroy()."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2648
    :cond_2
    const-string v2, "PenMenu"

    const-string v3, "getPaintingViewUndoRedo - can\'t find redo action item! PenMenu may be destroyed by onDestroy()."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getPenTypeOptions(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/PenType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/Pen;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1169
    .local p1, penList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/PenType;>;"
    .local p2, mostRecentConfig:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/Pen;>;"
    if-nez p1, :cond_1

    .line 1170
    const-string v7, "PenMenu"

    const-string v8, "getPenTypeOptions - null input"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_0
    :goto_0
    return-void

    .line 1174
    :cond_1
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v4

    .line 1175
    .local v4, menuPenTypes:Lcom/htc/painting/penmenu/menu/MenuOptions;
    if-nez v4, :cond_2

    .line 1176
    const-string v7, "PenMenu"

    const-string v8, "getPenTypeOptions - null menu, it could be PenMenu be destroyed by onDestroy."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1180
    :cond_2
    invoke-virtual {v4}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItems()Ljava/util/List;

    move-result-object v2

    .line 1181
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/menu/PenTypeItem;>;"
    if-nez v2, :cond_3

    .line 1182
    const-string v7, "PenMenu"

    const-string v8, "getPenTypeOptions - null pen type options!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1186
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/menu/PenTypeItem;

    .line 1187
    .local v1, item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->release()V

    goto :goto_1

    .line 1192
    .end local v1           #item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1194
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    .line 1195
    .local v3, menu:Lcom/htc/painting/penmenu/menu/Menu;
    if-eqz v3, :cond_0

    .line 1196
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/penmenu/PenType;

    .line 1197
    .local v5, penType:Lcom/htc/painting/penmenu/PenType;
    new-instance v6, Lcom/htc/painting/penmenu/menu/PenTypeItem;

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/painting/penmenu/menu/PenTypeItem;-><init>(Landroid/content/Context;)V

    .line 1198
    .local v6, pti:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    invoke-virtual {v6, v5}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->setPenType(Lcom/htc/painting/penmenu/PenType;)V

    .line 1199
    invoke-virtual {v5}, Lcom/htc/painting/penmenu/PenType;->getID()I

    move-result v7

    invoke-direct {p0, v7, p2}, Lcom/htc/painting/penmenu/PenMenu;->getMostRecentConfigByType(ILjava/util/List;)Lcom/htc/painting/penmenu/Pen;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->setMostRecentConfig(Lcom/htc/painting/penmenu/Pen;)V

    .line 1200
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/Menu;->getMenuPanelSize()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->setInnerRadius(I)V

    .line 1201
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/Menu;->getOptionPanelSize()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->setOuterRadius(I)V

    .line 1202
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1204
    .end local v5           #penType:Lcom/htc/painting/penmenu/PenType;
    .end local v6           #pti:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    :cond_5
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method private getPositionFor(I)I
    .locals 6
    .parameter "actionId"

    .prologue
    const/4 v5, 0x4

    .line 4109
    const/4 v1, 0x0

    .line 4110
    .local v1, ind:I
    sparse-switch p1, :sswitch_data_0

    .line 4126
    :goto_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    .line 4128
    .local v0, corner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;
    sget-object v3, Lcom/htc/painting/penmenu/PenMenu$11;->$SwitchMap$com$htc$painting$penmenu$PenMenu$DockCorner:[I

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 4134
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    .line 4139
    .local v2, order:[I
    :goto_1
    aget v3, v2, v1

    return v3

    .line 4112
    .end local v0           #corner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;
    .end local v2           #order:[I
    :sswitch_0
    const/4 v1, 0x0

    .line 4113
    goto :goto_0

    .line 4115
    :sswitch_1
    const/4 v1, 0x1

    .line 4116
    goto :goto_0

    .line 4118
    :sswitch_2
    const/4 v1, 0x2

    .line 4119
    goto :goto_0

    .line 4121
    :sswitch_3
    const/4 v1, 0x3

    goto :goto_0

    .line 4130
    .restart local v0       #corner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;
    :pswitch_0
    new-array v2, v5, [I

    fill-array-data v2, :array_1

    .line 4131
    .restart local v2       #order:[I
    goto :goto_1

    .line 4110
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_2
        0x190 -> :sswitch_1
    .end sparse-switch

    .line 4128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 4134
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 4130
    :array_1
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private getSizeOptions(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/menu/SizeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1225
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/menu/SizeItem;>;"
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1226
    .local v2, res:Landroid/content/res/Resources;
    const v6, 0x207001d

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 1228
    .local v4, sizeOptionSizes:[I
    const/4 v6, 0x5

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    .line 1229
    .local v5, sizeOptions:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_0

    .line 1230
    aget v3, v5, v0

    .line 1231
    .local v3, sizeId:I
    new-instance v1, Lcom/htc/painting/penmenu/menu/SizeItem;

    invoke-direct {v1, v3}, Lcom/htc/painting/penmenu/menu/SizeItem;-><init>(I)V

    .line 1232
    .local v1, item:Lcom/htc/painting/penmenu/menu/SizeItem;
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    aget v6, v4, v6

    invoke-virtual {v1, v6}, Lcom/htc/painting/penmenu/menu/SizeItem;->setValidRadius(I)V

    .line 1236
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1238
    .end local v1           #item:Lcom/htc/painting/penmenu/menu/SizeItem;
    .end local v3           #sizeId:I
    :cond_0
    return-void

    .line 1228
    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static getWaterWaveAnimDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 2
    .parameter "resources"

    .prologue
    .line 4173
    sget-object v1, Lcom/htc/painting/penmenu/PenMenu;->sCacheWaterWaveDrawable:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 4174
    .local v0, result:Landroid/graphics/drawable/AnimationDrawable;
    :goto_0
    if-nez v0, :cond_0

    .line 4175
    invoke-static {p0}, Lcom/htc/painting/penmenu/PenMenu;->makeWaterWaveAnimDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    .line 4176
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/htc/painting/penmenu/PenMenu;->sCacheWaterWaveDrawable:Ljava/lang/ref/SoftReference;

    .line 4178
    :cond_0
    return-object v0

    .line 4173
    .end local v0           #result:Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    sget-object v1, Lcom/htc/painting/penmenu/PenMenu;->sCacheWaterWaveDrawable:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    move-object v0, v1

    goto :goto_0
.end method

.method private hideInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1663
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 1664
    const-string v0, "PenMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide() - mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mStickyMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/StateManager;->getStickyMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mStickyState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/StateManager;->getStickyState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1670
    const-string v0, "PenMenu"

    const-string v1, "hide - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :cond_1
    :goto_0
    return-void

    .line 1674
    :cond_2
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    sget-object v1, Lcom/htc/painting/penmenu/PenMenu$State;->SHOW:Lcom/htc/painting/penmenu/PenMenu$State;

    if-ne v0, v1, :cond_1

    .line 1675
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimInProgress:Z

    if-eq v0, v3, :cond_1

    .line 1678
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    if-eqz v0, :cond_3

    .line 1679
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    sget-object v1, Lcom/htc/painting/penmenu/PenMenu$State;->HIDE:Lcom/htc/painting/penmenu/PenMenu$State;

    invoke-interface {v0, v1}, Lcom/htc/painting/penmenu/PenMenu$StateMonitor;->willChange(Lcom/htc/painting/penmenu/PenMenu$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1684
    :cond_3
    iput-boolean v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimInProgress:Z

    .line 1685
    sget-object v0, Lcom/htc/painting/penmenu/PenMenu$State;->HIDE:Lcom/htc/painting/penmenu/PenMenu$State;

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    .line 1686
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isAnimactionEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1689
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    sget-object v1, Lcom/htc/painting/penmenu/menu/Menu$State;->EXPAND:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-ne v0, v1, :cond_5

    .line 1690
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/PenMenu;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1705
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->invalidate()V

    goto :goto_0

    .line 1693
    :cond_5
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v0, v3}, Lcom/htc/painting/penmenu/history/PenHistory;->hide(Z)V

    goto :goto_1

    .line 1697
    :cond_6
    sget-object v0, Lcom/htc/painting/penmenu/PenMenu$State;->HIDE:Lcom/htc/painting/penmenu/PenMenu$State;

    invoke-direct {p0, v0}, Lcom/htc/painting/penmenu/PenMenu;->setStateVisible(Lcom/htc/painting/penmenu/PenMenu$State;)V

    .line 1699
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimInProgress:Z

    .line 1700
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    if-eqz v0, :cond_4

    .line 1701
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    sget-object v1, Lcom/htc/painting/penmenu/PenMenu$State;->HIDE:Lcom/htc/painting/penmenu/PenMenu$State;

    invoke-interface {v0, v1}, Lcom/htc/painting/penmenu/PenMenu$StateMonitor;->OnChanged(Lcom/htc/painting/penmenu/PenMenu$State;)V

    goto :goto_1
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v5, -0x1

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 972
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    .line 973
    const-string v2, "PenMenu"

    const-string v3, "init()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mHandler:Landroid/os/Handler;

    .line 977
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/StateManager;->init(Landroid/content/Context;)V

    .line 979
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 980
    .local v0, inflator:Landroid/view/LayoutInflater;
    const v2, 0x2090063

    invoke-virtual {v0, v2, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 982
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/StateManager;->getStickyMode()Z

    move-result v2

    if-ne v2, v8, :cond_1

    .line 983
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    .line 988
    :goto_0
    iput-boolean v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimInProgress:Z

    .line 991
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/painting/penmenu/PenMenu;->getWaterWaveAnimDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mWaterWaveAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 994
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->initTypeMenu()V

    .line 995
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->initSizeMenu()V

    .line 996
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->initColorMenu()V

    .line 999
    const v2, 0x202011f

    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu/base/BasePanel;

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    .line 1000
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v2, p0}, Lcom/htc/painting/penmenu/base/BasePanel;->setPenMenu(Lcom/htc/painting/penmenu/PenMenu;)V

    .line 1004
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->initActionItems()V

    .line 1007
    const v2, 0x202011c

    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu/history/PenHistory;

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    .line 1008
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v2, p0}, Lcom/htc/painting/penmenu/history/PenHistory;->setPenMenu(Lcom/htc/painting/penmenu/PenMenu;)V

    .line 1009
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/history/PenHistory;->setOnCollapseListener(Lcom/htc/painting/penmenu/menu/OnCollapseListener;)V

    .line 1010
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    sget-object v3, Lcom/htc/painting/penmenu/history/PenHistory$State;->HIDE:Lcom/htc/painting/penmenu/history/PenHistory$State;

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/history/PenHistory;->setState(Lcom/htc/painting/penmenu/history/PenHistory$State;)V

    .line 1013
    const v2, 0x202011d

    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu/action/ActionPanel;

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    .line 1014
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v2, v4}, Lcom/htc/painting/penmenu/action/ActionPanel;->setVisibility(I)V

    .line 1015
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v2, p0}, Lcom/htc/painting/penmenu/action/ActionPanel;->setPenMenu(Lcom/htc/painting/penmenu/PenMenu;)V

    .line 1016
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionListener:Lcom/htc/painting/penmenu/OnActionPerformListener;

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/action/ActionPanel;->addOnActionClickListener(Lcom/htc/painting/penmenu/OnActionPerformListener;)V

    .line 1019
    const v2, 0x202011e

    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu/menu/Menu;

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    .line 1020
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v2, p0}, Lcom/htc/painting/penmenu/menu/Menu;->setPenMenu(Lcom/htc/painting/penmenu/PenMenu;)V

    .line 1021
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/menu/Menu;->setOnCollapseListener(Lcom/htc/painting/penmenu/menu/OnCollapseListener;)V

    .line 1022
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/menu/Menu;->addOnOptionChangeListener(Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;)V

    .line 1023
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    sget-object v3, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    invoke-virtual {v2, v3, v5}, Lcom/htc/painting/penmenu/menu/Menu;->setState(Lcom/htc/painting/penmenu/menu/Menu$State;I)V

    .line 1025
    sget-object v2, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    .line 1028
    invoke-direct {p0, v4}, Lcom/htc/painting/penmenu/PenMenu;->onPenDataStateChanged(Z)V

    .line 1032
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setupMoveInOutAnims()V

    .line 1035
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenTypeLoadingListener:Lcom/htc/painting/penmenu/PenManager$IPenTypeLoadingListener;

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/PenManager;->setPenTypeLoadingListener(Lcom/htc/painting/penmenu/PenManager$IPenTypeLoadingListener;)V

    .line 1036
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/PenManager;->initPenTypes(Landroid/content/Context;)Z

    .line 1039
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->restoreLocalSetting()V

    .line 1041
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    .line 1042
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/16 v3, 0x55

    invoke-direct {v1, v5, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1044
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1045
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    const v3, 0x208022e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1046
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    const v3, 0x20403bc

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1047
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    const/high16 v3, 0x41a0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1048
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20e00da

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20e00d9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20e00d8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x20e00db

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1052
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1053
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->addView(Landroid/view/View;)V

    .line 1056
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    invoke-direct {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->setStateVisible(Lcom/htc/painting/penmenu/PenMenu$State;)V

    .line 1059
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "restore_setting"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingThread:Landroid/os/HandlerThread;

    .line 1060
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingThread:Landroid/os/HandlerThread;

    invoke-virtual {v2, v8}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 1061
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 1063
    new-instance v2, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;-><init>(Lcom/htc/painting/penmenu/PenMenu;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    .line 1064
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    new-instance v3, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;

    invoke-direct {v3, p0}, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;-><init>(Lcom/htc/painting/penmenu/PenMenu;)V

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->setListener(Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;)V

    .line 1066
    return-void

    .line 985
    .end local v1           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    const-wide/16 v2, 0x2710

    iput-wide v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    goto/16 :goto_0
.end method

.method private initActionItems()V
    .locals 8

    .prologue
    const/4 v5, 0x4

    .line 1110
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    .line 1115
    .local v0, actionIds:[I
    new-array v4, v5, [I

    fill-array-data v4, :array_1

    .line 1120
    .local v4, iconArrayIds:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 1121
    new-instance v1, Lcom/htc/painting/penmenu/action/ActionItem;

    aget v5, v0, v3

    aget v6, v0, v3

    invoke-direct {p0, v6}, Lcom/htc/painting/penmenu/PenMenu;->getPositionFor(I)I

    move-result v6

    invoke-direct {v1, v5, v6}, Lcom/htc/painting/penmenu/action/ActionItem;-><init>(II)V

    .line 1123
    .local v1, actionItem:Lcom/htc/painting/penmenu/action/ActionItem;
    aget v5, v4, v3

    if-eqz v5, :cond_0

    .line 1124
    aget v5, v4, v3

    invoke-direct {p0, v5}, Lcom/htc/painting/penmenu/PenMenu;->getIconsFromTypedArray(I)[Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/painting/penmenu/action/ActionItem;->setIcons([Landroid/graphics/Bitmap;)V

    .line 1128
    :cond_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/htc/painting/penmenu/PenMenu;->addAction(Lcom/htc/painting/penmenu/action/ActionItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1120
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1129
    :catch_0
    move-exception v2

    .line 1130
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "PenMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initActionItems - addAction exception for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/action/ActionItem;->getActionId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1134
    .end local v1           #actionItem:Lcom/htc/painting/penmenu/action/ActionItem;
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    return-void

    .line 1110
    :array_0
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
    .end array-data

    .line 1115
    :array_1
    .array-data 0x4
        0x15t 0x0t 0x7t 0x2t
        0x0t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x7t 0x2t
        0x19t 0x0t 0x7t 0x2t
    .end array-data
.end method

.method private initColorMenu()V
    .locals 6

    .prologue
    .line 1242
    new-instance v1, Lcom/htc/painting/penmenu/menu/MenuItem;

    invoke-direct {v1}, Lcom/htc/painting/penmenu/menu/MenuItem;-><init>()V

    .line 1243
    .local v1, item:Lcom/htc/painting/penmenu/menu/MenuItem;
    const v3, 0x207001b

    invoke-direct {p0, v3}, Lcom/htc/painting/penmenu/PenMenu;->getIconsFromTypedArray(I)[Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/painting/penmenu/menu/MenuItem;->setIcons([Landroid/graphics/Bitmap;)V

    .line 1244
    const-string v3, "color"

    invoke-virtual {v1, v3}, Lcom/htc/painting/penmenu/menu/MenuItem;->setName(Ljava/lang/String;)V

    .line 1245
    new-instance v2, Lcom/htc/painting/penmenu/menu/MenuOptions;

    invoke-direct {v2, v1}, Lcom/htc/painting/penmenu/menu/MenuOptions;-><init>(Lcom/htc/painting/penmenu/menu/MenuItem;)V

    .line 1246
    .local v2, menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<Lcom/htc/painting/penmenu/menu/ColorItem;>;"
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/menu/MenuOptions;->setMenuId(I)V

    .line 1247
    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItems()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/painting/penmenu/PenMenu;->getColorOptions(Ljava/util/List;)V

    .line 1249
    :try_start_0
    invoke-direct {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->addMenu(Lcom/htc/painting/penmenu/menu/MenuOptions;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1253
    :goto_0
    return-void

    .line 1250
    :catch_0
    move-exception v0

    .line 1251
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initColorMenu - addMenu exception for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initSizeMenu()V
    .locals 6

    .prologue
    .line 1210
    new-instance v1, Lcom/htc/painting/penmenu/menu/MenuItem;

    invoke-direct {v1}, Lcom/htc/painting/penmenu/menu/MenuItem;-><init>()V

    .line 1211
    .local v1, item:Lcom/htc/painting/penmenu/menu/MenuItem;
    const v3, 0x207001c

    invoke-direct {p0, v3}, Lcom/htc/painting/penmenu/PenMenu;->getIconsFromTypedArray(I)[Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/painting/penmenu/menu/MenuItem;->setIcons([Landroid/graphics/Bitmap;)V

    .line 1212
    const-string v3, "size"

    invoke-virtual {v1, v3}, Lcom/htc/painting/penmenu/menu/MenuItem;->setName(Ljava/lang/String;)V

    .line 1213
    new-instance v2, Lcom/htc/painting/penmenu/menu/MenuOptions;

    invoke-direct {v2, v1}, Lcom/htc/painting/penmenu/menu/MenuOptions;-><init>(Lcom/htc/painting/penmenu/menu/MenuItem;)V

    .line 1214
    .local v2, menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<Lcom/htc/painting/penmenu/menu/SizeItem;>;"
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/menu/MenuOptions;->setMenuId(I)V

    .line 1215
    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItems()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/painting/penmenu/PenMenu;->getSizeOptions(Ljava/util/List;)V

    .line 1217
    :try_start_0
    invoke-direct {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->addMenu(Lcom/htc/painting/penmenu/menu/MenuOptions;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1221
    :goto_0
    return-void

    .line 1218
    :catch_0
    move-exception v0

    .line 1219
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initSizeMenu - addMenu exception for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initTypeMenu()V
    .locals 6

    .prologue
    .line 1138
    new-instance v1, Lcom/htc/painting/penmenu/menu/MenuItem;

    invoke-direct {v1}, Lcom/htc/painting/penmenu/menu/MenuItem;-><init>()V

    .line 1139
    .local v1, item:Lcom/htc/painting/penmenu/menu/MenuItem;
    const v3, 0x207001a

    invoke-direct {p0, v3}, Lcom/htc/painting/penmenu/PenMenu;->getIconsFromTypedArray(I)[Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/painting/penmenu/menu/MenuItem;->setIcons([Landroid/graphics/Bitmap;)V

    .line 1140
    const-string v3, "type"

    invoke-virtual {v1, v3}, Lcom/htc/painting/penmenu/menu/MenuItem;->setName(Ljava/lang/String;)V

    .line 1141
    new-instance v2, Lcom/htc/painting/penmenu/menu/MenuOptions;

    invoke-direct {v2, v1}, Lcom/htc/painting/penmenu/menu/MenuOptions;-><init>(Lcom/htc/painting/penmenu/menu/MenuItem;)V

    .line 1142
    .local v2, menuPenTypes:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<Lcom/htc/painting/penmenu/menu/PenTypeItem;>;"
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/menu/MenuOptions;->setMenuId(I)V

    .line 1145
    :try_start_0
    invoke-direct {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->addMenu(Lcom/htc/painting/penmenu/menu/MenuOptions;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1149
    :goto_0
    return-void

    .line 1146
    :catch_0
    move-exception v0

    .line 1147
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initTypeMenu - addMenu exception for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static makeWaterWaveAnimDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 5
    .parameter "resources"

    .prologue
    .line 4181
    const/16 v3, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 4198
    .local v2, ripples:[I
    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 4199
    .local v1, ret:Landroid/graphics/drawable/AnimationDrawable;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 4200
    aget v3, v2, v0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x1e

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 4199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4202
    :cond_0
    return-object v1

    .line 4181
    nop

    :array_0
    .array-data 0x4
        0xe4t 0x1t 0x8t 0x2t
        0xe5t 0x1t 0x8t 0x2t
        0xe6t 0x1t 0x8t 0x2t
        0xe7t 0x1t 0x8t 0x2t
        0xe8t 0x1t 0x8t 0x2t
        0xe9t 0x1t 0x8t 0x2t
        0xeat 0x1t 0x8t 0x2t
        0xebt 0x1t 0x8t 0x2t
        0xect 0x1t 0x8t 0x2t
        0xedt 0x1t 0x8t 0x2t
        0xeet 0x1t 0x8t 0x2t
        0xeft 0x1t 0x8t 0x2t
        0xf0t 0x1t 0x8t 0x2t
        0xf1t 0x1t 0x8t 0x2t
        0xf2t 0x1t 0x8t 0x2t
        0xf3t 0x1t 0x8t 0x2t
        0xf4t 0x1t 0x8t 0x2t
        0xf5t 0x1t 0x8t 0x2t
        0xf6t 0x1t 0x8t 0x2t
        0xf7t 0x1t 0x8t 0x2t
        0xf8t 0x1t 0x8t 0x2t
        0xf9t 0x1t 0x8t 0x2t
        0xfat 0x1t 0x8t 0x2t
        0xfbt 0x1t 0x8t 0x2t
        0xfct 0x1t 0x8t 0x2t
        0xfdt 0x1t 0x8t 0x2t
        0xfet 0x1t 0x8t 0x2t
        0xfft 0x1t 0x8t 0x2t
        0x0t 0x2t 0x8t 0x2t
        0x1t 0x2t 0x8t 0x2t
        0x2t 0x2t 0x8t 0x2t
    .end array-data
.end method

.method private onPainting()V
    .locals 1

    .prologue
    .line 3899
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/StateManager;->getStickyMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3900
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->hide()V

    .line 3902
    :cond_0
    return-void
.end method

.method private onPenDataStateChanged(Z)V
    .locals 3
    .parameter "ready"

    .prologue
    .line 4144
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    .line 4145
    .local v2, panel:Lcom/htc/painting/penmenu/base/BasePanel;
    if-eqz v2, :cond_0

    .line 4146
    if-eqz p1, :cond_3

    .line 4147
    invoke-virtual {v2}, Lcom/htc/painting/penmenu/base/BasePanel;->hideProgress()V

    .line 4153
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    .line 4154
    .local v1, menu:Lcom/htc/painting/penmenu/menu/Menu;
    if-eqz v1, :cond_1

    .line 4155
    invoke-virtual {v1, p1}, Lcom/htc/painting/penmenu/menu/Menu;->onPenDataStateChanged(Z)V

    .line 4157
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    .line 4158
    .local v0, history:Lcom/htc/painting/penmenu/history/PenHistory;
    if-eqz v0, :cond_2

    .line 4159
    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu/history/PenHistory;->onPenDataStateChanged(Z)V

    .line 4160
    :cond_2
    return-void

    .line 4149
    .end local v0           #history:Lcom/htc/painting/penmenu/history/PenHistory;
    .end local v1           #menu:Lcom/htc/painting/penmenu/menu/Menu;
    :cond_3
    invoke-virtual {v2}, Lcom/htc/painting/penmenu/base/BasePanel;->showProgress()V

    goto :goto_0
.end method

.method private refreshAfterRestore()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 4032
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    if-eqz v2, :cond_4

    .line 4033
    const/4 v0, 0x0

    .line 4034
    .local v0, isEraser:Z
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->getPenTypeItem(I)Lcom/htc/painting/penmenu/menu/PenTypeItem;

    move-result-object v1

    .line 4035
    .local v1, penTypeItem:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    if-eqz v1, :cond_0

    .line 4036
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getPenType()Lcom/htc/painting/penmenu/PenType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/PenType;->isEraser()Z

    move-result v0

    .line 4039
    :cond_0
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setupMenus()V

    .line 4041
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    if-eqz v2, :cond_1

    .line 4042
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v2, v3, v0}, Lcom/htc/painting/penmenu/base/BasePanel;->setPen(Lcom/htc/painting/penmenu/Pen;Z)V

    .line 4043
    invoke-direct {p0, v4}, Lcom/htc/painting/penmenu/PenMenu;->onPenDataStateChanged(Z)V

    .line 4044
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->invalidate()V

    .line 4046
    :cond_1
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->restoreUIState()V

    .line 4048
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    if-eqz v2, :cond_2

    .line 4049
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    invoke-interface {v2, v4}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->enablePainting(Z)V

    .line 4050
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setPaintingViewStroke()V

    .line 4053
    :cond_2
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mOuterOptionChangedListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    if-eqz v2, :cond_3

    .line 4054
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mOuterOptionChangedListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    invoke-interface {v2}, Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;->onOptionInitialized()V

    .line 4064
    .end local v0           #isEraser:Z
    .end local v1           #penTypeItem:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    :cond_3
    :goto_0
    return-void

    .line 4057
    :cond_4
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_5

    .line 4058
    const-string v2, "PenMenu"

    const-string v3, "RestoreSettingListener.run - mCurrentPen is null, restore again!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4060
    :cond_5
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    if-eqz v2, :cond_3

    .line 4061
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    const-wide/16 v3, 0x14

    invoke-virtual {v2, v3, v4}, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->sendRestoreSettingRequest(J)V

    goto :goto_0
.end method

.method private reloadPenData()V
    .locals 8

    .prologue
    .line 1516
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    .line 1517
    const-string v5, "PenMenu"

    const-string v6, "reloadPenUI()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :cond_0
    new-instance v3, Lcom/htc/painting/penmenu/PenManager$PenTypeResources;

    invoke-direct {v3}, Lcom/htc/painting/penmenu/PenManager$PenTypeResources;-><init>()V

    .line 1523
    .local v3, resourcce:Lcom/htc/painting/penmenu/PenManager$PenTypeResources;
    :try_start_0
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v5

    iget v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v6, v3, v7}, Lcom/htc/painting/penmenu/PenManager;->getPenTypeResource(ILcom/htc/painting/penmenu/PenManager$PenTypeResources;Landroid/content/Context;)Z

    move-result v4

    .line 1526
    .local v4, ret:Z
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1527
    iget-object v5, v3, Lcom/htc/painting/penmenu/PenManager$PenTypeResources;->mPenTypeList:Ljava/util/List;

    iget-object v6, v3, Lcom/htc/painting/penmenu/PenManager$PenTypeResources;->mMostRecentConfig:Ljava/util/List;

    invoke-direct {p0, v5, v6}, Lcom/htc/painting/penmenu/PenMenu;->getPenTypeOptions(Ljava/util/List;Ljava/util/List;)V

    .line 1529
    const/4 v1, 0x0

    .line 1530
    .local v1, filter:Lcom/htc/painting/penmenu/IPenSetFilter;
    iget v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    packed-switch v5, :pswitch_data_0

    .line 1541
    const-string v5, "PenMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown penset type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    :goto_0
    if-eqz v1, :cond_1

    .line 1544
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v2

    .line 1545
    .local v2, menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;
    if-eqz v2, :cond_1

    .line 1546
    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/htc/painting/penmenu/IPenSetFilter;->filter(Ljava/util/List;)V

    .line 1550
    .end local v2           #menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;
    :cond_1
    iget-object v5, v3, Lcom/htc/painting/penmenu/PenManager$PenTypeResources;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-direct {p0, v5}, Lcom/htc/painting/penmenu/PenMenu;->applyCurrentPen(Lcom/htc/painting/penmenu/Pen;)V

    .line 1552
    iget-object v5, v3, Lcom/htc/painting/penmenu/PenManager$PenTypeResources;->mHistoryPenList:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/htc/painting/penmenu/PenMenu;->applyHistoryPens(Ljava/util/List;)V

    .line 1564
    .end local v1           #filter:Lcom/htc/painting/penmenu/IPenSetFilter;
    .end local v4           #ret:Z
    :goto_1
    return-void

    .line 1532
    .restart local v1       #filter:Lcom/htc/painting/penmenu/IPenSetFilter;
    .restart local v4       #ret:Z
    :pswitch_0
    new-instance v1, Lcom/htc/painting/penmenu/AllPenSetFilter;

    .end local v1           #filter:Lcom/htc/painting/penmenu/IPenSetFilter;
    invoke-direct {v1}, Lcom/htc/painting/penmenu/AllPenSetFilter;-><init>()V

    .line 1533
    .restart local v1       #filter:Lcom/htc/painting/penmenu/IPenSetFilter;
    goto :goto_0

    .line 1535
    :pswitch_1
    new-instance v1, Lcom/htc/painting/penmenu/SimplePenFilter;

    .end local v1           #filter:Lcom/htc/painting/penmenu/IPenSetFilter;
    invoke-direct {v1}, Lcom/htc/painting/penmenu/SimplePenFilter;-><init>()V

    .line 1536
    .restart local v1       #filter:Lcom/htc/painting/penmenu/IPenSetFilter;
    goto :goto_0

    .line 1538
    :pswitch_2
    new-instance v1, Lcom/htc/painting/penmenu/SinglePenFilter;

    .end local v1           #filter:Lcom/htc/painting/penmenu/IPenSetFilter;
    invoke-direct {v1}, Lcom/htc/painting/penmenu/SinglePenFilter;-><init>()V

    .line 1539
    .restart local v1       #filter:Lcom/htc/painting/penmenu/IPenSetFilter;
    goto :goto_0

    .line 1554
    .end local v1           #filter:Lcom/htc/painting/penmenu/IPenSetFilter;
    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1557
    .end local v4           #ret:Z
    :catch_0
    move-exception v0

    .line 1558
    .local v0, ex:Ljava/lang/RuntimeException;
    iget-boolean v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mDestoryStarted:Z

    if-eqz v5, :cond_3

    .line 1559
    const-string v5, "PenMenu"

    const-string v6, "PenMenu is destroyed while restoring"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1561
    :cond_3
    throw v0

    .line 1530
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private restoreGlobalState()V
    .locals 5

    .prologue
    .line 3949
    invoke-static {}, Lcom/htc/painting/penmenu/menu/Menu$State;->values()[Lcom/htc/painting/penmenu/menu/Menu$State;

    move-result-object v1

    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v0

    const-string v2, "menu_state"

    sget v3, Lcom/htc/painting/penmenu/PenManager;->DEFAULT_MENU_STATE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/painting/penmenu/PenManager;->queryGlobalSetting(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    .line 3951
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v0

    const-string v1, "selected_menu_id"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/painting/penmenu/PenManager;->queryGlobalSetting(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    .line 3953
    return-void
.end method

.method private restoreLocalSetting()V
    .locals 6

    .prologue
    .line 3934
    invoke-static {}, Lcom/htc/painting/penmenu/PenMenu$State;->values()[Lcom/htc/painting/penmenu/PenMenu$State;

    move-result-object v2

    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v1

    const-string v3, "penmenu_state"

    sget v4, Lcom/htc/painting/penmenu/PenManager;->DEFAULT_PENMENU_STATE:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/htc/painting/penmenu/PenManager;->getFromSharedPref(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    .line 3936
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v1

    const-string v2, "sticky_state"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/painting/penmenu/PenManager;->getFromSharedPref(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3938
    .local v0, stickyState:Z
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v1, v0}, Lcom/htc/painting/penmenu/StateManager;->setStickyState(Z)V

    .line 3939
    return-void
.end method

.method private restoreTempState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 3916
    const-string v0, "warningEraserForFirstStroke"

    iget-boolean v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mWarningEraserForFirstStroke:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mWarningEraserForFirstStroke:Z

    .line 3917
    const-string v0, "penSetType"

    iget v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    .line 3919
    const-string v0, "strokeVisibility"

    iget v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeVisibility:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeVisibility:I

    .line 3920
    const-string v0, "animationEnabled"

    iget-boolean v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimationEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimationEnabled:Z

    .line 3921
    const-string v0, "lastUseTime"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mLastUseTime:J

    .line 3922
    const-string v0, "dismissTime"

    iget-wide v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    .line 3923
    return-void
.end method

.method private restoreUIState()V
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/4 v9, 0x0

    .line 2347
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    .line 2348
    const-string v3, "PenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreUIState - mMenuState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSelectedMenuId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mStickyMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/StateManager;->getStickyMode()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mStickyState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/StateManager;->getStickyState()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    :cond_0
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    iget v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    invoke-virtual {v3, v4, v5}, Lcom/htc/painting/penmenu/menu/Menu;->setState(Lcom/htc/painting/penmenu/menu/Menu$State;I)V

    .line 2357
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    sget-object v4, Lcom/htc/painting/penmenu/menu/Menu$State;->EXPAND:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-ne v3, v4, :cond_2

    .line 2358
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    sget-object v4, Lcom/htc/painting/penmenu/base/BasePanel$Hint;->OPTIONS:Lcom/htc/painting/penmenu/base/BasePanel$Hint;

    invoke-virtual {v3, v4, v9}, Lcom/htc/painting/penmenu/base/BasePanel;->setHint(Lcom/htc/painting/penmenu/base/BasePanel$Hint;Z)V

    .line 2359
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    sget-object v4, Lcom/htc/painting/penmenu/history/PenHistory$State;->HIDE:Lcom/htc/painting/penmenu/history/PenHistory$State;

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/history/PenHistory;->setState(Lcom/htc/painting/penmenu/history/PenHistory$State;)V

    .line 2360
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/action/ActionPanel;->setVisibility(I)V

    .line 2368
    :goto_0
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    sget-object v4, Lcom/htc/painting/penmenu/PenMenu$State;->SHOW:Lcom/htc/painting/penmenu/PenMenu$State;

    if-ne v3, v4, :cond_3

    .line 2369
    sget-object v3, Lcom/htc/painting/penmenu/PenMenu$State;->HIDE:Lcom/htc/painting/penmenu/PenMenu$State;

    iput-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    .line 2370
    invoke-virtual {p0, v9, v9}, Lcom/htc/painting/penmenu/PenMenu;->show(ZZ)V

    .line 2376
    :goto_1
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    sget-object v4, Lcom/htc/painting/penmenu/PenMenu$State;->SHOW:Lcom/htc/painting/penmenu/PenMenu$State;

    if-ne v3, v4, :cond_5

    .line 2377
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2379
    iget-wide v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    cmp-long v3, v3, v10

    if-eqz v3, :cond_1

    .line 2380
    iget-wide v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/htc/painting/penmenu/PenMenu;->mLastUseTime:J

    sub-long/2addr v5, v7

    sub-long v0, v3, v5

    .line 2381
    .local v0, delayTime:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_4

    .line 2382
    invoke-virtual {p0, v9, v9}, Lcom/htc/painting/penmenu/PenMenu;->hide(ZZ)V

    .line 2383
    iput-wide v10, p0, Lcom/htc/painting/penmenu/PenMenu;->mLastUseTime:J

    .line 2397
    .end local v0           #delayTime:J
    :cond_1
    :goto_2
    return-void

    .line 2363
    :cond_2
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    sget-object v4, Lcom/htc/painting/penmenu/base/BasePanel$Hint;->MENU:Lcom/htc/painting/penmenu/base/BasePanel$Hint;

    invoke-virtual {v3, v4, v9}, Lcom/htc/painting/penmenu/base/BasePanel;->setHint(Lcom/htc/painting/penmenu/base/BasePanel$Hint;Z)V

    .line 2364
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    sget-object v4, Lcom/htc/painting/penmenu/history/PenHistory$State;->SHOW:Lcom/htc/painting/penmenu/history/PenHistory$State;

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/history/PenHistory;->setState(Lcom/htc/painting/penmenu/history/PenHistory$State;)V

    .line 2365
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v3, v9}, Lcom/htc/painting/penmenu/action/ActionPanel;->setVisibility(I)V

    goto :goto_0

    .line 2372
    :cond_3
    sget-object v3, Lcom/htc/painting/penmenu/PenMenu$State;->SHOW:Lcom/htc/painting/penmenu/PenMenu$State;

    iput-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    .line 2373
    invoke-virtual {p0, v9, v9}, Lcom/htc/painting/penmenu/PenMenu;->hide(ZZ)V

    goto :goto_1

    .line 2387
    .restart local v0       #delayTime:J
    :cond_4
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mDismissTimerTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v3, v0, v1}, Lcom/htc/painting/penmenu/PenMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 2388
    .local v2, ret:Z
    if-nez v2, :cond_1

    .line 2389
    const-string v3, "PenMenu"

    const-string v4, "restoreUIState - postDelayed failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2393
    .end local v0           #delayTime:J
    .end local v2           #ret:Z
    :cond_5
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/PenManager;->isPromptHowToShowPenMenu(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2394
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->showPrompt()V

    goto :goto_2
.end method

.method private saveGlobalState()V
    .locals 4

    .prologue
    .line 3942
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v0

    const-string v1, "menu_state"

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/Menu$State;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/painting/penmenu/PenManager;->updateGlobalSetting(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Z

    .line 3944
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v0

    const-string v1, "selected_menu_id"

    iget v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/painting/penmenu/PenManager;->updateGlobalSetting(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Z

    .line 3946
    return-void
.end method

.method private saveLocalState()V
    .locals 4

    .prologue
    .line 3927
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v0

    const-string v1, "penmenu_state"

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/PenMenu$State;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/painting/penmenu/PenManager;->setToSharedPref(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Z

    .line 3929
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v0

    const-string v1, "sticky_state"

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/StateManager;->getRawStickyState()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/painting/penmenu/PenManager;->setToSharedPref(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)Z

    .line 3931
    return-void
.end method

.method private saveTempState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 3906
    const-string v0, "dismissTime"

    iget-wide v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3907
    const-string v0, "lastUseTime"

    iget-wide v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mLastUseTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3908
    const-string v0, "penSetType"

    iget v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3909
    const-string v0, "animationEnabled"

    iget-boolean v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimationEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3911
    const-string v0, "strokeVisibility"

    iget v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeVisibility:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3912
    const-string v0, "warningEraserForFirstStroke"

    iget-boolean v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mWarningEraserForFirstStroke:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3913
    return-void
.end method

.method private setActionCount(I)V
    .locals 1
    .parameter "actionCount"

    .prologue
    .line 1921
    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    .line 1922
    const/4 p1, 0x6

    .line 1927
    :cond_0
    :goto_0
    iput p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionCount:I

    .line 1928
    return-void

    .line 1924
    :cond_1
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1925
    const/4 p1, 0x1

    goto :goto_0
.end method

.method private setAnimInProgress(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 4163
    const-string v0, "PenMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vicky setProgress to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4164
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 4165
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimInProgress:Z

    .line 4166
    return-void
.end method

.method private setColorCount(I)V
    .locals 1
    .parameter "colorCount"

    .prologue
    .line 1985
    const/16 v0, 0x8

    if-le p1, v0, :cond_1

    .line 1986
    const/16 p1, 0x8

    .line 1991
    :cond_0
    :goto_0
    iput p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mColorCount:I

    .line 1992
    return-void

    .line 1988
    :cond_1
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1989
    const/4 p1, 0x1

    goto :goto_0
.end method

.method private setHistoryCount(I)V
    .locals 1
    .parameter "historyCount"

    .prologue
    .line 1937
    const/16 v0, 0x8

    if-le p1, v0, :cond_1

    .line 1938
    const/16 p1, 0x8

    .line 1943
    :cond_0
    :goto_0
    iput p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mHistoryCount:I

    .line 1944
    return-void

    .line 1940
    :cond_1
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1941
    const/4 p1, 0x1

    goto :goto_0
.end method

.method private setMenuCount(I)V
    .locals 1
    .parameter "menuCount"

    .prologue
    .line 1953
    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    .line 1954
    const/4 p1, 0x5

    .line 1959
    :cond_0
    :goto_0
    iput p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuCount:I

    .line 1960
    return-void

    .line 1956
    :cond_1
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1957
    const/4 p1, 0x1

    goto :goto_0
.end method

.method private setPaintingViewDisplayAlpha()V
    .locals 2

    .prologue
    .line 2693
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    if-eqz v0, :cond_1

    .line 2694
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mForceHideStroke:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeVisibility:I

    if-nez v0, :cond_2

    .line 2696
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    iget v1, p0, Lcom/htc/painting/penmenu/PenMenu;->STROKE_INVISIBLE_ALPHA:I

    invoke-interface {v0, v1}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->setDisplayAlpha(I)V

    .line 2702
    :cond_1
    :goto_0
    return-void

    .line 2699
    :cond_2
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    iget v1, p0, Lcom/htc/painting/penmenu/PenMenu;->STROKE_VISIBLE_ALPHA:I

    invoke-interface {v0, v1}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->setDisplayAlpha(I)V

    goto :goto_0
.end method

.method private setPaintingViewStroke()V
    .locals 9

    .prologue
    .line 2657
    iget-boolean v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mIsEraserMode:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 2690
    :cond_0
    :goto_0
    return-void

    .line 2661
    :cond_1
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    if-eqz v6, :cond_0

    .line 2662
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenType()I

    move-result v2

    .line 2663
    .local v2, penId:I
    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->getPenTypeItem(I)Lcom/htc/painting/penmenu/menu/PenTypeItem;

    move-result-object v1

    .line 2664
    .local v1, item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    if-nez v1, :cond_2

    .line 2665
    const-string v6, "PenMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPaintingViewStroke - no PenTypeItem found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2669
    :cond_2
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getPenType()Lcom/htc/painting/penmenu/PenType;

    move-result-object v3

    .line 2670
    .local v3, penType:Lcom/htc/painting/penmenu/PenType;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/PenType;->getPen()Lcom/htc/painting/tool/pen/Pen;

    move-result-object v6

    if-nez v6, :cond_4

    .line 2671
    :cond_3
    const-string v6, "PenMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPaintingViewStroke - no PenType found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2675
    :cond_4
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_5

    .line 2676
    const-string v6, "PenMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPaintingView - type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/PenType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", color:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenColor()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenSizeId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    :cond_5
    new-instance v5, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v5}, Lcom/htc/painting/engine/StrokeProperties;-><init>()V

    .line 2682
    .local v5, sp:Lcom/htc/painting/engine/StrokeProperties;
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenColor()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/painting/engine/StrokeProperties;->setColor(I)V

    .line 2683
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenSizeId()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/htc/painting/penmenu/PenType;->getPenSize(I)F

    move-result v4

    .line 2684
    .local v4, size:F
    invoke-virtual {v5, v4}, Lcom/htc/painting/engine/StrokeProperties;->setWidth(F)V

    .line 2685
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/PenType;->isEraser()Z

    move-result v0

    .line 2686
    .local v0, isEraser:Z
    invoke-virtual {v5, v0}, Lcom/htc/painting/engine/StrokeProperties;->setEraser(Z)V

    .line 2688
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/PenType;->getPen()Lcom/htc/painting/tool/pen/Pen;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->setPen(Lcom/htc/painting/tool/pen/Pen;Lcom/htc/painting/engine/StrokeProperties;)V

    goto/16 :goto_0
.end method

.method private setRotateInOut()V
    .locals 12

    .prologue
    const/high16 v1, 0x42b4

    const/high16 v7, -0x3d4c

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3860
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getSize()I

    move-result v11

    .line 3861
    .local v11, size:I
    sget-object v0, Lcom/htc/painting/penmenu/PenMenu$11;->$SwitchMap$com$htc$painting$penmenu$PenMenu$DockCorner:[I

    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 3888
    :goto_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnim:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/htc/painting/penmenu/PenMenu;->ANIM_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3889
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3891
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/htc/painting/penmenu/PenMenu;->ANIM_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3892
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3893
    return-void

    .line 3863
    :pswitch_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v6, v11

    move v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnim:Landroid/view/animation/Animation;

    .line 3865
    new-instance v4, Landroid/view/animation/RotateAnimation;

    int-to-float v10, v11

    move v5, v2

    move v6, v1

    move v7, v3

    move v8, v2

    move v9, v3

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    goto :goto_0

    .line 3869
    :pswitch_1
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v1, v7

    move v4, v2

    move v5, v3

    move v6, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnim:Landroid/view/animation/Animation;

    .line 3871
    new-instance v4, Landroid/view/animation/RotateAnimation;

    move v5, v2

    move v6, v7

    move v7, v3

    move v8, v2

    move v9, v3

    move v10, v2

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    goto :goto_0

    .line 3875
    :pswitch_2
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v4, v11

    int-to-float v6, v11

    move v1, v7

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnim:Landroid/view/animation/Animation;

    .line 3877
    new-instance v4, Landroid/view/animation/RotateAnimation;

    int-to-float v8, v11

    int-to-float v10, v11

    move v5, v2

    move v6, v7

    move v7, v3

    move v9, v3

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    goto :goto_0

    .line 3881
    :pswitch_3
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v4, v11

    move v5, v3

    move v6, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnim:Landroid/view/animation/Animation;

    .line 3883
    new-instance v4, Landroid/view/animation/RotateAnimation;

    int-to-float v8, v11

    move v5, v2

    move v6, v1

    move v7, v3

    move v9, v3

    move v10, v2

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    goto :goto_0

    .line 3861
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private setSizeCount(I)V
    .locals 1
    .parameter "sizeCount"

    .prologue
    .line 2001
    const/16 v0, 0x8

    if-le p1, v0, :cond_1

    .line 2002
    const/16 p1, 0x8

    .line 2007
    :cond_0
    :goto_0
    iput p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mSizeCount:I

    .line 2008
    return-void

    .line 2004
    :cond_1
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 2005
    const/4 p1, 0x1

    goto :goto_0
.end method

.method private setStateVisible(Lcom/htc/painting/penmenu/PenMenu$State;)V
    .locals 3
    .parameter "state"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1469
    sget-object v0, Lcom/htc/painting/penmenu/PenMenu$State;->HIDE:Lcom/htc/painting/penmenu/PenMenu$State;

    if-ne p1, v0, :cond_0

    .line 1470
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v0, v2}, Lcom/htc/painting/penmenu/base/BasePanel;->setVisibility(I)V

    .line 1471
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v0, v2}, Lcom/htc/painting/penmenu/menu/Menu;->setVisibility(I)V

    .line 1472
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v0, v2}, Lcom/htc/painting/penmenu/action/ActionPanel;->setVisibility(I)V

    .line 1473
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v0, v2}, Lcom/htc/painting/penmenu/history/PenHistory;->setVisibility(I)V

    .line 1481
    :goto_0
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    .line 1482
    return-void

    .line 1476
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/base/BasePanel;->setVisibility(I)V

    .line 1477
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/menu/Menu;->setVisibility(I)V

    .line 1478
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/action/ActionPanel;->setVisibility(I)V

    .line 1479
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistory;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTranstalteInOut()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 3824
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getSize()I

    move-result v11

    .line 3825
    .local v11, size:I
    sget-object v0, Lcom/htc/painting/penmenu/PenMenu$11;->$SwitchMap$com$htc$painting$penmenu$PenMenu$DockCorner:[I

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 3852
    :goto_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnim:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/htc/painting/penmenu/PenMenu;->ANIM_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3853
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3855
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/htc/painting/penmenu/PenMenu;->ANIM_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3856
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3857
    return-void

    .line 3827
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-int v2, v11

    int-to-float v2, v2

    int-to-float v6, v11

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnim:Landroid/view/animation/Animation;

    .line 3829
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    neg-int v0, v11

    int-to-float v6, v0

    int-to-float v10, v11

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    move v9, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    goto :goto_0

    .line 3833
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-int v2, v11

    int-to-float v2, v2

    neg-int v3, v11

    int-to-float v6, v3

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnim:Landroid/view/animation/Animation;

    .line 3835
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    neg-int v0, v11

    int-to-float v6, v0

    neg-int v0, v11

    int-to-float v10, v0

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    move v9, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    goto :goto_0

    .line 3839
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v11

    int-to-float v6, v11

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnim:Landroid/view/animation/Animation;

    .line 3841
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v6, v11

    int-to-float v10, v11

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    move v9, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    goto :goto_0

    .line 3845
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v11

    neg-int v3, v11

    int-to-float v6, v3

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnim:Landroid/view/animation/Animation;

    .line 3847
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v6, v11

    neg-int v0, v11

    int-to-float v10, v0

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    move v9, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveOutAnim:Landroid/view/animation/Animation;

    goto/16 :goto_0

    .line 3825
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private setTypeCount(I)V
    .locals 1
    .parameter "typeCount"

    .prologue
    .line 1969
    const/16 v0, 0x8

    if-le p1, v0, :cond_1

    .line 1970
    const/16 p1, 0x8

    .line 1975
    :cond_0
    :goto_0
    iput p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mTypeCount:I

    .line 1976
    return-void

    .line 1972
    :cond_1
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1973
    const/4 p1, 0x1

    goto :goto_0
.end method

.method private setWidthForPrompt(Z)V
    .locals 2
    .parameter "showPrompt"

    .prologue
    .line 3595
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3596
    .local v0, param:Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 3597
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x3c

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3601
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/PenMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3602
    return-void

    .line 3599
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getSize()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private setupHitoryPens(ZILjava/util/List;)V
    .locals 5
    .parameter "isSimplePen"
    .parameter "currentPenOrder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/Pen;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 950
    .local p3, historyPens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/Pen;>;"
    if-nez p3, :cond_1

    .line 967
    :cond_0
    return-void

    .line 953
    :cond_1
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    .line 954
    .local v2, penHistory:Lcom/htc/painting/penmenu/history/PenHistory;
    if-eqz v2, :cond_0

    .line 955
    invoke-virtual {v2}, Lcom/htc/painting/penmenu/history/PenHistory;->reset()V

    .line 957
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/Pen;

    .line 958
    .local v1, pen:Lcom/htc/painting/penmenu/Pen;
    if-eqz v1, :cond_2

    .line 959
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/Pen;->refreshHistorySeqNo()I

    move-result v3

    .line 960
    .local v3, sn:I
    if-ne v3, p2, :cond_3

    .line 961
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/Pen;->refreshHistorySeqNo()I

    .line 963
    :cond_3
    invoke-virtual {v2, v1}, Lcom/htc/painting/penmenu/history/PenHistory;->addPen(Lcom/htc/painting/penmenu/Pen;)I

    goto :goto_0
.end method

.method private setupMenus()V
    .locals 13

    .prologue
    .line 1280
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v9

    .line 1282
    .local v9, typeMenuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    iget v10, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    packed-switch v10, :pswitch_data_0

    .line 1296
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenType()I

    move-result v5

    .line 1297
    .local v5, penTypeId:I
    invoke-virtual {p0, v5}, Lcom/htc/painting/penmenu/PenMenu;->getPenTypeItem(I)Lcom/htc/painting/penmenu/menu/PenTypeItem;

    move-result-object v4

    .line 1299
    .local v4, pen:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v1

    .line 1300
    .local v1, colorMenuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v8

    .line 1301
    .local v8, sizeMenuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    if-nez v4, :cond_2

    .line 1302
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setEnabled(Z)V

    .line 1303
    invoke-virtual {v8}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setEnabled(Z)V

    .line 1398
    :cond_1
    :goto_1
    return-void

    .line 1285
    .end local v1           #colorMenuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    .end local v4           #pen:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    .end local v5           #penTypeId:I
    .end local v8           #sizeMenuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    :pswitch_0
    invoke-virtual {v9}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setEnabled(Z)V

    goto :goto_0

    .line 1288
    :pswitch_1
    invoke-virtual {v9}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setEnabled(Z)V

    .line 1289
    iget v10, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 1290
    const/4 v10, 0x3

    iput v10, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    goto :goto_0

    .line 1308
    .restart local v1       #colorMenuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    .restart local v4       #pen:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    .restart local v5       #penTypeId:I
    .restart local v8       #sizeMenuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    :cond_2
    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->isSupported(I)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1311
    iget v10, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_3

    .line 1312
    const/4 v10, 0x1

    iput v10, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    .line 1314
    :cond_3
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setEnabled(Z)V

    .line 1320
    :goto_2
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->isSupported(I)Z

    move-result v10

    if-nez v10, :cond_7

    .line 1323
    iget v10, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 1324
    const/4 v10, -0x1

    iput v10, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    .line 1326
    :cond_4
    invoke-virtual {v8}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setEnabled(Z)V

    .line 1333
    :goto_3
    invoke-virtual {v8}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setFocus(Z)V

    .line 1334
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setFocus(Z)V

    .line 1335
    invoke-virtual {v9}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setFocus(Z)V

    .line 1337
    iget v10, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    packed-switch v10, :pswitch_data_1

    .line 1350
    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItems()Ljava/util/List;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1351
    .local v0, colorItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/penmenu/menu/OptionItem;

    .line 1352
    .local v3, item:Lcom/htc/painting/penmenu/menu/OptionItem;
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/OptionItem;->getId()I

    move-result v10

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenColor()I

    move-result v11

    if-ne v10, v11, :cond_8

    .line 1353
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/htc/painting/penmenu/menu/OptionItem;->setFocus(Z)V

    .line 1359
    :goto_6
    invoke-virtual {v4}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getPenType()Lcom/htc/painting/penmenu/PenType;

    move-result-object v10

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/OptionItem;->getId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/PenType;->isColorSupported(I)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->isSupported(I)Z

    move-result v10

    if-nez v10, :cond_9

    .line 1361
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/painting/penmenu/menu/OptionItem;->setEnabled(Z)V

    goto :goto_5

    .line 1317
    .end local v0           #colorItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/htc/painting/penmenu/menu/OptionItem;
    :cond_6
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setEnabled(Z)V

    goto :goto_2

    .line 1329
    :cond_7
    invoke-virtual {v8}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setEnabled(Z)V

    goto :goto_3

    .line 1339
    :pswitch_2
    invoke-virtual {v8}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setFocus(Z)V

    goto :goto_4

    .line 1342
    :pswitch_3
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setFocus(Z)V

    goto :goto_4

    .line 1345
    :pswitch_4
    invoke-virtual {v9}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/menu/MenuItem;->setFocus(Z)V

    goto :goto_4

    .line 1356
    .restart local v0       #colorItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #item:Lcom/htc/painting/penmenu/menu/OptionItem;
    :cond_8
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/painting/penmenu/menu/OptionItem;->setFocus(Z)V

    goto :goto_6

    .line 1364
    :cond_9
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/htc/painting/penmenu/menu/OptionItem;->setEnabled(Z)V

    goto :goto_5

    .line 1369
    .end local v3           #item:Lcom/htc/painting/penmenu/menu/OptionItem;
    :cond_a
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItems()Ljava/util/List;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1370
    .local v7, sizeItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/penmenu/menu/OptionItem;

    .line 1371
    .restart local v3       #item:Lcom/htc/painting/penmenu/menu/OptionItem;
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/OptionItem;->getId()I

    move-result v10

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenSizeId()I

    move-result v11

    if-ne v10, v11, :cond_b

    .line 1372
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/htc/painting/penmenu/menu/OptionItem;->setFocus(Z)V

    .line 1378
    :goto_8
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/htc/painting/penmenu/menu/OptionItem;->setEnabled(Z)V

    goto :goto_7

    .line 1375
    :cond_b
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/painting/penmenu/menu/OptionItem;->setFocus(Z)V

    goto :goto_8

    .line 1382
    .end local v3           #item:Lcom/htc/painting/penmenu/menu/OptionItem;
    :cond_c
    new-instance v6, Ljava/util/ArrayList;

    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItems()Ljava/util/List;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1383
    .local v6, pentypeItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/penmenu/menu/OptionItem;

    .line 1384
    .restart local v3       #item:Lcom/htc/painting/penmenu/menu/OptionItem;
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/OptionItem;->getId()I

    move-result v10

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenType()I

    move-result v11

    if-ne v10, v11, :cond_d

    .line 1385
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/htc/painting/penmenu/menu/OptionItem;->setFocus(Z)V

    goto :goto_9

    .line 1388
    :cond_d
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/painting/penmenu/menu/OptionItem;->setFocus(Z)V

    goto :goto_9

    .line 1392
    .end local v3           #item:Lcom/htc/painting/penmenu/menu/OptionItem;
    :cond_e
    iget-object v10, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    iget-object v11, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    iget v12, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    invoke-virtual {v10, v11, v12}, Lcom/htc/painting/penmenu/menu/Menu;->setState(Lcom/htc/painting/penmenu/menu/Menu$State;I)V

    .line 1395
    iget-object v10, p0, Lcom/htc/painting/penmenu/PenMenu;->mOuterOptionChangedListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    if-eqz v10, :cond_1

    .line 1396
    iget-object v10, p0, Lcom/htc/painting/penmenu/PenMenu;->mOuterOptionChangedListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    const/4 v11, 0x2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenType()I

    move-result v12

    invoke-interface {v10, v11, v12}, Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;->onOptionChanged(II)V

    goto/16 :goto_1

    .line 1282
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1337
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private setupMoveInOutAnims()V
    .locals 0

    .prologue
    .line 3819
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setRotateInOut()V

    .line 3820
    return-void
.end method

.method private setupStrokeVisibleActionItem(I)V
    .locals 3
    .parameter "strokeState"

    .prologue
    .line 2265
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/action/ActionItem;

    .line 2266
    .local v0, item:Lcom/htc/painting/penmenu/action/ActionItem;
    if-eqz v0, :cond_0

    .line 2267
    new-instance v1, Lcom/htc/painting/penmenu/PenMenu$StrokeVisibleState;

    invoke-direct {v1, p0, v0, p1}, Lcom/htc/painting/penmenu/PenMenu$StrokeVisibleState;-><init>(Lcom/htc/painting/penmenu/PenMenu;Lcom/htc/painting/penmenu/action/ActionItem;I)V

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/action/ActionItem;->setState(Lcom/htc/painting/penmenu/action/ActionState;)V

    .line 2271
    :goto_0
    return-void

    .line 2269
    :cond_0
    const-string v1, "PenMenu"

    const-string v2, "setupStrokeVisibleState - can\'t find stroke visible action item"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showInternal()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1577
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    .line 1578
    const-string v1, "PenMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show() - mState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mStickyMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/StateManager;->getStickyMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mStickyState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/StateManager;->getStickyState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1584
    const-string v1, "PenMenu"

    const-string v2, "show - PenMenu has already been destroyed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    :cond_1
    :goto_0
    return-void

    .line 1588
    :cond_2
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/PenManager;->hasPenDownAfterSetupWizard(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1589
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    .line 1590
    const-string v1, "PenMenu"

    const-string v2, "show - ignore because pen hasn\'t been used!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1595
    :cond_3
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/StateManager;->wouldShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1599
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$State;->HIDE:Lcom/htc/painting/penmenu/PenMenu$State;

    if-ne v1, v2, :cond_7

    .line 1600
    iget-boolean v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimInProgress:Z

    if-eq v1, v5, :cond_1

    .line 1603
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    if-eqz v1, :cond_4

    .line 1604
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$State;->SHOW:Lcom/htc/painting/penmenu/PenMenu$State;

    invoke-interface {v1, v2}, Lcom/htc/painting/penmenu/PenMenu$StateMonitor;->willChange(Lcom/htc/painting/penmenu/PenMenu$State;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1608
    :cond_4
    iput-boolean v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimInProgress:Z

    .line 1610
    sget-object v1, Lcom/htc/painting/penmenu/PenMenu$State;->SHOW:Lcom/htc/painting/penmenu/PenMenu$State;

    invoke-direct {p0, v1}, Lcom/htc/painting/penmenu/PenMenu;->setStateVisible(Lcom/htc/painting/penmenu/PenMenu$State;)V

    .line 1612
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    if-nez v1, :cond_5

    .line 1613
    invoke-direct {p0, v4}, Lcom/htc/painting/penmenu/PenMenu;->onPenDataStateChanged(Z)V

    .line 1616
    :cond_5
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->dismissPrompt()V

    .line 1617
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isAnimactionEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1619
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    sget-object v2, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-ne v1, v2, :cond_6

    .line 1621
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    sget-object v2, Lcom/htc/painting/penmenu/history/PenHistory$State;->HIDE:Lcom/htc/painting/penmenu/history/PenHistory$State;

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/history/PenHistory;->setState(Lcom/htc/painting/penmenu/history/PenHistory$State;)V

    .line 1623
    :cond_6
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMoveInAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu/PenMenu;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1642
    :cond_7
    :goto_1
    iget-wide v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 1643
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mLastUseTime:J

    .line 1644
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDismissTimerTask:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/painting/penmenu/PenMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    .line 1645
    .local v0, ret:Z
    if-nez v0, :cond_1

    .line 1646
    const-string v1, "PenMenu"

    const-string v2, "show - postDelayed failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1627
    .end local v0           #ret:Z
    :cond_8
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    sget-object v2, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-ne v1, v2, :cond_9

    .line 1628
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v1, v4}, Lcom/htc/painting/penmenu/action/ActionPanel;->setVisibility(I)V

    .line 1629
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v1, v4}, Lcom/htc/painting/penmenu/history/PenHistory;->show(Z)V

    .line 1635
    :goto_2
    iput-boolean v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimInProgress:Z

    .line 1636
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    if-eqz v1, :cond_7

    .line 1637
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    sget-object v2, Lcom/htc/painting/penmenu/PenMenu$State;->SHOW:Lcom/htc/painting/penmenu/PenMenu$State;

    invoke-interface {v1, v2}, Lcom/htc/painting/penmenu/PenMenu$StateMonitor;->OnChanged(Lcom/htc/painting/penmenu/PenMenu$State;)V

    goto :goto_1

    .line 1632
    :cond_9
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/action/ActionPanel;->setVisibility(I)V

    .line 1633
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v1, v4}, Lcom/htc/painting/penmenu/history/PenHistory;->hide(Z)V

    goto :goto_2
.end method

.method private toAngle(FF)D
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3354
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v3, v4, p1

    .line 3355
    .local v3, w:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v2, v4, p2

    .line 3357
    .local v2, h:F
    div-float v4, v2, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    .line 3358
    .local v0, arc:D
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    return-wide v4
.end method

.method private toRadius(FF)D
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3363
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v1, v2, p1

    .line 3364
    .local v1, w:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, p2

    .line 3366
    .local v0, h:F
    mul-float v2, v1, v1

    mul-float v3, v0, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    return-wide v2
.end method

.method private updateBlockConditions(Ljava/lang/String;Z)V
    .locals 3
    .parameter "conditionKey"
    .parameter "block"

    .prologue
    const/4 v2, 0x0

    .line 3956
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v1, p1, p2}, Lcom/htc/painting/penmenu/StateManager;->updateBlockCondition(Ljava/lang/String;Z)Z

    move-result v0

    .line 3957
    .local v0, show:Z
    if-eqz v0, :cond_0

    .line 3958
    invoke-virtual {p0, v2, v2}, Lcom/htc/painting/penmenu/PenMenu;->show(ZZ)V

    .line 3962
    :goto_0
    return-void

    .line 3960
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/htc/painting/penmenu/PenMenu;->hide(ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public OnRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 2499
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 2500
    const-string v0, "PenMenu"

    const-string v1, "OnRestoreInstanceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2504
    const-string v0, "PenMenu"

    const-string v1, "OnRestoreInstanceState - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    :goto_0
    return-void

    .line 2508
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenMenu;->restoreTempState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public OnSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 2475
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 2476
    const-string v0, "PenMenu"

    const-string v1, "OnSaveInstanceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2480
    const-string v0, "PenMenu"

    const-string v1, "OnSaveInstanceState - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    :cond_1
    :goto_0
    return-void

    .line 2484
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenMenu;->saveTempState(Landroid/os/Bundle;)V

    .line 2486
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2487
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_3

    .line 2488
    const-string v0, "PenMenu"

    const-string v1, "OnSaveInstanceState() - showing prompt set to true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    :cond_3
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu/PenManager;->savePromptHowToShowPenMenu(ZLandroid/content/Context;)Z

    goto :goto_0
.end method

.method public changeAction(II[I)Z
    .locals 11
    .parameter "fromActionId"
    .parameter "toActionId"
    .parameter "iconResIds"

    .prologue
    const/4 v7, 0x0

    .line 2942
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v8, :cond_0

    .line 2943
    const-string v8, "PenMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeAction("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    if-eqz p3, :cond_0

    .line 2945
    const-string v8, "PenMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeAction - icon res array length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, p3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2950
    const-string v8, "PenMenu"

    const-string v9, "changeAction - PenMenu has already been destroyed!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 2984
    :goto_0
    return v5

    .line 2954
    :cond_1
    iget-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/action/ActionItem;

    .line 2955
    .local v1, fromItem:Lcom/htc/painting/penmenu/action/ActionItem;
    if-nez v1, :cond_2

    .line 2956
    const-string v8, "PenMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeAction - the action id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not found!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 2957
    goto :goto_0

    .line 2960
    :cond_2
    new-instance v6, Lcom/htc/painting/penmenu/action/ActionItem;

    invoke-direct {p0, p2}, Lcom/htc/painting/penmenu/PenMenu;->getPositionFor(I)I

    move-result v8

    invoke-direct {v6, p2, v8}, Lcom/htc/painting/penmenu/action/ActionItem;-><init>(II)V

    .line 2962
    .local v6, toItem:Lcom/htc/painting/penmenu/action/ActionItem;
    iget-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v8}, Lcom/htc/painting/penmenu/base/BasePanel;->getSize()I

    move-result v8

    int-to-float v4, v8

    .line 2963
    .local v4, inner:F
    iget-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v8}, Lcom/htc/painting/penmenu/action/ActionPanel;->getSize()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/action/ActionItem;->getBeginAngleByDegree()F

    move-result v9

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/action/ActionItem;->getAngleRangeByDegree()F

    move-result v10

    invoke-virtual {v6, v4, v8, v9, v10}, Lcom/htc/painting/penmenu/action/ActionItem;->setPosition(FFFF)V

    .line 2965
    if-eqz p3, :cond_4

    array-length v8, p3

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    .line 2966
    array-length v8, p3

    new-array v3, v8, [Landroid/graphics/Bitmap;

    .line 2967
    .local v3, icons:[Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v8, p3

    if-ge v2, v8, :cond_3

    .line 2968
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    aget v9, p3, v2

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    aput-object v8, v3, v2

    .line 2967
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2971
    :cond_3
    invoke-virtual {v6, v3}, Lcom/htc/painting/penmenu/action/ActionItem;->setIcons([Landroid/graphics/Bitmap;)V

    .line 2974
    .end local v2           #i:I
    .end local v3           #icons:[Landroid/graphics/Bitmap;
    :cond_4
    const/4 v5, 0x0

    .line 2976
    .local v5, ret:Z
    :try_start_0
    invoke-direct {p0, v6}, Lcom/htc/painting/penmenu/PenMenu;->addAction(Lcom/htc/painting/penmenu/action/ActionItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 2981
    iget-object v7, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v7}, Lcom/htc/painting/penmenu/action/ActionPanel;->resetActions()V

    .line 2982
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/action/ActionItem;->release()V

    goto :goto_0

    .line 2977
    :catch_0
    move-exception v0

    .line 2978
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "PenMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeAction - addAction exception for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/action/ActionItem;->getActionId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 2979
    goto/16 :goto_0
.end method

.method public changeMenuState()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1771
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    .line 1772
    const-string v2, "PenMenu"

    const-string v3, "changeMenuState()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1776
    const-string v1, "PenMenu"

    const-string v2, "changeMenuState - PenMenu has already been destroyed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    :cond_1
    :goto_0
    return v0

    .line 1780
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/PenMenu;->setUseTime(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1784
    iget-boolean v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimInProgress:Z

    if-eq v2, v1, :cond_1

    .line 1787
    iput-boolean v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimInProgress:Z

    .line 1789
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    iget v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/menu/Menu;->changeState(I)Lcom/htc/painting/penmenu/menu/Menu$State;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    .line 1790
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    sget-object v3, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-ne v2, v3, :cond_3

    .line 1791
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v2, v0}, Lcom/htc/painting/penmenu/action/ActionPanel;->setVisibility(I)V

    .line 1792
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistory;->show(Z)V

    :goto_1
    move v0, v1

    .line 1798
    goto :goto_0

    .line 1795
    :cond_3
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistory;->hide(Z)V

    goto :goto_1
.end method

.method changePen(II)V
    .locals 6
    .parameter "menuId"
    .parameter "optionId"

    .prologue
    const/4 v5, 0x1

    .line 638
    const/4 v2, 0x0

    .line 639
    .local v2, tempPen:Lcom/htc/painting/penmenu/Pen;
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/Pen;->isUsed()Z

    move-result v3

    if-ne v3, v5, :cond_5

    .line 640
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/Pen;->clone()Lcom/htc/painting/penmenu/Pen;

    move-result-object v2

    .line 650
    :cond_0
    :goto_0
    const/4 v3, 0x3

    if-ne p1, v3, :cond_6

    .line 651
    invoke-virtual {p0, p2}, Lcom/htc/painting/penmenu/PenMenu;->setPenColor(I)V

    .line 662
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/history/PenHistory;->getHistoryPens()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 665
    .local v0, countBefore:I
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/history/PenHistory;->getSamePen(Lcom/htc/painting/penmenu/Pen;)Lcom/htc/painting/penmenu/Pen;

    move-result-object v1

    .line 666
    .local v1, sameHistoryPen:Lcom/htc/painting/penmenu/Pen;
    if-eqz v1, :cond_2

    .line 667
    iput-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    .line 668
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/Pen;->setUsed(Z)V

    .line 672
    :cond_2
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v3, v2}, Lcom/htc/painting/penmenu/Pen;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v5, :cond_3

    .line 673
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v3, v2}, Lcom/htc/painting/penmenu/history/PenHistory;->addPen(Lcom/htc/painting/penmenu/Pen;)I

    .line 675
    :cond_3
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_4

    .line 676
    const-string v3, "PenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change pen, before : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mPenHistory size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/history/PenHistory;->getHistoryPens()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_4
    return-void

    .line 644
    .end local v0           #countBefore:I
    .end local v1           #sameHistoryPen:Lcom/htc/painting/penmenu/Pen;
    :cond_5
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/Pen;->isFromHistory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 645
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/Pen;->clone()Lcom/htc/painting/penmenu/Pen;

    move-result-object v2

    goto :goto_0

    .line 653
    :cond_6
    if-ne p1, v5, :cond_7

    .line 654
    invoke-virtual {p0, p2}, Lcom/htc/painting/penmenu/PenMenu;->setPenSizeId(I)V

    goto :goto_1

    .line 656
    :cond_7
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 658
    invoke-virtual {p0, p2}, Lcom/htc/painting/penmenu/PenMenu;->setPenType(I)V

    .line 659
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setupMenus()V

    goto :goto_1
.end method

.method public changeState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1713
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 1714
    const-string v0, "PenMenu"

    const-string v1, "changeState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1718
    const-string v0, "PenMenu"

    const-string v1, "changeState- PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    :goto_0
    return-void

    .line 1722
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    sget-object v1, Lcom/htc/painting/penmenu/PenMenu$State;->SHOW:Lcom/htc/painting/penmenu/PenMenu$State;

    if-ne v0, v1, :cond_2

    .line 1723
    invoke-virtual {p0, v2, v2}, Lcom/htc/painting/penmenu/PenMenu;->hide(ZZ)V

    goto :goto_0

    .line 1726
    :cond_2
    invoke-virtual {p0, v2, v2}, Lcom/htc/painting/penmenu/PenMenu;->show(ZZ)V

    goto :goto_0
.end method

.method public dismissPrompt()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3555
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3557
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3558
    invoke-direct {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->setWidthForPrompt(Z)V

    .line 3559
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/htc/painting/penmenu/PenManager;->savePromptHowToShowPenMenu(ZLandroid/content/Context;)Z

    .line 3561
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/high16 v3, -0x4080

    .line 3712
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 3713
    const-string v0, "PenMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchDraw - visibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3716
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3717
    const-string v0, "PenMenu"

    const-string v1, "dispatchDraw - not visible, return"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3747
    :goto_0
    return-void

    .line 3721
    :cond_1
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3722
    const-string v0, "PenMenu"

    const-string v1, "dispatchDraw - receive event after destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3726
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3728
    sget-object v0, Lcom/htc/painting/penmenu/PenMenu$11;->$SwitchMap$com$htc$painting$penmenu$PenMenu$DockCorner:[I

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3745
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3746
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 3730
    :pswitch_0
    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3731
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 3734
    :pswitch_1
    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3735
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 3738
    :pswitch_2
    invoke-virtual {p1, v5, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3739
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 3728
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    .line 3772
    invoke-static {p1}, Lcom/htc/pen/PenEvent;->isPenEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 3773
    .local v1, isPen:Z
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    .line 3774
    const-string v3, "PenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchTouchEvent - isPen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDockCorner: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3777
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3778
    const-string v3, "PenMenu"

    const-string v4, "dispatchPenEvent - receive event after destroyed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3779
    const/4 v0, 0x0

    .line 3788
    :goto_0
    return v0

    .line 3782
    :cond_1
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 3784
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenMenu;->adjustMotionEvent(Landroid/view/MotionEvent;)Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;

    move-result-object v2

    .line 3785
    .local v2, record:Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 3786
    .local v0, consumed:Z
    invoke-static {p1, v2}, Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;->restoreEvent(Landroid/view/MotionEvent;Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;)V

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/4 v0, 0x0

    .line 3751
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3767
    :goto_0
    :pswitch_0
    return v0

    .line 3755
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    if-ne p2, v1, :cond_1

    .line 3757
    sget-object v1, Lcom/htc/painting/penmenu/PenMenu$11;->$SwitchMap$com$htc$painting$penmenu$PenMenu$DockCorner:[I

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3767
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0

    .line 3759
    :pswitch_1
    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3760
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 3757
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public forceHideStroke(Z)I
    .locals 3
    .parameter "forceHide"

    .prologue
    .line 3004
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 3005
    const-string v0, "PenMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceHideStroke("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3009
    const-string v0, "PenMenu"

    const-string v1, "forceHideStroke - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeVisibility:I

    .line 3018
    :goto_0
    return v0

    .line 3013
    :cond_1
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mForceHideStroke:Z

    .line 3014
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setPaintingViewDisplayAlpha()V

    .line 3016
    const-string v0, "key_force_off"

    invoke-direct {p0, v0, p1}, Lcom/htc/painting/penmenu/PenMenu;->updateBlockConditions(Ljava/lang/String;Z)V

    .line 3018
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeVisibility:I

    goto :goto_0
.end method

.method public getActionCount()I
    .locals 1

    .prologue
    .line 1917
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionCount:I

    return v0
.end method

.method public getActionList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/action/ActionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1448
    .local v0, ret:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/action/ActionItem;>;"
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 1453
    :goto_0
    return-object v0

    .line 1451
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1452
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method public getActionPanelSize()I
    .locals 2

    .prologue
    .line 1086
    const/4 v0, 0x0

    .line 1088
    .local v0, size:I
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    if-eqz v1, :cond_0

    .line 1089
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/action/ActionPanel;->getSize()I

    move-result v0

    .line 1092
    :cond_0
    return v0
.end method

.method public getBasePanelSize()I
    .locals 2

    .prologue
    .line 1075
    const/4 v0, 0x0

    .line 1077
    .local v0, size:I
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    if-eqz v1, :cond_0

    .line 1078
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/base/BasePanel;->getSize()I

    move-result v0

    .line 1081
    :cond_0
    return v0
.end method

.method public getCenter(I)Landroid/graphics/Point;
    .locals 8
    .parameter "elementId"

    .prologue
    .line 3053
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3054
    const-string v4, "PenMenu"

    const-string v5, "getCenter - PenMenu has already been destroyed!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    const/4 v3, 0x0

    .line 3090
    :cond_0
    :goto_0
    return-object v3

    .line 3058
    :cond_1
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 3060
    .local v3, ret:Landroid/graphics/Point;
    sparse-switch p1, :sswitch_data_0

    .line 3082
    const/4 v3, 0x0

    .line 3085
    :goto_1
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    .line 3086
    const-string v5, "PenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCenter("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") return: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v3, :cond_2

    const-string v4, "null"

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3062
    :sswitch_0
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/base/BasePanel;->getSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 3063
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/base/BasePanel;->getSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 3068
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v2

    .line 3069
    .local v2, menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v1

    .line 3070
    .local v1, menuItem:Lcom/htc/painting/penmenu/menu/MenuItem;
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/MenuItem;->getRadius()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/MenuItem;->getAngleByDegree()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 3071
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/MenuItem;->getRadius()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/MenuItem;->getAngleByDegree()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 3077
    .end local v1           #menuItem:Lcom/htc/painting/penmenu/menu/MenuItem;
    .end local v2           #menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    :sswitch_2
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/action/ActionItem;

    .line 3078
    .local v0, actionItem:Lcom/htc/painting/penmenu/action/ActionItem;
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/action/ActionItem;->getRadius()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/action/ActionItem;->getAngleByDegree()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 3079
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/action/ActionItem;->getRadius()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/action/ActionItem;->getAngleByDegree()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    .line 3086
    .end local v0           #actionItem:Lcom/htc/painting/penmenu/action/ActionItem;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 3060
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_2
        0x190 -> :sswitch_2
    .end sparse-switch
.end method

.method public getColorCount()I
    .locals 1

    .prologue
    .line 1981
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mColorCount:I

    return v0
.end method

.method public getCorner()Lcom/htc/painting/penmenu/PenMenu$DockCorner;
    .locals 1

    .prologue
    .line 3684
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    return-object v0
.end method

.method public getCurrentOptionPosition(I)I
    .locals 7
    .parameter "menuId"

    .prologue
    .line 3186
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    .line 3187
    const-string v4, "PenMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentOptionPosition: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3190
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3191
    const-string v4, "PenMenu"

    const-string v5, "getCurrentOptionPosition - PenMenu has already been destroyed!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    const/4 v3, -0x1

    .line 3211
    :cond_1
    :goto_0
    return v3

    .line 3195
    :cond_2
    const/4 v3, -0x1

    .line 3196
    .local v3, ret:I
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v2

    .line 3197
    .local v2, menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    if-eqz v2, :cond_3

    .line 3198
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 3199
    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/menu/OptionItem;

    .line 3200
    .local v1, item:Lcom/htc/painting/penmenu/menu/OptionItem;
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/OptionItem;->getFocus()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 3201
    move v3, v0

    .line 3207
    .end local v0           #i:I
    .end local v1           #item:Lcom/htc/painting/penmenu/menu/OptionItem;
    :cond_3
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_1

    .line 3208
    const-string v4, "PenMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentOptionPosition - return: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3198
    .restart local v0       #i:I
    .restart local v1       #item:Lcom/htc/painting/penmenu/menu/OptionItem;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getCurrentPen()Lcom/htc/painting/penmenu/Pen;
    .locals 1

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    return-object v0
.end method

.method public getCurrentPenCap()Landroid/graphics/Paint$Cap;
    .locals 1

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    if-nez v0, :cond_0

    .line 1426
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 1428
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/Pen;->getCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentPenColor()I
    .locals 1

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    if-nez v0, :cond_0

    .line 1419
    const/4 v0, 0x0

    .line 1421
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/Pen;->getColor()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentPenSizeId()I
    .locals 1

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    if-nez v0, :cond_0

    .line 1411
    const/4 v0, -0x1

    .line 1413
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/Pen;->getSizeId()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentPenType()I
    .locals 1

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    if-nez v0, :cond_0

    .line 1403
    const/4 v0, -0x1

    .line 1405
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/Pen;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public getHistoryCount()I
    .locals 1

    .prologue
    .line 1933
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mHistoryCount:I

    return v0
.end method

.method public getMenuCount()I
    .locals 1

    .prologue
    .line 1949
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuCount:I

    return v0
.end method

.method public getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;
    .locals 3
    .parameter "menuId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/htc/painting/penmenu/menu/MenuOptions",
            "<+",
            "Lcom/htc/painting/penmenu/menu/OptionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1459
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuOptionsMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuOptionsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1460
    :cond_0
    const/4 v0, 0x0

    .line 1464
    :goto_0
    return-object v0

    .line 1462
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuOptionsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/menu/MenuOptions;

    .line 1464
    .local v0, ret:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    goto :goto_0
.end method

.method public getMenuOptionsList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/menu/MenuOptions",
            "<+",
            "Lcom/htc/painting/penmenu/menu/OptionItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1436
    .local v0, ret:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;>;"
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuOptionsMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 1441
    :goto_0
    return-object v0

    .line 1439
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuOptionsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1440
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method public getMenuState()Lcom/htc/painting/penmenu/menu/Menu$State;
    .locals 1

    .prologue
    .line 3546
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    return-object v0
.end method

.method public getOptionCenter(II)Landroid/graphics/Point;
    .locals 11
    .parameter "menuId"
    .parameter "optionPos"

    .prologue
    const/high16 v10, 0x42b4

    const/high16 v9, 0x4000

    const/4 v5, 0x0

    .line 3262
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_0

    .line 3263
    const-string v6, "PenMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOptionCenter - menuId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", optionPos: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3268
    const-string v6, "PenMenu"

    const-string v7, "getOptionCenter - PenMenu has already been destroyed!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3286
    :cond_1
    :goto_0
    return-object v5

    .line 3272
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu/PenMenu;->getOptionCount(I)I

    move-result v2

    .line 3273
    .local v2, count:I
    if-lez v2, :cond_1

    .line 3277
    if-ltz p2, :cond_1

    if-ge p2, v2, :cond_1

    .line 3281
    iget-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/menu/Menu;->getInnerRadius()I

    move-result v5

    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/menu/Menu;->getOptionPanelSize()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v0, v5, v9

    .line 3282
    .local v0, ICON_ORBIT_RADIUS:F
    int-to-float v5, v2

    mul-float/2addr v5, v9

    div-float v5, v10, v5

    int-to-float v6, v2

    div-float v6, v10, v6

    int-to-float v7, p2

    mul-float/2addr v6, v7

    add-float v1, v5, v6

    .line 3283
    .local v1, angle:F
    float-to-double v5, v0

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-int v3, v5

    .line 3284
    .local v3, x:I
    float-to-double v5, v0

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-int v4, v5

    .line 3286
    .local v4, y:I
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method public getOptionCount(I)I
    .locals 8
    .parameter "menuId"

    .prologue
    const/4 v4, 0x0

    .line 3153
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    .line 3154
    const-string v5, "PenMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getOptionCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3158
    const-string v5, "PenMenu"

    const-string v6, "changeAction - PenMenu has already been destroyed!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3177
    :cond_1
    :goto_0
    return v4

    .line 3162
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v3

    .line 3163
    .local v3, menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    if-eqz v3, :cond_1

    .line 3167
    const/4 v1, 0x0

    .line 3170
    .local v1, ignoredCount:I
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItemsCopy()Ljava/util/List;

    move-result-object v2

    .line 3171
    .local v2, itemsCopy:Ljava/util/List;,"Ljava/util/List<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 3172
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/penmenu/menu/OptionItem;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/menu/OptionItem;->isIgnored()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 3173
    add-int/lit8 v1, v1, 0x1

    .line 3171
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3177
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    goto :goto_0
.end method

.method public getPenSetType()I
    .locals 1

    .prologue
    .line 2077
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    return v0
.end method

.method public getPenTypeItem(I)Lcom/htc/painting/penmenu/menu/PenTypeItem;
    .locals 8
    .parameter "penTypeId"

    .prologue
    const/4 v4, 0x0

    .line 1881
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    .line 1882
    const-string v5, "PenMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPenTypeItem: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1886
    const-string v5, "PenMenu"

    const-string v6, "changeAction - PenMenu has already been destroyed!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 1902
    :goto_0
    return-object v1

    .line 1890
    :cond_1
    iget-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuOptionsMap:Ljava/util/Map;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/penmenu/menu/MenuOptions;

    .line 1891
    .local v3, menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<Lcom/htc/painting/penmenu/menu/PenTypeItem;>;"
    if-eqz v3, :cond_3

    .line 1894
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItems()Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1895
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/menu/PenTypeItem;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/menu/PenTypeItem;

    .line 1896
    .local v1, item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getId()I

    move-result v5

    if-ne v5, p1, :cond_2

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    .end local v2           #items:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/menu/PenTypeItem;>;"
    :cond_3
    move-object v1, v4

    .line 1902
    goto :goto_0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 3023
    const/4 v0, 0x0

    .line 3024
    .local v0, size:I
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    if-eqz v1, :cond_0

    .line 3025
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/Menu;->getOptionPanelSize()I

    move-result v0

    .line 3027
    :cond_0
    return v0
.end method

.method public getSizeCount()I
    .locals 1

    .prologue
    .line 1997
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mSizeCount:I

    return v0
.end method

.method public getState()Lcom/htc/painting/penmenu/PenMenu$State;
    .locals 1

    .prologue
    .line 3537
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    return-object v0
.end method

.method public getStickyState()Z
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/StateManager;->getStickyState()Z

    move-result v0

    return v0
.end method

.method public getStrokesAlpha()I
    .locals 3

    .prologue
    .line 3032
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mForceHideStroke:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeVisibility:I

    if-nez v0, :cond_2

    .line 3034
    :cond_0
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_1

    .line 3035
    const-string v0, "PenMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStrokesAlpha: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/painting/penmenu/PenMenu;->STROKE_INVISIBLE_ALPHA:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    :cond_1
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->STROKE_INVISIBLE_ALPHA:I

    .line 3043
    :goto_0
    return v0

    .line 3040
    :cond_2
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_3

    .line 3041
    const-string v0, "PenMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStrokesAlpha: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/painting/penmenu/PenMenu;->STROKE_VISIBLE_ALPHA:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    :cond_3
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->STROKE_VISIBLE_ALPHA:I

    goto :goto_0
.end method

.method public getTypeCount()I
    .locals 1

    .prologue
    .line 1965
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mTypeCount:I

    return v0
.end method

.method public handleChangeOptionMotionEvent(IILandroid/view/MotionEvent;)Z
    .locals 10
    .parameter "menuId"
    .parameter "optionPos"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 3220
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_0

    .line 3221
    const-string v6, "PenMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleChangeOptionMotionEvent - menuId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", optionPos: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3226
    const-string v6, "PenMenu"

    const-string v7, "changeAction - PenMenu has already been destroyed!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 3252
    :goto_0
    return v0

    .line 3230
    :cond_1
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mState:Lcom/htc/painting/penmenu/PenMenu$State;

    sget-object v7, Lcom/htc/painting/penmenu/PenMenu$State;->HIDE:Lcom/htc/painting/penmenu/PenMenu$State;

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    sget-object v7, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    if-eq v6, p1, :cond_3

    :cond_2
    move v0, v5

    .line 3233
    goto :goto_0

    .line 3236
    :cond_3
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v3

    .line 3237
    .local v3, menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    if-nez v3, :cond_4

    move v0, v5

    .line 3238
    goto :goto_0

    .line 3242
    :cond_4
    :try_start_0
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu/menu/OptionItem;

    .line 3244
    .local v2, item:Lcom/htc/painting/penmenu/menu/OptionItem;
    invoke-direct {p0, p3}, Lcom/htc/painting/penmenu/PenMenu;->adjustCoordinate(Landroid/view/MotionEvent;)Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;

    move-result-object v4

    .line 3245
    .local v4, record:Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;
    const/4 v0, 0x0

    .line 3246
    .local v0, consumed:Z
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/htc/painting/penmenu/menu/OptionItem;->contain(DD)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3247
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, p3}, Lcom/htc/painting/penmenu/menu/Menu;->handlePenEvent(ZLandroid/view/MotionEvent;)Z

    move-result v0

    .line 3249
    :cond_5
    invoke-static {p3, v4}, Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;->restoreEvent(Landroid/view/MotionEvent;Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3251
    .end local v0           #consumed:Z
    .end local v2           #item:Lcom/htc/painting/penmenu/menu/OptionItem;
    .end local v4           #record:Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;
    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/IndexOutOfBoundsException;
    move v0, v5

    .line 3252
    goto :goto_0
.end method

.method public handleKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2088
    const/4 v0, 0x0

    .line 2089
    .local v0, ret:Z
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    .line 2090
    const-string v3, "PenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleKeyEvent - key code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    if-eqz p2, :cond_0

    .line 2092
    const-string v3, "PenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleKeyEvent - action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", repeat count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2098
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 2142
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 2098
    goto :goto_0

    .line 2101
    :cond_3
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2102
    const-string v1, "PenMenu"

    const-string v3, "handleKeyEvent - PenMenu has already been destroyed!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 2103
    goto :goto_0

    .line 2106
    :cond_4
    const/16 v3, 0xd8

    if-ne p1, v3, :cond_8

    .line 2108
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/PenManager;->hasPenDownAfterSetupWizard(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2109
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_1

    .line 2110
    const-string v2, "PenMenu"

    const-string v3, "handleKeyEvent - ignore because pen hasn\'t been used!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2115
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_b

    .line 2117
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    const-string v4, "key_ime_show"

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/StateManager;->isBlocked(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v1, :cond_9

    .line 2119
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v3, v1}, Lcom/htc/painting/penmenu/StateManager;->setStickyState(Z)V

    .line 2121
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v1, :cond_6

    .line 2122
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 2124
    :cond_6
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    if-eqz v1, :cond_7

    .line 2125
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/base/BasePanel;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2139
    :cond_7
    :goto_1
    const/4 v0, 0x1

    :cond_8
    move v1, v0

    .line 2142
    goto :goto_0

    .line 2127
    :cond_9
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    const-string v3, "key_overlay_ui"

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/StateManager;->isBlocked(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_a

    .line 2128
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v2, v1}, Lcom/htc/painting/penmenu/StateManager;->setStickyState(Z)V

    goto :goto_1

    .line 2130
    :cond_a
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->changeState()V

    goto :goto_1

    .line 2133
    :cond_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_7

    .line 2136
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    goto :goto_1
.end method

.method public handleMotionEvent(ILandroid/view/MotionEvent;)Z
    .locals 18
    .parameter "elementId"
    .parameter "event"

    .prologue
    .line 3295
    sget-boolean v15, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v15, :cond_0

    .line 3296
    const-string v15, "PenMenu"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handleMotionEvent - elementId: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 3300
    const-string v15, "PenMenu"

    const-string v16, "handleMotionEvent - PenMenu has already been destroyed!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3301
    const/4 v12, 0x0

    .line 3349
    :goto_0
    return v12

    .line 3304
    :cond_1
    const/4 v12, 0x0

    .line 3306
    .local v12, ret:Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/htc/painting/penmenu/PenMenu;->adjustCoordinate(Landroid/view/MotionEvent;)Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;

    move-result-object v11

    .line 3308
    .local v11, record:Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;
    sparse-switch p1, :sswitch_data_0

    .line 3338
    :cond_2
    :goto_1
    sget-boolean v15, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v15, :cond_3

    .line 3339
    const-string v15, "PenMenu"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handleMotionEvent("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") return: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3340
    if-eqz p2, :cond_3

    .line 3341
    const-string v15, "PenMenu"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handleMotionEvent - event action: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", position: ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    :cond_3
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;->restoreEvent(Landroid/view/MotionEvent;Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;)V

    goto :goto_0

    .line 3310
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/htc/painting/penmenu/base/BasePanel;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    .line 3311
    goto :goto_1

    .line 3315
    :sswitch_1
    invoke-virtual/range {p0 .. p1}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v8

    .line 3316
    .local v8, menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    invoke-virtual {v8}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v7

    .line 3317
    .local v7, menuItem:Lcom/htc/painting/penmenu/menu/MenuItem;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/painting/penmenu/PenMenu;->toRadius(FF)D

    move-result-wide v13

    .line 3318
    .local v13, rm:D
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/painting/penmenu/PenMenu;->toAngle(FF)D

    move-result-wide v5

    .line 3319
    .local v5, am:D
    double-to-float v15, v13

    double-to-float v0, v5

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Lcom/htc/painting/penmenu/menu/MenuItem;->contain(FF)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 3320
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Lcom/htc/painting/penmenu/menu/Menu;->handlePenEvent(ZLandroid/view/MotionEvent;)Z

    move-result v12

    goto/16 :goto_1

    .line 3327
    .end local v5           #am:D
    .end local v7           #menuItem:Lcom/htc/painting/penmenu/menu/MenuItem;
    .end local v8           #menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    .end local v13           #rm:D
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/penmenu/action/ActionItem;

    .line 3328
    .local v4, actionItem:Lcom/htc/painting/penmenu/action/ActionItem;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/painting/penmenu/PenMenu;->toRadius(FF)D

    move-result-wide v9

    .line 3329
    .local v9, ra:D
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/painting/penmenu/PenMenu;->toAngle(FF)D

    move-result-wide v2

    .line 3330
    .local v2, aa:D
    double-to-float v15, v9

    double-to-float v0, v2

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lcom/htc/painting/penmenu/action/ActionItem;->contain(FF)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 3331
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/htc/painting/penmenu/action/ActionPanel;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    goto/16 :goto_1

    .line 3308
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_2
        0x190 -> :sswitch_2
    .end sparse-switch
.end method

.method public hide()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1659
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->hideInternal()V

    .line 1660
    return-void
.end method

.method public hide(ZZ)V
    .locals 5
    .parameter "playAnimation"
    .parameter "turnOffStickyState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3381
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 3382
    const-string v0, "PenMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3385
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3386
    const-string v0, "PenMenu"

    const-string v1, "hide - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3406
    :goto_0
    return-void

    .line 3390
    :cond_1
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3391
    const/4 p1, 0x0

    .line 3394
    :cond_2
    if-ne p2, v3, :cond_3

    .line 3395
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v0, v4}, Lcom/htc/painting/penmenu/StateManager;->setStickyState(Z)V

    .line 3398
    :cond_3
    if-eqz p1, :cond_4

    .line 3399
    invoke-virtual {p0, v3}, Lcom/htc/painting/penmenu/PenMenu;->setAnimationEnabled(Z)V

    .line 3400
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->hideInternal()V

    goto :goto_0

    .line 3402
    :cond_4
    invoke-virtual {p0, v4}, Lcom/htc/painting/penmenu/PenMenu;->setAnimationEnabled(Z)V

    .line 3403
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->hideInternal()V

    .line 3404
    invoke-virtual {p0, v3}, Lcom/htc/painting/penmenu/PenMenu;->setAnimationEnabled(Z)V

    goto :goto_0
.end method

.method public isAnimactionEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2792
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimationEnabled:Z

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 2799
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirstCreated()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3636
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3637
    const-string v2, "PenMenu"

    const-string v3, "hide - PenMenu has already been destroyed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 3654
    :cond_0
    :goto_0
    return v0

    .line 3641
    :cond_1
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/PenManager;->isFirstCreate(Landroid/content/Context;)Z

    move-result v0

    .line 3642
    .local v0, ret:Z
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 3646
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/PenManager;->hasPenDownAfterSetupWizard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3647
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/htc/painting/penmenu/PenManager;->saveFirstCreate(ZLandroid/content/Context;)Z

    .line 3651
    :cond_2
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    .line 3652
    const-string v1, "PenMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFistCreated - ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isFistCreated()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3626
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isFirstCreated()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 4262
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 4263
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setShowSWPenButton(Z)Z

    .line 4264
    return-void
.end method

.method public onDestroy()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2807
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mDestoryStarted:Z

    .line 2808
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_0

    .line 2809
    const-string v6, "PenMenu"

    const-string v7, "onDestroy()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2813
    const-string v6, "PenMenu"

    const-string v7, "onDestroy - PenMenu has already been destroyed!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2888
    :goto_0
    return-void

    .line 2818
    :cond_1
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->clearAnimation()V

    .line 2820
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/htc/painting/penmenu/PenMenu;->setVisibility(I)V

    .line 2822
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mDismissTimerTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/htc/painting/penmenu/PenMenu;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2824
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    if-eqz v6, :cond_2

    .line 2825
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->removeMessages(I)V

    .line 2826
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    .line 2828
    :cond_2
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingThread:Landroid/os/HandlerThread;

    if-eqz v6, :cond_3

    .line 2829
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->quit()Z

    .line 2830
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingThread:Landroid/os/HandlerThread;

    .line 2833
    :cond_3
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    if-eqz v6, :cond_4

    .line 2834
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    iget-object v7, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeListener:Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;

    invoke-interface {v6, v7}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->removeOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V

    .line 2835
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    .line 2838
    :cond_4
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mIMERecever:Landroid/content/BroadcastReceiver;

    if-eqz v6, :cond_5

    .line 2839
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/painting/penmenu/PenMenu;->mIMERecever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2840
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mIMERecever:Landroid/content/BroadcastReceiver;

    .line 2843
    :cond_5
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 2845
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->saveLocalState()V

    .line 2847
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/base/BasePanel;->releaseResources()V

    .line 2848
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    .line 2850
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/history/PenHistory;->releaseResources()V

    .line 2851
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    .line 2853
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/menu/Menu;->releaseResources()V

    .line 2854
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenu:Lcom/htc/painting/penmenu/menu/Menu;

    .line 2856
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuOptionsMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/penmenu/menu/MenuOptions;

    .line 2857
    .local v4, menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    invoke-virtual {v4}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/menu/MenuItem;->release()V

    .line 2858
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItems()Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2859
    .local v3, items:Ljava/util/List;,"Ljava/util/List<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/penmenu/menu/OptionItem;

    .line 2860
    .local v5, optionItem:Lcom/htc/painting/penmenu/menu/OptionItem;
    invoke-virtual {v5}, Lcom/htc/painting/penmenu/menu/OptionItem;->release()V

    goto :goto_1

    .line 2863
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #items:Ljava/util/List;,"Ljava/util/List<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    .end local v4           #menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    .end local v5           #optionItem:Lcom/htc/painting/penmenu/menu/OptionItem;
    :cond_7
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuOptionsMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 2865
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/action/ActionPanel;->releaseResources()V

    .line 2866
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/action/ActionItem;

    .line 2867
    .local v0, actionItem:Lcom/htc/painting/penmenu/action/ActionItem;
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/action/ActionItem;->release()V

    goto :goto_2

    .line 2869
    .end local v0           #actionItem:Lcom/htc/painting/penmenu/action/ActionItem;
    :cond_8
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 2870
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    .line 2872
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    .line 2874
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->removeAllViews()V

    .line 2876
    iget-object v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mWaterWaveAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2877
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mWaterWaveAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 2879
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    .line 2880
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionListener:Lcom/htc/painting/penmenu/OnActionPerformListener;

    .line 2881
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mOuterActionPerformListener:Lcom/htc/painting/penmenu/OnActionPerformListener;

    .line 2882
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mOuterOptionChangedListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    .line 2883
    iput-object v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    .line 2885
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/htc/painting/penmenu/PenManager;->setPenTypeLoadingListener(Lcom/htc/painting/penmenu/PenManager$IPenTypeLoadingListener;)V

    .line 2887
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 4268
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 4269
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setShowSWPenButton(Z)Z

    .line 4270
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2767
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2768
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2769
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 2770
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 2772
    :cond_0
    return-void
.end method

.method public onMenuClosed()V
    .locals 3

    .prologue
    .line 3480
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 3481
    const-string v0, "PenMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsMenuClosed - sticky mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/StateManager;->getStickyMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sticky state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/StateManager;->getStickyState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3485
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3486
    const-string v0, "PenMenu"

    const-string v1, "onMenuClosed - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3491
    :goto_0
    return-void

    .line 3490
    :cond_1
    const-string v0, "key_overlay_ui"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/painting/penmenu/PenMenu;->updateBlockConditions(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onMenuOpened()V
    .locals 3

    .prologue
    .line 3455
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 3456
    const-string v0, "PenMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuOpened - sticky mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/StateManager;->getStickyMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sticky state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/StateManager;->getStickyState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3460
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3461
    const-string v0, "PenMenu"

    const-string v1, "onMenuOpened - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3468
    :goto_0
    return-void

    .line 3465
    :cond_1
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->dismissPrompt()V

    .line 3467
    const-string v0, "key_overlay_ui"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/painting/penmenu/PenMenu;->updateBlockConditions(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public refreshPaintingViewState()V
    .locals 2

    .prologue
    .line 2620
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 2621
    const-string v0, "PenMenu"

    const-string v1, "refreshPaintingViewState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2625
    const-string v0, "PenMenu"

    const-string v1, "refreshPaintingViewState - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    :goto_0
    return-void

    .line 2629
    :cond_1
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->getPaintingViewUndoRedo()V

    goto :goto_0
.end method

.method public restoreSetting()V
    .locals 3

    .prologue
    .line 2447
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 2448
    const-string v0, "PenMenu"

    const-string v1, "restoreSetting()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2452
    const-string v0, "PenMenu"

    const-string v1, "restoreSetting - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    :cond_1
    :goto_0
    return-void

    .line 2456
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/painting/penmenu/PenMenu;->onPenDataStateChanged(Z)V

    .line 2458
    sget-object v0, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    .line 2460
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeVisibility:I

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/PenMenu;->setStrokeVisibleState(I)V

    .line 2462
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistory;->setVisibility(I)V

    .line 2464
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    if-eqz v0, :cond_1

    .line 2465
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->sendRestoreSettingRequest(J)V

    goto :goto_0
.end method

.method public savePens()V
    .locals 12

    .prologue
    .line 2152
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_0

    .line 2153
    const-string v9, "PenMenu"

    const-string v10, "savePens()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2157
    const-string v9, "PenMenu"

    const-string v10, "savePens - PenMenu has already been destroyed!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    :cond_1
    :goto_0
    return-void

    .line 2161
    :cond_2
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    .line 2162
    .local v0, curPen:Lcom/htc/painting/penmenu/Pen;
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenHistory:Lcom/htc/painting/penmenu/history/PenHistory;

    .line 2164
    .local v1, history:Lcom/htc/painting/penmenu/history/PenHistory;
    if-eqz v0, :cond_3

    if-nez v1, :cond_4

    .line 2165
    :cond_3
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_1

    .line 2166
    const-string v9, "PenMenu"

    const-string v10, "savePens() - (curPen == null || history == null)"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2171
    :cond_4
    if-eqz v0, :cond_1

    .line 2172
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/Pen;->getHistorySeqNo()I

    move-result v4

    .line 2176
    .local v4, orderInHistory:I
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v9

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/history/PenHistory;->getHistoryPens()Ljava/util/List;

    move-result-object v10

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/htc/painting/penmenu/PenManager;->saveHistoryPens(Ljava/util/List;Landroid/content/Context;)Z

    .line 2180
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/Pen;->isFromHistory()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2181
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/Pen;->getHistorySeqNo()I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/htc/painting/penmenu/history/PenHistory;->findOrderInHistory(I)I

    move-result v4

    .line 2184
    :cond_5
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v0, v4, v10}, Lcom/htc/painting/penmenu/PenManager;->saveCurrentPen(Lcom/htc/painting/penmenu/Pen;ILandroid/content/Context;)Z

    .line 2187
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v6

    .line 2188
    .local v6, penTypeOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    if-eqz v6, :cond_1

    .line 2190
    invoke-virtual {v6}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItemsCopy()Ljava/util/List;

    move-result-object v7

    .line 2191
    .local v7, penTypesCopy:Ljava/util/List;,"Ljava/util/List<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    if-eqz v7, :cond_1

    .line 2192
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2193
    .local v8, pens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/Pen;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_7

    .line 2194
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/penmenu/menu/PenTypeItem;

    .line 2195
    .local v3, item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2196
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getMostRecentConfig()Lcom/htc/painting/penmenu/Pen;

    move-result-object v5

    .line 2197
    .local v5, pen:Lcom/htc/painting/penmenu/Pen;
    if-eqz v5, :cond_6

    .line 2198
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2199
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_6

    .line 2200
    const-string v9, "PenMenu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "savePens() - add recent used pen for: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/Pen;->getUniqueName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", color: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/Pen;->getColor()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", size id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/Pen;->getSizeId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    .end local v5           #pen:Lcom/htc/painting/penmenu/Pen;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2207
    .end local v3           #item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    :cond_7
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lcom/htc/painting/penmenu/PenManager;->saveMostRecentPenTypeConfig(Ljava/util/List;Landroid/content/Context;)Z

    goto/16 :goto_0
.end method

.method public saveSetting()V
    .locals 3

    .prologue
    .line 2410
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 2411
    const-string v0, "PenMenu"

    const-string v1, "saveSetting()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2415
    const-string v0, "PenMenu"

    const-string v1, "saveSetting - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    :cond_1
    :goto_0
    return-void

    .line 2419
    :cond_2
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/PenManager;->hasPenDownAfterSetupWizard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2420
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_1

    .line 2421
    const-string v0, "PenMenu"

    const-string v1, "saveSetting - ignore because pen hasn\'t been used!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2429
    :cond_3
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->sendSaveSettingRequest(J)V

    goto :goto_0
.end method

.method public setActionActive(IZ)V
    .locals 4
    .parameter "actionId"
    .parameter "active"

    .prologue
    .line 2719
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    .line 2720
    const-string v1, "PenMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActionActive - actionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2724
    const-string v1, "PenMenu"

    const-string v2, "setActionActive - PenMenu has already been destroyed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    :cond_1
    :goto_0
    return-void

    .line 2728
    :cond_2
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/action/ActionItem;

    .line 2729
    .local v0, item:Lcom/htc/painting/penmenu/action/ActionItem;
    if-eqz v0, :cond_1

    .line 2730
    invoke-virtual {v0, p2}, Lcom/htc/painting/penmenu/action/ActionItem;->setActive(Z)V

    .line 2731
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    sget-object v2, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-ne v1, v2, :cond_1

    .line 2732
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionPanel:Lcom/htc/painting/penmenu/action/ActionPanel;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/action/ActionPanel;->invalidate()V

    goto :goto_0
.end method

.method public setAnimationEnabled(Z)V
    .locals 0
    .parameter "enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2784
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mAnimationEnabled:Z

    .line 2785
    return-void
.end method

.method public setCleanMode(Z)V
    .locals 3
    .parameter "isCleanMode"

    .prologue
    .line 3499
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 3500
    const-string v0, "PenMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCleanMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3503
    :cond_0
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu/PenManager;->setCleanMode(Z)V

    .line 3504
    return-void
.end method

.method public setCorner(Lcom/htc/painting/penmenu/PenMenu$DockCorner;)V
    .locals 0
    .parameter "dockCorner"

    .prologue
    .line 3674
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDockCorner:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    .line 3675
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setupMoveInOutAnims()V

    .line 3676
    return-void
.end method

.method public setCurrentPen(Lcom/htc/painting/penmenu/Pen;)V
    .locals 3
    .parameter "pen"

    .prologue
    const/4 v2, 0x0

    .line 1844
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1845
    const-string v1, "PenMenu"

    const-string v2, "setCurrentPen - PenMenu has already been destroyed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    :cond_0
    :goto_0
    return-void

    .line 1849
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu/PenMenu;->setUseTime(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1853
    if-eqz p1, :cond_0

    .line 1856
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    .line 1857
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/Pen;->setUsed(Z)V

    .line 1858
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/Pen;->getType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu/PenMenu;->getPenTypeItem(I)Lcom/htc/painting/penmenu/menu/PenTypeItem;

    move-result-object v0

    .line 1859
    .local v0, item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getMostRecentConfig()Lcom/htc/painting/penmenu/Pen;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/Pen;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/Pen;->setColor(I)V

    .line 1860
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getMostRecentConfig()Lcom/htc/painting/penmenu/Pen;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/Pen;->getSizeId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/Pen;->setSizeId(I)V

    .line 1861
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setupMenus()V

    .line 1862
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getPenType()Lcom/htc/painting/penmenu/PenType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/PenType;->isEraser()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/htc/painting/penmenu/base/BasePanel;->changePen(Lcom/htc/painting/penmenu/Pen;Z)V

    .line 1864
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setPaintingViewStroke()V

    goto :goto_0
.end method

.method public setDismissInterval(J)V
    .locals 3
    .parameter "dismissMillis"

    .prologue
    .line 2012
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 2013
    const-string v0, "PenMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDismissInterval - dismissMillis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    :cond_0
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 2017
    const-wide/16 p1, 0x3e8

    .line 2020
    :cond_1
    iput-wide p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    .line 2021
    return-void
.end method

.method public setEraserMode(Z)V
    .locals 7
    .parameter "isEraserMode"

    .prologue
    .line 2899
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    .line 2900
    const-string v4, "PenMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setEraserMode("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    :cond_0
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mIsEraserMode:Z

    .line 2905
    new-instance v3, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v3}, Lcom/htc/painting/engine/StrokeProperties;-><init>()V

    .line 2907
    .local v3, sp:Lcom/htc/painting/engine/StrokeProperties;
    if-eqz p1, :cond_5

    .line 2908
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    if-eqz v4, :cond_1

    .line 2909
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenType()I

    move-result v1

    .line 2910
    .local v1, penId:I
    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu/PenMenu;->getPenTypeItem(I)Lcom/htc/painting/penmenu/menu/PenTypeItem;

    move-result-object v0

    .line 2911
    .local v0, item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    if-nez v0, :cond_2

    .line 2912
    const-string v4, "PenMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setEraserMode - no PenTypeItem found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    .end local v0           #item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    .end local v1           #penId:I
    :cond_1
    :goto_0
    return-void

    .line 2916
    .restart local v0       #item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    .restart local v1       #penId:I
    :cond_2
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getPenType()Lcom/htc/painting/penmenu/PenType;

    move-result-object v2

    .line 2917
    .local v2, penType:Lcom/htc/painting/penmenu/PenType;
    if-nez v2, :cond_3

    .line 2918
    const-string v4, "PenMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setEraserMode - no PenType found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2922
    :cond_3
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenSizeId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/htc/painting/penmenu/PenType;->getPenSize(I)F

    move-result v4

    const/high16 v5, 0x4020

    mul-float/2addr v4, v5

    const/high16 v5, 0x4140

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mEraserModeSize:F

    .line 2925
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_4

    .line 2926
    const-string v4, "PenMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setEraserMode - set eraser mode size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mEraserModeSize:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    :cond_4
    iget v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mEraserModeSize:F

    invoke-virtual {v3, v4}, Lcom/htc/painting/engine/StrokeProperties;->setWidth(F)V

    .line 2931
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/painting/engine/StrokeProperties;->setEraser(Z)V

    .line 2932
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    invoke-interface {v4, v3}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->setStrokeProperties(Lcom/htc/painting/engine/StrokeProperties;)V

    goto :goto_0

    .line 2936
    .end local v0           #item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    .end local v1           #penId:I
    .end local v2           #penType:Lcom/htc/painting/penmenu/PenType;
    :cond_5
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setPaintingViewStroke()V

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 4207
    if-eqz p1, :cond_0

    .line 4208
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenMenu;->adjustLayoutByParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4209
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4210
    return-void
.end method

.method public setOnActionPerformListener(Lcom/htc/painting/penmenu/OnActionPerformListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 2751
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 2752
    const-string v1, "PenMenu"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnActionPerformListener"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const-string v0, " - set to null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2757
    const-string v0, "PenMenu"

    const-string v1, "setOnActionPerformListener - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    :goto_1
    return-void

    .line 2752
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 2761
    :cond_2
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mOuterActionPerformListener:Lcom/htc/painting/penmenu/OnActionPerformListener;

    goto :goto_1
.end method

.method public setOnOptionChangedListener(Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 615
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 616
    const-string v1, "PenMenu"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnOptionChangedListener"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_2

    const-string v0, " - set to null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 621
    const-string v0, "PenMenu"

    const-string v1, "setOnOptionChangedListener - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_1
    :goto_1
    return-void

    .line 616
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 625
    :cond_3
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mOuterOptionChangedListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    .line 626
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mOuterOptionChangedListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    if-eqz v0, :cond_1

    .line 627
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mOuterOptionChangedListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    invoke-interface {v0}, Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;->onOptionInitialized()V

    goto :goto_1
.end method

.method public setPaintingView(Lcom/htc/painting/engine/IStrokeNotifyPaintingView;)V
    .locals 3
    .parameter "paintingView"

    .prologue
    .line 2577
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 2578
    const-string v0, "PenMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPaintingView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2582
    const-string v0, "PenMenu"

    const-string v1, "setPaintingView - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    :goto_0
    return-void

    .line 2586
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    if-eqz v0, :cond_3

    .line 2587
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_2

    .line 2588
    const-string v0, "PenMenu"

    const-string v1, "remove stroke listener for old painting view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    :cond_2
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeListener:Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;

    invoke-interface {v0, v1}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->removeOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V

    .line 2594
    :cond_3
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    .line 2596
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    if-eqz v0, :cond_6

    .line 2597
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    if-nez v0, :cond_5

    .line 2598
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_4

    .line 2599
    const-string v0, "PenMenu"

    const-string v1, "setPaintingView - disable painting view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    :cond_4
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->enablePainting(Z)V

    .line 2604
    :cond_5
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeListener:Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;

    invoke-interface {v0, v1}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->setOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V

    .line 2605
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->getPaintingViewUndoRedo()V

    .line 2606
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setPaintingViewDisplayAlpha()V

    .line 2607
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setPaintingViewStroke()V

    goto :goto_0

    .line 2610
    :cond_6
    const-string v0, "PenMenu"

    const-string v1, "setPaintingView - paintingView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setPenColor(I)V
    .locals 2
    .parameter "penColor"

    .prologue
    .line 1814
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v1, p1}, Lcom/htc/painting/penmenu/Pen;->setColor(I)V

    .line 1816
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/Pen;->getType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu/PenMenu;->getPenTypeItem(I)Lcom/htc/painting/penmenu/menu/PenTypeItem;

    move-result-object v0

    .line 1817
    .local v0, item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getMostRecentConfig()Lcom/htc/painting/penmenu/Pen;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/painting/penmenu/Pen;->setColor(I)V

    .line 1819
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    invoke-virtual {v1, p1}, Lcom/htc/painting/penmenu/base/BasePanel;->changePenColor(I)V

    .line 1820
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setPaintingViewStroke()V

    .line 1821
    return-void
.end method

.method public setPenMenuUIState(ZI)V
    .locals 3
    .parameter "isMenuExpand"
    .parameter "selectedMenuId"

    .prologue
    .line 3512
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 3513
    const-string v0, "PenMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPenMenuUIState - emnu expand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", selected menu id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3517
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3518
    const-string v0, "PenMenu"

    const-string v1, "setPenMenuUIState - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    :goto_0
    return-void

    .line 3522
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 3523
    sget-object v0, Lcom/htc/painting/penmenu/menu/Menu$State;->EXPAND:Lcom/htc/painting/penmenu/menu/Menu$State;

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    .line 3527
    :goto_1
    iput p2, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    .line 3528
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->restoreUIState()V

    goto :goto_0

    .line 3525
    :cond_2
    sget-object v0, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mMenuState:Lcom/htc/painting/penmenu/menu/Menu$State;

    goto :goto_1
.end method

.method public setPenSetType(I)V
    .locals 3
    .parameter "penSetType"

    .prologue
    .line 2057
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 2058
    const-string v0, "PenMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPenSetType - penSetType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2062
    const-string v0, "PenMenu"

    const-string v1, "setPenSetType - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    :cond_1
    :goto_0
    return-void

    .line 2066
    :cond_2
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    if-eq v0, p1, :cond_1

    .line 2070
    iput p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mPenSetType:I

    .line 2072
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->restoreSetting()V

    goto :goto_0
.end method

.method setPenSizeId(I)V
    .locals 3
    .parameter "penSizeId"

    .prologue
    .line 1803
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v1, p1}, Lcom/htc/painting/penmenu/Pen;->setSizeId(I)V

    .line 1805
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/Pen;->getType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu/PenMenu;->getPenTypeItem(I)Lcom/htc/painting/penmenu/menu/PenTypeItem;

    move-result-object v0

    .line 1806
    .local v0, item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getMostRecentConfig()Lcom/htc/painting/penmenu/Pen;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/painting/penmenu/Pen;->setSizeId(I)V

    .line 1808
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/base/BasePanel;->changePenSize(F)V

    .line 1809
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setPaintingViewStroke()V

    .line 1810
    return-void
.end method

.method setPenType(I)V
    .locals 5
    .parameter "penTypeId"

    .prologue
    .line 1825
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v2, p1}, Lcom/htc/painting/penmenu/Pen;->setType(I)V

    .line 1826
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu/PenMenu;->getPenTypeItem(I)Lcom/htc/painting/penmenu/menu/PenTypeItem;

    move-result-object v0

    .line 1827
    .local v0, item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getMostRecentConfig()Lcom/htc/painting/penmenu/Pen;

    move-result-object v1

    .line 1828
    .local v1, lastConfig:Lcom/htc/painting/penmenu/Pen;
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/Pen;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/Pen;->setColor(I)V

    .line 1829
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/Pen;->getSizeId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/Pen;->setSizeId(I)V

    .line 1830
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getPenType()Lcom/htc/painting/penmenu/PenType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/PenType;->getUniqueName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/Pen;->setUniqueName(Ljava/lang/String;)V

    .line 1837
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu;->mBasePanel:Lcom/htc/painting/penmenu/base/BasePanel;

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu;->mCurrentPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getPenType()Lcom/htc/painting/penmenu/PenType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/PenType;->isEraser()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/painting/penmenu/base/BasePanel;->changePen(Lcom/htc/painting/penmenu/Pen;Z)V

    .line 1838
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setPaintingViewStroke()V

    .line 1839
    return-void
.end method

.method public setPromptDismissInterval(J)V
    .locals 3
    .parameter "dismissMillis"

    .prologue
    .line 3608
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 3609
    const-string v0, "PenMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPromptDismissInterval - dismissMillis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    :cond_0
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 3613
    const-wide/16 p1, 0x3e8

    .line 3616
    :cond_1
    iput-wide p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptDismissInterval:J

    .line 3617
    return-void
.end method

.method public setSelectedMenuId(I)Z
    .locals 2
    .parameter "menuId"

    .prologue
    const/4 v0, 0x0

    .line 600
    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/PenMenu;->setUseTime(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 604
    :goto_0
    return v0

    .line 603
    :cond_0
    iput p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mSelectedMenuId:I

    .line 604
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setStateMonitor(Lcom/htc/painting/penmenu/PenMenu$StateMonitor;)V
    .locals 2
    .parameter "monitor"

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const-string v0, "PenMenu"

    const-string v1, "setStateMonitor - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_0
    return-void

    .line 262
    :cond_0
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateMonitor:Lcom/htc/painting/penmenu/PenMenu$StateMonitor;

    goto :goto_0
.end method

.method public setStrokeVisibleState(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 2332
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 2333
    const-string v0, "PenMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStrokeVisibleState - visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2337
    const-string v0, "PenMenu"

    const-string v1, "setStrokeVisibleState - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    :goto_0
    return-void

    .line 2341
    :cond_1
    iput p1, p0, Lcom/htc/painting/penmenu/PenMenu;->mStrokeVisibility:I

    .line 2342
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenMenu;->setupStrokeVisibleActionItem(I)V

    .line 2343
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->setPaintingViewDisplayAlpha()V

    goto :goto_0
.end method

.method public declared-synchronized setUseTime(Z)Z
    .locals 10
    .parameter "check"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1732
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1733
    const-string v5, "PenMenu"

    const-string v6, "setUseTime - PenMenu has already been destroyed!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1765
    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    .line 1737
    :cond_1
    :try_start_1
    iget-wide v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    .line 1739
    iget-wide v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mLastUseTime:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 1742
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1743
    .local v0, currentTimeMillis:Ljava/lang/Long;
    if-ne p1, v5, :cond_4

    .line 1744
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/htc/painting/penmenu/PenMenu;->mLastUseTime:J

    sub-long v1, v6, v8

    .line 1745
    .local v1, diffTime:J
    iget-wide v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    cmp-long v6, v1, v6

    if-ltz v6, :cond_3

    .line 1746
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_2

    .line 1747
    const-string v4, "PenMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setUseTime - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exceeds dismiss interval: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :cond_2
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->hide()V

    .line 1750
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mLastUseTime:J

    move v4, v5

    .line 1751
    goto :goto_0

    .line 1754
    :cond_3
    iget-object v5, p0, Lcom/htc/painting/penmenu/PenMenu;->mDismissTimerTask:Ljava/lang/Runnable;

    iget-wide v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mDissmissInterval:J

    sub-long/2addr v6, v1

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/painting/penmenu/PenMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v3

    .line 1755
    .local v3, ret:Z
    if-nez v3, :cond_0

    .line 1756
    const-string v5, "PenMenu"

    const-string v6, "setUseTime - postDelayed failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1732
    .end local v0           #currentTimeMillis:Ljava/lang/Long;
    .end local v1           #diffTime:J
    .end local v3           #ret:Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1762
    .restart local v0       #currentTimeMillis:Ljava/lang/Long;
    :cond_4
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/htc/painting/penmenu/PenMenu;->mLastUseTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0           #currentTimeMillis:Ljava/lang/Long;
    :cond_5
    move v4, v5

    .line 1765
    goto :goto_0
.end method

.method public setupSignatureAction(I[II)V
    .locals 4
    .parameter "id"
    .parameter "resIds"
    .parameter "initState"

    .prologue
    .line 2312
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    .line 2313
    const-string v1, "PenMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupSignatureAction - id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", initState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2318
    const-string v1, "PenMenu"

    const-string v2, "setupSignatureAction - PenMenu has already been destroyed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    :goto_0
    return-void

    .line 2322
    :cond_1
    array-length v1, p2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    .line 2323
    const-string v1, "PenMenu"

    const-string v2, "setupSignatureAction - res id count should be 6"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2326
    :cond_2
    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/htc/painting/penmenu/PenMenu;->changeAction(II[I)Z

    .line 2327
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mActionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/action/ActionItem;

    .line 2328
    .local v0, item:Lcom/htc/painting/penmenu/action/ActionItem;
    new-instance v1, Lcom/htc/painting/penmenu/PenMenu$SignatureState;

    invoke-direct {v1, p0, v0, p3, p2}, Lcom/htc/painting/penmenu/PenMenu$SignatureState;-><init>(Lcom/htc/painting/penmenu/PenMenu;Lcom/htc/painting/penmenu/action/ActionItem;I[I)V

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/action/ActionItem;->setState(Lcom/htc/painting/penmenu/action/ActionState;)V

    goto :goto_0
.end method

.method public show()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1573
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->showInternal()V

    .line 1574
    return-void
.end method

.method public show(ZZ)V
    .locals 4
    .parameter "playAnimation"
    .parameter "turnOnStickyState"

    .prologue
    const/4 v3, 0x1

    .line 3420
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 3421
    const-string v0, "PenMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3425
    const-string v0, "PenMenu"

    const-string v1, "show - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3445
    :goto_0
    return-void

    .line 3429
    :cond_1
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3430
    const/4 p1, 0x0

    .line 3433
    :cond_2
    if-eqz p2, :cond_3

    .line 3434
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mStateManager:Lcom/htc/painting/penmenu/StateManager;

    invoke-virtual {v0, v3}, Lcom/htc/painting/penmenu/StateManager;->setStickyState(Z)V

    .line 3437
    :cond_3
    if-eqz p1, :cond_4

    .line 3438
    invoke-virtual {p0, v3}, Lcom/htc/painting/penmenu/PenMenu;->setAnimationEnabled(Z)V

    .line 3439
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->showInternal()V

    goto :goto_0

    .line 3441
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/PenMenu;->setAnimationEnabled(Z)V

    .line 3442
    invoke-direct {p0}, Lcom/htc/painting/penmenu/PenMenu;->showInternal()V

    .line 3443
    invoke-virtual {p0, v3}, Lcom/htc/painting/penmenu/PenMenu;->setAnimationEnabled(Z)V

    goto :goto_0
.end method

.method public showPrompt()V
    .locals 4

    .prologue
    .line 3567
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3568
    const-string v0, "PenMenu"

    const-string v1, "showPrompt - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    :cond_0
    :goto_0
    return-void

    .line 3572
    :cond_1
    invoke-static {}, Lcom/htc/painting/penmenu/PenManager;->getPenManager()Lcom/htc/painting/penmenu/PenManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/PenManager;->hasPenDownAfterSetupWizard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3573
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 3574
    const-string v0, "PenMenu"

    const-string v1, "showPrompt - ignore because pen hasn\'t been used!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3579
    :cond_2
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3580
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/painting/penmenu/PenMenu;->setWidthForPrompt(Z)V

    .line 3581
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3582
    iget-wide v0, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptDismissInterval:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3583
    new-instance v0, Lcom/htc/painting/penmenu/PenMenu$10;

    invoke-direct {v0, p0}, Lcom/htc/painting/penmenu/PenMenu$10;-><init>(Lcom/htc/painting/penmenu/PenMenu;)V

    iget-wide v1, p0, Lcom/htc/painting/penmenu/PenMenu;->mPromptDismissInterval:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/painting/penmenu/PenMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
