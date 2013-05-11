.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PaintDrawListener;
.super Ljava/lang/Object;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaintDrawListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 4467
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PaintDrawListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4467
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PaintDrawListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    return-void
.end method


# virtual methods
.method public onCacheStateChanged(II)V
    .locals 1
    .parameter "stateBefore"
    .parameter "stateAfter"

    .prologue
    .line 4471
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PaintDrawListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onHandleCacheStateChanged(II)V
    invoke-static {v0, p1, p2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$9800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;II)V

    .line 4472
    return-void
.end method
