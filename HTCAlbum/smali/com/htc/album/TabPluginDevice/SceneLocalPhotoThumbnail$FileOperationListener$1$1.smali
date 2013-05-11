.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1$1;
.super Ljava/lang/Object;
.source "SceneLocalPhotoThumbnail.java"

# interfaces
.implements Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1;->onEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1;)V
    .locals 0
    .parameter

    .prologue
    .line 2976
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1$1;->this$2:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 1

    .prologue
    .line 2991
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1$1;->this$2:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onTriggerErrorReport()V

    .line 2992
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .prologue
    .line 2979
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1$1;->this$2:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 2980
    .local v0, h:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 2981
    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1$1$1;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1$1$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener$1$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2988
    :cond_0
    return-void
.end method
