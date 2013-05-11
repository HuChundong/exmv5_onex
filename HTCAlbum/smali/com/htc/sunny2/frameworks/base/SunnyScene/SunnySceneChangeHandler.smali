.class public Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;
.super Ljava/lang/Object;
.source "SunnySceneChangeHandler.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;
    }
.end annotation


# static fields
.field public static final SCLOCK_ANIMATION:I = 0x516

.field public static final SCLOCK_NEW_ADAPTER:I = 0x515

.field public static final SCLOCK_UNKNOWN:I = 0x514

.field public static final SCSTATE_ADAPTER_CHECK:I = 0xa

.field public static final SCSTATE_ADAPTER_READY:I = 0x17

.field public static final SCSTATE_BIND_ADAPTER:I = 0xd

.field public static final SCSTATE_CHANGE_END:I = 0x15

.field public static final SCSTATE_CHANGE_START:I = 0xb

.field public static final SCSTATE_CREATE_ANIMATION:I = 0xe

.field public static final SCSTATE_EXIT_ANIMATION:I = 0x11

.field public static final SCSTATE_NEW_ADAPTER_UNLOCK:I = 0x16

.field public static final SCSTATE_PLAY_ANIMATION:I = 0xf

.field public static final SCSTATE_PREPARE_ANIMATION:I = 0xc

.field public static final SCSTATE_SEND_BACKGROUND:I = 0x13

.field public static final SCSTATE_SEND_FOREGROUND:I = 0x12

.field public static final SCSTATE_START_ANIMATION:I = 0x10

.field public static final SCSTATE_UNBIND_ADAPTER:I = 0x14

.field private static final TIMER_NEW_ADAPTER_UNLOCK:I = 0x4b0


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mAnimationLock:Z

.field private mBundle:Landroid/os/Bundle;

.field private mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsDisableAnimation:Z

.field private mIsSceneForceClose:Z

.field private mNewAdapterLock:Z

.field private mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

.field private mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

.field private mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

.field private mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-class v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 55
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    .line 56
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 57
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 58
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mBundle:Landroid/os/Bundle;

    .line 59
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mIsSceneForceClose:Z

    .line 60
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mNewAdapterLock:Z

    .line 61
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mAnimationLock:Z

    .line 62
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mIsDisableAnimation:Z

    .line 63
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    .line 558
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$1;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$1;-><init>(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private doSceneChange()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 186
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][doSceneChange]:..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-eqz v0, :cond_0

    .line 190
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mNewAdapterLock:Z

    .line 198
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateAdapterCheck()V

    .line 212
    :goto_0
    return-void

    .line 202
    :cond_0
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mAnimationLock:Z

    .line 210
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateAdapterReady()V

    goto :goto_0
.end method

.method private isAnimationLocked()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mAnimationLock:Z

    return v0
.end method

.method private isNewAdapterLocked()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mNewAdapterLock:Z

    return v0
.end method

.method private onCreateAnimation(Ljava/lang/Object;)V
    .locals 4
    .parameter "object"

    .prologue
    .line 381
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getReferences()I

    move-result v0

    .line 382
    .local v0, nReferences:I
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnySceneChangeHandler][onCreateAnimation]: incoming animations: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getReferences()I

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mIsDisableAnimation:Z

    if-eqz v1, :cond_1

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationBegin(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V

    .line 397
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onExitAnimation()V

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->createAnimation(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private onExitAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 427
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][onExitAnimation]:... "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->endAnimation()V

    .line 429
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationEnd()V

    .line 434
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getSceneChangeType()I

    move-result v0

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][onExitAnimation]: onStateSendForeground "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateSendForeground()V

    .line 454
    :goto_0
    return-void

    .line 446
    :cond_0
    const/16 v0, 0x12

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 452
    :cond_1
    const/16 v0, 0x13

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private onPlayAnimation()V
    .locals 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v0, v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationBegin(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V

    .line 417
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->playAnimation()V

    .line 418
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][onPlayAnimation]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method private onPrepareAnimation(Ljava/lang/Object;)V
    .locals 7
    .parameter "object"

    .prologue
    const/4 v6, 0x0

    .line 313
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 314
    .local v0, nSceneChangeType:I
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SunnySceneChangeHandler][onPrepareAnimation]: animation type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    if-nez v0, :cond_1

    .line 317
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    .line 318
    .local v1, sceneIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    iget-boolean v4, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mIsSceneForceClose:Z

    invoke-virtual {v3, v1, v6, v0, v4}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->prepareSceneAnimation(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;IZ)V

    .line 323
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateBindAdapter()V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 327
    .end local v1           #sceneIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    .line 328
    .restart local v1       #sceneIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    .line 329
    .local v2, sceneOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    iget-boolean v4, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mIsSceneForceClose:Z

    invoke-virtual {v3, v1, v2, v0, v4}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->prepareSceneAnimation(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;IZ)V

    .line 331
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SunnySceneChangeHandler][onPrepareAnimation]: no of anim: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v5}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getReferences()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const/4 v3, 0x1

    if-ne v3, v0, :cond_2

    .line 336
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateBindAdapter()V

    goto :goto_0

    .line 338
    :cond_2
    const/4 v3, 0x2

    if-ne v3, v0, :cond_0

    .line 340
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v6, v4}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private onStartAnimation()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->startAnimation()V

    .line 423
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][onStartAnimation]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method private onStateAdapterCheck()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 215
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnySceneChangeHandler][onStateAdapterCheck]: null scene control"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-nez v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnySceneChangeHandler][onStateAdapterCheck]: null next scene"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_1
    const/4 v0, 0x0

    .line 230
    .local v0, adapterNext:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sceneAdapter(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v0

    .end local v0           #adapterNext:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    check-cast v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .restart local v0       #adapterNext:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    if-nez v0, :cond_3

    .line 232
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnySceneChangeHandler][onStateAdapterCheck]: onNewAdapter"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mNewAdapterLock:Z

    .line 234
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mBundle:Landroid/os/Bundle;

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onNewAdapter(Landroid/os/Bundle;)V

    .line 235
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureOnNewAdapter()Z

    move-result v1

    if-nez v1, :cond_2

    .line 237
    new-instance v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewAdapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_2
    const/16 v1, 0x16

    const/4 v2, 0x0

    const/16 v3, 0x4b0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 246
    :cond_3
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mAnimationLock:Z

    .line 254
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateAdapterReady()V

    goto :goto_0
