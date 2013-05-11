.class Lcom/htc/sunny2/fullfilmview/FullFilmView$4;
.super Lcom/htc/sunnyCore/RenderThreadEvent;
.source "FullFilmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;->purgeTextureMapsForMemory(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

.field final synthetic val$bNeedPurgeLQ:Z


# direct methods
.method constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 1954
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iput-boolean p4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;->val$bNeedPurgeLQ:Z

    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 1958
    return-void
.end method

.method public onProcessEventIRT()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1962
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$900(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunnyCore/Preparator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1974
    :goto_0
    return-void

    .line 1963
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;->val$bNeedPurgeLQ:Z

    if-eqz v0, :cond_2

    .line 1965
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$700(Lcom/htc/sunny2/fullfilmview/FullFilmView;)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$1200(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$600(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1967
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$600(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setCurrentItemIndex(I)Z

    .line 1968
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->switchViewState(IZ)V

    .line 1970
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$900(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunnyCore/Preparator;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->purgeTextureMap(I)V

    .line 1972
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$900(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunnyCore/Preparator;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->purgeTextureMapHQ(I)V

    .line 1973
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$900(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunnyCore/Preparator;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->purgeTextureEQ()V

    goto :goto_0
.end method
