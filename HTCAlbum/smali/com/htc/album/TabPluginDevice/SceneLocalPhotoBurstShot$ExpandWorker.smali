.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;
.super Landroid/os/AsyncTask;
.source "SceneLocalPhotoBurstShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExpandWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

.field mScene:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

.field mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V
    .locals 0
    .parameter "adapter"
    .parameter "sceneControl"
    .parameter "scene"

    .prologue
    .line 3336
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3337
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 3338
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 3339
    iput-object p3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;->mScene:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    .line 3340
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 8
    .parameter "params"

    .prologue
    const/4 v7, 0x1

    .line 3345
    :try_start_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    if-nez v4, :cond_0

    .line 3346
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[expandBurstShot]adapter is null."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3347
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 3375
    :goto_0
    return-object v4

    .line 3349
    :cond_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 3350
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v3, :cond_1

    .line 3351
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[expandBurstShot]image is null."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3352
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 3354
    :cond_1
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;

    .line 3355
    .local v0, burstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;
    if-nez v0, :cond_2

    .line 3356
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[expandBurstShot]burstPhotoImageList is null."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3357
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 3360
    :cond_2
    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->checkExpand()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3362
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 3365
    :cond_3
    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->expand()V

    .line 3367
    const/4 v1, 0x0

    .line 3368
    .local v1, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3369
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3375
    .end local v0           #burstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_4
    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 3372
    :catch_0
    move-exception v2

    .line 3373
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "SceneLocalPhotoBurstShot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[expandBurstShot] fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3329
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3385
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3386
    .local v0, isSuccess:Z
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;->mScene:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    const/16 v2, 0x2724

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onRemoveMessage(I)V

    .line 3387
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;->mScene:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    const/16 v2, 0x2728

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(I)V

    .line 3388
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$6102(Z)Z

    .line 3389
    if-eqz v0, :cond_0

    .line 3392
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;->mScene:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    const/16 v2, 0x139e

    invoke-virtual {v1, v2, v4, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 3398
    :goto_0
    return-void

    .line 3396
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;->mScene:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    const/16 v2, 0x13a8

    invoke-virtual {v1, v2, v4, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3329
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 3379
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$6102(Z)Z

    .line 3380
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;->mScene:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    const/16 v1, 0x2724

    const/16 v2, 0x258

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(II)V

    .line 3381
    return-void
.end method
