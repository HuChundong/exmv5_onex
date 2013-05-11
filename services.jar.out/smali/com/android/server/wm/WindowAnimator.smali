.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimator$SetAnimationParams;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final HIDE_SURFACE_BELOW_KEYGUARD:Z = false

.field private static final TAG:Ljava/lang/String; = "WindowAnimator"

.field static final WALLPAPER_ACTION_PENDING:I = 0x1


# instance fields
.field mAdjResult:I

.field private mAnimTransactionSequence:I

.field mAnimating:Z

.field mBulkUpdateParams:I

.field final mContext:Landroid/content/Context;

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field mCurrentTime:J

.field mDetachedWallpaper:Lcom/android/server/wm/WindowState;

.field mDh:I

.field mDimAnimator:Lcom/android/server/wm/DimAnimator;

.field mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

.field mDw:I

.field mForceHiding:Z

.field mInnerDh:I

.field mInnerDw:I

.field mPendingActions:I

.field mPendingLayoutChanges:I

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mWinAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowStateAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

.field mWindowAnimationBackgroundColor:I

.field mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    const-string v0, "hide_surface_below_keyguard"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/WindowAnimator;->HIDE_SURFACE_BELOW_KEYGUARD:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;Landroid/view/WindowManagerPolicy;)V
    .locals 2
    .parameter "service"
    .parameter "context"
    .parameter "policy"

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWinAnimators:Ljava/util/ArrayList;

    .line 70
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 76
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 77
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 78
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 82
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 83
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    .line 99
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 100
    iput-object p2, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    .line 101
    iput-object p3, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 102
    return-void
.end method

.method private performAnimationsLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 486
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:Z

    .line 487
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 488
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    .line 489
    iput v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundColor:I

    .line 491
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->updateWindowsAndWallpaperLocked()V

    .line 492
    iget v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 493
    iget v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    .line 496
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->testTokenMayBeDrawnLocked()V

    .line 497
    return-void
.end method

.method private testTokenMayBeDrawnLocked()V
    .locals 8

    .prologue
    .line 449
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v5, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    .line 450
    .local v2, appTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 451
    .local v0, NT:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 452
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    .line 453
    .local v4, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 454
    .local v1, allDrawn:Z
    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v5, v5, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eq v1, v5, :cond_0

    .line 455
    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iput-boolean v1, v5, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    .line 456
    if-eqz v1, :cond_0

    .line 459
    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v5, v5, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v5, :cond_1

    .line 460
    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    .line 461
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 467
    iget v5, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 451
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 469
    :cond_1
    iget v5, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 471
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v6, "testTokenMayBeDrawnLocked"

    iget v7, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 476
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 477
    iget-boolean v5, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    iget-object v6, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v6

    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    goto :goto_1

    .line 483
    .end local v1           #allDrawn:Z
    .end local v4           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_2
    return-void
.end method

.method private testWallpaperAndBackgroundLocked()V
    .locals 9

    .prologue
    .line 122
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eq v6, v7, :cond_1

    .line 123
    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER:Z

    if-eqz v6, :cond_0

    const-string v6, "WindowAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Detached wallpaper changed from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iput-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 127
    iget v6, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 130
    :cond_1
    iget v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundColor:I

    if-eqz v6, :cond_7

    .line 134
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    .line 135
    .local v4, target:Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v6, v4, :cond_2

    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v6, v4, :cond_2

    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v6, v4, :cond_3

    .line 138
    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 139
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 140
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 141
    .local v5, w:Lcom/android/server/wm/WindowState;
    iget-boolean v6, v5, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v6, :cond_6

    .line 142
    move-object v4, v5

    .line 147
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v5           #w:Lcom/android/server/wm/WindowState;
    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-nez v6, :cond_4

    .line 148
    new-instance v6, Lcom/android/server/wm/DimSurface;

    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v6, v7}, Lcom/android/server/wm/DimSurface;-><init>(Landroid/view/SurfaceSession;)V

    iput-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    .line 150
    :cond_4
    iget v2, p0, Lcom/android/server/wm/WindowAnimator;->mDw:I

    .line 151
    .local v2, dw:I
    iget v1, p0, Lcom/android/server/wm/WindowAnimator;->mDh:I

    .line 152
    .local v1, dh:I
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundColor:I

    invoke-virtual {v6, v2, v1, v7, v8}, Lcom/android/server/wm/DimSurface;->show(IIII)V

    .line 158
    .end local v1           #dh:I
    .end local v2           #dw:I
    .end local v4           #target:Lcom/android/server/wm/WindowState;
    :cond_5
    :goto_1
    return-void

    .line 139
    .restart local v0       #N:I
    .restart local v3       #i:I
    .restart local v4       #target:Lcom/android/server/wm/WindowState;
    .restart local v5       #w:Lcom/android/server/wm/WindowState;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #target:Lcom/android/server/wm/WindowState;
    .end local v5           #w:Lcom/android/server/wm/WindowState;
    :cond_7
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-eqz v6, :cond_5

    .line 156
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    invoke-virtual {v6}, Lcom/android/server/wm/DimSurface;->hide()V

    goto :goto_1
