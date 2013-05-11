.class Lcom/android/server/wm/WindowStateAnimator;
.super Ljava/lang/Object;
.source "WindowStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;
    }
.end annotation


# static fields
.field static final COMMIT_DRAW_PENDING:I = 0x2

.field static final DEBUG_ANIM:Z = false

.field static final DEBUG_LAYERS:Z = false

.field static final DEBUG_ORIENTATION:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field static final DEBUG_SURFACE_TRACE:Z = false

.field static final DEBUG_VISIBILITY:Z = false

.field static final DRAW_PENDING:I = 0x1

.field static final HAS_DRAWN:I = 0x4

.field static final NO_SURFACE:I = 0x0

.field static final READY_TO_SHOW:I = 0x3

#the value of this static final field might be set in the static constructor
.field static final SHOW_LIGHT_TRANSACTIONS:Z = false

.field static final SHOW_SURFACE_ALLOC:Z = false

#the value of this static final field might be set in the static constructor
.field static final SHOW_TRANSACTIONS:Z = false

.field static final TAG:Ljava/lang/String; = "WindowStateAnimator"

.field static final localLOGV:Z


# instance fields
.field mAlpha:F

.field mAnimDh:I

.field mAnimDw:I

.field mAnimLayer:I

.field mAnimating:Z

.field mAnimation:Landroid/view/animation/Animation;

.field mAnimationIsEntrance:Z

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field final mAttachedWindow:Lcom/android/server/wm/WindowState;

.field mAttrFlags:I

.field mAttrType:I

.field final mContext:Landroid/content/Context;

.field mDrawState:I

.field mDsDx:F

.field mDsDy:F

.field mDtDx:F

.field mDtDy:F

.field mEnterAnimationPending:Z

.field mHasLocalTransformation:Z

.field mHasTransformation:Z

.field mHaveMatrix:Z

.field mIsEntranceForKeyguard:Z

.field mLastAlpha:F

.field public mLastAnimProgress:F

.field mLastDsDx:F

.field mLastDsDy:F

.field mLastDtDx:F

.field mLastDtDy:F

.field mLastHidden:Z

.field mLastLayer:I

.field mLocalAnimating:Z

.field mMiuiHidden:Z
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field mPendingDestroySurface:Landroid/view/Surface;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Lcom/android/server/wm/Session;

.field mShownAlpha:F

.field mSurface:Landroid/view/Surface;

.field mSurfaceAlpha:F

.field mSurfaceDestroyDeferred:Z

.field mSurfaceH:F

.field mSurfaceLayer:I

.field mSurfaceResized:Z

.field mSurfaceShown:Z

.field mSurfaceW:F

.field mSurfaceX:F

.field mSurfaceY:F

.field final mTransformation:Landroid/view/animation/Transformation;

.field mWasAnimating:Z

.field final mWin:Lcom/android/server/wm/WindowState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    sput-boolean v0, Lcom/android/server/wm/WindowStateAnimator;->SHOW_TRANSACTIONS:Z

    .line 50
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    sput-boolean v0, Lcom/android/server/wm/WindowStateAnimator;->SHOW_LIGHT_TRANSACTIONS:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 3
    .parameter "service"
    .parameter "win"
    .parameter "attachedWindow"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 164
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    .line 93
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 94
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 95
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 101
    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    .line 102
    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    .line 165
    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 166
    iput-object p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 167
    iput-object p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 169
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    .line 170
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    .line 172
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    .line 173
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    .line 174
    iget v0, p1, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDw:I

    .line 175
    iget v0, p1, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDh:I

    .line 176
    return-void
.end method

.method static drawStateToString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 131
    packed-switch p0, :pswitch_data_0

    .line 137
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 132
    :pswitch_0
    const-string v0, "NO_SURFACE"

    goto :goto_0

    .line 133
    :pswitch_1
    const-string v0, "DRAW_PENDING"

    goto :goto_0

    .line 134
    :pswitch_2
    const-string v0, "COMMIT_DRAW_PENDING"

    goto :goto_0

    .line 135
    :pswitch_3
    const-string v0, "READY_TO_SHOW"

    goto :goto_0

    .line 136
    :pswitch_4
    const-string v0, "HAS_DRAWN"

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private stepAnimation(J)Z
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-nez v1, :cond_1

    .line 234
    :cond_0
    const/4 v0, 0x0

    .line 241
    :goto_0
    return v0

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 237
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 241
    .local v0, more:Z
    goto :goto_0
.end method


# virtual methods
.method applyAnimationLocked(IZ)Z
    .locals 6
    .parameter "transit"
    .parameter "isEntrance"

    .prologue
    const/4 v3, 0x1

    .line 1470
    iput-boolean p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsEntranceForKeyguard:Z

    .line 1473
    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-ne v4, p2, :cond_1

    .line 1530
    :cond_0
    :goto_0
    return v3

    .line 1483
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1484
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-interface {v4, v5, p1}, Landroid/view/WindowManagerPolicy;->selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v1

    .line 1485
    .local v1, anim:I
    const/4 v2, -0x1

    .line 1486
    .local v2, attr:I
    const/4 v0, 0x0

    .line 1487
    .local v0, a:Landroid/view/animation/Animation;
    if-eqz v1, :cond_4

    .line 1488
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1514
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 1523
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1524
    iput-boolean p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 1530
    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v1           #anim:I
    .end local v2           #attr:I
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 1490
    .restart local v0       #a:Landroid/view/animation/Animation;
    .restart local v1       #anim:I
    .restart local v2       #attr:I
    :cond_4
    sparse-switch p1, :sswitch_data_0

    .line 1504
    :goto_3
    if-ltz v2, :cond_2

    .line 1505
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v5, v2}, Lcom/android/server/wm/WindowManagerService;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1

    .line 1492
    :sswitch_0
    const/4 v2, 0x0

    .line 1493
    goto :goto_3

    .line 1495
    :sswitch_1
    const/4 v2, 0x1

    .line 1496
    goto :goto_3

    .line 1498
    :sswitch_2
    const/4 v2, 0x2

    .line 1499
    goto :goto_3

    .line 1501
    :sswitch_3
    const/4 v2, 0x3

    goto :goto_3

    .line 1527
    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v1           #anim:I
    .end local v2           #attr:I
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    goto :goto_2

    .line 1490
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
        0x2004 -> :sswitch_3
    .end sparse-switch
