.class Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "FullScreenViewItemFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doFling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Fling"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "host"
    .parameter "name"

    .prologue
    .line 442
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    .line 443
    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$100(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 446
    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$100(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onFlingBeginIRT()V

    .line 448
    :cond_0
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 6
    .parameter "cancelReason"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$400(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$400(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$500(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)F

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$600(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)F

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$700(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)F

    move-result v3

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$800(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)F

    move-result v4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFFZ)V

    .line 479
    :cond_0
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 8
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    const/4 v5, 0x1

    .line 451
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->update()V

    .line 452
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getRelativeMovement()I

    move-result v6

    .line 453
    .local v6, relativeMovementX:I
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->update()V

    .line 454
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getRelativeMovement()I

    move-result v7

    .line 456
    .local v7, relativeMovementY:I
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    int-to-float v1, v6

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->moveImageByX(F)V

    .line 457
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    int-to-float v1, v7

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->moveImageByY(F)V

    .line 459
    if-nez v6, :cond_2

    if-nez v7, :cond_2

    .line 460
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$100(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$100(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onFlingEndIRT()V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$400(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$400(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$500(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)F

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$600(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)F

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$700(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)F

    move-result v3

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$800(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFFZ)V

    .line 468
    :cond_1
    const/4 v5, 0x0

    .line 470
    :cond_2
    return v5
.end method