.end method

.method private updateWindowsAndWallpaperLocked()V
    .locals 18

    .prologue
    .line 250
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    .line 252
    const/4 v10, 0x0

    .line 253
    .local v10, unForceHiding:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    const/4 v11, 0x0

    .line 255
    .local v11, wallpaperInUnForceHiding:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v8, v15, -0x1

    .local v8, i:I
    :goto_0
    if-ltz v8, :cond_1b

    .line 256
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/WindowState;

    .line 257
    .local v13, win:Lcom/android/server/wm/WindowState;
    iget-object v14, v13, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 258
    .local v14, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget v6, v14, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    .line 260
    .local v6, flags:I
    iget-object v15, v14, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    if-eqz v15, :cond_a

    .line 261
    iget-boolean v12, v14, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    .line 262
    .local v12, wasAnimating:Z
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    move-result v9

    .line 264
    .local v9, nowAnimating:Z
    sget-boolean v15, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER:Z

    if-eqz v15, :cond_0

    .line 265
    const-string v15, "WindowAnimator"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": wasAnimating="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", nowAnimating="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    if-eqz v9, :cond_4

    .line 273
    iget-object v15, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v15, :cond_3

    .line 274
    const/high16 v15, 0x10

    and-int/2addr v15, v6

    if-eqz v15, :cond_1

    iget-object v15, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v15}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 276
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 278
    :cond_1
    iget-object v15, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v15}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v4

    .line 279
    .local v4, backgroundColor:I
    if-eqz v4, :cond_3

    .line 280
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    if-eqz v15, :cond_2

    iget v15, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    .line 283
    :cond_2
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    .line 284
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundColor:I

    .line 288
    .end local v4           #backgroundColor:I
    :cond_3
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 294
    :cond_4
    iget-object v15, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v15, :cond_f

    const/4 v2, 0x0

    .line 296
    .local v2, appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    :goto_1
    if-eqz v2, :cond_7

    iget-object v15, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v15, :cond_7

    iget-boolean v15, v2, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v15, :cond_7

    .line 298
    const/high16 v15, 0x10

    and-int/2addr v15, v6

    if-eqz v15, :cond_5

    iget-object v15, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v15}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 300
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 302
    :cond_5
    iget-object v15, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v15}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v4

    .line 303
    .restart local v4       #backgroundColor:I
    if-eqz v4, :cond_7

    .line 304
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    if-eqz v15, :cond_6

    iget v15, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    .line 307
    :cond_6
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    .line 308
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundColor:I

    .line 313
    .end local v4           #backgroundColor:I
    :cond_7
    if-eqz v12, :cond_8

    iget-boolean v15, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v15, v13, :cond_8

    .line 314
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 315
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v15, v15, 0x4

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 317
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v16, "updateWindowsAndWallpaperLocked 2"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 322
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v15, v13, v0}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 323
    if-nez v12, :cond_9

    if-eqz v9, :cond_9

    .line 327
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v15, v15, 0x4

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 328
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v15, v15, 0x4

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 330
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v16, "updateWindowsAndWallpaperLocked 3"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 333
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 340
    :cond_9
    sget-boolean v15, Lcom/android/server/wm/WindowAnimator;->HIDE_SURFACE_BELOW_KEYGUARD:Z

    if-eqz v15, :cond_11

    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v15

    if-eqz v15, :cond_10

    iget-boolean v15, v14, Lcom/android/server/wm/WindowStateAnimator;->mIsEntranceForKeyguard:Z

    if-eqz v15, :cond_10

    const/4 v7, 0x1

    .line 343
    .local v7, forceHiding:Z
    :goto_2
    if-eqz v7, :cond_a

    .line 345
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:Z

    .line 407
    .end local v2           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v7           #forceHiding:Z
    .end local v9           #nowAnimating:Z
    .end local v12           #wasAnimating:Z
    :cond_a
    :goto_3
    iget-object v3, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 408
    .local v3, atoken:Lcom/android/server/wm/AppWindowToken;
    iget v15, v14, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 409
    if-eqz v3, :cond_b

    iget-boolean v15, v3, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v15, :cond_c

    .line 410
    :cond_b
    invoke-virtual {v14}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 411
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v15, v15, 0x8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 413
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v16, "updateWindowsAndWallpaperLocked 5"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 419
    :cond_c
    if-nez v3, :cond_1a

    const/4 v2, 0x0

    .line 421
    .restart local v2       #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    :goto_4
    if-eqz v2, :cond_e

    iget-object v15, v2, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    if-eqz v15, :cond_e

    .line 422
    iget v15, v2, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_d

    .line 423
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    iput v15, v2, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    .line 424
    const/4 v15, 0x0

    iput v15, v2, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 426
    :cond_d
    iget v15, v2, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    iget v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_e

    .line 427
    iget v15, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v15, v2, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 255
    :cond_e
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_0

    .line 294
    .end local v2           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v3           #atoken:Lcom/android/server/wm/AppWindowToken;
    .restart local v9       #nowAnimating:Z
    .restart local v12       #wasAnimating:Z
    :cond_f
    iget-object v15, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    goto/16 :goto_1

    .line 340
    .restart local v2       #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    :cond_10
    const/4 v7, 0x0

    goto :goto_2

    :cond_11
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v15

    if-eqz v15, :cond_12

    iget-boolean v15, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-eqz v15, :cond_12

    const/4 v7, 0x1

    goto :goto_2

    :cond_12
    const/4 v7, 0x0

    goto :goto_2

    .line 356
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v15, v13, v0}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 358
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:Z

    if-eqz v15, :cond_16

    invoke-virtual {v14}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v15

    if-eqz v15, :cond_14

    iget v15, v14, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    const/high16 v16, 0x8

    and-int v15, v15, v16

    if-nez v15, :cond_16

    .line 360
    :cond_14
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v5

    .line 396
    .local v5, changed:Z
    :cond_15
    :goto_5
    if-eqz v5, :cond_a

    const/high16 v15, 0x10

    and-int/2addr v15, v6

    if-eqz v15, :cond_a

    .line 397
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 398
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v15, v15, 0x4

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 400
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v16, "updateWindowsAndWallpaperLocked 4"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 364
    .end local v5           #changed:Z
    :cond_16
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v5

    .line 367
    .restart local v5       #changed:Z
    if-eqz v5, :cond_15

    .line 368
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v15, v15, 0x4

    if-eqz v15, :cond_18

    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v15

    if-eqz v15, :cond_18

    .line 370
    if-nez v10, :cond_17

    .line 371
    new-instance v10, Ljava/util/ArrayList;

    .end local v10           #unForceHiding:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .restart local v10       #unForceHiding:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    :cond_17
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v15, v13, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v15, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v16, 0x10

    and-int v15, v15, v16

    if-eqz v15, :cond_18

    .line 375
    const/4 v11, 0x1

    .line 378
    :cond_18
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v15, :cond_19

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget v15, v15, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v0, v13, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_15

    .line 382
    :cond_19
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto :goto_5

    .line 419
    .end local v2           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v5           #changed:Z
    .end local v9           #nowAnimating:Z
    .end local v12           #wasAnimating:Z
    .restart local v3       #atoken:Lcom/android/server/wm/AppWindowToken;
    :cond_1a
    iget-object v2, v3, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    goto/16 :goto_4

    .line 434
    .end local v3           #atoken:Lcom/android/server/wm/AppWindowToken;
    .end local v6           #flags:I
    .end local v13           #win:Lcom/android/server/wm/WindowState;
    .end local v14           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_1b
    if-eqz v10, :cond_1d

    .line 435
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v8, v15, -0x1

    :goto_6
    if-ltz v8, :cond_1d

    .line 436
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v15, v11}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v1

    .line 437
    .local v1, a:Landroid/view/animation/Animation;
    if-eqz v1, :cond_1c

    .line 438
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/WindowStateAnimator;

    .line 439
    .restart local v14       #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v14, v1}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 440
    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 435
    .end local v14           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_1c
    add-int/lit8 v8, v8, -0x1

    goto :goto_6

    .line 444
    .end local v1           #a:Landroid/view/animation/Animation;
    :cond_1d
    return-void
