.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageAnimationListener;
.super Ljava/lang/Object;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 4405
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageAnimationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4405
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageAnimationListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    return-void
.end method


# virtual methods
.method public onAnimateBegin()V
    .locals 1

    .prologue
    .line 4409
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageAnimationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onAnimationBegin()V

    .line 4410
    return-void
.end method

.method public onAnimateEnd()V
    .locals 1

    .prologue
    .line 4413
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageAnimationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onAnimationEnd()V

    .line 4414
    return-void
.end method

.method public onAnimateEndSwitched()V
    .locals 1

    .prologue
    .line 4417
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageAnimationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onAnimationSwitched()V

    .line 4418
    return-void
.end method
