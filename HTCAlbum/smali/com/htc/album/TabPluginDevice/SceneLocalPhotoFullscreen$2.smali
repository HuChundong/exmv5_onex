.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;
.super Ljava/lang/Object;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

.field final synthetic val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

.field final synthetic val$view:Lcom/htc/sunny2/fullfilmview/FullFilmView;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 824
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;->val$view:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iput-object p3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;->val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 826
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SceneLocalPhotoFullscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[notifyDataSetChanged] Start to wait: view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;->val$view:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;->val$view:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    if-eqz v1, :cond_1

    .line 828
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;->val$view:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->checkSetMediaListComplete_block()V

    .line 829
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;->val$view:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->resumePreparator(Z)V

    .line 831
    :cond_1
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "SceneLocalPhotoFullscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[notifyDataSetChanged] Start to release: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;->val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    :cond_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;->val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    if-eqz v1, :cond_3

    .line 833
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;->val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->releaseListDataCache()V

    .line 836
    :cond_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$1800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$1900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 838
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$2000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 839
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2$1;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 852
    .end local v0           #activity:Landroid/app/Activity;
    :cond_4
    return-void
.end method
