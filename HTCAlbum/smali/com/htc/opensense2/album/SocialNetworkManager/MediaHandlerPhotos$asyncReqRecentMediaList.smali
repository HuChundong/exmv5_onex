.class Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;
.super Landroid/os/AsyncTask;
.source "MediaHandlerPhotos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncReqRecentMediaList"
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

.field private mIsListChanged:Z

.field private mIsTaskCancel:Z

.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;


# direct methods
.method private constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 493
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 495
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->mIsExceptioned:Z

    .line 496
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->mIsCacheExits:Z

    .line 497
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->mIsTaskCancel:Z

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->mIsListChanged:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 493
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 14
    .parameter "urls"

    .prologue
    const/4 v13, 0x1

    .line 504
    :try_start_0
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 505
    const-string v8, "MediaHandlerPhotos"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][MediaHandlerPhotos][asyncReqRecentMediaList]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z
    invoke-static {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : getRecentMedia.."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_0
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v8, v8, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUser:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-nez v8, :cond_6

    .line 508
    const/4 v1, 0x0

    .line 509
    .local v1, listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    const/4 v2, 0x0

    .line 510
    .local v2, listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    const/4 v4, 0x0

    .line 512
    .local v4, listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mRecentListType:I
    invoke-static {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)I

    move-result v8

    if-nez v8, :cond_5

    .line 513
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUser:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->isRecentFileCacheExist(Ljava/lang/String;)Z
    invoke-static {v8, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$1100(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->mIsCacheExits:Z

    .line 517
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v7, tmpList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 519
    const-string v8, "MediaHandlerPhotos"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][MediaHandlerPhotos][asyncReqRecentMediaList]: type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mRecentListType:I
    invoke-static {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :cond_1
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z
    invoke-static {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Z

    move-result v8

    if-eq v13, v8, :cond_2

    iget-boolean v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->mIsCacheExits:Z

    if-nez v8, :cond_b

    .line 523
    :cond_2
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v8, :cond_3

    .line 524
    const-string v8, "MediaHandlerPhotos"

    const-string v9, "[HTCAlbum][MediaHandlerPhotos][asyncReqRecentMediaList]: sync live..."

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :cond_3
    const/4 v8, 0x1

    new-array v3, v8, [Lcom/htc/opensense/social/data/Person;

    .line 526
    .local v3, listPerson:[Lcom/htc/opensense/social/data/Person;
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUser:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getProfile()Lcom/htc/opensense/social/data/Person;

    move-result-object v9

    aput-object v9, v3, v8

    .line 527
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    invoke-virtual {v8, v3}, Lcom/htc/opensense/social/SocialServiceManager;->getPersonOps([Lcom/htc/opensense/social/data/Person;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 529
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->getScreenDisplayDimension(Landroid/content/Context;)[I

    move-result-object v6

    .line 530
    .local v6, nScreenDisplay:[I
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/social/PersonOp;

    const/16 v9, 0x1e

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mRecentListType:I
    invoke-static {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)I

    move-result v10

    const/4 v11, 0x0

    aget v11, v6, v11

    const/4 v12, 0x1

    aget v12, v6, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/htc/opensense/social/PersonOp;->getRecentMedia(IIII)Ljava/util/List;

    move-result-object v2

    .line 535
    .end local v6           #nScreenDisplay:[I
    :cond_4
    if-eqz v2, :cond_8

    .line 537
    const/4 v5, 0x0

    .local v5, nIndex:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v5, :cond_8

    .line 539
    new-instance v9, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/social/MediumOp;

    invoke-direct {v9, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/MediumOp;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 515
    .end local v3           #listPerson:[Lcom/htc/opensense/social/data/Person;
    .end local v5           #nIndex:I
    .end local v7           #tmpList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    :cond_5
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUser:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->isRecentVideoFileCacheExist(Ljava/lang/String;)Z
    invoke-static {v8, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$1200(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->mIsCacheExits:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 570
    .end local v1           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    .end local v2           #listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    .end local v4           #listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :catch_0
    move-exception v0

    .line 572
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "MediaHandlerPhotos"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][MediaHandlerPhotos][asyncReqRecentMediaList] Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iput-boolean v13, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->mIsExceptioned:Z

    .line 577
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    :goto_2
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v8, v8, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    if-eqz v8, :cond_7

    iget-boolean v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->mIsExceptioned:Z

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z
    invoke-static {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Z

    move-result v8

    if-ne v13, v8, :cond_7

    .line 579
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mRecentListType:I
    invoke-static {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)I

    move-result v8

    if-nez v8, :cond_e

    .line 580
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUser:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->putRecentListToFileCache(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$1500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)V

    .line 585
    :cond_7
    :goto_3
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v13}, Ljava/lang/Integer;-><init>(I)V

    return-object v8

    .line 542
    .restart local v1       #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    .restart local v2       #listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    .restart local v3       #listPerson:[Lcom/htc/opensense/social/data/Person;
    .restart local v4       #listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    .restart local v7       #tmpList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    :cond_8
    :try_start_1
    iget-boolean v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->mIsTaskCancel:Z

    if-nez v8, :cond_a

    .line 544
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    invoke-virtual {v8, v9, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->isPhotoListChanged(Ljava/util/List;Ljava/util/List;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->mIsListChanged:Z

    .line 545
    iget-boolean v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->mIsListChanged:Z

    if-eqz v8, :cond_a

    .line 547
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v8, :cond_9

    .line 548
    const-string v8, "MediaHandlerPhotos"

    const-string v9, "[HTCAlbum][MediaHandlerPhotos][asyncReqRecentMediaList]: photo list changed"

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_9
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v8, v8, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 550
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v8, v8, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 553
    :cond_a
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    const/4 v9, 0x1

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z
    invoke-static {v8, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Z)Z

    goto :goto_2

    .line 557
    .end local v3           #listPerson:[Lcom/htc/opensense/social/data/Person;
    :cond_b
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v8, :cond_c

    .line 558
    const-string v8, "MediaHandlerPhotos"

    const-string v9, "[HTCAlbum][MediaHandlerPhotos][asyncReqRecentMediaList]: use cache..."

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :cond_c
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mRecentListType:I
    invoke-static {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)I

    move-result v8

    if-nez v8, :cond_d

    .line 560
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUser:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->getRecentListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v8, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$1300(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    check-cast v1, Ljava/util/List;

    .line 563
    .restart local v1       #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    :goto_4
    if-eqz v1, :cond_6

    .line 565
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iput-object v1, v8, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    goto/16 :goto_2

    .line 562
    :cond_d
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUser:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->getRecentVideoListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v8, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$1400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    check-cast v1, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v1       #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    goto :goto_4

    .line 582
    .end local v1           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    .end local v2           #listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    .end local v4           #listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    .end local v7           #tmpList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    :cond_e
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUser:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->putRecentVideoListToFileCache(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$1600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 493
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 590
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->mIsTaskCancel:Z

    .line 591
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .parameter "result"

    .prologue
    const/16 v5, 0x2761

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 597
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->mIsExceptioned:Z

    if-ne v0, v1, :cond_1

    .line 599
    :cond_0
    const-string v0, "MediaHandlerPhotos"

    const-string v1, "[HTCAlbum][MediaHandlerPhotos][asyncReqRecentMediaList]: Error run! "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, v5, v4, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 617
    :goto_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z
    invoke-static {v0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Z)Z

    .line 618
    return-void

    .line 603
    :cond_1
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 604
    const-string v0, "MediaHandlerPhotos"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MediaHandlerPhotos][asyncReqRecentMediaList]: Total Photos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 607
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, v5, v4, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 608
    :cond_3
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->mIsListChanged:Z

    if-nez v0, :cond_5

    .line 610
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 611
    const-string v0, "MediaHandlerPhotos"

    const-string v1, "[HTCAlbum][MediaHandlerPhotos][asyncReqRecentMediaList]: List no change"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    :cond_4
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    const/16 v1, 0x2728

    invoke-virtual {v0, v1, v4, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 615
    :cond_5
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    const/16 v1, 0x4e88

    invoke-virtual {v0, v1, v4, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 493
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 594
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 493
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