.end method

.method private updateWindowsAppsAndRotationAnimationsLocked()V
    .locals 14

    .prologue
    const/16 v13, 0x6d

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 161
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v7, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    .line 166
    .local v3, appTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    const/4 v5, 0x0

    .line 169
    .local v5, tokensAnimating:Z
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 170
    .local v0, NAT:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 171
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v7, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 172
    .local v2, appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    iget-object v7, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v7, :cond_1

    iget-object v7, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v10, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v7, v10, :cond_1

    move v6, v8

    .line 174
    .local v6, wasAnimating:Z
    :goto_1
    iget-wide v10, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    iget v7, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDw:I

    iget v12, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDh:I

    invoke-virtual {v2, v10, v11, v7, v12}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JII)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 175
    iput-boolean v8, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 176
    const/4 v5, 0x1

    .line 170
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v6           #wasAnimating:Z
    :cond_1
    move v6, v9

    .line 172
    goto :goto_1

    .line 177
    .restart local v6       #wasAnimating:Z
    :cond_2
    if-eqz v6, :cond_0

    .line 179
    iget v7, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 181
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "appToken "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " done"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    invoke-virtual {v7, v10, v11}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto :goto_2

    .line 189
    .end local v2           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v6           #wasAnimating:Z
    :cond_3
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 190
    .local v1, NEAT:I
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_7

    .line 191
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v7, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 192
    .restart local v2       #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    iget-object v7, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v7, :cond_5

    iget-object v7, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v10, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v7, v10, :cond_5

    move v6, v8

    .line 194
    .restart local v6       #wasAnimating:Z
    :goto_4
    iget-wide v10, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    iget v7, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDw:I

    iget v12, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDh:I

    invoke-virtual {v2, v10, v11, v7, v12}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JII)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 195
    iput-boolean v8, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 196
    const/4 v5, 0x1

    .line 190
    :cond_4
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v6           #wasAnimating:Z
    :cond_5
    move v6, v9

    .line 192
    goto :goto_4

    .line 197
    .restart local v6       #wasAnimating:Z
    :cond_6
    if-eqz v6, :cond_4

    .line 199
    iget v7, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 201
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exiting appToken "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " done"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    invoke-virtual {v7, v10, v11}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto :goto_5

    .line 209
    .end local v2           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v6           #wasAnimating:Z
    :cond_7
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v7}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 210
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    iget-wide v10, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v7, v10, v11}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 211
    iput-boolean v8, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 232
    :cond_8
    :goto_6
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 233
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowManagerService;->mNextAppTransAnimEndReport:Z

    if-eqz v7, :cond_a

    if-nez v5, :cond_a

    .line 235
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v9, v7, Lcom/android/server/wm/WindowManagerService;->mNextAppTransAnimEndReport:Z

    .line 237
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_9

    .line 238
    const-string v7, "WindowAnimator"

    const-string v8, "post app trans anim end message"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_9
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v7, v13}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 241
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v8, v13}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 247
    :cond_a
    return-void

    .line 213
    :cond_b
    iget v7, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 214
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v7}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 215
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 219
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowManagerService;->mDisableNextRotateAnimationDuration:Z

    if-eqz v7, :cond_8

    .line 220
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_c

    .line 221
    const-string v7, "WindowAnimator"

    const-string v8, "Recover next rotation animation duration.<<<<<"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_c
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v9, v7, Lcom/android/server/wm/WindowManagerService;->mDisableNextRotateAnimationDuration:Z

    goto :goto_6
