.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1;
.super Ljava/lang/Object;
.source "SceneLocalPhotoThumbnail.java"

# interfaces
.implements Lcom/htc/album/helper/CollectionRequeryTask$CollectionRequeryCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->onFileOperationEnd(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;)V
    .locals 0
    .parameter

    .prologue
    .line 2960
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 0

    .prologue
    .line 2965
    return-void
.end method

.method public onEnd()V
    .locals 4

    .prologue
    .line 2969
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;

    iget-boolean v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->mIsMoveFile:Z

    if-nez v0, :cond_0

    .line 2973
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->notifyDataSetChanged()V

    .line 2995
    :goto_0
    return-void

    .line 2976
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$3200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunnyCore/view/SView;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->mChangedPosition:[I

    check-cast v1, [I

    const/4 v2, 0x0

    new-instance v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1$1;

    invoke-direct {v3, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->startDataSetChangeAnimation([I[ILcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 2994
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$3300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    goto :goto_0
.end method