.end method

.method applyEnterAnimationLocked()V
    .locals 2

    .prologue
    .line 1446
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    if-eqz v1, :cond_0

    .line 1447
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    .line 1448
    const/16 v0, 0x1001

    .line 1453
    .local v0, transit:I
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 1454
    return-void

    .line 1450
    .end local v0           #transit:I
    :cond_0
    const/16 v0, 0x1003

    .restart local v0       #transit:I
    goto :goto_0
.end method

.method cancelExitAnimationForNextAnimationLocked()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    .line 228
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 230
    :cond_0
    return-void
.end method

.method public clearAnimation()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    .line 198
    :cond_0
    return-void
.end method

.method commitFinishDrawingLocked(J)Z
    .locals 6
    .parameter "currentTime"

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 469
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 494
    :goto_0
    return v1

    .line 475
    :cond_0
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 476
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v5, :cond_1

    move v1, v2

    .line 477
    .local v1, starting:Z
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 478
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_2

    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v3, :cond_2

    if-eqz v1, :cond_3

    .line 479
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    .line 486
    :cond_3
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v2, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 488
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 489
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_4

    .line 490
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "commitFinishDrawingLocked(), atoken="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v1, v2

    .line 494
    goto :goto_0
.end method

.method computeShownFrameLocked()V
    .locals 22

    .prologue
    .line 853
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    .line 854
    .local v10, selfTransformation:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    .line 857
    .local v6, attachedTransformation:Landroid/view/animation/Transformation;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v17, v0

    if-nez v17, :cond_d

    const/4 v4, 0x0

    .line 859
    .local v4, appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    :goto_1
    if-eqz v4, :cond_e

    iget-boolean v0, v4, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    iget-object v5, v4, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    .line 864
    .local v5, appTransformation:Landroid/view/animation/Transformation;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x7dd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v17

    if-nez v17, :cond_0

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    .line 870
    sget-boolean v17, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER:Z

    if-eqz v17, :cond_0

    if-eqz v6, :cond_0

    .line 871
    const-string v17, "WindowStateAnimator"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "WP target attached xform: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v17, v0

    if-nez v17, :cond_f

    const/4 v14, 0x0

    .line 876
    .local v14, wpAppAnimator:Lcom/android/server/wm/AppWindowAnimator;
    :goto_3
    if-eqz v14, :cond_1

    iget-boolean v0, v14, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    iget-object v0, v14, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    iget-object v0, v14, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v17

    if-nez v17, :cond_1

    .line 880
    iget-object v5, v14, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    .line 881
    sget-boolean v17, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER:Z

    if-eqz v17, :cond_1

    if-eqz v5, :cond_1

    .line 882
    const-string v17, "WindowStateAnimator"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "WP target app xform: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    .end local v14           #wpAppAnimator:Lcom/android/server/wm/AppWindowAnimator;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v17

    if-eqz v17, :cond_10

    const/4 v9, 0x1

    .line 889
    .local v9, screenAnimation:Z
    :goto_4
    if-nez v10, :cond_2

    if-nez v6, :cond_2

    if-nez v5, :cond_2

    if-eqz v9, :cond_13

    .line 892
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 893
    .local v7, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 894
    .local v11, tmpFloats:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 897
    .local v12, tmpMatrix:Landroid/graphics/Matrix;
    if-eqz v9, :cond_12

    .line 905
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    int-to-float v13, v0

    .line 906
    .local v13, w:F
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v17

    move/from16 v0, v17

    int-to-float v8, v0

    .line 907
    .local v8, h:F
    const/high16 v17, 0x3f80

    cmpl-float v17, v13, v17

    if-ltz v17, :cond_11

    const/high16 v17, 0x3f80

    cmpl-float v17, v8, v17

    if-ltz v17, :cond_11

    .line 908
    const/high16 v17, 0x3f80

    const/high16 v18, 0x4000

    div-float v18, v18, v13

    add-float v17, v17, v18

    const/high16 v18, 0x3f80

    const/high16 v19, 0x4000

    div-float v19, v19, v8

    add-float v18, v18, v19

    const/high16 v19, 0x4000

    div-float v19, v13, v19

    const/high16 v20, 0x4000

    div-float v20, v8, v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 915
    .end local v8           #h:F
    .end local v13           #w:F
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 916
    if-eqz v10, :cond_3

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 919
    :cond_3
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 920
    if-eqz v6, :cond_4

    .line 921
    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 923
    :cond_4
    if-eqz v5, :cond_5

    .line 924
    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 926
    :cond_5
    if-eqz v9, :cond_6

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 937
    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    .line 938
    invoke-virtual {v12, v11}, Landroid/graphics/Matrix;->getValues([F)V

    .line 939
    const/16 v17, 0x0

    aget v17, v11, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    .line 940
    const/16 v17, 0x3

    aget v17, v11, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    .line 941
    const/16 v17, 0x1

    aget v17, v11, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    .line 942
    const/16 v17, 0x4

    aget v17, v11, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    .line 943
    const/16 v17, 0x2

    aget v15, v11, v17

    .line 944
    .local v15, x:F
    const/16 v17, 0x5

    aget v16, v11, v17

    .line 945
    .local v16, y:F
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 946
    .local v13, w:I
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 947
    .local v8, h:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    int-to-float v0, v13

    move/from16 v18, v0

    add-float v18, v18, v15

    int-to-float v0, v8

    move/from16 v19, v0

    add-float v19, v19, v16

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 954
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    move/from16 v21, v0

    invoke-virtual/range {v17 .. v21}, Lcom/android/server/wm/WindowState;->isIdentityMatrix(FFFF)Z

    move-result v17

    if-eqz v17, :cond_b

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v15, v17

    if-nez v17, :cond_b

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v16, v17

    if-nez v17, :cond_b

    .line 960
    :cond_7
    if-eqz v10, :cond_8

    .line 961
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v18

    mul-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 963
    :cond_8
    if-eqz v6, :cond_9

    .line 964
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v17, v0

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v18

    mul-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 966
    :cond_9
    if-eqz v5, :cond_a

    .line 967
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v17, v0

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v18

    mul-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 969
    :cond_a
    if-eqz v9, :cond_b

    .line 970
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v18

    mul-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 1004
    .end local v7           #frame:Landroid/graphics/Rect;
    .end local v8           #h:I
    .end local v11           #tmpFloats:[F
    .end local v12           #tmpMatrix:Landroid/graphics/Matrix;
    .end local v13           #w:I
    .end local v15           #x:F
    .end local v16           #y:F
    :cond_b
    :goto_6
    return-void

    .line 854
    .end local v4           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v5           #appTransformation:Landroid/view/animation/Transformation;
    .end local v6           #attachedTransformation:Landroid/view/animation/Transformation;
    .end local v9           #screenAnimation:Z
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 857
    .restart local v6       #attachedTransformation:Landroid/view/animation/Transformation;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    goto/16 :goto_1

    .line 859
    .restart local v4       #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 874
    .restart local v5       #appTransformation:Landroid/view/animation/Transformation;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v14, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    goto/16 :goto_3

    .line 887
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 910
    .restart local v7       #frame:Landroid/graphics/Rect;
    .local v8, h:F
    .restart local v9       #screenAnimation:Z
    .restart local v11       #tmpFloats:[F
    .restart local v12       #tmpMatrix:Landroid/graphics/Matrix;
    .local v13, w:F
    :cond_11
    invoke-virtual {v12}, Landroid/graphics/Matrix;->reset()V

    goto/16 :goto_5

    .line 913
    .end local v8           #h:F
    .end local v13           #w:F
    :cond_12
    invoke-virtual {v12}, Landroid/graphics/Matrix;->reset()V

    goto/16 :goto_5

    .line 986
    .end local v7           #frame:Landroid/graphics/Rect;
    .end local v11           #tmpFloats:[F
    .end local v12           #tmpMatrix:Landroid/graphics/Matrix;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v17, v0

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_b

    .line 994
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v17, v0

    if-nez v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v17, v0

    if-eqz v17, :cond_16

    .line 996
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/RectF;->offset(FF)V

    .line 998
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 999
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    .line 1001
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    .line 1002
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    goto/16 :goto_6
.end method

.method createSurfaceLocked()Landroid/view/Surface;
    .locals 15

    .prologue
    const/high16 v3, 0x3f80

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 629
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_b

    .line 632
    iput v13, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 633
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v14, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 639
    const/4 v8, 0x0

    .line 640
    .local v8, flags:I
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 642
    .local v9, attrs:Landroid/view/WindowManager$LayoutParams;
    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_1

    .line 643
    or-int/lit16 v8, v8, 0x80

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 653
    .local v5, w:I
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 654
    .local v6, h:I
    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_2

    .line 657
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v5, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 658
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v6, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 662
    :cond_2
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceWidthScale:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceHeightScale:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_4

    .line 664
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 665
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 672
    :cond_4
    :goto_1
    if-gtz v5, :cond_5

    const/4 v5, 0x1

    .line 673
    :cond_5
    if-gtz v6, :cond_6

    const/4 v6, 0x1

    .line 675
    :cond_6
    iput-boolean v14, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    .line 676
    iput v14, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    .line 677
    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceAlpha:F

    .line 678
    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    .line 679
    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    .line 680
    int-to-float v0, v5

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    .line 681
    int-to-float v0, v6

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    .line 682
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mLastSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v14, v14, v14, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 684
    :try_start_0
    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x100

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    move v11, v13

    .line 686
    .local v11, isHwAccelerated:Z
    :goto_2
    if-eqz v11, :cond_f

    const/4 v7, -0x3

    .line 687
    .local v7, format:I
    :goto_3
    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 688
    or-int/lit16 v8, v8, 0x400

    .line 696
    :cond_7
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v1, v1, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    .line 701
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 702
    sget-boolean v0, Lcom/android/server/wm/WindowStateAnimator;->SHOW_TRANSACTIONS:Z
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_10

    .line 727
    :goto_4
    sget-boolean v0, Lcom/android/server/wm/WindowStateAnimator;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_8

    .line 728
    const-string v0, "WindowStateAnimator"

    const-string v1, ">>> OPEN TRANSACTION createSurfaceLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE pos=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), layer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HIDE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v12}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 734
    :cond_8
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 737
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mXOffset:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    .line 738
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mYOffset:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    .line 739
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setPosition(FF)V

    .line 740
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    .line 741
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setLayer(I)V

    .line 742
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setAlpha(F)V

    .line 743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    .line 744
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->hide()V

    .line 745
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_a

    .line 746
    sget-boolean v0, Lcom/android/server/wm/WindowStateAnimator;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v1, "DITHER"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 747
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x4

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setFlags(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 753
    :cond_a
    :goto_5
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 755
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 756
    sget-boolean v0, Lcom/android/server/wm/WindowStateAnimator;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_b

    const-string v0, "WindowStateAnimator"

    const-string v1, "<<< CLOSE TRANSACTION createSurfaceLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    .end local v5           #w:I
    .end local v6           #h:I
    .end local v7           #format:I
    .end local v8           #flags:I
    .end local v9           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v11           #isHwAccelerated:Z
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    :goto_6
    return-object v0

    .line 664
    .restart local v5       #w:I
    .restart local v6       #h:I
    .restart local v8       #flags:I
    .restart local v9       #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v5, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    goto/16 :goto_0

    .line 665
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v6, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    goto/16 :goto_1

    :cond_e
    move v11, v14

    .line 684
    goto/16 :goto_2

    .line 686
    .restart local v11       #isHwAccelerated:Z
    :cond_f
    :try_start_3
    iget v7, v9, Landroid/view/WindowManager$LayoutParams;->format:I

    goto/16 :goto_3

    .line 702
    .restart local v7       #format:I
    :cond_10
    const-string v0, "WindowStateAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  CREATE SURFACE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IN SESSION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v2, v2, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    .line 710
    .end local v7           #format:I
    .end local v11           #isHwAccelerated:Z
    :catch_0
    move-exception v10

    .line 711
    .local v10, e:Landroid/view/Surface$OutOfResourcesException;
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v14, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 712
    const-string v0, "WindowStateAnimator"

    const-string v1, "OutOfResourcesException creating surface"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "create"

    invoke-virtual {v0, p0, v1, v13}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    .line 714
    iput v14, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    move-object v0, v12

    .line 715
    goto/16 :goto_6

    .line 716
    .end local v10           #e:Landroid/view/Surface$OutOfResourcesException;
    :catch_1
    move-exception v10

    .line 717
    .local v10, e:Ljava/lang/Exception;
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v14, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 718
    const-string v0, "WindowStateAnimator"

    const-string v1, "Exception creating surface"

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 719
    iput v14, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    move-object v0, v12

    .line 720
    goto/16 :goto_6

    .line 749
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v7       #format:I
    .restart local v11       #isHwAccelerated:Z
    :catch_2
    move-exception v10

    .line 750
    .local v10, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v0, "WindowStateAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating surface in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 751
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "create-init"

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    .line 755
    .end local v10           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 756
    sget-boolean v1, Lcom/android/server/wm/WindowStateAnimator;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_11

    const-string v1, "WindowStateAnimator"

    const-string v2, "<<< CLOSE TRANSACTION createSurfaceLocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    throw v0
.end method

.method destroyDeferredSurfaceLocked()V
    .locals 4

    .prologue
    .line 831
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 832
    sget-boolean v1, Lcom/android/server/wm/WindowStateAnimator;->SHOW_TRANSACTIONS:Z

    if-nez v1, :cond_1

    .line 840
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->destroy()V

    .line 841
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    :cond_0
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 849
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/Surface;

    .line 850
    return-void

    .line 833
    :cond_1
    const/4 v0, 0x0

    .line 838
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v2, "DESTROY PENDING"

    invoke-static {v1, v2, v0}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 843
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_0
    move-exception v0

    .line 844
    .restart local v0       #e:Ljava/lang/RuntimeException;
    const-string v1, "WindowStateAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown when destroying Window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method destroySurfaceLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 766
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v3, v4, :cond_0

    .line 767
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v6, v3, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 770
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_4

    .line 772
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 773
    .local v2, i:I
    :goto_0
    if-lez v2, :cond_1

    .line 774
    add-int/lit8 v2, v2, -0x1

    .line 775
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 776
    .local v0, c:Lcom/android/server/wm/WindowState;
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    goto :goto_0

    .line 789
    .end local v0           #c:Lcom/android/server/wm/WindowState;
    :cond_1
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-eqz v3, :cond_6

    .line 790
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/Surface;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    if-eq v3, v4, :cond_3

    .line 791
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/Surface;

    if-eqz v3, :cond_2

    .line 792
    sget-boolean v3, Lcom/android/server/wm/WindowStateAnimator;->SHOW_TRANSACTIONS:Z

    if-nez v3, :cond_5

    .line 800
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->destroy()V

    .line 802
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/Surface;

    .line 815
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowAnimator;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    :goto_3
    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    .line 823
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    .line 824
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v6, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 825
    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 827
    .end local v2           #i:I
    :cond_4
    return-void

    .line 793
    .restart local v2       #i:I
    :cond_5
    const/4 v1, 0x0

    .line 798
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v4, "DESTROY PENDING"

    invoke-static {v3, v4, v1}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 816
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catch_0
    move-exception v1

    .line 817
    .restart local v1       #e:Ljava/lang/RuntimeException;
    const-string v3, "WindowStateAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown when destroying Window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 805
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_6
    :try_start_2
    sget-boolean v3, Lcom/android/server/wm/WindowStateAnimator;->SHOW_TRANSACTIONS:Z

    if-nez v3, :cond_7

    .line 813
    :goto_4
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->destroy()V

    goto :goto_2

    .line 806
    :cond_7
    const/4 v1, 0x0

    .line 811
    .restart local v1       #e:Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v4, "DESTROY"

    invoke-static {v3, v4, v1}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 2
    .parameter "pw"
    .parameter "prefix"
    .parameter "dumpAll"

    .prologue
    const/high16 v1, 0x3f80

    .line 1534
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 1536
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimating="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1537
    const-string v0, " mLocalAnimating="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1538
    const-string v0, " mAnimationIsEntrance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1539
    const-string v0, " mAnimation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1541
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    if-eqz v0, :cond_3

    .line 1542
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "XForm: has="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1543
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1544
    const-string v0, " hasLocal="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1545
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    .line 1546
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1548
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_5

    .line 1549
    if-eqz p3, :cond_4

    .line 1550
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1551
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDrawState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1552
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-static {v0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1553
    const-string v0, " mLastHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1555
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Surface: shown="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1556
    const-string v0, " layer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1557
    const-string v0, " alpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1558
    const-string v0, " rect=("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1559
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1560
    const-string v0, ") "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1561
    const-string v0, " x "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1563
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/Surface;

    if-eqz v0, :cond_6

    .line 1564
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPendingDestroySurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1565
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1567
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-eqz v0, :cond_8

    .line 1568
    :cond_7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurfaceResized="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1569
    const-string v0, " mSurfaceDestroyDeferred="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1571
    :cond_8
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    .line 1572
    :cond_9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShownAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1573
    const-string v0, " mAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1574
    const-string v0, " mLastAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1576
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c

    .line 1577
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mGlobalScale="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1578
    const-string v0, " mDsDx="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1579
    const-string v0, " mDtDx="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1580
    const-string v0, " mDsDy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1581
    const-string v0, " mDtDy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1583
    :cond_c
    return-void
.end method

.method finishDrawingLocked()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 448
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v1, v0, :cond_1

    .line 449
    sget-boolean v1, Lcom/android/server/wm/WindowStateAnimator;->SHOW_TRANSACTIONS:Z

    if-nez v1, :cond_0

    .line 456
    :goto_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 459
    :goto_1
    return v0

    .line 450
    :cond_0
    const-string v1, "WindowStateAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishDrawingLocked: mDrawState=COMMIT_DRAW_PENDING "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 459
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method finishExit()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 394
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 395
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 396
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->finishExit()V

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 399
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v2, :cond_2

    .line 423
    :cond_1
    :goto_1
    return-void

    .line 403
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isWindowAnimating()Z

    move-result v2

    if-nez v2, :cond_1

    .line 410
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_4

    .line 411
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 413
    sget-boolean v2, Lcom/android/server/wm/WindowState;->SHOW_TRANSACTIONS:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v3, "HIDE (finishExit)"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 415
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    .line 417
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v5, v2, Lcom/android/server/wm/WindowState;->mExiting:Z

    .line 418
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v2, :cond_5

    .line 419
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v5, v2, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 422
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V

    goto :goto_1
.end method

.method hide()V
    .locals 4

    .prologue
    .line 426
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v1, :cond_1

    .line 428
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 429
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v2, "HIDE (performLayout)"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 432
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    .line 434
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->hide()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :cond_1
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "WindowStateAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception hiding surface in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method isAnimating()Z
    .locals 3

    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 203
    .local v1, attached:Lcom/android/server/wm/WindowState;
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 204
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v2, :cond_1

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method isDummyAnimation()Z
    .locals 3

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 214
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v2, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isWindowAnimating()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method performShowLocked()Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1333
    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v4, v8, :cond_6

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isReadyForDisplayIgnoringKeyguard()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1334
    sget-boolean v4, Lcom/android/server/wm/WindowStateAnimator;->SHOW_TRANSACTIONS:Z

    if-nez v4, :cond_2

    .line 1352
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mWasPaused:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v8, :cond_0

    .line 1353
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_0

    .line 1354
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x9

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, v6, v2, v3, v7}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1359
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 1361
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    .line 1364
    const/high16 v4, -0x4080

    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 1367
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 1368
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1370
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1371
    .local v1, i:I
    :cond_1
    :goto_1
    if-lez v1, :cond_3

    .line 1372
    add-int/lit8 v1, v1, -0x1

    .line 1373
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 1374
    .local v0, c:Lcom/android/server/wm/WindowState;
    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-eqz v4, :cond_1

    .line 1375
    iput-boolean v3, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    .line 1376
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_1

    .line 1377
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    .line 1383
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v4, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    goto :goto_1

    .line 1335
    .end local v0           #c:Lcom/android/server/wm/WindowState;
    .end local v1           #i:I
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v5, "SHOW (performShowLocked)"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 1388
    .restart local v1       #i:I
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v8, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_5

    .line 1390
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v2, v3, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    .line 1392
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v3, :cond_4

    .line 1401
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    .line 1402
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1403
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 1405
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 1411
    .end local v1           #i:I
    :cond_5
    :goto_2
    return v2

    :cond_6
    move v2, v3

    goto :goto_2
.end method

.method public prepareSurfaceLocked(Z)V
    .locals 11
    .parameter "recoveringMemory"

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1136
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1137
    .local v2, w:Lcom/android/server/wm/WindowState;
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    if-nez v3, :cond_1

    .line 1138
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v3, :cond_0

    .line 1142
    iput-boolean v9, v2, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 1256
    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    const/4 v0, 0x0

    .line 1149
    .local v0, displayed:Z
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    .line 1151
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowStateAnimator;->setSurfaceBoundaries(Z)V

    .line 1155
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mHtcAnimMgr:Lcom/android/server/wm/HtcAnimationManager;

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-interface {v3, v2, v4, v5}, Lcom/android/server/wm/HtcAnimationManager;->includeWindowForAnimationLocked(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;I)V

    .line 1156
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mHtcAnimMgr:Lcom/android/server/wm/HtcAnimationManager;

    invoke-interface {v3}, Lcom/android/server/wm/HtcAnimationManager;->progressAnimationLocked()V

    .line 1160
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-nez v3, :cond_4

    .line 1162
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    .line 1243
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 1244
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v3, :cond_3

    .line 1245
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1246
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v4, v3, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 1254
    :cond_3
    :goto_2
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v10, v3, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    goto :goto_0

    .line 1163
    :cond_4
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1164
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    .line 1165
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowAnimator;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V

    .line 1173
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v3, :cond_2

    .line 1174
    iput-boolean v9, v2, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto :goto_1

    .line 1178
    :cond_6
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ne v3, v4, :cond_7

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_7

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_7

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_7

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_7

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_7

    iget v3, v2, Lcom/android/server/wm/WindowState;->mLastHScale:F

    iget v4, v2, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_7

    iget v3, v2, Lcom/android/server/wm/WindowState;->mLastVScale:F

    iget v4, v2, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v3, :cond_c

    .line 1187
    :cond_7
    const/4 v0, 0x1

    .line 1188
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 1189
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    .line 1190
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    .line 1191
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    .line 1192
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    .line 1193
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    .line 1194
    iget v3, v2, Lcom/android/server/wm/WindowState;->mHScale:F

    iput v3, v2, Lcom/android/server/wm/WindowState;->mLastHScale:F

    .line 1195
    iget v3, v2, Lcom/android/server/wm/WindowState;->mVScale:F

    iput v3, v2, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 1196
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alpha="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " layer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " matrix=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v5, v2, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v5, v2, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iget v5, v2, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v5, v2, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1202
    :cond_8
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_2

    .line 1204
    :try_start_0
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceAlpha:F

    .line 1205
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setAlpha(F)V

    .line 1206
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    .line 1207
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setLayer(I)V

    .line 1208
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v5, v2, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v6, v2, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iget v7, v2, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v8, v2, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/Surface;->setMatrix(FFFF)V

    .line 1212
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v3, :cond_a

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_a

    .line 1213
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v3, :cond_9

    const-string v3, "SHOW (performLayout)"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1217
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->showSurfaceRobustlyLocked()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1218
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 1219
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v3, :cond_a

    .line 1220
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowManagerService;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 1226
    :cond_a
    :goto_3
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_2

    .line 1227
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wm/WindowToken;->hasVisible:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1229
    :catch_0
    move-exception v1

    .line 1230
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "WindowStateAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error updating surface in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1231
    if-nez p1, :cond_2

    .line 1232
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "update"

    invoke-virtual {v3, p0, v4, v10}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 1223
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_b
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1240
    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1250
    :cond_d
    iput-boolean v9, v2, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto/16 :goto_2
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "anim"

    .prologue
    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    .line 181
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    .line 182
    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 184
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 187
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    .line 189
    return-void

    .line 187
    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method setSurfaceBoundaries(Z)V
    .locals 12
    .parameter "recoveringMemory"

    .prologue
    const/4 v8, 0x1

    .line 1065
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1067
    .local v5, w:Lcom/android/server/wm/WindowState;
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v7, v7, 0x4000

    if-eqz v7, :cond_9

    .line 1070
    iget v6, v5, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 1071
    .local v6, width:I
    iget v1, v5, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 1077
    .local v1, height:I
    :goto_0
    if-ge v6, v8, :cond_0

    .line 1078
    const/4 v6, 0x1

    .line 1080
    :cond_0
    if-ge v1, v8, :cond_1

    .line 1081
    const/4 v1, 0x1

    .line 1083
    :cond_1
    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    int-to-float v9, v6

    cmpl-float v7, v7, v9

    if-nez v7, :cond_2

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    int-to-float v9, v1

    cmpl-float v7, v7, v9

    if-eqz v7, :cond_a

    :cond_2
    move v3, v8

    .line 1084
    .local v3, surfaceResized:Z
    :goto_1
    if-eqz v3, :cond_3

    .line 1085
    int-to-float v7, v6

    iput v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    .line 1086
    int-to-float v7, v1

    iput v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    .line 1089
    :cond_3
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v2, v7, Landroid/graphics/RectF;->left:F

    .line 1090
    .local v2, left:F
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v4, v7, Landroid/graphics/RectF;->top:F

    .line 1091
    .local v4, top:F
    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    cmpl-float v7, v7, v2

    if-nez v7, :cond_4

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    cmpl-float v7, v7, v4

    if-eqz v7, :cond_6

    .line 1093
    :cond_4
    :try_start_0
    sget-boolean v7, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "POS "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v5, v7, v9}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1095
    :cond_5
    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    .line 1096
    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    .line 1097
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    invoke-virtual {v7, v2, v4}, Landroid/view/Surface;->setPosition(FF)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    :cond_6
    :goto_2
    if-eqz v3, :cond_8

    .line 1110
    :try_start_1
    sget-boolean v7, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SIZE "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v5, v7, v9}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1112
    :cond_7
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    .line 1113
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    invoke-virtual {v7, v6, v1}, Landroid/view/Surface;->setSize(II)V

    .line 1114
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v9, v7, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v9, v9, 0x4

    iput v9, v7, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 1116
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_8

    .line 1117
    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v7, v5, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v7, :cond_b

    const/4 v7, 0x0

    :goto_3
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v10, v10, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v11, v11, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    invoke-virtual {v9, p0, v7, v10, v11}, Lcom/android/server/wm/WindowAnimator;->startDimming(Lcom/android/server/wm/WindowStateAnimator;FII)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1132
    :cond_8
    :goto_4
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowStateAnimator;->updateSurfaceWindowCrop(Z)V

    .line 1133
    return-void

    .line 1073
    .end local v1           #height:I
    .end local v2           #left:F
    .end local v3           #surfaceResized:Z
    .end local v4           #top:F
    .end local v6           #width:I
    :cond_9
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 1074
    .restart local v6       #width:I
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v1

    .restart local v1       #height:I
    goto/16 :goto_0

    .line 1083
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1098
    .restart local v2       #left:F
    .restart local v3       #surfaceResized:Z
    .restart local v4       #top:F
    :catch_0
    move-exception v0

    .line 1099
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v7, "WindowStateAnimator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error positioning surface of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pos=("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1102
    if-nez p1, :cond_6

    .line 1103
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v9, "position"

    invoke-virtual {v7, p0, v9, v8}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    goto/16 :goto_2

    .line 1117
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_b
    :try_start_2
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->dimAmount:F
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 1120
    :catch_1
    move-exception v0

    .line 1124
    .restart local v0       #e:Ljava/lang/RuntimeException;
    const-string v7, "WindowStateAnimator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error resizing surface of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " size=("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1126
    if-nez p1, :cond_8

    .line 1127
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v9, "size"

    invoke-virtual {v7, p0, v9, v8}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    goto/16 :goto_4
.end method

.method setTransparentRegionHint(Landroid/graphics/Region;)V
    .locals 4
    .parameter "region"

    .prologue
    .line 1259
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    if-nez v1, :cond_1

    .line 1260
    const-string v1, "WindowStateAnimator"

    const-string v2, "setTransparentRegionHint: null mSurface after mHasSurface true"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :cond_0
    :goto_0
    return-void

    .line 1263
    :cond_1
    sget-boolean v1, Lcom/android/server/wm/WindowStateAnimator;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_2

    const-string v1, "WindowStateAnimator"

    const-string v2, ">>> OPEN TRANSACTION setTransparentRegion"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :cond_2
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 1267
    :try_start_0
    sget-boolean v1, Lcom/android/server/wm/WindowStateAnimator;->SHOW_TRANSACTIONS:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transparentRegionHint="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1269
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, p1}, Landroid/view/Surface;->setTransparentRegionHint(Landroid/graphics/Region;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1276
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 1277
    sget-boolean v1, Lcom/android/server/wm/WindowStateAnimator;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowStateAnimator"

    const-string v2, "<<< CLOSE TRANSACTION setTransparentRegion"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1272
    :catch_0
    move-exception v0

    .line 1273
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v1, "WindowStateAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in setTransparentRegionHint, surface in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1276
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 1277
    sget-boolean v1, Lcom/android/server/wm/WindowStateAnimator;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowStateAnimator"

    const-string v2, "<<< CLOSE TRANSACTION setTransparentRegion"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1276
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 1277
    sget-boolean v2, Lcom/android/server/wm/WindowStateAnimator;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v2, :cond_4

    const-string v2, "WindowStateAnimator"

    const-string v3, "<<< CLOSE TRANSACTION setTransparentRegion"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw v1
.end method

.method setWallpaperOffset(II)V
    .locals 4
    .parameter "left"
    .parameter "top"

    .prologue
    .line 1283
    int-to-float v1, p1

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    .line 1284
    int-to-float v1, p2

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    .line 1285
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v1, :cond_1

    .line 1308
    :cond_0
    :goto_0
    return-void

    .line 1292
    :cond_1
    sget-boolean v1, Lcom/android/server/wm/WindowStateAnimator;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_2

    const-string v1, "WindowStateAnimator"

    const-string v2, ">>> OPEN TRANSACTION setWallpaperOffset"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :cond_2
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 1296
    :try_start_0
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "POS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1298
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/Surface;->setPosition(II)V

    .line 1299
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowStateAnimator;->updateSurfaceWindowCrop(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1304
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 1305
    sget-boolean v1, Lcom/android/server/wm/WindowStateAnimator;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowStateAnimator"

    const-string v2, "<<< CLOSE TRANSACTION setWallpaperOffset"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1300
    :catch_0
    move-exception v0

    .line 1301
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v1, "WindowStateAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error positioning surface of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pos=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1304
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 1305
    sget-boolean v1, Lcom/android/server/wm/WindowStateAnimator;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowStateAnimator"

    const-string v2, "<<< CLOSE TRANSACTION setWallpaperOffset"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1304
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 1305
    sget-boolean v2, Lcom/android/server/wm/WindowStateAnimator;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v2, :cond_4

    const-string v2, "WindowStateAnimator"

    const-string v3, "<<< CLOSE TRANSACTION setWallpaperOffset"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw v1
.end method

.method showSurfaceRobustlyLocked()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1424
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_0

    .line 1425
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    .line 1426
    invoke-static {p0}, Lcom/android/server/wm/WindowStateAnimator$Injector;->showSurface(Lcom/android/server/wm/WindowStateAnimator;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v3, :cond_0

    .line 1430
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    .line 1431
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v4, v3, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1441
    :cond_0
    :goto_0
    return v1

    .line 1435
    :catch_0
    move-exception v0

    .line 1436
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "WindowStateAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure showing surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1439
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "show"

    invoke-virtual {v3, p0, v4, v1}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    move v1, v2

    .line 1441
    goto :goto_0
.end method

.method stepAnimationLocked(J)Z
    .locals 8
    .parameter "currentTime"

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 249
    iget-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    .line 250
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 253
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_1

    .line 254
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    .line 255
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    .line 256
    iget-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-nez v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDw:I

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDh:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 265
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDw:I

    .line 266
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDh:I

    .line 267
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 268
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    .line 269
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    .line 271
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-eqz v2, :cond_1

    .line 272
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimation(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 384
    :goto_0
    return v0

    .line 281
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    .line 282
    iget-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_3

    .line 291
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    .line 292
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    move v0, v1

    .line 294
    goto :goto_0

    .line 295
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    if-eqz v2, :cond_5

    .line 298
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    .line 308
    :cond_4
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-nez v2, :cond_7

    move v0, v1

    .line 309
    goto :goto_0

    .line 299
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 300
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    goto :goto_1

    .line 302
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_4

    .line 305
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    goto :goto_1

    .line 318
    :cond_7
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    .line 319
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    .line 320
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_8

    .line 321
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->cancel()V

    .line 322
    iput-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    .line 324
    :cond_8
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    if-ne v2, v3, :cond_9

    .line 325
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v7, v2, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 329
    :cond_9
    sget-boolean v2, Lcom/htc/utils/PerformanceLogUtil;->Enabled:Z

    if-eqz v2, :cond_a

    .line 330
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_a

    .line 331
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/utils/PerformanceLogUtil;->logWindowAnimationStop(Ljava/lang/String;)V

    .line 336
    :cond_a
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 337
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v2, :cond_10

    .line 338
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 344
    :cond_b
    :goto_2
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    .line 345
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    .line 346
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eq v2, v3, :cond_d

    .line 351
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 352
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v0, v2, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 353
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-nez v2, :cond_d

    .line 354
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    if-ne v2, v3, :cond_c

    .line 355
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v0, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 360
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 363
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 364
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_e

    .line 371
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 375
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->finishExit()V

    .line 376
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 377
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "WindowStateAnimator"

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 380
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_f

    .line 381
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_f
    move v0, v1

    .line 384
    goto/16 :goto_0

    .line 339
    :cond_10
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v2, :cond_b

    .line 340
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    goto/16 :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1587
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "WindowStateAnimator ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1588
    .local v0, sb:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSurface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mAnimation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1591
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method updateSurfaceWindowCrop(Z)V
    .locals 12
    .parameter "recoveringMemory"

    .prologue
    const/high16 v11, 0x3f00

    const/4 v9, 0x0

    .line 1007
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1010
    .local v5, w:Lcom/android/server/wm/WindowState;
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_3

    .line 1013
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v7, v5, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v8, v5, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1048
    :cond_0
    :goto_0
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mLastSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1049
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mLastSystemDecorRect:Landroid/graphics/Rect;

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1051
    :try_start_0
    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CROP "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1053
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/view/Surface;->setWindowCrop(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    :cond_2
    :goto_1
    return-void

    .line 1014
    :cond_3
    iget v6, v5, Lcom/android/server/wm/WindowState;->mLayer:I

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v7, v7, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    if-lt v6, v7, :cond_4

    .line 1016
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1020
    :cond_4
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7dd

    if-ne v6, v7, :cond_5

    .line 1021
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iput v9, v6, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 1024
    :cond_5
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mSystemDecorRect:Landroid/graphics/Rect;

    .line 1026
    .local v0, decorRect:Landroid/graphics/Rect;
    iget v6, v5, Lcom/android/server/wm/WindowState;->mXOffset:I

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int v2, v6, v7

    .line 1027
    .local v2, offX:I
    iget v6, v5, Lcom/android/server/wm/WindowState;->mYOffset:I

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int v3, v6, v7

    .line 1029
    .local v3, offY:I
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1031
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v2

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v3

    iget v9, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v2

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 1039
    iget-boolean v6, v5, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v6, :cond_0

    iget v6, v5, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 v7, 0x3f80

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    .line 1040
    iget v4, v5, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 1041
    .local v4, scale:F
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    sub-float/2addr v7, v11

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1042
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    sub-float/2addr v7, v11

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1043
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    mul-float/2addr v7, v4

    sub-float/2addr v7, v11

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 1044
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    mul-float/2addr v7, v4

    sub-float/2addr v7, v11

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 1054
    .end local v0           #decorRect:Landroid/graphics/Rect;
    .end local v2           #offX:I
    .end local v3           #offY:I
    .end local v4           #scale:F
    :catch_0
    move-exception v1

    .line 1055
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v6, "WindowStateAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error setting crop surface of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crop="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1057
    if-nez p1, :cond_2

    .line 1058
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v7, "crop"

    const/4 v8, 0x1

    invoke-virtual {v6, p0, v7, v8}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    goto/16 :goto_1
.end method
