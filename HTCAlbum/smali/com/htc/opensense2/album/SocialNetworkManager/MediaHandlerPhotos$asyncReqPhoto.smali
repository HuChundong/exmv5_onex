.class Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;
.super Landroid/os/AsyncTask;
.source "MediaHandlerPhotos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncReqPhoto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsCacheExits:Z

.field private mIsExceptioned:Z

.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;


# direct methods
.method private constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 397
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 399
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->mIsExceptioned:Z

    .line 400
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->mIsCacheExits:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 14
    .parameter "urls"

    .prologue
    .line 404
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 405
    .local v1, szUIDs:[Ljava/lang/String;
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUIDs:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v2

    .line 406
    const/4 v11, 0x0

    .line 407
    .local v11, listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrapper:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 410
    :try_start_0
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 411
    const-string v0, "MediaHandlerPhotos"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MediaHandlerPhotos][asyncReqPhoto] getPhotos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_5

    .line 414
    const/4 v10, 0x0

    .line 415
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/plugin/MediumData;>;"
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    instance-of v0, v0, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v0, :cond_3

    .line 417
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 418
    const-string v0, "MediaHandlerPhotos"

    const-string v2, "[HTCAlbum][MediaHandlerPhotos][asyncReqPhoto] getPhotos: full photo plugin..."

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v0

    iget-object v7, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v7, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    .line 420
    .local v7, dataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, v1}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->getPhotos(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 429
    .end local v7           #dataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;
    :cond_2
    :goto_0
    if-eqz v10, :cond_6

    .line 431
    const/4 v6, 0x0

    .line 432
    .local v6, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_6

    .line 434
    new-instance v6, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .end local v6           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/data/Medium;

    invoke-direct {v6, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/data/Medium;)V

    .line 435
    .restart local v6       #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrapper:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 422
    .end local v6           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .end local v9           #i:I
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    instance-of v0, v0, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    if-eqz v0, :cond_2

    .line 424
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 425
    const-string v0, "MediaHandlerPhotos"

    const-string v2, "[HTCAlbum][MediaHandlerPhotos][asyncReqPhoto] getPhotos: comment plugin..."

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_4
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v0

    iget-object v7, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v7, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    .line 427
    .local v7, dataPlugin:Lcom/htc/opensense/album/plugin/CommentViewPluginBase;
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, v1}, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;->getPhotos(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    goto :goto_0

    .line 441
    .end local v7           #dataPlugin:Lcom/htc/opensense/album/plugin/CommentViewPluginBase;
    .end local v10           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/plugin/MediumData;>;"
    :cond_5
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->getScreenDisplayDimension(Landroid/content/Context;)[I

    move-result-object v13

    .line 442
    .local v13, nScreenDisplay:[I
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v13, v3

    const/4 v4, 0x1

    aget v4, v13, v4

    new-instance v5, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v5}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/social/SocialServiceManager;->getMediumOps([Ljava/lang/String;IIILcom/htc/opensense/social/RemoteError;)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 447
    const/4 v6, 0x0

    .line 448
    .restart local v6       #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v12, 0x0

    .local v12, nIndex:I
    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v12, :cond_6

    .line 450
    new-instance v6, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .end local v6           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/MediumOp;

    invoke-direct {v6, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/MediumOp;)V

    .line 457
    .restart local v6       #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrapper:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 461
    .end local v6           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .end local v12           #nIndex:I
    .end local v13           #nScreenDisplay:[I
    :catch_0
    move-exception v8

    .line 463
    .local v8, e:Ljava/lang/Exception;
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->mIsExceptioned:Z

    .line 464
    const-string v0, "MediaHandlerPhotos"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MediaHandlerPhotos][asyncReqPhoto] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .end local v8           #e:Ljava/lang/Exception;
    :cond_6
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 397
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 471
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x4e8a

    const/16 v2, 0x2766

    const/4 v3, 0x0

    .line 477
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->mIsExceptioned:Z

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrapper:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 479
    :cond_0
    const-string v0, "MediaHandlerPhotos"

    const-string v1, "[HTCAlbum][MediaHandlerPhotos][asyncReqPhoto]: no photo!"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, v2, v5, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 481
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, v2, v5, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 490
    :goto_0
    return-void

    .line 485
    :cond_1
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 486
    const-string v0, "MediaHandlerPhotos"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MediaHandlerPhotos][asyncReqPhoto]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrapper:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrapper:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 488
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrapper:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 397
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 474
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 397
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
