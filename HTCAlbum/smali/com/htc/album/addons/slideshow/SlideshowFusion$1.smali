.class Lcom/htc/album/addons/slideshow/SlideshowFusion$1;
.super Ljava/lang/Object;
.source "SlideshowFusion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/SlideshowFusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 71
    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][mRunnableNext][run] + "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    iget-boolean v0, v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mStopAndLeave:Z

    if-eqz v0, :cond_2

    .line 90
    :cond_1
    :goto_0
    return-void

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    iget-boolean v0, v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mRepeat:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->getCurrentIndex()I

    move-result v0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    iget-object v1, v1, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_3

    .line 78
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    .line 79
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->onControlbarPause()V

    .line 80
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #setter for: Lcom/htc/album/addons/slideshow/SlideshowFusion;->mPausedByNoRepeat:Z
    invoke-static {v0, v2}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$002(Lcom/htc/album/addons/slideshow/SlideshowFusion;Z)Z

    .line 81
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #calls: Lcom/htc/album/addons/slideshow/SlideshowFusion;->loadNextImage()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$100(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    .line 82
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-virtual {v0, v2}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->showControlBar(Z)V

    .line 89
    :goto_1
    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][mRunnableNext][run] - "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #calls: Lcom/htc/album/addons/slideshow/SlideshowFusion;->loadNextImage()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$100(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    goto :goto_1
.end method
