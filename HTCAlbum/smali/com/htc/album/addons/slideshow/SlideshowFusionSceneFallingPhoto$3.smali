.class Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$3;
.super Ljava/lang/Object;
.source "SlideshowFusionSceneFallingPhoto.java"

# interfaces
.implements Lcom/htc/fusion/fx/FxRunAsync$IFxRunAsync;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->onGoPause()V
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
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 250
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mTableTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_2

    .line 252
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mTableTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 253
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 255
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v3, v3, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mTableTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v3

    iput v3, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mTableTimelineControlPausedFrame_L:F

    .line 267
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v2, 0x6

    if-ge v0, v2, :cond_4

    .line 269
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryPhotoItem:[Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryPhotoItem:[Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v2, :cond_3

    .line 271
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryPhotoItem:[Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 272
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryPhotoItem_ScenePausedFrame:[F

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v3, v3, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryPhotoItem:[Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/FxScene;->getFrame()F

    move-result v3

    aput v3, v2, v0

    .line 274
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryPhotoItem:[Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v3, "timeline.deform"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 275
    .local v1, mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 278
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryPhotoItem_Scene_Falling_PausedFrame:[F

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v3

    aput v3, v2, v0

    .line 267
    .end local v1           #mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 259
    .end local v0           #i:I
    :cond_1
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v3, v3, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mTableTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v3

    iput v3, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mTableTimelineControlPausedFrame_P:F

    goto :goto_0

    .line 264
    :cond_2
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][SlideshowFusionSceneFallingPhoto][onGoPause]mBackgroundTimeLineControl is null"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    .restart local v0       #i:I
    :cond_3
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusionSceneFallingPhoto][onGoPause]mForegroundTimelineControls["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 286
    :cond_4
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$3;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
