.class Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;
.super Landroid/os/AsyncTask;
.source "MediaHandlerAlbums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncReqRecentList"
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

.field private mListCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private mListLivePOM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation
.end field

.field private mListLivePhoto:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation
.end field

.field private mListLiveVideo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonOp:Lcom/htc/opensense/social/PersonOp;

.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;


# direct methods
.method private constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 582
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 584
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsExceptioned:Z

    .line 585
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsCacheExits:Z

    .line 586
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListCache:Ljava/util/List;

    .line 587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    .line 589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 582
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 14
    .parameter "urls"

    .prologue
    .line 595
    :try_start_0
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    invoke-static {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-eqz v9, :cond_3

    .line 597
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mUids:Ljava/util/List;

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 602
    .local v1, id:Ljava/lang/String;
    :try_start_1
    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mUids:Ljava/util/List;

    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v11}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v11

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->isFileCacheExist(Ljava/lang/String;)Z
    invoke-static {v10, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsCacheExits:Z

    .line 603
    iget-boolean v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsCacheExits:Z

    if-eqz v9, :cond_0

    .line 604
    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mUids:Ljava/util/List;

    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v11}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v11

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v10, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$900(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 605
    .local v8, validList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 614
    .end local v8           #validList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    :cond_0
    :goto_0
    const/4 v9, 0x1

    :try_start_2
    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v10

    if-eq v9, v10, :cond_1

    iget-boolean v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsCacheExits:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    invoke-static {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    invoke-virtual {v9}, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;->onEnableCacheList()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 616
    const-string v9, "MediaHandlerAlbums"

    const-string v10, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: use cache...!!"

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v9, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$900(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    iput-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListCache:Ljava/util/List;

    .line 619
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListCache:Ljava/util/List;

    if-eqz v9, :cond_1

    .line 621
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListCache:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 624
    :cond_1
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 817
    .end local v1           #id:Ljava/lang/String;
    :goto_1
    return-object v9

    .line 608
    .restart local v1       #id:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 609
    .local v0, e:Ljava/lang/Exception;
    const-string v9, "MediaHandlerAlbums"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: exception:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsCacheExits:Z

    .line 611
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    const/4 v10, 0x1

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v9, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 809
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #id:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 812
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v9, "MediaHandlerAlbums"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList] Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsExceptioned:Z

    .line 817
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :goto_2
    new-instance v9, Ljava/lang/Integer;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1

    .line 627
    :cond_3
    :try_start_3
    const-string v9, "MediaHandlerAlbums"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v11}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "getRecentMedia.."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaSource:Ljava/util/List;

    if-nez v9, :cond_4

    .line 631
    const-string v9, "MediaHandlerAlbums"

    const-string v10, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: No source just skip.."

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 635
    :cond_4
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaSource:Ljava/util/List;

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense/social/PersonOp;

    iput-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 641
    :try_start_4
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v9}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 643
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v9}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/opensense/social/data/Person;->getUid()Ljava/lang/String;

    move-result-object v7

    .line 644
    .local v7, strPersonOpUid:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->isFileCacheExist(Ljava/lang/String;)Z
    invoke-static {v9, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsCacheExits:Z

    .line 645
    iget-boolean v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsCacheExits:Z

    if-eqz v9, :cond_5

    .line 647
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v9, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$900(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 648
    .restart local v8       #validList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 659
    .end local v7           #strPersonOpUid:Ljava/lang/String;
    .end local v8           #validList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    :cond_5
    :goto_3
    const/4 v9, 0x1

    :try_start_5
    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v10

    if-eq v9, v10, :cond_6

    iget-boolean v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsCacheExits:Z

    if-nez v9, :cond_14

    .line 661
    :cond_6
    const-string v9, "MediaHandlerAlbums"

    const-string v10, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: sync live.."

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mRecentWrappers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 663
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mRecentVWrappers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 664
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mRecentPOMWrappers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 666
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    if-eqz v9, :cond_9

    .line 668
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    invoke-static {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->getScreenDisplayDimension(Landroid/content/Context;)[I

    move-result-object v5

    .line 670
    .local v5, nScreenDisplay:[I
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnableRecentPhotos:Z
    invoke-static {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$1200(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v10

    if-ne v9, v10, :cond_7

    .line 672
    const-string v9, "MediaHandlerAlbums"

    const-string v10, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: sync live photo.."

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    aget v12, v5, v12

    const/4 v13, 0x1

    aget v13, v5, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/htc/opensense/social/PersonOp;->getRecentMedia(IIII)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    .line 680
    :cond_7
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnableRecentVideos:Z
    invoke-static {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$1300(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v10

    if-ne v9, v10, :cond_8

    .line 682
    const-string v9, "MediaHandlerAlbums"

    const-string v10, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: sync live video.."

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    aget v12, v5, v12

    const/4 v13, 0x1

    aget v13, v5, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/htc/opensense/social/PersonOp;->getRecentMedia(IIII)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    .line 690
    :cond_8
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnablePhotosOfMe:Z
    invoke-static {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$1400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v10

    if-ne v9, v10, :cond_9

    .line 692
    const-string v9, "MediaHandlerAlbums"

    const-string v10, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: sync photos of me.."

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    aget v12, v5, v12

    const/4 v13, 0x1

    aget v13, v5, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/htc/opensense/social/PersonOp;->getMediaTagOf(IIII)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    .line 702
    .end local v5           #nScreenDisplay:[I
    :cond_9
    const/4 v3, 0x0

    .line 703
    .local v3, mediumOpRP:Lcom/htc/opensense/social/MediumOp;
    const/4 v4, 0x0

    .line 704
    .local v4, mediumOpRV:Lcom/htc/opensense/social/MediumOp;
    const/4 v2, 0x0

    .line 706
    .local v2, mediumOpPOM:Lcom/htc/opensense/social/MediumOp;
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_a

    .line 708
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #mediumOpRP:Lcom/htc/opensense/social/MediumOp;
    check-cast v3, Lcom/htc/opensense/social/MediumOp;

    .line 709
    .restart local v3       #mediumOpRP:Lcom/htc/opensense/social/MediumOp;
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mRecentWrappers:Ljava/util/List;

    new-instance v10, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-direct {v10, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/MediumOp;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_a

    const-string v9, "MediaHandlerAlbums"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: recent photos count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    :cond_a
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_b

    .line 716
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #mediumOpRV:Lcom/htc/opensense/social/MediumOp;
    check-cast v4, Lcom/htc/opensense/social/MediumOp;

    .line 717
    .restart local v4       #mediumOpRV:Lcom/htc/opensense/social/MediumOp;
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mRecentVWrappers:Ljava/util/List;

    new-instance v10, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-direct {v10, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/MediumOp;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_b

    const-string v9, "MediaHandlerAlbums"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: recent videos count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    :cond_b
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_c

    .line 724
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #mediumOpPOM:Lcom/htc/opensense/social/MediumOp;
    check-cast v2, Lcom/htc/opensense/social/MediumOp;

    .line 725
    .restart local v2       #mediumOpPOM:Lcom/htc/opensense/social/MediumOp;
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mRecentPOMWrappers:Ljava/util/List;

    new-instance v10, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-direct {v10, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/MediumOp;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_c

    const-string v9, "MediaHandlerAlbums"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: photos of me count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :cond_c
    if-eqz v3, :cond_d

    .line 735
    new-instance v6, Lcom/htc/opensense/social/data/Album;

    invoke-direct {v6}, Lcom/htc/opensense/social/data/Album;-><init>()V

    .line 736
    .local v6, profile:Lcom/htc/opensense/social/data/Album;
    const-string v9, ".ruplist"

    invoke-virtual {v6, v9}, Lcom/htc/opensense/social/data/Album;->setAlbumId(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v3}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/opensense/social/data/Medium;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/htc/opensense/social/data/Album;->setCoverUrl(Ljava/lang/String;)V

    .line 738
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/htc/opensense/social/data/Album;->setCount(I)V

    .line 739
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    invoke-static {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mServiceName:Ljava/lang/String;

    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 741
    invoke-virtual {v3}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/opensense/social/data/Medium;->getCreateTime()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Lcom/htc/opensense/social/data/Album;->setCreateTime(J)V

    .line 747
    :goto_4
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    const/4 v10, 0x0

    new-instance v11, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-direct {v11, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/data/Album;)V

    invoke-interface {v9, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 753
    .end local v6           #profile:Lcom/htc/opensense/social/data/Album;
    :cond_d
    if-eqz v4, :cond_e

    .line 755
    new-instance v6, Lcom/htc/opensense/social/data/Album;

    invoke-direct {v6}, Lcom/htc/opensense/social/data/Album;-><init>()V

    .line 756
    .restart local v6       #profile:Lcom/htc/opensense/social/data/Album;
    const-string v9, ".ruvlist"

    invoke-virtual {v6, v9}, Lcom/htc/opensense/social/data/Album;->setAlbumId(Ljava/lang/String;)V

    .line 757
    invoke-virtual {v4}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/opensense/social/data/Medium;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/htc/opensense/social/data/Album;->setCoverUrl(Ljava/lang/String;)V

    .line 758
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/htc/opensense/social/data/Album;->setCount(I)V

    .line 759
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    invoke-static {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mServiceName:Ljava/lang/String;

    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 761
    invoke-virtual {v4}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/opensense/social/data/Medium;->getCreateTime()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Lcom/htc/opensense/social/data/Album;->setCreateTime(J)V

    .line 768
    :goto_5
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v10, v10, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-gt v9, v10, :cond_12

    .line 769
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    const/4 v10, 0x1

    new-instance v11, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-direct {v11, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/data/Album;)V

    invoke-interface {v9, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 777
    .end local v6           #profile:Lcom/htc/opensense/social/data/Album;
    :cond_e
    :goto_6
    if-eqz v2, :cond_f

    .line 779
    new-instance v6, Lcom/htc/opensense/social/data/Album;

    invoke-direct {v6}, Lcom/htc/opensense/social/data/Album;-><init>()V

    .line 780
    .restart local v6       #profile:Lcom/htc/opensense/social/data/Album;
    const-string v9, ".pomlist"

    invoke-virtual {v6, v9}, Lcom/htc/opensense/social/data/Album;->setAlbumId(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v2}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/opensense/social/data/Medium;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/htc/opensense/social/data/Album;->setCoverUrl(Ljava/lang/String;)V

    .line 782
    const-string v9, "skyer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "skyer photo of me url: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/htc/opensense/social/data/Album;->getCoverUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/htc/opensense/social/data/Album;->setCount(I)V

    .line 784
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    invoke-static {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mServiceName:Ljava/lang/String;

    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 786
    invoke-virtual {v2}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/opensense/social/data/Medium;->getCreateTime()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Lcom/htc/opensense/social/data/Album;->setCreateTime(J)V

    .line 792
    :goto_7
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    const/4 v10, 0x0

    new-instance v11, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-direct {v11, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/data/Album;)V

    invoke-interface {v9, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 794
    .end local v6           #profile:Lcom/htc/opensense/social/data/Album;
    :cond_f
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    const/4 v10, 0x1

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v9, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Z)Z

    goto/16 :goto_2

    .line 653
    .end local v2           #mediumOpPOM:Lcom/htc/opensense/social/MediumOp;
    .end local v3           #mediumOpRP:Lcom/htc/opensense/social/MediumOp;
    .end local v4           #mediumOpRV:Lcom/htc/opensense/social/MediumOp;
    :catch_2
    move-exception v0

    .line 654
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v9, "MediaHandlerAlbums"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: exception:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsCacheExits:Z

    .line 656
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    const/4 v10, 0x1

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v9, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Z)Z

    goto/16 :goto_3

    .line 745
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #mediumOpPOM:Lcom/htc/opensense/social/MediumOp;
    .restart local v3       #mediumOpRP:Lcom/htc/opensense/social/MediumOp;
    .restart local v4       #mediumOpRV:Lcom/htc/opensense/social/MediumOp;
    .restart local v6       #profile:Lcom/htc/opensense/social/data/Album;
    :cond_10
    const-wide/16 v9, 0x0

    invoke-virtual {v6, v9, v10}, Lcom/htc/opensense/social/data/Album;->setCreateTime(J)V

    goto/16 :goto_4

    .line 765
    :cond_11
    const-wide/16 v9, 0x0

    invoke-virtual {v6, v9, v10}, Lcom/htc/opensense/social/data/Album;->setCreateTime(J)V

    goto/16 :goto_5

    .line 771
    :cond_12
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    new-instance v10, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-direct {v10, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/data/Album;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 790
    :cond_13
    const-wide/16 v9, 0x0

    invoke-virtual {v6, v9, v10}, Lcom/htc/opensense/social/data/Album;->setCreateTime(J)V

    goto :goto_7

    .line 798
    .end local v2           #mediumOpPOM:Lcom/htc/opensense/social/MediumOp;
    .end local v3           #mediumOpRP:Lcom/htc/opensense/social/MediumOp;
    .end local v4           #mediumOpRV:Lcom/htc/opensense/social/MediumOp;
    .end local v6           #profile:Lcom/htc/opensense/social/data/Album;
    :cond_14
    const-string v9, "MediaHandlerAlbums"

    const-string v10, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: use cache...!!"

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    if-eqz v9, :cond_15

    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v9}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v9

    if-eqz v9, :cond_15

    .line 800
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v10}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/opensense/social/data/Person;->getUid()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v9, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$900(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    iput-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListCache:Ljava/util/List;

    .line 802
    :cond_15
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListCache:Ljava/util/List;

    if-eqz v9, :cond_2

    .line 804
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListCache:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 582
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 821
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 12
    .parameter "result"

    .prologue
    const/16 v11, 0x4e2f

    const/16 v10, 0x2761

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 828
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v1

    .line 829
    .local v1, count:I
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-static {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$608(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    .line 830
    iget-boolean v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsExceptioned:Z

    if-ne v9, v4, :cond_2

    .line 832
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumRequestTotal:I
    invoke-static {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$1000(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v5

    if-gt v4, v5, :cond_1

    .line 834
    const-string v4, "MediaHandlerAlbums"

    const-string v5, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: Error End... "

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 836
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v4, v10, v8, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 939
    :goto_0
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v4, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Z)Z

    .line 940
    return-void

    .line 838
    :cond_0
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    const/16 v5, 0x4e88

    invoke-virtual {v4, v5, v8, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 842
    :cond_1
    const-string v4, "MediaHandlerAlbums"

    const-string v5, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Error Next..."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v4, v11, v8, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 848
    :cond_2
    const-string v4, "MediaHandlerAlbums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Total Albums: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v4

    if-ne v9, v4, :cond_4

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mUids:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 851
    :cond_3
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mEnableCacheList:Z
    invoke-static {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 853
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mUids:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    .line 854
    .local v2, id:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->putListToFileCache(Ljava/lang/String;Ljava/util/List;)V
    invoke-static {v4, v2, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$1100(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;Ljava/util/List;)V

    .line 858
    .end local v2           #id:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnableRecentPhotos:Z
    invoke-static {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$1200(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 860
    const-string v4, "MediaHandlerAlbums"

    const-string v5, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Filter all recent photo items from list..."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const/4 v0, 0x0

    .line 862
    .local v0, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    const/4 v3, 0x0

    .local v3, nIndex:I
    :goto_2
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_5

    .line 864
    const/4 v0, 0x0

    .line 865
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .restart local v0       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    if-eqz v0, :cond_9

    .line 867
    const-string v4, ".ruplist"

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 869
    const-string v4, "MediaHandlerAlbums"

    const-string v5, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Found recent item remove it..."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 880
    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .end local v3           #nIndex:I
    :cond_5
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnablePhotosOfMe:Z
    invoke-static {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$1400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 882
    const-string v4, "MediaHandlerAlbums"

    const-string v5, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Filter photo of me from list..."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const/4 v0, 0x0

    .line 884
    .restart local v0       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    const/4 v3, 0x0

    .restart local v3       #nIndex:I
    :goto_3
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_6

    .line 886
    const/4 v0, 0x0

    .line 887
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .restart local v0       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    if-eqz v0, :cond_a

    .line 889
    const-string v4, ".pomlist"

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 892
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 902
    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .end local v3           #nIndex:I
    :cond_6
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnableRecentVideos:Z
    invoke-static {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$1300(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 904
    const-string v4, "MediaHandlerAlbums"

    const-string v5, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Filter recent videos from list..."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const/4 v0, 0x0

    .line 906
    .restart local v0       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    const/4 v3, 0x0

    .restart local v3       #nIndex:I
    :goto_4
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_7

    .line 908
    const/4 v0, 0x0

    .line 909
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .restart local v0       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    if-eqz v0, :cond_b

    .line 911
    const-string v4, ".ruvlist"

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 914
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 920
    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .end local v3           #nIndex:I
    :cond_7
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 922
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumRequestTotal:I
    invoke-static {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$1000(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v5

    if-gt v4, v5, :cond_d

    .line 924
    const-string v4, "MediaHandlerAlbums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Success End: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_c

    .line 926
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v4, v10, v8, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 853
    :cond_8
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v4}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/opensense/social/data/Person;->getUid()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 862
    .restart local v0       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v3       #nIndex:I
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 884
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 906
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 928
    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .end local v3           #nIndex:I
    :cond_c
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    const/16 v5, 0x4e88

    invoke-virtual {v4, v5, v8, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 932
    :cond_d
    const-string v4, "MediaHandlerAlbums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Success Next: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v4, v11, v8, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 582
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 824
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 582
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
