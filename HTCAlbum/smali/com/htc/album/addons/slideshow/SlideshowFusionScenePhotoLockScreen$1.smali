.class Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$1;
.super Lcom/htc/fusion/fx/MessageListener;
.source "SlideshowFusionScenePhotoLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/FxPlaybackInfo;",
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
    .line 53
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    .line 56
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][mBackgroundPlaybackCompleteListener][onMessageReceived] + , index = "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    const-string v1, "Build"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->playbackResult:I

    if-ne v0, v3, :cond_0

    .line 59
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][mBackgroundPlaybackCompleteListener][onMessageReceived]PLAYBACK_COMPLETED:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 61
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 62
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mBackgroundTimeLineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "behind_photo_loop"

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][mBackgroundPlaybackCompleteListener][onMessageReceived] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$1;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
