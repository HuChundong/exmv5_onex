.class Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripViewScrollStateChangedListener;
.super Ljava/lang/Object;
.source "SceneDlnaFullscreenBase.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$OnFilmstripViewScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripViewScrollStateChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripViewScrollStateChangedListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripViewScrollStateChangedListener;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)V

    return-void
.end method


# virtual methods
.method public onFilmstripViewScrollStarts()V
    .locals 5

    .prologue
    .line 364
    const/4 v0, 0x1

    .line 365
    .local v0, scrollState:I
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripViewScrollStateChangedListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    const/16 v2, 0x4f50

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onPostMessage(ILjava/lang/Object;I)V

    .line 366
    return-void
.end method

.method public onFilmstripViewScrollStops()V
    .locals 5

    .prologue
    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, scrollState:I
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripViewScrollStateChangedListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    const/16 v2, 0x4f50

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onPostMessage(ILjava/lang/Object;I)V

    .line 372
    return-void
.end method
