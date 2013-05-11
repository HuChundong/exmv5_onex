.class Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;
.super Ljava/lang/Object;
.source "DMCBaseScene.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/DMCBaseScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullscreenZoomListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)V
    .locals 0
    .parameter

    .prologue
    .line 1397
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.FullscreenZoomListener;"
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;Lcom/htc/album/TabPluginDLNA/DMCBaseScene$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1397
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.FullscreenZoomListener;"
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;-><init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)V

    return-void
.end method


# virtual methods
.method public onAlignBeginIRT()V
    .locals 0

    .prologue
    .line 1458
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.FullscreenZoomListener;"
    return-void
.end method

.method public onAlignEndIRT()V
    .locals 0

    .prologue
    .line 1464
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.FullscreenZoomListener;"
    return-void
.end method

.method public onAnimationBeginIRT()V
    .locals 0

    .prologue
    .line 1422
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.FullscreenZoomListener;"
    return-void
.end method

.method public onAnimationEndIRT()V
    .locals 0

    .prologue
    .line 1428
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.FullscreenZoomListener;"
    return-void
.end method

.method public onEnterImageIRT(I)V
    .locals 1
    .parameter "itemIndex"

    .prologue
    .line 1404
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.FullscreenZoomListener;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    #getter for: Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->access$700(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    #getter for: Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->access$700(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    if-eqz v0, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    #getter for: Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->access$700(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->resetStopHQDecodeSincePurge()V

    .line 1409
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->requestPlay()V

    .line 1410
    return-void
.end method

.method public onFlingBeginIRT()V
    .locals 0

    .prologue
    .line 1470
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.FullscreenZoomListener;"
    return-void
.end method

.method public onFlingEndIRT()V
    .locals 0

    .prologue
    .line 1476
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.FullscreenZoomListener;"
    return-void
.end method

.method public onImageBoundsUpdateIRT(IIIIIF)V
    .locals 0
    .parameter "itemIndex"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "zoomFactor"

    .prologue
    .line 1483
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.FullscreenZoomListener;"
    return-void
.end method

.method public onLeaveImageIRT()V
    .locals 0

    .prologue
    .line 1416
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.FullscreenZoomListener;"
    return-void
.end method

.method public onPanBeginIRT()V
    .locals 0

    .prologue
    .line 1446
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.FullscreenZoomListener;"
    return-void
.end method

.method public onPanEndIRT()V
    .locals 0

    .prologue
    .line 1452
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.FullscreenZoomListener;"
    return-void
.end method

.method public onZoomBeginIRT()V
    .locals 0

    .prologue
    .line 1434
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.FullscreenZoomListener;"
    return-void
.end method

.method public onZoomEndIRT()V
    .locals 0

    .prologue
    .line 1440
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.FullscreenZoomListener;"
    return-void
.end method
