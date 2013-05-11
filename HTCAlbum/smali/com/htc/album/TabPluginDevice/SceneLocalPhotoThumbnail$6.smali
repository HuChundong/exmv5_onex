.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$6;
.super Ljava/lang/Object;
.source "SceneLocalPhotoThumbnail.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V
    .locals 0
    .parameter

    .prologue
    .line 2492
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$6;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemBindMediaDataIRT(ILcom/htc/sunnyCore/widget/gridview/GridViewItem;Lcom/htc/sunnyCore/IMediaData;)V
    .locals 5
    .parameter "dataIndex"
    .parameter "viewItem"
    .parameter "mediaData"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 2496
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$6;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    iget v1, v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    if-ne v1, v2, :cond_2

    .line 2497
    invoke-virtual {p2, v2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setStyle(I)V

    .line 2503
    :goto_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$6;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAnimation:Z
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$1100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, p2, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemPickerable;

    if-eqz v1, :cond_0

    .line 2504
    const/4 v0, 0x0

    .line 2505
    .local v0, isSelected:Z
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$6;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$1200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 2506
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$6;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$1200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 2507
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p2

    .line 2508
    check-cast v1, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemPickerable;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemPickerable;->setPicked(ZLcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 2510
    .end local v0           #isSelected:Z
    :cond_0
    instance-of v1, p2, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    if-eqz v1, :cond_1

    .line 2511
    check-cast p2, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    .end local p2
    invoke-virtual {p2, v4}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->workaround_SetBestIndicator(Z)V

    .line 2513
    :cond_1
    return-void

    .line 2500
    .restart local p2
    :cond_2
    invoke-virtual {p2, v4}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setStyle(I)V

    goto :goto_0

    .line 2507
    .restart local v0       #isSelected:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onItemUnbindMediaDataIRT(Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V
    .locals 0
    .parameter "viewItem"

    .prologue
    .line 2493
    return-void
.end method