.end method

.method private onStateBindAdapter()V
    .locals 5

    .prologue
    .line 350
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sceneAdapter(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 351
    .local v0, adapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    const/4 v1, 0x0

    .line 352
    .local v1, szException:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v2, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->setSecuredSetAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 354
    new-instance v2, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionInvalidSceneAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAdapter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionInvalidSceneAdapter;-><init>(Ljava/lang/String;)V

    throw v2

    .line 358
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBindAdapter()V

    .line 359
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureBindAdapter()Z

    move-result v2

    if-nez v2, :cond_1

    .line 361
    new-instance v2, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindAdapter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v2

    .line 375
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onCreateAnimation(Ljava/lang/Object;)V

    .line 378
    return-void
.end method

.method private onStateChangeStart()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 286
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][onStateChangeStart]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-nez v0, :cond_0

    .line 289
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPrepareAnimation(Ljava/lang/Object;)V

    .line 310
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-nez v0, :cond_1

    .line 293
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPrepareAnimation(Ljava/lang/Object;)V

    goto :goto_0

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getId()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 299
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPrepareAnimation(Ljava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    sget-object v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;->INCREMENT:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->updateSceneDepth(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;)V

    goto :goto_0

    .line 307
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPrepareAnimation(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onStateSceneChangeEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 536
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][onStateSceneChangeEnd]:... "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    if-eqz v0, :cond_1

    .line 540
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getSceneChangeType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 541
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    sget-object v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;->DECREMENT:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->updateSceneDepth(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;)V

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getSceneChangeType()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;->onSceneChangeEnd(I)V

    .line 545
    :cond_1
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mAnimationLock:Z

    .line 546
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mIsDisableAnimation:Z

    .line 547
    return-void
.end method

.method private onStateSendBackground()V
    .locals 7

    .prologue
    const/16 v6, 0x14

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 487
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-nez v1, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, szSceneIdentity:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnySceneChangeHandler][onStateSendBackground]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mBundle:Landroid/os/Bundle;

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 494
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureSendToBackground()Z

    move-result v1

    if-nez v1, :cond_2

    .line 496
    new-instance v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSendToBackground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v1

    .line 501
    :cond_2
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getSceneChangeType()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 503
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->isSceneForceClose()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 504
    invoke-virtual {p0, v6, v5, v4}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 507
    :cond_3
    const/16 v1, 0x15

    invoke-virtual {p0, v1, v5, v4}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 510
    :cond_4
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getSceneChangeType()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 512
    invoke-virtual {p0, v6, v5, v4}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private onStateSendForeground()V
    .locals 4

    .prologue
    .line 457
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-nez v1, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, szSceneIdentity:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnySceneChangeHandler][onStateSendForeground]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mBundle:Landroid/os/Bundle;

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 464
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureSendToForeground()Z

    move-result v1

    if-nez v1, :cond_2

    .line 466
    new-instance v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSendToForeground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v1

    .line 474
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getSceneChangeType()I

    move-result v1

    if-nez v1, :cond_3

    .line 477
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateSceneChangeEnd()V

    goto :goto_0

    .line 481
    :cond_3
    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private onStateUnbindAdapter()V
    .locals 4

    .prologue
    .line 517
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-nez v1, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, szSceneIdentity:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnySceneChangeHandler][onStateUnbindAdapter]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onUnbindAdapter()V

    .line 524
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureUnbindAdapter()Z

    move-result v1

    if-nez v1, :cond_2

    .line 526
    new-instance v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUnbindAdapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v1

    .line 531
    :cond_2
    const/16 v1, 0x15

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private onStateUnlockNewAdapter()V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][onStateUnlockNewAdapter]:... "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mNewAdapterLock:Z

    .line 553
    return-void
