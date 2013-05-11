.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnShareItemSelectedListener;
.super Ljava/lang/Object;
.source "SceneLocalPhotoThumbnail.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnShareItemSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V
    .locals 0
    .parameter

    .prologue
    .line 1483
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnShareItemSelectedListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V
    .locals 4
    .parameter "dialog"
    .parameter "adapter"
    .parameter "position"

    .prologue
    .line 1491
    invoke-virtual {p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 1492
    .local v0, ri:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnShareItemSelectedListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    invoke-virtual {p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    .line 1493
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnShareItemSelectedListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    const-string v2, "SharedAdapter.KEY_PACKAGE"

    invoke-interface {v0}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1495
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnShareItemSelectedListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnShareItemSelectedListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1497
    :cond_0
    const-string v1, "SceneLocalPhotoThumbnail"

    const-string v2, "[HTCAlbum][SceneLocalPhotoThumbnail][OnShareItemSelectedListener][onClick]can\'t get activity"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    :goto_0
    return-void

    .line 1500
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnShareItemSelectedListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnShareItemSelectedListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/htc/album/helper/MenuManager;->callSharePicker(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;Ljava/lang/Object;)V

    goto :goto_0
.end method
