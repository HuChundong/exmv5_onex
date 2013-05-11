.class Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$4;
.super Ljava/lang/Object;
.source "SlideshowFusionScenePhotoLockScreen.java"

# interfaces
.implements Lcom/htc/fusion/fx/FxRunAsync$IFxRunAsync;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->onGoPlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/fusion/fx/FxRunAsync$IFxRunAsync",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 256
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget-object v1, v1, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_2

    .line 258
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onGoPlay]mBuildComplete = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget-boolean v3, v3, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBuildComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget-boolean v1, v1, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBuildComplete:Z

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget-object v1, v1, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "behind_photo_loop"

    invoke-virtual {v1, v2, v4, v6, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget-object v1, v1, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControlPausedFrame:F

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 275
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_5

    .line 277
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget-object v1, v1, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    .line 279
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget-object v1, v1, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsForegroundTimelineControlBeingPlayed:[I

    aget v1, v1, v0

    if-ne v1, v4, :cond_3

    .line 281
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget-object v1, v1, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v1, v1, v0

    const-string v2, "fly_in"

    invoke-virtual {v1, v2, v5, v6, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 287
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget-object v1, v1, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimeLineControlPausedFrame:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 275
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 272
    .end local v0           #i:I
    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onGoPlay]mBackgroundTimeLineControl is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    .restart local v0       #i:I
    :cond_3
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget-object v1, v1, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsForegroundTimelineControlBeingPlayed:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 285
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget-object v1, v1, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v1, v1, v0

    const-string v2, "fly_in"

    const/high16 v3, -0x4080

    invoke-virtual {v1, v2, v5, v3, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    goto :goto_2

    .line 291
    :cond_4
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onGoPlay]mForegroundTimelineControls["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 294
    :cond_5
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iput-boolean v4, v1, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsPlaying:Z

    .line 295
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$4;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
