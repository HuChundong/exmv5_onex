.class Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;
.super Lcom/htc/sunnyCore/RenderThreadEvent;
.source "FullFilmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetSelection"
.end annotation


# instance fields
.field mPosition:I

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V
    .locals 1
    .parameter
    .parameter "position"

    .prologue
    .line 1292
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 1293
    const-string v0, "SetSelection"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunnyCore/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1291
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->mPosition:I

    .line 1294
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->mPosition:I

    .line 1295
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 1322
    return-void
.end method

.method public onProcessEventIRT()V
    .locals 3

    .prologue
    .line 1302
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$600(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1303
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$600(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setCurrentItemIndex(I)Z

    .line 1309
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->requestLayout()V

    .line 1311
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$400(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1313
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1314
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "offset_distance"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1315
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$500(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/Animator;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/htc/sunny2/fullfilmview/Animator;->doTransition(ILandroid/os/Bundle;)V

    .line 1317
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    return-void

    .line 1304
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v1, :cond_0

    .line 1305
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSelection(I)V

    goto :goto_0
.end method

.method public onRemovedIRT()V
    .locals 1

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #calls: Lcom/htc/sunny2/fullfilmview/FullFilmView;->RecycleSetSelection(Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;)V
    invoke-static {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$800(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;)V

    .line 1327
    return-void
.end method

.method public reset(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const-string v1, "SetSelection"

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->reset(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1298
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->mPosition:I

    .line 1299
    return-void
.end method
