.class Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;
.super Landroid/os/AsyncTask;
.source "MediaHandlerPeople.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncReqMediaList"
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

.field private mForceUpdateActiveUser:Z

.field private mIsCacheExits:Z

.field private mIsExceptioned:Z

.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;


# direct methods
.method private constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 562
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 564
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mIsExceptioned:Z

    .line 565
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mIsCacheExits:Z

    .line 566
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mForceUpdateActiveUser:Z

    .line 567
    sget-object v0, Lcom/htc/opensense/social/ErrorCode;->UNKNOWN:Lcom/htc/opensense/social/ErrorCode;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 562
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 17
    .parameter "urls"

    .prologue
    .line 572
    :try_start_0
    const-string v13, "MediaHandlerPeople"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][MediaHandlerPeople][asyncReqMediaList]: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v15}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : getFriends.."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v13, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v14, v14, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-le v13, v14, :cond_1

    .line 574
    :cond_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mIsExceptioned:Z
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 723
    :goto_0
    new-instance v13, Ljava/lang/Integer;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Ljava/lang/Integer;-><init>(I)V

    return-object v13

    .line 577
    :cond_1
    const/4 v6, 0x0

    .line 578
    .local v6, listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    const/4 v7, 0x0

    .line 579
    .local v7, listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    const/4 v10, 0x0

    .line 581
    .local v10, listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v13, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v14, v13}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$1100(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    check-cast v6, Ljava/util/List;

    .restart local v6       #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    if-eqz v6, :cond_2

    .line 582
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mIsCacheExits:Z

    .line 584
    :cond_2
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v14}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Z

    move-result v14

    if-eq v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mIsCacheExits:Z

    if-nez v13, :cond_12

    .line 586
    :cond_3
    const-string v13, "MediaHandlerPeople"

    const-string v14, "[HTCAlbum][MediaHandlerPeople][asyncReqMediaList]: sync live..!!"

    invoke-static {v13, v14}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const/4 v13, 0x1

    new-array v9, v13, [Lcom/htc/opensense/social/data/Person;

    .line 588
    .local v9, listPerson:[Lcom/htc/opensense/social/data/Person;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v13, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getProfile()Lcom/htc/opensense/social/data/Person;

    move-result-object v13

    aput-object v13, v9, v14

    .line 590
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v13

    iget-object v13, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v13

    iget-object v13, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    instance-of v13, v13, Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    if-eqz v13, :cond_b

    .line 592
    const/4 v8, 0x0

    .line 594
    .local v8, listPD:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/plugin/PersonData;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v13

    iget-object v3, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v3, Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    .line 595
    .local v3, dataplugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;
    const/4 v13, 0x1

    invoke-virtual {v3}, Lcom/htc/opensense/album/plugin/FriendListPluginBase;->onEnableMultipleFriends()Z

    move-result v14

    if-ne v13, v14, :cond_4

    .line 597
    const-string v13, "MediaHandlerPeople"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][MediaHandlerPeople][asyncReqMediaList]: enable multi-list, get friend list: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsFriendsList:Z
    invoke-static {v15}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$1200(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsFriendsList:Z
    invoke-static {v14}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$1200(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Z

    move-result v14

    if-ne v13, v14, :cond_8

    .line 599
    const/4 v13, 0x0

    aget-object v13, v9, v13

    invoke-virtual {v13}, Lcom/htc/opensense/social/data/Person;->getUid()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Lcom/htc/opensense/album/plugin/FriendListPluginBase;->getFriendsWithSelection(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v8

    .line 604
    :cond_4
    :goto_1
    if-nez v8, :cond_5

    .line 606
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    const/4 v14, 0x1

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsFriendsList:Z
    invoke-static {v13, v14}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$1202(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Z)Z

    .line 607
    const/4 v13, 0x0

    aget-object v13, v9, v13

    invoke-virtual {v13}, Lcom/htc/opensense/social/data/Person;->getUid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/htc/opensense/album/plugin/FriendListPluginBase;->getFriends(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 610
    :cond_5
    if-eqz v8, :cond_11

    .line 612
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v13, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 613
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mIsCacheExits:Z

    if-ne v13, v14, :cond_a

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsFriendsList:Z
    invoke-static {v14}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$1200(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Z

    move-result v14

    if-ne v13, v14, :cond_a

    .line 615
    const-string v13, "MediaHandlerPeople"

    const-string v14, "[HTCAlbum][MediaHandlerPeople][asyncReqMediaList]: sync visible states..!!"

    invoke-static {v13, v14}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const/4 v1, 0x0

    .line 619
    .local v1, aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    const/4 v11, 0x0

    .local v11, nIndex:I
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-le v13, v11, :cond_11

    .line 621
    const/4 v1, 0x0

    .line 622
    const/4 v12, 0x0

    .local v12, nIndex2:I
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-le v13, v12, :cond_6

    .line 624
    const/4 v14, 0x1

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense/album/plugin/PersonData;

    invoke-virtual {v13}, Lcom/htc/opensense/album/plugin/PersonData;->getUid()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-ne v14, v13, :cond_9

    .line 626
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v1           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense/social/data/Person;

    const/4 v14, 0x0

    invoke-direct {v1, v13, v14}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/data/Person;Landroid/os/Handler;)V

    .line 627
    .restart local v1       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->isVisible()Z

    move-result v13

    if-nez v13, :cond_6

    .line 628
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->toggleVisibility()V

    .line 632
    :cond_6
    if-nez v1, :cond_7

    .line 633
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v1           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense/social/data/Person;

    const/4 v14, 0x0

    invoke-direct {v1, v13, v14}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/data/Person;Landroid/os/Handler;)V

    .line 634
    .restart local v1       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v13, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 601
    .end local v1           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .end local v11           #nIndex:I
    .end local v12           #nIndex2:I
    :cond_8
    const/4 v13, 0x0

    aget-object v13, v9, v13

    invoke-virtual {v13}, Lcom/htc/opensense/social/data/Person;->getUid()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Lcom/htc/opensense/album/plugin/FriendListPluginBase;->getFriendsWithSelection(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v8

    goto/16 :goto_1

    .line 622
    .restart local v1       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .restart local v11       #nIndex:I
    .restart local v12       #nIndex2:I
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 639
    .end local v1           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .end local v11           #nIndex:I
    .end local v12           #nIndex2:I
    :cond_a
    const/4 v11, 0x0

    .restart local v11       #nIndex:I
    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-le v13, v11, :cond_11

    .line 641
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v14, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    new-instance v15, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense/social/data/Person;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v15, v13, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/data/Person;Landroid/os/Handler;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 648
    .end local v3           #dataplugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;
    .end local v8           #listPD:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/plugin/PersonData;>;"
    .end local v11           #nIndex:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v13

    iget-object v13, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    invoke-virtual {v13, v9}, Lcom/htc/opensense/social/SocialServiceManager;->getPersonOps([Lcom/htc/opensense/social/data/Person;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 650
    const/4 v13, 0x0

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v13}, Lcom/htc/opensense/social/PersonOp;->getFriends()Ljava/util/List;

    move-result-object v7

    .line 652
    :cond_c
    if-eqz v7, :cond_11

    .line 654
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v13, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 655
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mIsCacheExits:Z

    if-ne v13, v14, :cond_10

    .line 657
    const-string v13, "MediaHandlerPeople"

    const-string v14, "[HTCAlbum][MediaHandlerPeople][asyncReqMediaList]: sync visible states..!!"

    invoke-static {v13, v14}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const/4 v1, 0x0

    .line 661
    .restart local v1       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    const/4 v11, 0x0

    .restart local v11       #nIndex:I
    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I
    :try_end_1
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v13

    if-le v13, v11, :cond_11

    .line 665
    const/4 v1, 0x0

    .line 666
    const/4 v12, 0x0

    .restart local v12       #nIndex2:I
    :goto_6
    :try_start_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-le v13, v12, :cond_d

    .line 668
    const/4 v14, 0x1

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v13}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/opensense/social/data/Person;->getUid()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-ne v14, v13, :cond_f

    .line 670
    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense/social/PersonOp;

    const/4 v14, 0x0

    invoke-direct {v2, v13, v14}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/PersonOp;Landroid/os/Handler;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_2 .. :try_end_2} :catch_1

    .line 671
    .end local v1           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .local v2, aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :try_start_3
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->isVisible()Z

    move-result v13

    if-nez v13, :cond_13

    .line 672
    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->toggleVisibility()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, v2

    .line 682
    .end local v2           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .restart local v1       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_d
    :goto_7
    if-nez v1, :cond_e

    .line 683
    :try_start_4
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v1           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense/social/PersonOp;

    const/4 v14, 0x0

    invoke-direct {v1, v13, v14}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/PersonOp;Landroid/os/Handler;)V

    .line 684
    .restart local v1       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v13, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 666
    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 677
    :catch_0
    move-exception v4

    .line 680
    .local v4, e:Ljava/lang/Exception;
    :goto_8
    const/4 v1, 0x0

    goto :goto_7

    .line 689
    .end local v1           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v11           #nIndex:I
    .end local v12           #nIndex2:I
    :cond_10
    const/4 v11, 0x0

    .restart local v11       #nIndex:I
    :goto_9
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-le v13, v11, :cond_11

    .line 691
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v14, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    new-instance v15, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense/social/PersonOp;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v15, v13, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/PersonOp;Landroid/os/Handler;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 697
    .end local v11           #nIndex:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    const/4 v14, 0x1

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v13, v14}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$702(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Z)Z
    :try_end_4
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 710
    .end local v6           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    .end local v7           #listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    .end local v9           #listPerson:[Lcom/htc/opensense/social/data/Person;
    .end local v10           #listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :catch_1
    move-exception v4

    .line 713
    .local v4, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mIsExceptioned:Z

    .line 714
    invoke-virtual {v4}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->getCode()Lcom/htc/opensense/social/ErrorCode;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    .line 715
    const-string v13, "MediaHandlerPeople"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][MediaHandlerPeople][asyncReqMediaList] SocialNetworkException: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 701
    .end local v4           #e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    .restart local v6       #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    .restart local v7       #listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    .restart local v10       #listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :cond_12
    :try_start_5
    const-string v13, "MediaHandlerPeople"

    const-string v14, "[HTCAlbum][MediaHandlerPeople][asyncReqMediaList]: use cache...!!"

    invoke-static {v13, v14}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v13, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 704
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iput-object v6, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;
    :try_end_5
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 717
    .end local v6           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    .end local v7           #listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    .end local v10           #listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :catch_2
    move-exception v5

    .line 719
    .local v5, e2:Ljava/lang/Exception;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mForceUpdateActiveUser:Z

    .line 720
    const-string v13, "MediaHandlerPeople"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][MediaHandlerPeople][asyncReqMediaList] Exception: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 677
    .end local v5           #e2:Ljava/lang/Exception;
    .restart local v2       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .restart local v6       #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    .restart local v7       #listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    .restart local v9       #listPerson:[Lcom/htc/opensense/social/data/Person;
    .restart local v10       #listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    .restart local v11       #nIndex:I
    .restart local v12       #nIndex2:I
    :catch_3
    move-exception v4

    move-object v1, v2

    .end local v2           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .restart local v1       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    goto/16 :goto_8

    .end local v1           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .restart local v2       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_13
    move-object v1, v2

    .end local v2           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .restart local v1       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    goto/16 :goto_7
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 562
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 727
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 7
    .parameter "result"

    .prologue
    const/16 v6, 0x2761

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 734
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mForceUpdateActiveUser:Z

    if-ne v4, v0, :cond_0

    .line 736
    const-string v0, "MediaHandlerPeople"

    const-string v1, "[HTCAlbum][MediaHandlerPeople][asyncReqMediaList]:  Request update Active User! "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    const/16 v1, 0x4e20

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 764
    :goto_0
    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mForceUpdateActiveUser:Z

    .line 765
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$702(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Z)Z

    .line 766
    return-void

    .line 739
    :cond_0
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mIsExceptioned:Z

    if-ne v4, v0, :cond_1

    .line 741
    const-string v0, "MediaHandlerPeople"

    const-string v1, "[HTCAlbum][MediaHandlerPeople][asyncReqMediaList]:  Error run! "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, v6, v5, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 743
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    const/16 v1, 0x2767

    invoke-virtual {v0, v1, v5, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 747
    :cond_1
    const-string v0, "MediaHandlerPeople"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MediaHandlerPeople][asyncReqMediaList]: Total people: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Z

    move-result v0

    if-ne v4, v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mEnableCacheList:Z
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$900(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 751
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsFriendsList:Z
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$1200(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Z

    move-result v0

    if-ne v4, v0, :cond_2

    .line 753
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->putListToFileCache(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v1, v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$1300(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;Ljava/lang/Object;)V

    .line 757
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 758
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, v6, v5, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 761
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    const/16 v1, 0x4e88

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 562
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 730
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 562
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
