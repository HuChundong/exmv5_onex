.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener$5;
.super Ljava/lang/Object;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->onAnimationBeginIRT()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;)V
    .locals 0
    .parameter

    .prologue
    .line 3264
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener$5;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3267
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener$5;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$4600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3269
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener$5;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$4600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->setAnimateBegin()V

    .line 3270
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener$5;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$4600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->doDispatch()V

    .line 3276
    :cond_0
    return-void
.end method
