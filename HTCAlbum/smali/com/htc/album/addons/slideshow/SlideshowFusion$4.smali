.class Lcom/htc/album/addons/slideshow/SlideshowFusion$4;
.super Ljava/lang/Object;
.source "SlideshowFusion.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/slideshow/SlideshowFusion;->addFxView()V
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
    .line 779
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$400(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$400(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusion;->mOrientation:I
    invoke-static {v1}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$500(Lcom/htc/album/addons/slideshow/SlideshowFusion;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->setOrientation(I)V

    .line 786
    :cond_0
    return-void
.end method
