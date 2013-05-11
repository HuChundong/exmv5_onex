.class Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$4;
.super Ljava/lang/Object;
.source "SlideshowFusionSceneFallingPhoto.java"

# interfaces
.implements Lcom/htc/fusion/fx/FxRunAsync$IFxRunAsync;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->onGoNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/fusion/fx/FxRunAsync$IFxRunAsync",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryPhotoItem:[Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget v1, v1, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->bindScene()V

    .line 313
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget v1, v1, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x6

    iput v1, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mIndex:I

    .line 314
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$4;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
