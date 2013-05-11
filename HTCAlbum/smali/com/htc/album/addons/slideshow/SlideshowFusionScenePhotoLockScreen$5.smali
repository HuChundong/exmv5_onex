.class Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$5;
.super Ljava/lang/Object;
.source "SlideshowFusionScenePhotoLockScreen.java"

# interfaces
.implements Lcom/htc/fusion/fx/FxRunAsync$IFxRunAsync;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->onGoPause()V
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
    .line 312
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$5;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 316
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$5;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget-object v1, v1, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$5;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget-object v1, v1, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 319
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$5;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$5;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v2

    iput v2, v1, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControlPausedFrame:F

    .line 326
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    .line 328
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$5;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget-object v1, v1, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 330
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$5;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget-object v1, v1, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 331
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$5;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget-object v1, v1, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimeLineControlPausedFrame:[F

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$5;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundTimelineControls:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v2

    aput v2, v1, v0

    .line 326
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 323
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$5;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onGoPause]mBackgroundTimeLineControl is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$5;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onGoPause]mForegroundTimelineControls["

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

    goto :goto_2

    .line 338
    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$5;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsPlaying:Z

    .line 339
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$5;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
