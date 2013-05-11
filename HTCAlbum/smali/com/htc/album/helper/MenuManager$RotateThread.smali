.class Lcom/htc/album/helper/MenuManager$RotateThread;
.super Ljava/lang/Thread;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RotateThread"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCancel:Z

.field private mDegree:I

.field private mDialog:Lcom/htc/app/HtcProgressDialog;

.field private mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

.field private mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

.field private mPosition:I

.field private mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

.field final synthetic this$0:Lcom/htc/album/helper/MenuManager;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;ILcom/htc/opensense2/album/util/ImageManager$IImage;ILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginRotateIBT;)V
    .locals 2
    .parameter
    .parameter "activity"
    .parameter "pos"
    .parameter "curImage"
    .parameter "degree"
    .parameter "listener"
    .parameter "plugin"

    .prologue
    const/4 v1, 0x0

    .line 5257
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->this$0:Lcom/htc/album/helper/MenuManager;

    .line 5258
    const-string v0, "Rotate_Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 5247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mCancel:Z

    .line 5253
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mDialog:Lcom/htc/app/HtcProgressDialog;

    .line 5254
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    .line 5259
    iput-object p4, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 5260
    iput p5, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mDegree:I

    .line 5261
    iput p3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mPosition:I

    .line 5262
    iput-object p2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;

    .line 5263
    iput-object p6, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    .line 5264
    iput-object p7, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    .line 5265
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    if-eqz v0, :cond_0

    .line 5266
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    invoke-interface {v0}, Lcom/htc/album/AlbumUtility/IPluginRotateIBT;->onCreate()V

    .line 5268
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/helper/MenuManager$RotateThread;->start()V

    .line 5269
    return-void
.end method

.method static synthetic access$1500(Lcom/htc/album/helper/MenuManager$RotateThread;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5245
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/htc/album/helper/MenuManager$RotateThread;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5245
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mDialog:Lcom/htc/app/HtcProgressDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/htc/album/helper/MenuManager$RotateThread;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5245
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 5272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mCancel:Z

    .line 5273
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    .line 5277
    const-string v2, "MenuManager"

    const-string v3, "remove cache in filmstrip and grid view"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5279
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-nez v2, :cond_1

    .line 5351
    :cond_0
    :goto_0
    return-void

    .line 5282
    :cond_1
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    if-eqz v2, :cond_2

    .line 5284
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    iget v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mPosition:I

    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2, v3, v4}, Lcom/htc/album/helper/MenuManager$RotateCallbackListener;->onRotateBegin(ILcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5286
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    iget v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mPosition:I

    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2, v3, v4}, Lcom/htc/album/helper/MenuManager$RotateCallbackListener;->onRotateFinish(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 5288
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    if-eqz v2, :cond_0

    .line 5289
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    invoke-interface {v2}, Lcom/htc/album/AlbumUtility/IPluginRotateIBT;->onDestoryIBT()V

    goto :goto_0

    .line 5295
    :cond_2
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/htc/album/helper/MenuManager$RotateThread$1;

    invoke-direct {v3, p0}, Lcom/htc/album/helper/MenuManager$RotateThread$1;-><init>(Lcom/htc/album/helper/MenuManager$RotateThread;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5305
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    if-eqz v2, :cond_3

    .line 5306
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    invoke-interface {v2}, Lcom/htc/album/AlbumUtility/IPluginRotateIBT;->onResumeIBT()V

    .line 5308
    :cond_3
    const/4 v10, 0x1

    .line 5311
    .local v10, result:Z
    const-string v2, "MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rotate image "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mDegree:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5314
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    iget v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mDegree:I

    invoke-interface {v2, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->rotateImageBy(I)Z

    move-result v10

    .line 5315
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v5

    iget-object v6, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBurstPhoto()Z

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 5318
    new-instance v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;-><init>(Landroid/content/Context;)V

    .line 5319
    .local v0, cacheMgr:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v2

    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->removeDMCCache(Ljava/lang/String;JJ)V

    .line 5322
    new-instance v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;

    invoke-direct {v1}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>()V

    .line 5323
    .local v1, task:Lcom/htc/sunny2/frameworks/cache/CacheTask;
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v4

    iget-object v6, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJI)V

    .line 5324
    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 5325
    const/16 v2, 0xe

    iput v2, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    .line 5326
    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5337
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    if-eqz v2, :cond_4

    .line 5338
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    iget v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mPosition:I

    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2, v3, v4}, Lcom/htc/album/helper/MenuManager$RotateCallbackListener;->onRotateFinish(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 5340
    :cond_4
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    if-eqz v2, :cond_5

    .line 5341
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    invoke-interface {v2}, Lcom/htc/album/AlbumUtility/IPluginRotateIBT;->onDestoryIBT()V

    .line 5343
    :cond_5
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/htc/album/helper/MenuManager$RotateThread$2;

    invoke-direct {v3, p0}, Lcom/htc/album/helper/MenuManager$RotateThread$2;-><init>(Lcom/htc/album/helper/MenuManager$RotateThread;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 5329
    .end local v0           #cacheMgr:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;
    .end local v1           #task:Lcom/htc/sunny2/frameworks/cache/CacheTask;
    :catch_0
    move-exception v9

    .line 5331
    .local v9, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "MenuManager"

    const-string v3, "rotate image fail"

    invoke-static {v2, v3, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5332
    const/4 v10, 0x0

    .line 5337
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    if-eqz v2, :cond_6

    .line 5338
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    iget v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mPosition:I

    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v2, v3, v4}, Lcom/htc/album/helper/MenuManager$RotateCallbackListener;->onRotateFinish(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 5340
    :cond_6
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    if-eqz v2, :cond_7

    .line 5341
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    invoke-interface {v2}, Lcom/htc/album/AlbumUtility/IPluginRotateIBT;->onDestoryIBT()V

    .line 5343
    :cond_7
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/htc/album/helper/MenuManager$RotateThread$2;

    invoke-direct {v3, p0}, Lcom/htc/album/helper/MenuManager$RotateThread$2;-><init>(Lcom/htc/album/helper/MenuManager$RotateThread;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 5337
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    if-eqz v3, :cond_8

    .line 5338
    iget-object v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mListener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;

    iget v4, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mPosition:I

    iget-object v5, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v3, v4, v5}, Lcom/htc/album/helper/MenuManager$RotateCallbackListener;->onRotateFinish(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 5340
    :cond_8
    iget-object v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    if-eqz v3, :cond_9

    .line 5341
    iget-object v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mRotatePlugin:Lcom/htc/album/AlbumUtility/IPluginRotateIBT;

    invoke-interface {v3}, Lcom/htc/album/AlbumUtility/IPluginRotateIBT;->onDestoryIBT()V

    .line 5343
    :cond_9
    iget-object v3, p0, Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;

    new-instance v4, Lcom/htc/album/helper/MenuManager$RotateThread$2;

    invoke-direct {v4, p0}, Lcom/htc/album/helper/MenuManager$RotateThread$2;-><init>(Lcom/htc/album/helper/MenuManager$RotateThread;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    throw v2
.end method
