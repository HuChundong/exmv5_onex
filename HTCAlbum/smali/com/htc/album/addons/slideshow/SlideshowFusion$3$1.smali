.class Lcom/htc/album/addons/slideshow/SlideshowFusion$3$1;
.super Ljava/lang/Object;
.source "SlideshowFusion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/slideshow/SlideshowFusion$3;->onDecodeComplete(ILcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/addons/slideshow/SlideshowFusion$3;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowFusion$3;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$3$1;->this$1:Lcom/htc/album/addons/slideshow/SlideshowFusion$3;

    iput p2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$3$1;->val$index:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 712
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$3$1;->this$1:Lcom/htc/album/addons/slideshow/SlideshowFusion$3;

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/SlideshowFusion$3;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    iget v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$3$1;->val$index:I

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->updateTitlebar(I)V

    .line 713
    return-void
.end method
