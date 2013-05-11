.class public Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;
.super Ljava/lang/Object;
.source "SunnySceneChangeAnimationHandler.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessenger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;
    }
.end annotation


# static fields
.field public static final SCENECHANGE_NEXT:I = 0x1

.field public static final SCENECHANGE_PREVIOUS:I = 0x2

.field public static final SCENECHANGE_PREVIOUS_ADAPTER:I = 0x3

.field public static final SCENECHANGE_START:I = 0x0

.field public static final SCENECHANGE_UNKNOWN:I = -0x1


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mAnimationListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;

.field private mAnimationReference:I

.field private mBundleIn:Landroid/os/Bundle;

.field private mBundleOut:Landroid/os/Bundle;

.field private mExistsAnimIn:Z

.field private mExistsAnimOut:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsSceneForceClose:Z

.field private mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

.field private mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

.field private mSceneChangeType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-class v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->LOG_TAG:Ljava/lang/String;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    .line 24
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    .line 25
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    .line 26
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleIn:Landroid/os/Bundle;

    .line 27
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleOut:Landroid/os/Bundle;

    .line 28
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mHandler:Landroid/os/Handler;

    .line 29
    iput v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationReference:I

    .line 30
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mIsSceneForceClose:Z

    .line 31
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;-><init>(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;

    .line 32
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimIn:Z

    .line 33
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimOut:Z

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getAnimationInState(I)I
    .locals 2
    .parameter "nSceneChangeType"

    .prologue
    .line 108
    const/4 v0, -0x1

    .line 110
    .local v0, nAnimationState:I
    if-nez p1, :cond_1

    .line 111
    const/4 v0, 0x0

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    const/4 v1, 0x1

    if-ne v1, p1, :cond_2

    .line 113
    const/4 v0, 0x0

    goto :goto_0

    .line 114
    :cond_2
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 115
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getAnimationOutState(I)I
    .locals 2
    .parameter "nSceneChangeType"

    .prologue
    .line 121
    const/4 v0, -0x1

    .line 123
    .local v0, nAnimationState:I
    const/4 v1, 0x1

    if-ne v1, p1, :cond_2

    .line 128
    iget-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mIsSceneForceClose:Z

    if-eqz v1, :cond_1

    .line 129
    const/4 v0, 0x2

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    .line 133
    :cond_2
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 135
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private increment()V
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationReference:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationReference:I

    .line 93
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 255
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    .line 256
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    .line 257
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    .line 258
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleIn:Landroid/os/Bundle;

    .line 259
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleOut:Landroid/os/Bundle;

    .line 260
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mHandler:Landroid/os/Handler;

    .line 261
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->setHandler(Landroid/os/Handler;)V

    .line 262
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;->reset()V

    .line 263
    iput v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationReference:I

    .line 264
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mIsSceneForceClose:Z

    .line 265
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimIn:Z

    .line 266
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimOut:Z

    .line 267
    return-void
.end method


# virtual methods
.method public createAnimation(Landroid/os/Handler;)V
    .locals 4
    .parameter "handler"

    .prologue
    const/4 v3, 0x1

    .line 174
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->setHandler(Landroid/os/Handler;)V

    .line 176
    iget v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    invoke-direct {p0, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getAnimationInState(I)I

    move-result v0

    .line 177
    .local v0, nAnimationInState:I
    iget v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    invoke-direct {p0, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getAnimationOutState(I)I

    move-result v1

    .line 179
    .local v1, nAnimationOutState:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimOut:Z

    if-ne v3, v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleOut:Landroid/os/Bundle;

    .line 182
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->isSecureAnimationCreate()Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    new-instance v2, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;

    const-string v3, "onCreateAnimation out"

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v2

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimIn:Z

    if-ne v3, v2, :cond_1

    .line 189
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleIn:Landroid/os/Bundle;

    .line 190
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->isSecureAnimationCreate()Z

    move-result v2

    if-nez v2, :cond_1

    .line 192
    new-instance v2, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;

    const-string v3, "onCreateAnimation in"

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    :cond_1
    return-void
.end method

.method public decrement()V
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationReference:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationReference:I

    .line 97
    return-void
.end method

.method public endAnimation()V
    .locals 4

    .prologue
    .line 232
    iget v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    invoke-direct {p0, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getAnimationInState(I)I

    move-result v0

    .line 233
    .local v0, nAnimationInState:I
    iget v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    invoke-direct {p0, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getAnimationOutState(I)I

    move-result v1

    .line 235
    .local v1, nAnimationOutState:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onAnimationEnd(I)V

    .line 238
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->isSecureAnimationEnd()Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    new-instance v2, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;

    const-string v3, "onAnimationEnd out"

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v2

    .line 243
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v2, :cond_1

    .line 245
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onAnimationEnd(I)V

    .line 246
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->isSecureAnimationEnd()Z

    move-result v2

    if-nez v2, :cond_1

    .line 248
    new-instance v2, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;

    const-string v3, "onAnimationEnd in"

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v2

    .line 251
    :cond_1
    return-void
.end method

.method public getReferences()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationReference:I

    return v0
.end method

.method public getSceneChangeType()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    return v0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 290
    :cond_0
    return-void
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 296
    :cond_0
    return-void
.end method

.method public playAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 199
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimOut:Z

    if-ne v4, v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleIn:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleOut:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 202
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->isSecureAnimationPlay()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;

    const-string v1, "onPlayAnimation out"

    invoke-direct {v0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimIn:Z

    if-ne v4, v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleIn:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleOut:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 210
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->isSecureAnimationPlay()Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;

    const-string v1, "onPlayAnimation in"

    invoke-direct {v0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1
    return-void
.end method

.method public prepareSceneAnimation(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;IZ)V
    .locals 4
    .parameter "animIn"
    .parameter "animOut"
    .parameter "nSceneChangeType"
    .parameter "bIsForceClose"

    .prologue
    const/4 v3, 0x1

    .line 141
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->reset()V

    .line 143
    check-cast p1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    .end local p1
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    .line 144
    check-cast p2, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    .end local p2
    iput-object p2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    .line 145
    iput p3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    .line 146
    iput-boolean p4, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mIsSceneForceClose:Z

    .line 147
    invoke-direct {p0, p3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getAnimationInState(I)I

    move-result v0

    .line 148
    .local v0, nAnimationInState:I
    invoke-direct {p0, p3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getAnimationOutState(I)I

    move-result v1

    .line 150
    .local v1, nAnimationOutState:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onPrepareAnimation(I)Z

    move-result v2

    if-ne v3, v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->isSecureAnimationPrepare()Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    new-instance v2, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;

    const-string v3, "onPrepareAnimation out"

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :cond_0
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimOut:Z

    .line 157
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;->increment()V

    .line 158
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->increment()V

    .line 160
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onPrepareAnimation(I)Z

    move-result v2

    if-ne v3, v2, :cond_3

    .line 162
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->isSecureAnimationPrepare()Z

    move-result v2

    if-nez v2, :cond_2

    .line 164
    new-instance v2, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;

    const-string v3, "onPrepareAnimation in"

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v2

    .line 166
    :cond_2
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimIn:Z

    .line 167
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;->increment()V

    .line 168
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->increment()V

    .line 171
    :cond_3
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mHandler:Landroid/os/Handler;

    .line 277
    return-void
.end method

.method public startAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 218
    iget v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    invoke-direct {p0, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getAnimationInState(I)I

    move-result v0

    .line 219
    .local v0, nAnimationInState:I
    iget v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    invoke-direct {p0, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getAnimationOutState(I)I

    move-result v1

    .line 221
    .local v1, nAnimationOutState:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimOut:Z

    if-ne v3, v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onStartAnimation(I)V

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimIn:Z

    if-ne v3, v2, :cond_1

    .line 227
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onStartAnimation(I)V

    .line 229
    :cond_1
    return-void
.end method
