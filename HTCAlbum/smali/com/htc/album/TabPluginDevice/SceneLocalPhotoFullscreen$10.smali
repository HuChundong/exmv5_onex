.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$10;
.super Ljava/lang/Object;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmConsumeDialog(ILcom/htc/opensense2/album/util/ImageManager$IImage;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3657
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$10;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    iput p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$10;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3664
    :try_start_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$10;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$8000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$10;->val$position:I

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 3665
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3675
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_0
    :goto_0
    return-void

    .line 3668
    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$10;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$8100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    move-object v0, v2

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmStateWithoutDialog()I

    move-result v3

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$10;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$8200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;

    move-result-object v5

    invoke-static {v4, v3, v2, v5}, Lcom/htc/opensense2/album/util/DrmManager;->showMessage(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3671
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :catch_0
    move-exception v1

    .line 3673
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "SceneLocalPhotoFullscreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[showDrmConsumeDialog] Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
