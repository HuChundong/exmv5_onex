.class Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripPanAction"
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/Animator;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/Animator;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "host"
    .parameter "name"

    .prologue
    .line 750
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    .line 751
    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->count:I

    .line 752
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 785
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 6
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    const/4 v2, 0x0

    .line 757
    const/4 v1, 0x0

    .line 758
    .local v1, stop:Z
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$100(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$100(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-result-object v3

    sget-object v4, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-eq v3, v4, :cond_2

    .line 761
    :cond_0
    const/4 v1, 0x0

    .line 762
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripViewScrollStarted:Z
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$400(Lcom/htc/sunny2/fullfilmview/Animator;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripViewScrollListener:Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewScrollListener;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$500(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewScrollListener;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$100(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 764
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #setter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripViewScrollStarted:Z
    invoke-static {v3, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$402(Lcom/htc/sunny2/fullfilmview/Animator;Z)Z

    .line 765
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripViewScrollListener:Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewScrollListener;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$500(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewScrollListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewScrollListener;->onFilmStripViewScrollStops()V

    .line 779
    :cond_1
    :goto_0
    return v1

    .line 770
    :cond_2
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->count:I

    if-nez v3, :cond_3

    .line 771
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 772
    :cond_3
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->count:I

    .line 773
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$100(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->update()V

    .line 774
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$100(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->getRelativeMovement()I

    move-result v0

    .line 775
    .local v0, pos:I
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v5, "FullScreenViewAnimateToFilmstripViewAction"

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-virtual {v3, v0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->trackMotionScroll(IZ)V

    .line 776
    const/4 v1, 0x1

    goto :goto_0
.end method
