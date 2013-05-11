.class Lcom/htc/album/addons/slideshow/SlideShow$2;
.super Ljava/lang/Object;
.source "SlideShow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/SlideShow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideShow;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideShow;)V
    .locals 0
    .parameter

    .prologue
    .line 896
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShow$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    iget-boolean v0, v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mStopAndLeave:Z

    if-eqz v0, :cond_0

    .line 912
    :goto_0
    return-void

    .line 899
    :cond_0
    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 900
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideShow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mNextImagerunnable called"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    iget-boolean v0, v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mRepeat:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideShow;->getCurrentIndex()I

    move-result v0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    iget-object v1, v1, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    .line 903
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    .line 904
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideShow;->onControlbarPause()V

    .line 905
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    #calls: Lcom/htc/album/addons/slideshow/SlideShow;->loadNextImage()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideShow;->access$000(Lcom/htc/album/addons/slideshow/SlideShow;)V

    .line 906
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V

    goto :goto_0

    .line 910
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    #calls: Lcom/htc/album/addons/slideshow/SlideShow;->loadNextImage()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideShow;->access$000(Lcom/htc/album/addons/slideshow/SlideShow;)V

    goto :goto_0
.end method
