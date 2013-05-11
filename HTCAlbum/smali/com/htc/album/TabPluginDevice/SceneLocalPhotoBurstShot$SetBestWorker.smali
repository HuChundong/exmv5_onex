.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;
.super Landroid/os/AsyncTask;
.source "SceneLocalPhotoBurstShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetBestWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

.field mBestIndex:I

.field mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

.field mIsDeleteOther:Z

.field mScene:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

.field mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;I)V
    .locals 1
    .parameter "adapter"
    .parameter "horizontalAdapter"
    .parameter "scene"
    .parameter "sceneControl"
    .parameter "index"

    .prologue
    .line 3411
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mIsDeleteOther:Z

    .line 3412
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 3413
    iput-object p3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mScene:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    .line 3414
    iput-object p4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 3415
    iput p5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mBestIndex:I

    .line 3416
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    .line 3417
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 8
    .parameter "params"

    .prologue
    const/4 v7, 0x1

    .line 3422
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mIsDeleteOther:Z

    .line 3423
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    if-nez v4, :cond_0

    .line 3424
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[SetBestWorker]adapter is null."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3425
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 3459
    :goto_0
    return-object v4

    .line 3427
    :cond_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 3428
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v3, :cond_1

    .line 3429
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[SetBestWorker]image is null."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3430
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 3432
    :cond_1
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;

    .line 3433
    .local v0, burstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;
    if-nez v0, :cond_2

    .line 3434
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[SetBestWorker]burstPhotoImageList is null."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3435
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 3439
    :cond_2
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mBestIndex:I

    invoke-virtual {v4, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mIsDeleteOther:Z

    invoke-virtual {v0, v4, v5}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->checkSetBestShot(Lcom/htc/opensense2/album/util/ImageManager$IImage;Z)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3441
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 3444
    :cond_3
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mBestIndex:I

    invoke-virtual {v4, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mIsDeleteOther:Z

    invoke-virtual {v0, v4, v5}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->setBestShot(Lcom/htc/opensense2/album/util/ImageManager$IImage;Z)V

    .line 3445
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 3447
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->startRequery()Z

    .line 3450
    :cond_4
    const/4 v1, 0x0

    .line 3451
    .local v1, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3452
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3459
    .end local v0           #burstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_5
    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0

    .line 3455
    :catch_0
    move-exception v2

    .line 3456
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "SceneLocalPhotoBurstShot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SetBestWorker] fail: "

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
    .line 3401
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3469
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3471
    .local v0, isSuccess:Z
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mScene:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    const/16 v2, 0x2724

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onRemoveMessage(I)V

    .line 3472
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mScene:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    const/16 v2, 0x2728

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(I)V

    .line 3473
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$6202(Z)Z

    .line 3475
    if-eqz v0, :cond_1

    .line 3477
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mIsDeleteOther:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3479
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mScene:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    const/16 v2, 0x139e

    invoke-virtual {v1, v2, v4, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 3489
    :goto_0
    return-void

    .line 3482
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->notifyDataSetInvalidated()V

    goto :goto_0

    .line 3487
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mScene:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    const/16 v2, 0x13a7

    invoke-virtual {v1, v2, v4, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3401
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 3463
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$6202(Z)Z

    .line 3464
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->mScene:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    const/16 v1, 0x2724

    const/16 v2, 0x258

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(II)V

    .line 3465
    return-void
.end method
