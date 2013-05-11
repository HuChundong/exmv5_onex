.class Lcom/htc/album/TabPluginDevice/SceneLocalFolder$GridViewScrollListener;
.super Ljava/lang/Object;
.source "SceneLocalFolder.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridViewScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$GridViewScrollListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;Lcom/htc/album/TabPluginDevice/SceneLocalFolder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$GridViewScrollListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)V

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
    .line 134
    return-void
.end method

.method public onScrollStateChangedIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;I)V
    .locals 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$GridViewScrollListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    const/16 v1, 0x4f4f

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onPostMessage(ILjava/lang/Object;I)V

    .line 130
    return-void
.end method
