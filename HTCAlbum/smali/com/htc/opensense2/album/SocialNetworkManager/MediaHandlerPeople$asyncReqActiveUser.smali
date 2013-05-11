.class Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;
.super Landroid/os/AsyncTask;
.source "MediaHandlerPeople.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncReqActiveUser"
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

    .line 304
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 306
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->mIsExceptioned:Z

    .line 307
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->mIsCacheExits:Z

    .line 308
    sget-object v0, Lcom/htc/opensense/social/ErrorCode;->UNKNOWN:Lcom/htc/opensense/social/ErrorCode;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 14
    .parameter "urls"

    .prologue
    const/4 v13, 0x1

    .line 311
    const/4 v4, 0x0

    .line 312
    .local v4, listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    const/4 v5, 0x0

    .line 313
    .local v5, listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    const/4 v1, 0x0

    .line 316
    .local v1, activeUser:Lcom/htc/opensense/social/PersonOp;
    :try_start_0
    const-string v8, "MediaHandlerPeople"

    const-string v9, "[HTCAlbum][MediaHandlerPeople][asyncReqActiveUser]: getActiveUser.."

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->isActiveUserFileCacheExist(Ljava/lang/String;)Z
    invoke-static {v8, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->mIsCacheExits:Z

    .line 322
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->mIsCacheExits:Z

    if-ne v13, v8, :cond_0

    .line 324
    const-string v8, "MediaHandlerPeople"

    const-string v9, "[HTCAlbum][MediaHandlerPeople][asyncReqActiveUser]: use cache...!!"

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getActiveUserListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v8, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    if-eqz v4, :cond_4

    .line 327
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iput-object v4, v8, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    .line 336
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Z

    move-result v8

    if-eq v13, v8, :cond_1

    iget-boolean v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->mIsCacheExits:Z

    if-nez v8, :cond_3

    .line 338
    :cond_1
    const-string v8, "MediaHandlerPeople"

    const-string v9, "[HTCAlbum][MediaHandlerPeople][asyncReqActiveUser]: sync live..!!"

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v8, :cond_5

    .line 342
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v8, v9}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->getActiveUser(Landroid/accounts/Account;)Lcom/htc/opensense/album/plugin/PersonData;

    move-result-object v6

    .line 343
    .local v6, personData:Lcom/htc/opensense/album/plugin/PersonData;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 344
    .local v7, profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 345
    move-object v2, v6

    .line 346
    .local v2, aperson:Lcom/htc/opensense/social/data/Person;
    invoke-virtual {v2}, Lcom/htc/opensense/album/plugin/PersonData;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v8

    iget-object v8, v8, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/htc/opensense/album/plugin/PersonData;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v8, v8, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 350
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v9, v8, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    new-instance v10, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    iget-object v11, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/htc/opensense/album/plugin/PersonData;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v8

    iget-object v8, v8, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/social/data/Profile;

    const/4 v12, 0x0

    invoke-direct {v10, v11, v8, v12}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;Landroid/os/Handler;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    .end local v2           #aperson:Lcom/htc/opensense/social/data/Person;
    .end local v6           #personData:Lcom/htc/opensense/album/plugin/PersonData;
    .end local v7           #profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    const/4 v9, 0x1

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v8, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$702(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Z)Z
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 388
    :cond_3
    :goto_2
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v13}, Ljava/lang/Integer;-><init>(I)V

    return-object v8

    .line 331
    :cond_4
    :try_start_1
    const-string v8, "MediaHandlerPeople"

    const-string v9, "[HTCAlbum][MediaHandlerPeople][asyncReqActiveUser]: cache error!! "

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->mIsCacheExits:Z
    :try_end_1
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 373
    :catch_0
    move-exception v3

    .line 376
    .local v3, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    iput-boolean v13, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->mIsExceptioned:Z

    .line 377
    invoke-virtual {v3}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->getCode()Lcom/htc/opensense/social/ErrorCode;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    .line 378
    const-string v8, "MediaHandlerPeople"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][MediaHandlerPeople][asyncReqActiveUser] SocialNetworkException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 354
    .end local v3           #e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    :cond_5
    :try_start_2
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v8, v9}, Lcom/htc/opensense/social/SocialServiceManager;->getActiveUser(Landroid/accounts/Account;)Lcom/htc/opensense/social/PersonOp;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 357
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 358
    .restart local v7       #profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 359
    invoke-virtual {v1}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v2

    .line 360
    .restart local v2       #aperson:Lcom/htc/opensense/social/data/Person;
    invoke-virtual {v2}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v8

    iget-object v8, v8, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-virtual {v1, v7}, Lcom/htc/opensense/social/PersonOp;->updateProfiles(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 366
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v8, v8, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 367
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v8, v8, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    new-instance v9, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v9, v10, v1, v11}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Ljava/lang/String;Lcom/htc/opensense/social/PersonOp;Landroid/os/Handler;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 381
    .end local v2           #aperson:Lcom/htc/opensense/social/data/Person;
    .end local v7           #profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    :catch_1
    move-exception v3

    .line 383
    .local v3, e:Ljava/lang/Exception;
    iput-boolean v13, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->mIsExceptioned:Z

    .line 384
    const-string v8, "MediaHandlerPeople"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][MediaHandlerPeople][asyncReqActiveUser] Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 304
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 392
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x4e85

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 398
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->mIsExceptioned:Z

    if-eq v4, v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 400
    :cond_0
    const-string v0, "MediaHandlerPeople"

    const-string v1, "[HTCAlbum][MediaHandlerPeople][asyncReqActiveUser]: no active user!"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    const/16 v1, 0x2760

    invoke-virtual {v0, v1, v6, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 414
    :goto_0
    return-void

    .line 406
    :cond_1
    const-string v0, "MediaHandlerPeople"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MediaHandlerPeople][asyncReqActiveUser]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Z

    move-result v0

    if-ne v4, v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mEnableCacheList:Z
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$900(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->putActiveUserListToFileCache(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$1000(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;Ljava/lang/Object;)V

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v5, v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 412
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, v5, v6, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 304
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 395
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 304
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
