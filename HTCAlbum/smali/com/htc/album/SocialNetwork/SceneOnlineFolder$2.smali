.class Lcom/htc/album/SocialNetwork/SceneOnlineFolder$2;
.super Ljava/lang/Object;
.source "SceneOnlineFolder.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onCreateItemPrototype(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlineFolder;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;)V
    .locals 0
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$2;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlineFolder;

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
    .line 496
    return-void
.end method

.method public onItemUnbindMediaDataIRT(Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V
    .locals 0
    .parameter "gridViewItem"

    .prologue
    .line 503
    return-void
.end method
