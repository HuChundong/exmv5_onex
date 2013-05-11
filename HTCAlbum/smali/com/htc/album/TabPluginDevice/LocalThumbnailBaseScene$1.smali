.class Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$1;
.super Ljava/lang/Object;
.source "LocalThumbnailBaseScene.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$1;->this$0:Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClickIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/view/SView;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "index"
    .parameter "id"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$1;->this$0:Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;

    invoke-virtual {v0, p2, p3}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onItemClickIRT(Lcom/htc/sunnyCore/view/SView;I)V

    .line 51
    return-void
.end method
