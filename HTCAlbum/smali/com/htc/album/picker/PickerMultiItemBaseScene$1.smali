.class Lcom/htc/album/picker/PickerMultiItemBaseScene$1;
.super Ljava/lang/Object;
.source "PickerMultiItemBaseScene.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/picker/PickerMultiItemBaseScene;->onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/picker/PickerMultiItemBaseScene;


# direct methods
.method constructor <init>(Lcom/htc/album/picker/PickerMultiItemBaseScene;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene$1;->this$0:Lcom/htc/album/picker/PickerMultiItemBaseScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemBindMediaDataIRT(ILcom/htc/sunnyCore/widget/gridview/GridViewItem;Lcom/htc/sunnyCore/IMediaData;)V
    .locals 6
    .parameter "dataIndex"
    .parameter "viewItem"
    .parameter "mediaData"

    .prologue
    .line 68
    :try_start_0
    iget-object v3, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene$1;->this$0:Lcom/htc/album/picker/PickerMultiItemBaseScene;

    invoke-virtual {v3, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->isItemPicked(I)Z

    move-result v2

    .line 69
    .local v2, isSelected:Z
    instance-of v3, p2, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemPickerable;

    if-eqz v3, :cond_0

    .line 70
    move-object v0, p2

    check-cast v0, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemPickerable;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemPickerable;->setPicked(ZLcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 73
    :cond_0
    instance-of v3, p2, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    const-string v5, "com.htc.HTCAlbum.BURST_SHOTS"

    iget-object v3, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene$1;->this$0:Lcom/htc/album/picker/PickerMultiItemBaseScene;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v3}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->access$000(Lcom/htc/album/picker/PickerMultiItemBaseScene;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v4, v3, :cond_1

    .line 75
    move-object v0, p2

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->workaround_SetBurstIndicator(Z)V

    .line 77
    :cond_1
    instance-of v3, p2, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    if-eqz v3, :cond_2

    .line 78
    check-cast p2, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    .end local p2
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->workaround_SetBestIndicator(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v2           #isSelected:Z
    :cond_2
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onItemUnbindMediaDataIRT(Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V
    .locals 0
    .parameter "viewItem"

    .prologue
    .line 64
    return-void
.end method
