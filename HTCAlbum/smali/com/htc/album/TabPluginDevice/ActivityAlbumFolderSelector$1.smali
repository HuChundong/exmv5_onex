.class Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;
.super Ljava/lang/Object;
.source "ActivityAlbumFolderSelector.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 109
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->onListScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V

    .line 115
    return-void
.end method
