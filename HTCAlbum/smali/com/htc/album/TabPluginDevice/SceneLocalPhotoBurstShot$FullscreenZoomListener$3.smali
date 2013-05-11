.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener$3;
.super Ljava/lang/Object;
.source "SceneLocalPhotoBurstShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->onAnimationBeginIRT()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1562
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener$3;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener$3;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$2600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1567
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener$3;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$2600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->setAnimateBegin()V

    .line 1568
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener$3;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$2600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->doDispatch()V

    .line 1574
    :cond_0
    return-void
.end method
