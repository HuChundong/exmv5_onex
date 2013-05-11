.class Lcom/htc/album/addons/slideshow/SlideshowFusion$2;
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
    .line 94
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 97
    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][mRunnablePrev][run] + "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    iget-boolean v0, v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mStopAndLeave:Z

    if-eqz v0, :cond_2

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #calls: Lcom/htc/album/addons/slideshow/SlideshowFusion;->loadPreviousImage()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$200(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V

    .line 103
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    iget-boolean v0, v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    if-eqz v0, :cond_3

    .line 105
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    iget v1, v1, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideshowInterval:I

    int-to-long v1, v1

    const/4 v3, 0x1

    #calls: Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$300(Lcom/htc/album/addons/slideshow/SlideshowFusion;JZ)V

    .line 107
    :cond_3
    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SlideshowFusion][mRunnablePrev][run] - "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
