.class public Lcom/android/server/wm/AppWindowAnimator;
.super Ljava/lang/Object;
.source "AppWindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "AppWindowAnimator"

.field static final sDummyAnimation:Landroid/view/animation/Animation;


# instance fields
.field allDrawn:Z

.field animInitialized:Z

.field animLayerAdjustment:I

.field animating:Z

.field animation:Landroid/view/animation/Animation;

.field freezingScreen:Z

.field hasTransformation:Z

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field final mAppToken:Lcom/android/server/wm/AppWindowToken;

.field mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

.field mPreClearAdjustment:Z

.field mRotateAnimType:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field thumbnail:Landroid/view/Surface;

.field thumbnailAnimation:Landroid/view/animation/Animation;

.field thumbnailLayer:I

.field thumbnailTransactionSeq:I

.field final thumbnailTransformation:Landroid/view/animation/Transformation;

.field thumbnailX:I

.field thumbnailY:I

.field final transformation:Landroid/view/animation/Transformation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;

    invoke-direct {v0}, Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;-><init>()V

    sput-object v0, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AppWindowToken;)V
    .locals 1
    .parameter "service"
    .parameter "atoken"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    .line 61
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    .line 69
    const/16 v0, 0x69

    iput v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mRotateAnimType:I

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mPreClearAdjustment:Z

    .line 83
    iput-object p1, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 84
    iput-object p2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 85
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 86
    return-void
.end method

.method private stepAnimation(J)Z
    .locals 4
    .parameter "currentTime"

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v1, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 212
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 215
    .local v0, more:Z
    if-nez v0, :cond_2

    .line 216
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 217
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    .line 221
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    const-string v1, "AppWindowAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished animation in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearHtcGlAnimation()V

    .line 233
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    goto :goto_0
.end method

