.class Lcom/htc/album/TabPluginDevice/SceneLocalFolder$4;
.super Ljava/lang/Object;
.source "SceneLocalFolder.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onCreateItemPrototype(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)V
    .locals 0
    .parameter

    .prologue
    .line 626
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$4;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

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
    .line 631
    return-void
.end method

.method public onItemUnbindMediaDataIRT(Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V
    .locals 0
    .parameter "gridViewItem"

    .prologue
    .line 637
    return-void
.end method
