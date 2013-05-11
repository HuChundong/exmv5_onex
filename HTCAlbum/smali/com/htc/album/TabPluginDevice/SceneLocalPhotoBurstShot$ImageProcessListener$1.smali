.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener$1;
.super Ljava/lang/Object;
.source "SceneLocalPhotoBurstShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;->onProcessEnd(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;

.field final synthetic val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

.field final synthetic val$bSetSelection:Z


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;

    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener$1;->val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iput-boolean p3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener$1;->val$bSetSelection:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 212
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener$1;->val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->notifyDataSetChanged()V

    .line 221
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener$1;->val$bSetSelection:Z

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener$1;->val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, strFolderName:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "com.htc.HTCAlbum.ALL_3DS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 234
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener$1;->val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 235
    .local v0, nPos:I
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunnyCore/view/SView;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setSelection(I)V

    .line 236
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 237
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$1000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 239
    :cond_2
    const-string v2, "SceneLocalPhotoBurstShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcAlbum][LocalFullFilmViewTemplate][onFlattenEnd]: Get Edit(left/right/to2d)Set Photo to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