.end method


# virtual methods
.method declared-synchronized animate()V
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 500
    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    iput v4, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 501
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    .line 502
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 503
    iget-boolean v3, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 504
    .local v3, wasAnimating:Z
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 511
    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->updateWindowsAppsAndRotationAnimationsLocked()V

    .line 515
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->performAnimationsLocked()V

    .line 516
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->testWallpaperAndBackgroundLocked()V

    .line 520
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v4, :cond_0

    .line 521
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v4}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfaces()V

    .line 524
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 525
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 526
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowStateAnimator;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    .line 525
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 529
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-eqz v4, :cond_2

    .line 530
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    iget-wide v9, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v4, v7, v8, v9, v10}, Lcom/android/server/wm/DimAnimator;->updateParameters(Landroid/content/res/Resources;Lcom/android/server/wm/DimAnimator$Parameters;J)V

    .line 532
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    iget-boolean v4, v4, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    if-eqz v4, :cond_3

    .line 533
    iget-boolean v7, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->isDimming()Z

    move-result v9

    iget-wide v10, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v5

    :goto_1
    invoke-virtual {v8, v9, v10, v11, v4}, Lcom/android/server/wm/DimAnimator;->updateSurface(ZJZ)Z

    move-result v4

    or-int/2addr v4, v7

    iput-boolean v4, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 537
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v4, :cond_4

    .line 538
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v4, :cond_8

    .line 539
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v5}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    .line 546
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v4, :cond_5

    .line 547
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    invoke-virtual {v4}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 552
    :cond_5
    :try_start_2
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 555
    .end local v0           #N:I
    .end local v2           #i:I
    :goto_3
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    iget v6, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->bulkSetParameters(II)V

    .line 557
    iget-boolean v4, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    if-eqz v4, :cond_9

    .line 558
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 567
    :cond_6
    :goto_4
    monitor-exit p0

    return-void

    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_7
    move v4, v6

    .line 533
    goto :goto_1

    .line 542
    :cond_8
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v4}, Lcom/android/server/wm/BlackFrame;->clearMatrix()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 549
    .end local v0           #N:I
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 550
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v4, "WindowAnimator"

    const-string v5, "Unhandled exception in Window Manager"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 552
    :try_start_5
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 500
    .end local v1           #e:Ljava/lang/RuntimeException;
    .end local v3           #wasAnimating:Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 552
    .restart local v3       #wasAnimating:Z
    :catchall_1
    move-exception v4

    :try_start_6
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v4

    .line 559
    :cond_9
    if-eqz v3, :cond_6

    .line 560
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4
.end method

