.class final Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoPlayer"
.end annotation


# instance fields
.field private isVideoSelfEnded:Z

.field private mCachedPosition:I

.field private mCachedVolume:F

.field private mHTML5VideoView:Landroid/webkit/HTML5VideoView;

.field private mProxy:Landroid/webkit/HTML5VideoViewProxy;

.field final synthetic this$0:Landroid/webkit/HTML5VideoViewProxy;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter
    .parameter "proxy"

    .prologue
    .line 120
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    .line 110
    const/high16 v0, -0x4080

    iput v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCachedVolume:F

    .line 121
    iput-object p2, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 122
    return-void
.end method

.method static synthetic access$302(Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    return p1
.end method

.method static synthetic access$400(Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V

    return-void
.end method

.method private ensureHTML5VideoView(Ljava/lang/String;IZ)Z
    .locals 2
    .parameter "url"
    .parameter "time"
    .parameter "willPlay"

    .prologue
    .line 284
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Landroid/webkit/HTML5VideoView;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-direct {v0, v1, p2}, Landroid/webkit/HTML5VideoView;-><init>(Landroid/webkit/HTML5VideoViewProxy;I)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    .line 286
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p3}, Landroid/webkit/HTML5VideoView;->setStartWhenPrepared(Z)V

    .line 287
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p1}, Landroid/webkit/HTML5VideoView;->setVideoURI(Ljava/lang/String;)V

    .line 288
    const/4 v0, 0x1

    .line 290
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPlayerBuffering(Z)V
    .locals 1
    .parameter "playerBuffering"

    .prologue
    .line 116
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p1}, Landroid/webkit/HTML5VideoView;->setPlayerBuffering(Z)V

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method public end()V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 262
    invoke-static {}, Landroid/webkit/HTML5VideoFullscreen;->instance()Landroid/webkit/HTML5VideoFullscreen;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HTML5VideoFullscreen;->showMediaControls(Landroid/webkit/HTML5VideoViewProxy;Z)V

    .line 263
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_1

    .line 264
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnEnded()V

    .line 269
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    .line 270
    return-void

    .line 267
    :cond_2
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnPaused()V

    goto :goto_0
.end method

.method public enterFullscreenVideo(Ljava/lang/String;FFFF)V
    .locals 6
    .parameter "url"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 179
    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCachedPosition:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->ensureHTML5VideoView(Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->prepareDataAndDisplayMode()V

    .line 182
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    #getter for: Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v1}, Landroid/webkit/HTML5VideoViewProxy;->access$200(Landroid/webkit/HTML5VideoViewProxy;)Landroid/webkit/WebViewClassic;

    move-result-object v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/HTML5VideoView;->enterFullscreenVideoState(Landroid/webkit/WebViewClassic;FFFF)V

    .line 183
    return-void
.end method

.method public exitFullscreenVideo(FFFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 186
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/HTML5VideoView;->exitFullscreenVideoState(FFFF)V

    .line 189
    :cond_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, currentPosMs:I
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoView;->getCurrentPosition()I

    move-result v0

    .line 227
    :cond_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrepared()Z
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->getCurrentState()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, p1, v0, v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->ensureHTML5VideoView(Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->prepareDataAndDisplayMode()V

    .line 202
    :cond_0
    return-void
.end method

.method public loadMetadata(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 193
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->ensureHTML5VideoView(Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoView;->retrieveMetadata(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 196
    :cond_0
    return-void
.end method

.method public onEnterFullscreen()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->onEnterFullscreen()V

    .line 253
    :cond_0
    return-void
.end method

.method public onPrepared()V
    .locals 2

    .prologue
    .line 243
    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCachedVolume:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 244
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    iget v1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCachedVolume:F

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoView;->setVolume(F)V

    .line 245
    const/high16 v0, -0x4080

    iput v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCachedVolume:F

    .line 247
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->updateVideoLayerPlayerState()V

    .line 248
    return-void
.end method

.method public onStopFullscreen()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->onStopFullscreen()V

    .line 258
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->pause()V

    .line 240
    :cond_0
    return-void
.end method

.method public play(Ljava/lang/String;I)V
    .locals 2
    .parameter "url"
    .parameter "time"

    .prologue
    const/4 v1, 0x1

    .line 205
    invoke-direct {p0, p1, p2, v1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->ensureHTML5VideoView(Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->getCurrentState()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 207
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->prepareDataAndDisplayMode()V

    .line 208
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p2}, Landroid/webkit/HTML5VideoView;->seekTo(I)V

    .line 216
    :cond_1
    :goto_0
    return-void

    .line 211
    :cond_2
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->start()V

    .line 213
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->updateVideoLayerPlayerState()V

    goto :goto_0
.end method

.method public seek(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 231
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p1}, Landroid/webkit/HTML5VideoView;->seekTo(I)V

    .line 234
    :cond_0
    return-void
.end method

.method public setBaseLayer(I)V
    .locals 6
    .parameter "layer"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 134
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->attachInlineGlContextIfNeeded()V

    .line 136
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->getCurrentState()I

    move-result v4

    .line 137
    .local v4, playerState:I
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->isInlineVideoConfigured()Z

    move-result v0

    if-nez v0, :cond_2

    .line 138
    const/4 v4, 0x6

    .line 142
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    #getter for: Landroid/webkit/HTML5VideoViewProxy;->mVideoLayerId:I
    invoke-static {v1}, Landroid/webkit/HTML5VideoViewProxy;->access$000(Landroid/webkit/HTML5VideoViewProxy;)I

    move-result v2

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoView;->getTextureName()I

    move-result v3

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v5, v1, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    move v1, p1

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIIII)Z
    invoke-static/range {v0 .. v5}, Landroid/webkit/HTML5VideoViewProxy;->access$100(Landroid/graphics/SurfaceTexture;IIIII)Z

    .line 146
    .end local v4           #playerState:I
    :cond_1
    return-void

    .line 139
    .restart local v4       #playerState:I
    :cond_2
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->getPlayerBuffering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const/4 v4, 0x5

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 1
    .parameter "volume"

    .prologue
    .line 273
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p1}, Landroid/webkit/HTML5VideoView;->setVolume(F)V

    .line 275
    const/high16 v0, -0x4080

    iput v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCachedVolume:F

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    iput p1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCachedVolume:F

    goto :goto_0
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->pause()V

    .line 166
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCachedPosition:I

    .line 167
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->release()V

    .line 168
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->updateVideoLayerPlayerState()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    .line 174
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->end()V

    .line 176
    :cond_0
    return-void
.end method

.method public updateVideoLayerPlayerState()V
    .locals 6

    .prologue
    .line 150
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->getCurrentState()I

    move-result v4

    .line 152
    .local v4, playerState:I
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->isInlineVideoConfigured()Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    const/4 v4, 0x6

    .line 157
    :cond_0
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    #getter for: Landroid/webkit/HTML5VideoViewProxy;->mVideoLayerId:I
    invoke-static {v2}, Landroid/webkit/HTML5VideoViewProxy;->access$000(Landroid/webkit/HTML5VideoViewProxy;)I

    move-result v2

    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v3}, Landroid/webkit/HTML5VideoView;->getTextureName()I

    move-result v3

    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v5, v5, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIIII)Z
    invoke-static/range {v0 .. v5}, Landroid/webkit/HTML5VideoViewProxy;->access$100(Landroid/graphics/SurfaceTexture;IIIII)Z

    .line 161
    .end local v4           #playerState:I
    :cond_1
    return-void

    .line 154
    .restart local v4       #playerState:I
    :cond_2
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->getPlayerBuffering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const/4 v4, 0x5

    goto :goto_0
.end method
