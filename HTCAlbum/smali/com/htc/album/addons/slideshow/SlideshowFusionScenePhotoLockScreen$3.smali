.class Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$3;
.super Lcom/htc/fusion/fx/MessageListener;
.source "SlideshowFusionScenePhotoLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->init(Landroid/app/Activity;Lcom/htc/fusion/fx/FxView;)V
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

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iput p2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$3;->val$index:I

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][mForegroundPlaybackCompleteListeners][onMessageReceived] + , index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$3;->val$index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget v0, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->playbackResult:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 170
    const-string v0, "mode10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][mForegroundPlaybackCompleteListeners]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$3;->val$index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][onMessageReceived]PLAYBACK_COMPLETED:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mIsForegroundTimelineControlBeingPlayed:[I

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$3;->val$index:I

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 172
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$3;->val$index:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->mForegroundDynamicImages:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$3;->val$index:I

    aget-object v1, v0, v1

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;->access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][mForegroundPlaybackCompleteListeners][onMessageReceived] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 164
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/addons/slideshow/SlideshowFusionScenePhotoLockScreen$3;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
