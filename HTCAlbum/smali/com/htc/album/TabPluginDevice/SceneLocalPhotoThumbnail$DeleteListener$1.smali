.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener$1;
.super Ljava/lang/Object;
.source "SceneLocalPhotoThumbnail.java"

# interfaces
.implements Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->onDeleteEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;)V
    .locals 0
    .parameter

    .prologue
    .line 2792
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 2808
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    const/4 v1, 0x0

    #setter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAnimation:Z
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$1102(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;Z)Z

    .line 2809
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onTriggerErrorReport()V

    .line 2810
    return-void
.end method

.method public onAnimationStart()V
    .locals 3

    .prologue
    .line 2795
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 2796
    .local v0, h:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 2797
    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener$1$1;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener$1$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2804
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    const/4 v2, 0x1

    #setter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAnimation:Z
    invoke-static {v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$1102(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;Z)Z

    .line 2805
    return-void
.end method