.method private stepThumbnailAnimation(J)V
    .locals 11
    .parameter "currentTime"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 175
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    .line 176
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, p1, p2, v5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 177
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailX:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailY:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 178
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v4}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 180
    .local v0, screenAnimation:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 181
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v5}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/animation/Transformation;->postCompose(Landroid/view/animation/Transformation;)V

    .line 185
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v4, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 186
    .local v1, tmpFloats:[F
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 187
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    const-string v5, "thumbnail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "POS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x5

    aget v7, v1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->logSurface(Landroid/view/Surface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 190
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    aget v5, v1, v8

    const/4 v6, 0x5

    aget v6, v1, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/Surface;->setPosition(FF)V

    .line 191
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    const-string v5, "thumbnail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "alpha="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v7}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " layer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " matrix=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->logSurface(Landroid/view/Surface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 198
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/Surface;->setAlpha(F)V

    .line 201
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    iget v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    add-int/lit8 v5, v5, 0x5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v4, v5}, Landroid/view/Surface;->setLayer(I)V

    .line 203
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    aget v3, v1, v3

    aget v5, v1, v9

    aget v2, v1, v2

    aget v6, v1, v10

    invoke-virtual {v4, v3, v5, v2, v6}, Landroid/view/Surface;->setMatrix(FFFF)V

    .line 205
    return-void

    .end local v0           #screenAnimation:Z
    .end local v1           #tmpFloats:[F
    :cond_3
    move v0, v3

    .line 178
    goto/16 :goto_0
.end method


# virtual methods
.method public clearAnimation()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animInitialized:Z

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    .line 140
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearHtcGlAnimation()V

    .line 143
    return-void
.end method

.method public clearHtcGlAnimation()V
    .locals 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mHtcAnimMgr:Lcom/android/server/wm/HtcAnimationManager;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-interface {v0, v1}, Lcom/android/server/wm/HtcAnimationManager;->deinitAnimationLocked(Lcom/android/server/wm/AppWindowToken;)V

    .line 379
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mHtcAnimMgr:Lcom/android/server/wm/HtcAnimationManager;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/server/wm/HtcAnimationManager;->monitorTransAnim(Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V

    .line 384
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 386
    :cond_1
    return-void
.end method

.method public clearThumbnail()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    .line 150
    :cond_0
    return-void
.end method

.method dispatchAppTransitionAnimationEnd()V
    .locals 6

    .prologue
    .line 393
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 394
    .local v0, NW:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 395
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 396
    .local v2, w:Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 397
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    .line 398
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatch app trans anim end info to window: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 407
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_1
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " freezingScreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 425
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    .line 426
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "animating="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 427
    const-string v0, " animation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 429
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    if-eqz v0, :cond_3

    .line 430
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "XForm: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    .line 432
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 434
    :cond_3
    iget v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    if-eqz v0, :cond_4

    .line 435
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "animLayerAdjustment="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 438
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPreClearAdjustment="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mPreClearAdjustment:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 440
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    if-eqz v0, :cond_5

    .line 441
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "thumbnail="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 442
    const-string v0, " x="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 443
    const-string v0, " y="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 444
    const-string v0, " layer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 445
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "thumbnailAnimation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 446
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "thumbnailTransformation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    :cond_5
    return-void
.end method

.method needReportAppTransitionEnd()Z
    .locals 2

    .prologue
    .line 410
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 411
    .local v0, win:Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    const/4 v1, 0x1

    .line 414
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAnimation(Landroid/view/animation/Animation;Z)V
    .locals 6
    .parameter "anim"
    .parameter "initialized"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 91
    iput-object p1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 92
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 93
    iput-boolean p2, p0, Lcom/android/server/wm/AppWindowAnimator;->animInitialized:Z

    .line 94
    const-wide/16 v3, 0x2710

    invoke-virtual {p1, v3, v4}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 97
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DISABLE_APP_TRANSITION_ANIMATION:Z

    if-eqz v3, :cond_3

    .line 98
    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 104
    :goto_0
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getZAdjustment()I

    move-result v1

    .line 105
    .local v1, zorder:I
    const/4 v0, 0x0

    .line 106
    .local v0, adj:I
    if-ne v1, v5, :cond_4

    .line 107
    const/16 v0, 0x3e8

    .line 112
    :cond_0
    :goto_1
    iget v3, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    if-eq v3, v0, :cond_1

    .line 113
    iput v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 114
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    .line 117
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 118
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    if-eqz v4, :cond_2

    const/high16 v2, 0x3f80

    :cond_2
    invoke-virtual {v3, v2}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 119
    iput-boolean v5, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    .line 120
    return-void

    .line 102
    .end local v0           #adj:I
    .end local v1           #zorder:I
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    invoke-virtual {p1, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    goto :goto_0

    .line 108
    .restart local v0       #adj:I
    .restart local v1       #zorder:I
    :cond_4
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 109
    const/16 v0, -0x3e8

    goto :goto_1
.end method

.method public setDummyAnimation()V
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animInitialized:Z

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 128
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 129
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHtcGlAnimation(Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V
    .locals 4
    .parameter "baseAnim"
    .parameter "initialized"

    .prologue
    .line 358
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 360
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mHtcAnimMgr:Lcom/android/server/wm/HtcAnimationManager;

    invoke-interface {v0}, Lcom/android/server/wm/HtcAnimationManager;->isOverrideAnimDuration()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mHtcAnimMgr:Lcom/android/server/wm/HtcAnimationManager;

    invoke-interface {v0}, Lcom/android/server/wm/HtcAnimationManager;->getAnimationDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setDuration(J)V

    .line 363
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/AppWindowAnimator;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 364
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/AppWindowAnimator;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 367
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mHtcAnimMgr:Lcom/android/server/wm/HtcAnimationManager;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wm/HtcAnimationManager;->monitorTransAnim(Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V

    .line 371
    :cond_1
    return-void
.end method

.method showAllWindowsLocked()Z
    .locals 5

    .prologue
    .line 339
    const/4 v2, 0x0

    .line 340
    .local v2, isAnimating:Z
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 341
    .local v0, NW:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 342
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 345
    .local v3, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    .line 346
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v4

    or-int/2addr v2, v4

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    .end local v3           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_0
    return v2
.end method

.method stepAnimationLocked(JII)Z
    .locals 7
    .parameter "currentTime"
    .parameter "dw"
    .parameter "dh"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 239
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 242
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v5, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v4, v5, :cond_1

    move v2, v3

    .line 335
    :cond_0
    :goto_0
    return v2

    .line 250
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v4, :cond_7

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_7

    .line 252
    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v4, :cond_5

    .line 256
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_3

    const-string v4, "AppWindowAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting animation in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": dw="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dh="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " scale="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " allDrawn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v6, v6, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " animating="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animInitialized:Z

    if-nez v4, :cond_4

    .line 264
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p3, p4, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 266
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 267
    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 268
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    if-eqz v4, :cond_5

    .line 269
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->show()V

    .line 270
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 273
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimation(J)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 276
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    if-eqz v3, :cond_0

    .line 277
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppWindowAnimator;->stepThumbnailAnimation(J)V

    goto/16 :goto_0

    .line 282
    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_7

    .line 285
    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 286
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 291
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearHtcGlAnimation()V

    .line 296
    :cond_7
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    .line 298
    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v4, :cond_8

    move v2, v3

    .line 299
    goto/16 :goto_0

    .line 302
    :cond_8
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v5, v4, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 304
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v5, "AppWindowToken"

    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 307
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearAnimation()V

    .line 308
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 312
    iget v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    if-nez v4, :cond_9

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mPreClearAdjustment:Z

    if-eqz v4, :cond_a

    .line 315
    :cond_9
    iput v3, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 316
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    .line 318
    :cond_a
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v4, v5, :cond_b

    .line 320
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 327
    :cond_b
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    .line 329
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 330
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_c

    .line 331
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->finishExit()V

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 333
    :cond_c
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    move v2, v3

    .line 335
    goto/16 :goto_0
.end method

.method updateLayers()V
    .locals 7

    .prologue
    .line 153
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 154
    .local v0, N:I
    iget v1, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 155
    .local v1, adj:I
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 156
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 157
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 158
    .local v3, w:Lcom/android/server/wm/WindowState;
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 159
    .local v4, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget v5, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, v1

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 160
    iget v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    if-le v5, v6, :cond_0

    .line 161
    iget v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 165
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne v3, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    if-nez v5, :cond_1

    .line 166
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    .line 168
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v3, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v5, :cond_2

    .line 169
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowManagerService;->setWallpaperAnimLayerAdjustmentLocked(I)V

    .line 156
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .end local v3           #w:Lcom/android/server/wm/WindowState;
    .end local v4           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_3
    return-void
.end method
