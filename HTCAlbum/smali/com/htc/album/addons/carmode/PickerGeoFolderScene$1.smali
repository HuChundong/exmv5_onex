.class Lcom/htc/album/addons/carmode/PickerGeoFolderScene$1;
.super Ljava/lang/Object;
.source "PickerGeoFolderScene.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/carmode/PickerGeoFolderScene;->onCreateItemPrototype(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/carmode/PickerGeoFolderScene;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/carmode/PickerGeoFolderScene;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/htc/album/addons/carmode/PickerGeoFolderScene$1;->this$0:Lcom/htc/album/addons/carmode/PickerGeoFolderScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemBindMediaDataIRT(ILcom/htc/sunnyCore/widget/gridview/GridViewItem;Lcom/htc/sunnyCore/IMediaData;)V
    .locals 0
    .parameter "dataIndex"
    .parameter "gridViewItem"
    .parameter "mediaData"

    .prologue
    .line 368
    return-void
.end method

.method public onItemUnbindMediaDataIRT(Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V
    .locals 1
    .parameter "gridViewItem"

    .prologue
    .line 374
    instance-of v0, p1, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    if-eqz v0, :cond_0

    .line 375
    check-cast p1, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    .end local p1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->workaround_SetBestIndicator(Z)V

    .line 377
    :cond_0
    return-void
.end method
