.class Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;
.super Landroid/os/AsyncTask;
.source "MediaHandlerPeople.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncReqUserInfo"
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
.field private mErrorCode:Lcom/htc/opensense/social/ErrorCode;

.field private mIsCacheExits:Z

.field private mIsExceptioned:Z

.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;


# direct methods
.method private constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 416
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 418
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->mIsExceptioned:Z

    .line 419
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->mIsCacheExits:Z

    .line 420
    sget-object v0, Lcom/htc/opensense/social/ErrorCode;->UNKNOWN:Lcom/htc/opensense/social/ErrorCode;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 13
    .parameter "urls"

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 423
    new-array v8, v12, [Ljava/lang/String;

    .line 424
    .local v8, szUIDs:[Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaUIDs:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v8, v10

    .line 425
    const/4 v4, 0x0

    .line 426
    .local v4, listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 429
    :try_start_0
    const-string v9, "MediaHandlerPeople"

    const-string v10, "[HTCAlbum][MediaHandlerPeople][asyncReqUserInfo]:... "

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-nez v9, :cond_0

    .line 433
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v9, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    .line 434
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 435
    .local v7, profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    const/4 v1, 0x0

    .line 436
    .local v1, aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    const/4 v5, 0x0

    .local v5, nIndex:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v5, :cond_1

    .line 438
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 440
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v9}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v2

    .line 441
    .local v2, aperson:Lcom/htc/opensense/social/data/Person;
    invoke-virtual {v2}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v9

    iget-object v9, v9, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v9, v7}, Lcom/htc/opensense/social/PersonOp;->updateProfiles(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 444
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v1           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {v2}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v9

    iget-object v9, v9, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense/social/data/Profile;

    const/4 v10, 0x0

    invoke-direct {v1, v9, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/data/Profile;Landroid/os/Handler;)V

    .line 445
    .restart local v1       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 450
    .end local v1           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .end local v2           #aperson:Lcom/htc/opensense/social/data/Person;
    .end local v5           #nIndex:I
    .end local v7           #profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    :cond_0
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    instance-of v9, v9, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    if-eqz v9, :cond_1

    .line 452
    const/4 v6, 0x0

    .line 453
    .local v6, person:Lcom/htc/opensense/album/plugin/PersonData;
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v9, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;->getPhotoUser(Ljava/lang/String;)Lcom/htc/opensense/album/plugin/PersonData;

    move-result-object v6

    .line 455
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v6}, Lcom/htc/opensense/album/plugin/PersonData;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v1, v9, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/data/Profile;Landroid/os/Handler;)V

    .line 456
    .restart local v1       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 474
    .end local v1           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .end local v6           #person:Lcom/htc/opensense/album/plugin/PersonData;
    :cond_1
    :goto_1
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v12}, Ljava/lang/Integer;-><init>(I)V

    return-object v9

    .line 460
    :catch_0
    move-exception v3

    .line 463
    .local v3, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    iput-boolean v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->mIsExceptioned:Z

    .line 464
    invoke-virtual {v3}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->getCode()Lcom/htc/opensense/social/ErrorCode;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    .line 465
    const-string v9, "MediaHandlerPeople"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MediaHandlerPeople][asyncReqUserInfo] SocialNetworkException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 468
    .end local v3           #e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    :catch_1
    move-exception v3

    .line 470
    .local v3, e:Ljava/lang/Exception;
    iput-boolean v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->mIsExceptioned:Z

    .line 471
    const-string v9, "MediaHandlerPeople"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MediaHandlerPeople][asyncReqUserInfo] Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 416
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 478
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .parameter "result"

    .prologue
    const/16 v5, 0x4e85

    const/16 v2, 0x2760

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 485
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->mIsExceptioned:Z

    if-ne v0, v1, :cond_0

    .line 487
    const-string v0, "MediaHandlerPeople"

    const-string v1, "[HTCAlbum][MediaHandlerPeople][asyncReqUserInfo]: no user!"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, v2, v4, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 489
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, v2, v4, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 497
    :goto_0
    return-void

    .line 493
    :cond_0
    const-string v0, "MediaHandlerPeople"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MediaHandlerPeople][asyncReqUserInfo]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, v5, v4, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 495
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, v5, v4, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 416
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 481
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 416
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
