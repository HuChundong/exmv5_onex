.class Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$1;
.super Lcom/htc/fusion/fx/MessageListener;
.source "SlideshowFusionSceneFallingPhoto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;",
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
    .line 63
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 67
    iget v0, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->event:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 70
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->updateControlBar()V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget v0, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->event:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 79
    iget v0, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->event:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$1;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;)V

    return-void
.end method
