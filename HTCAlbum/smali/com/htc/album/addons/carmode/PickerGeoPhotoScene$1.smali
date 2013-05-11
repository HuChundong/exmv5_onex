.class Lcom/htc/album/addons/carmode/PickerGeoPhotoScene$1;
.super Ljava/lang/Object;
.source "PickerGeoPhotoScene.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/carmode/PickerGeoPhotoScene;->onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/carmode/PickerGeoPhotoScene;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/carmode/PickerGeoPhotoScene;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/htc/album/addons/carmode/PickerGeoPhotoScene$1;->this$0:Lcom/htc/album/addons/carmode/PickerGeoPhotoScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemBindMediaDataIRT(ILcom/htc/sunnyCore/widget/gridview/GridViewItem;Lcom/htc/sunnyCore/IMediaData;)V
    .locals 1
    .parameter "dataIndex"
    .parameter "viewItem"
    .parameter "mediaData"

    .prologue
    .line 130
    instance-of v0, p2, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    if-eqz v0, :cond_0

    .line 131
    check-cast p2, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    .end local p2
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->workaround_SetBestIndicator(Z)V

    .line 133
    :cond_0
    return-void
.end method

.method public onItemUnbindMediaDataIRT(Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V
    .locals 0
    .parameter "viewItem"

    .prologue
    .line 127
    return-void
.end method
