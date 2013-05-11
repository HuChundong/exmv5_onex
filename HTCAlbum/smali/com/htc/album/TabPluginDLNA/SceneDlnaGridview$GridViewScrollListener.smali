.class Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview$GridViewScrollListener;
.super Ljava/lang/Object;
.source "SceneDlnaGridview.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridViewScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;)V
    .locals 0
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview$GridViewScrollListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 468
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview$GridViewScrollListener;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;)V

    return-void
.end method


# virtual methods
.method public onScrollIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 481
    return-void
.end method

.method public onScrollStateChangedIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview$GridViewScrollListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;

    #calls: Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->onSceneScrollStateChangedIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;I)V
    invoke-static {v0, p1, p2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;->access$200(Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;Lcom/htc/sunnyCore/widget/gridview/GridView;I)V

    .line 475
    return-void
.end method
