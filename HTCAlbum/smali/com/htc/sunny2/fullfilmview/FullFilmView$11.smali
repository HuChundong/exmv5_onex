.class Lcom/htc/sunny2/fullfilmview/FullFilmView$11;
.super Lcom/htc/sunnyCore/RenderThreadEvent;
.source "FullFilmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;->forceFilmstripViewAlign()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2729
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$11;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2734
    return-void
.end method

.method public onProcessEventIRT()V
    .locals 2

    .prologue
    .line 2739
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$11;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isAnimatingFilmFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$11;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$400(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2741
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$11;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->overrideDownTouchPosition()V

    .line 2742
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$11;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onHitTestUp(Z)V

    .line 2743
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$11;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$1500(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->resumeThread()V

    .line 2745
    :cond_0
    return-void
.end method