.method declared-synchronized clearPendingActions()V
    .locals 1

    .prologue
    .line 648
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    monitor-exit p0

    return-void

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 3
    .parameter "pw"
    .parameter "prefix"
    .parameter "dumpAll"

    .prologue
    .line 613
    if-eqz p3, :cond_2

    .line 614
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWindowDetachedWallpaper="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 618
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimTransactionSequence="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 619
    iget v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 620
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-eqz v0, :cond_1

    .line 621
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWindowAnimationBackgroundSurface:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DimSurface;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-eqz v0, :cond_3

    .line 625
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDimAnimator:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DimAnimator;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 631
    :cond_2
    :goto_0
    return-void

    .line 628
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "no DimAnimator "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V
    .locals 7
    .parameter "w"

    .prologue
    .line 105
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v5, p1, :cond_0

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v5, :cond_4

    .line 107
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 108
    .local v2, token:Lcom/android/server/wm/WindowToken;
    iget-object v5, v2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 109
    .local v3, wallpaper:Lcom/android/server/wm/WindowState;
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 110
    .local v4, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v5, :cond_2

    .line 111
    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    .line 112
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lcom/android/server/wm/WindowManagerService;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 113
    iget v5, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    goto :goto_1

    .line 116
    .end local v3           #wallpaper:Lcom/android/server/wm/WindowState;
    .end local v4           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/server/wm/WindowToken;->hidden:Z

    goto :goto_0

    .line 119
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    :cond_4
    return-void
.end method

.method isDimming()Z
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDimming(Lcom/android/server/wm/WindowStateAnimator;)Z
    .locals 1
    .parameter "winAnimator"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    iget-object v0, v0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setCurrentFocus(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .parameter "currentFocus"

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 572
    return-void
.end method

.method setDisplayDimensions(IIII)V
    .locals 0
    .parameter "curWidth"
    .parameter "curHeight"
    .parameter "appWidth"
    .parameter "appHeight"

    .prologue
    .line 576
    iput p1, p0, Lcom/android/server/wm/WindowAnimator;->mDw:I

    .line 577
    iput p2, p0, Lcom/android/server/wm/WindowAnimator;->mDh:I

    .line 578
    iput p3, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDw:I

    .line 579
    iput p4, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDh:I

    .line 580
    return-void
.end method

.method startDimming(Lcom/android/server/wm/WindowStateAnimator;FII)V
    .locals 5
    .parameter "winAnimator"
    .parameter "target"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 584
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-nez v1, :cond_0

    .line 585
    new-instance v1, Lcom/android/server/wm/DimAnimator;

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v1, v2}, Lcom/android/server/wm/DimAnimator;-><init>(Landroid/view/SurfaceSession;)V

    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 588
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 591
    .local v0, dimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :goto_0
    iget-boolean v1, p1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v2, p1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v1, v2, :cond_2

    .line 594
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const v3, 0x186a3

    new-instance v4, Lcom/android/server/wm/DimAnimator$Parameters;

    invoke-direct {v4, p1, p3, p4, p2}, Lcom/android/server/wm/DimAnimator$Parameters;-><init>(Lcom/android/server/wm/WindowStateAnimator;IIF)V

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 597
    :cond_2
    return-void

    .line 588
    .end local v0           #dimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    iget-object v0, v1, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    goto :goto_0
.end method

.method stopDimming()V
    .locals 4

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const v2, 0x186a3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 602
    return-void
.end method
