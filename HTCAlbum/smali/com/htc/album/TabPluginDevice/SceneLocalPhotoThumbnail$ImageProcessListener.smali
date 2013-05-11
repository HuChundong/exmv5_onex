.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$ImageProcessListener;
.super Ljava/lang/Object;
.source "SceneLocalPhotoThumbnail.java"

# interfaces
.implements Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageProcessListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V
    .locals 0
    .parameter

    .prologue
    .line 2706
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$ImageProcessListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2706
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$ImageProcessListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V

    return-void
.end method


# virtual methods
.method public onProcessCancel()V
    .locals 0

    .prologue
    .line 2756
    return-void
.end method

.method public onProcessEnd(ILjava/lang/String;)V
    .locals 4
    .parameter "nMode"
    .parameter "uriString"

    .prologue
    .line 2717
    const/4 v0, 0x0

    .line 2720
    .local v0, activity:Landroid/app/Activity;
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$ImageProcessListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$1300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2729
    new-instance v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$ImageProcessListener$1;

    invoke-direct {v2, p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$ImageProcessListener$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$ImageProcessListener;I)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2750
    :goto_0
    return-void

    .line 2722
    :catch_0
    move-exception v1

    .line 2724
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "SceneLocalPhotoThumbnail"

    const-string v3, "[onDeleteEnd] Can not get Handler or State!!"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2725
    const/4 v0, 0x0

    .line 2726
    goto :goto_0
.end method

.method public onProcessStart()V
    .locals 0

    .prologue
    .line 2712
    return-void
.end method
