.class Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ViewScrollStateChangedListener;
.super Ljava/lang/Object;
.source "DMCBaseScene.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/DMCBaseScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewScrollStateChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)V
    .locals 0
    .parameter

    .prologue
    .line 1487
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ViewScrollStateChangedListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.ViewScrollStateChangedListener;"
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ViewScrollStateChangedListener;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;Lcom/htc/album/TabPluginDLNA/DMCBaseScene$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1487
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ViewScrollStateChangedListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.ViewScrollStateChangedListener;"
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ViewScrollStateChangedListener;-><init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V
    .locals 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1498
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ViewScrollStateChangedListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.ViewScrollStateChangedListener;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ViewScrollStateChangedListener;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    #getter for: Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMainView:Lcom/htc/sunnyCore/view/SView;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->access$800(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)Lcom/htc/sunnyCore/view/SView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ViewScrollStateChangedListener;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    #getter for: Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->access$900(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1504
    :cond_0
    :goto_0
    return-void

    .line 1501
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ViewScrollStateChangedListener;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    const/16 v1, 0x4f4f

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method