.end method


# virtual methods
.method public cancelSceneChange()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;->onSceneChangeCancelled()V

    goto :goto_0
.end method

.method public disableAnimation()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mIsDisableAnimation:Z

    .line 129
    return-void
.end method

.method public enableAnimationLock()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mAnimationLock:Z

    .line 175
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getNextScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    return-object v0
.end method

.method public getPreviousScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    return-object v0
.end method

.method public isSceneForceClose()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mIsSceneForceClose:Z

    return v0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 578
    const/4 v0, 0x0

    .line 579
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_0

    .line 629
    :goto_0
    return v0

    .line 582
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 585
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateAdapterCheck()V

    goto :goto_0

    .line 588
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateChangeStart()V

    goto :goto_0

    .line 591
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPrepareAnimation(Ljava/lang/Object;)V

    goto :goto_0

    .line 594
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateBindAdapter()V

    goto :goto_0

    .line 597
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onCreateAnimation(Ljava/lang/Object;)V

    goto :goto_0

    .line 600
    :pswitch_5
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPlayAnimation()V

    goto :goto_0

    .line 603
    :pswitch_6
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStartAnimation()V

    goto :goto_0

    .line 606
    :pswitch_7
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onExitAnimation()V

    goto :goto_0

    .line 609
    :pswitch_8
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateSendForeground()V

    goto :goto_0

    .line 612
    :pswitch_9
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateSendBackground()V

    goto :goto_0

    .line 615
    :pswitch_a
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateUnbindAdapter()V

    goto :goto_0

    .line 618
    :pswitch_b
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateSceneChangeEnd()V

    goto :goto_0

    .line 621
    :pswitch_c
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateUnlockNewAdapter()V

    goto :goto_0

    .line 624
    :pswitch_d
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateAdapterReady()V

    goto :goto_0

    .line 582
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 634
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 637
    :cond_0
    return-void
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 641
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 643
    :cond_0
    return-void
.end method

.method public onStateAdapterReady()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][onStateAdapterReady]:... "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mNewAdapterLock:Z

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mAnimationLock:Z

    .line 275
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-nez v0, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateUnlockNewAdapter()V

    .line 281
    :goto_0
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateChangeStart()V

    .line 282
    return-void

    .line 279
    :cond_0
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onRemoveMessage(I)V

    goto :goto_0
.end method

.method public onStateAnimationReady()V
    .locals 4

    .prologue
    .line 406
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->decrement()V

    .line 407
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getReferences()I

    move-result v0

    .line 408
    .local v0, nReferences:I
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnySceneChangeHandler][onStateAnimationReady]: waiting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    if-nez v0, :cond_0

    .line 411
    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    .line 413
    :cond_0
    return-void
.end method

.method public prepareSceneChange(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Landroid/os/Bundle;Z)Z
    .locals 3
    .parameter "sceneControl"
    .parameter "sceneCurrent"
    .parameter "sceneNext"
    .parameter "bundle"
    .parameter "bIsFoceClose"

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, bResult:Z
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnySceneChangeHandler][prepareSceneChange]: begin"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_0
    iput-boolean p5, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mIsSceneForceClose:Z

    .line 140
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 141
    iput-object p2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 142
    iput-object p3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 143
    iput-object p4, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mBundle:Landroid/os/Bundle;

    .line 145
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;->onSceneChangeBegin()V

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->doSceneChange()V

    .line 149
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnySceneChangeHandler][prepareSceneChange]: end"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][reset]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 156
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    .line 157
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 158
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 159
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mBundle:Landroid/os/Bundle;

    .line 160
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mIsSceneForceClose:Z

    .line 161
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mNewAdapterLock:Z

    .line 162
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mAnimationLock:Z

    .line 163
    return-void
.end method

.method public sceneChangeEnterLock()I
    .locals 3

    .prologue
    .line 90
    const/16 v0, 0x514

    .line 94
    .local v0, nLock:I
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->isNewAdapterLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnySceneChangeHandler][sceneChangeEnterLock]: NewAdapterLocked! "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/16 v0, 0x515

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->isAnimationLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnySceneChangeHandler][sceneChangeEnterLock]: AnimationLocked! "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/16 v0, 0x516

    goto :goto_0
.end method

.method public sceneChangeInProgress()Z
    .locals 2

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    if-nez v1, :cond_0

    .line 113
    .end local v0           #bResult:Z
    :goto_0
    return v0

    .restart local v0       #bResult:Z
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;->isSceneChanging()Z

    move-result v0

    goto :goto_0
.end method

.method public setChangeListener(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    .line 87
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 568
    return-void
.end method
