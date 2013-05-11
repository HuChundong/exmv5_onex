.class Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripAlignAction"
.end annotation


# instance fields
.field count:I

.field delayCount:I

.field needGoFullscreen:Z

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/Animator;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/Animator;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "host"
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 340
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    .line 341
    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->count:I

    .line 336
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->delayCount:I

    .line 337
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->needGoFullscreen:Z

    .line 342
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/Animator;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "host"
    .parameter "name"
    .parameter "needGoFullscreen"

    .prologue
    const/4 v0, 0x0

    .line 345
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    .line 346
    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->count:I

    .line 336
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->delayCount:I

    .line 337
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->needGoFullscreen:Z

    .line 347
    iput-boolean p4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->needGoFullscreen:Z

    .line 348
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 391
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 9
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 352
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v6

    if-nez v6, :cond_0

    .line 388
    :goto_0
    return v5

    .line 354
    :cond_0
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/Animator;->access$100(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->update()V

    .line 355
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/Animator;->access$100(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->getRelativeMovement()I

    move-result v1

    .line 356
    .local v1, pos:I
    if-eqz v1, :cond_5

    move v0, v4

    .line 357
    .local v0, play:Z
    :goto_1
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->needGoFullscreen:Z

    if-eqz v6, :cond_6

    move v3, v4

    .line 358
    .local v3, shouldDoATransition:I
    :goto_2
    if-eqz v0, :cond_7

    .line 360
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v6

    invoke-virtual {v6, v1, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->trackMotionScroll(IZ)V

    .line 361
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->count:I

    if-nez v6, :cond_1

    .line 362
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v7}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 364
    :cond_1
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->count:I

    .line 382
    :cond_2
    :goto_3
    if-nez v0, :cond_3

    if-nez v3, :cond_9

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFullscreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/Animator;->access$300(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    move-result-object v6

    if-eqz v6, :cond_9

    :cond_3
    move v2, v4

    .line 383
    .local v2, ret:Z
    :goto_4
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripViewScrollStarted:Z
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$400(Lcom/htc/sunny2/fullfilmview/Animator;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v2, :cond_4

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripViewScrollListener:Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewScrollListener;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$500(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewScrollListener;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 385
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #setter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripViewScrollStarted:Z
    invoke-static {v4, v5}, Lcom/htc/sunny2/fullfilmview/Animator;->access$402(Lcom/htc/sunny2/fullfilmview/Animator;Z)Z

    .line 386
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripViewScrollListener:Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewScrollListener;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$500(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewScrollListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewScrollListener;->onFilmStripViewScrollStops()V

    :cond_4
    move v5, v2

    .line 388
    goto :goto_0

    .end local v0           #play:Z
    .end local v2           #ret:Z
    .end local v3           #shouldDoATransition:I
    :cond_5
    move v0, v5

    .line 356
    goto :goto_1

    .restart local v0       #play:Z
    :cond_6
    move v3, v4

    .line 357
    goto :goto_2

    .line 368
    .restart local v3       #shouldDoATransition:I
    :cond_7
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFullscreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/Animator;->access$300(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 369
    if-eqz v3, :cond_8

    .line 370
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->needGoFullscreen:Z

    if-eqz v6, :cond_8

    .line 372
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Lcom/htc/sunny2/fullfilmview/Animator;->doTransition(ILandroid/os/Bundle;)V

    .line 375
    :cond_8
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->delayCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->delayCount:I

    goto :goto_3

    :cond_9
    move v2, v5

    .line 382
    goto :goto_4
.end method
