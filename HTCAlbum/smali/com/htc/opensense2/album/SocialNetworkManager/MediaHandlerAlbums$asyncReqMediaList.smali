.class Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;
.super Landroid/os/AsyncTask;
.source "MediaHandlerAlbums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;
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
        "Ljava/util/List",
        "<",
        "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;",
        ">;>;"
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

.field private mListLive:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/AlbumOp;",
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

    .line 310
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 312
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsExceptioned:Z

    .line 313
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsCacheExits:Z

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mListCache:Ljava/util/List;

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mListLive:Ljava/util/List;

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)V

    return-void
.end method

.method private isListItemChanged(Ljava/util/List;Ljava/util/List;)Z
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 462
    .local p1, listOld:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    .local p2, listNew:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    const/4 v2, 0x1

    .line 463
    .local v2, bResult:Z
    if-nez p1, :cond_0

    .line 465
    const-string v7, "MediaHandlerAlbums"

    const-string v8, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: isListItemChanged: new..."

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 493
    .end local v2           #bResult:Z
    .local v3, bResult:I
    :goto_0
    return v3

    .line 468
    .end local v3           #bResult:I
    .restart local v2       #bResult:Z
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 469
    .local v5, nCountOld:I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .line 470
    .local v4, nCountNew:I
    if-eq v5, v4, :cond_1

    .line 472
    const-string v7, "MediaHandlerAlbums"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: isListItemChanged: size changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 473
    .restart local v3       #bResult:I
    goto :goto_0

    .line 475
    .end local v3           #bResult:I
    :cond_1
    const/4 v1, 0x0

    .line 476
    .local v1, albumOld:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    const/4 v0, 0x0

    .line 477
    .local v0, albumNew:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    const/4 v6, 0x0

    .local v6, nIndex:I
    :goto_1
    if-le v4, v6, :cond_4

    .line 479
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #albumOld:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .line 480
    .restart local v1       #albumOld:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #albumNew:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .line 481
    .restart local v0       #albumNew:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 483
    const-string v7, "MediaHandlerAlbums"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: name changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 484
    .restart local v3       #bResult:I
    goto :goto_0

    .line 486
    .end local v3           #bResult:I
    :cond_2
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCoverURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCoverURL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 488
    const-string v7, "MediaHandlerAlbums"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: cover changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 489
    .restart local v3       #bResult:I
    goto/16 :goto_0

    .line 477
    .end local v3           #bResult:I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 492
    :cond_4
    const/4 v2, 0x0

    move v3, v2

    .line 493
    .restart local v3       #bResult:I
    goto/16 :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 310
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->doInBackground([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/util/List;
    .locals 15
    .parameter "urls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v7, tmpMedia:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    :try_start_0
    const-string v12, "MediaHandlerAlbums"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v14}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " : getAlbums.."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    invoke-static {v12}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-eqz v12, :cond_5

    .line 325
    const/4 v10, 0x0

    .line 326
    .local v10, walbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v12, v12, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mUids:Ljava/util/List;

    iget-object v13, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 330
    .local v8, uid:Ljava/lang/String;
    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mEnableCacheList:Z
    invoke-static {v12}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 332
    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->isFileCacheExist(Ljava/lang/String;)Z
    invoke-static {v12, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsCacheExits:Z

    .line 333
    const-string v12, "MediaHandlerAlbums"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: isFileCacheExist: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsCacheExits:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v12}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v12

    if-nez v12, :cond_0

    .line 338
    :try_start_1
    iget-boolean v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsCacheExits:Z

    if-eqz v12, :cond_0

    .line 340
    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v12, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$900(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 341
    .local v9, validList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    if-eqz v9, :cond_2

    .line 343
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .line 344
    .local v0, data:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 353
    .end local v0           #data:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v9           #validList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    :catch_0
    move-exception v1

    .line 355
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v12, "MediaHandlerAlbums"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsCacheExits:Z

    .line 357
    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    const/4 v13, 0x1

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v12, v13}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Z)Z

    .line 363
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    const/4 v12, 0x1

    iget-object v13, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v13

    if-eq v12, v13, :cond_1

    iget-boolean v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsCacheExits:Z

    if-nez v12, :cond_3

    .line 365
    :cond_1
    const-string v12, "MediaHandlerAlbums"

    const-string v13, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: Plugin: sync live..!!!"

    invoke-static {v12, v13}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 368
    :try_start_3
    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    invoke-static {v12}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    invoke-virtual {v12, v8}, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;->getAlbums(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 369
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/plugin/AlbumData;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_3

    .line 371
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    move-object v11, v10

    .end local v10           #walbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .local v11, walbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :goto_2
    :try_start_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/plugin/AlbumData;

    .line 373
    .local v0, data:Lcom/htc/opensense/album/plugin/AlbumData;
    new-instance v10, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-direct {v10, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/data/Album;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 374
    .end local v11           #walbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v10       #walbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :try_start_5
    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/AlbumData;->getPid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setPID(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/AlbumData;->getCoverUrlHeader()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setCoverUrlHeader(Ljava/lang/String;)V

    .line 376
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object v11, v10

    .end local v10           #walbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v11       #walbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    goto :goto_2

    .line 348
    .end local v0           #data:Lcom/htc/opensense/album/plugin/AlbumData;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/plugin/AlbumData;>;"
    .end local v11           #walbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v9       #validList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    .restart local v10       #walbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :cond_2
    const/4 v12, 0x0

    :try_start_6
    iput-boolean v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsCacheExits:Z

    .line 349
    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    const/4 v13, 0x1

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v12, v13}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Z)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 439
    .end local v8           #uid:Ljava/lang/String;
    .end local v9           #validList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    .end local v10           #walbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :catch_1
    move-exception v1

    .line 442
    .local v1, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    const-string v12, "MediaHandlerAlbums"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList] SocialNetworkException: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsExceptioned:Z

    .line 452
    .end local v1           #e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    :cond_3
    :goto_3
    return-object v7

    .line 378
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/plugin/AlbumData;>;"
    .restart local v8       #uid:Ljava/lang/String;
    .restart local v11       #walbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :cond_4
    :try_start_7
    const-string v12, "MediaHandlerAlbums"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-object v10, v11

    .end local v11           #walbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v10       #walbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    goto :goto_3

    .line 382
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/plugin/AlbumData;>;"
    :catch_2
    move-exception v1

    .line 384
    .local v1, e:Ljava/lang/NullPointerException;
    :goto_4
    const/4 v12, 0x1

    :try_start_8
    iput-boolean v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsExceptioned:Z

    .line 385
    const-string v12, "MediaHandlerAlbums"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    .line 445
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v8           #uid:Ljava/lang/String;
    .end local v10           #walbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :catch_3
    move-exception v1

    .line 448
    .local v1, e:Ljava/lang/Exception;
    const-string v12, "MediaHandlerAlbums"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList] Exception: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsExceptioned:Z

    goto :goto_3

    .line 391
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    :try_start_9
    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v12, v12, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaSource:Ljava/util/List;

    if-eqz v12, :cond_3

    .line 393
    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v12, v12, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaSource:Ljava/util/List;

    iget-object v13, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/opensense/social/PersonOp;

    iput-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;
    :try_end_9
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 399
    :try_start_a
    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    if-eqz v12, :cond_6

    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v12}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 401
    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v12}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v12

    invoke-virtual {v12}, Lcom/htc/opensense/social/data/Person;->getUid()Ljava/lang/String;

    move-result-object v6

    .line 402
    .local v6, strPersonOpUid:Ljava/lang/String;
    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->isFileCacheExist(Ljava/lang/String;)Z
    invoke-static {v12, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsCacheExits:Z

    .line 403
    iget-boolean v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsCacheExits:Z

    if-eqz v12, :cond_6

    .line 405
    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v12, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$900(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 406
    .restart local v9       #validList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_a .. :try_end_a} :catch_1

    .line 417
    .end local v6           #strPersonOpUid:Ljava/lang/String;
    .end local v9           #validList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    :cond_6
    :goto_5
    :try_start_b
    const-string v12, "MediaHandlerAlbums"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v14}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumRequestTotal:I
    invoke-static {v14}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$1000(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const/4 v12, 0x1

    iget-object v13, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v13

    if-eq v12, v13, :cond_7

    iget-boolean v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsCacheExits:Z

    if-nez v12, :cond_3

    .line 421
    :cond_7
    const-string v12, "MediaHandlerAlbums"

    const-string v13, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: sync live..!!!"

    invoke-static {v12, v13}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    if-eqz v12, :cond_8

    .line 424
    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v12}, Lcom/htc/opensense/social/PersonOp;->getAlbumsOf()Ljava/util/List;

    move-result-object v12

    iput-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mListLive:Ljava/util/List;

    .line 426
    :cond_8
    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mListLive:Ljava/util/List;

    if-eqz v12, :cond_9

    .line 428
    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mListLive:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 429
    .local v4, listSize:I
    const/4 v5, 0x0

    .local v5, nIndex:I
    :goto_6
    if-ge v5, v4, :cond_9

    .line 431
    new-instance v13, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mListLive:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/opensense/social/AlbumOp;

    invoke-direct {v13, v12}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/AlbumOp;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 410
    .end local v4           #listSize:I
    .end local v5           #nIndex:I
    :catch_4
    move-exception v1

    .line 412
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v12, "MediaHandlerAlbums"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsCacheExits:Z

    .line 414
    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    const/4 v13, 0x1

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v12, v13}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Z)Z

    goto/16 :goto_5

    .line 434
    .end local v1           #e:Ljava/lang/Exception;
    :cond_9
    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    const/4 v13, 0x1

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v12, v13}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Z)Z
    :try_end_b
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_3

    .line 382
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/plugin/AlbumData;>;"
    .restart local v8       #uid:Ljava/lang/String;
    .restart local v11       #walbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :catch_5
    move-exception v1

    move-object v10, v11

    .end local v11           #walbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v10       #walbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    goto/16 :goto_4
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 456
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 310
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 497
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    invoke-static {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-eqz v5, :cond_6

    .line 502
    invoke-static {}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->getActiveConnection()Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    move-result-object v2

    .line 503
    .local v2, connection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->isPermissionRequired()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 505
    iget-boolean v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsExceptioned:Z

    if-eqz v5, :cond_4

    .line 510
    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;->AUTHENTICATING:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    invoke-interface {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->getPermission()Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 512
    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;->DENIED:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    invoke-interface {v2, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->setPermissionState(Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;)V

    .line 513
    invoke-interface {v2, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->setRetryCount(I)V

    .line 514
    const-string v5, "MediaHandlerAlbums"

    const-string v6, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: DENIED"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 528
    .local v0, bIsListChanged:Z
    :try_start_0
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    invoke-direct {p0, v5, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->isListItemChanged(Ljava/util/List;Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 535
    :goto_1
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mEnableCacheList:Z
    invoke-static {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 537
    iget-boolean v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsCacheExits:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v5

    if-ne v9, v5, :cond_2

    if-ne v9, v0, :cond_2

    .line 539
    :cond_1
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mUids:Ljava/util/List;

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 540
    .local v4, uid:Ljava/lang/String;
    const-string v5, "MediaHandlerAlbums"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: putListToFileCache: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsCacheExits:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->putListToFileCache(Ljava/lang/String;Ljava/util/List;)V
    invoke-static {v5, v4, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$1100(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;Ljava/util/List;)V

    .line 544
    .end local v4           #uid:Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 546
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 547
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 549
    :cond_3
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 551
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    const/16 v6, 0x2761

    invoke-virtual {v5, v6, v10, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 552
    const-string v5, "MediaHandlerAlbums"

    const-string v6, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: ERROR_NO_LIST"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :goto_2
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v5, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Z)Z

    .line 580
    .end local v0           #bIsListChanged:Z
    .end local v2           #connection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;
    :goto_3
    return-void

    .line 519
    .restart local v2       #connection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;
    :cond_4
    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;->GRANTED:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    invoke-interface {v2, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->setPermissionState(Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;)V

    .line 520
    invoke-interface {v2, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->setRetryCount(I)V

    .line 521
    const-string v5, "MediaHandlerAlbums"

    const-string v6, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: GRANTED"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 530
    .restart local v0       #bIsListChanged:Z
    :catch_0
    move-exception v3

    .line 532
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "MediaHandlerAlbums"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 556
    .end local v3           #e:Ljava/lang/Exception;
    :cond_5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 557
    .local v1, bundle:Landroid/os/Bundle;
    const-string v5, "isLatest"

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 558
    const-string v5, "isUpdated"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 560
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    const/16 v6, 0x4e88

    invoke-virtual {v5, v6, v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 561
    const-string v5, "MediaHandlerAlbums"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: SYNC_LIST: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 567
    .end local v0           #bIsListChanged:Z
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #connection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;
    :cond_6
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 568
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 569
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsExceptioned:Z

    if-ne v9, v5, :cond_8

    .line 571
    :cond_7
    const-string v5, "MediaHandlerAlbums"

    const-string v6, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: Error Next..."

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :goto_4
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v5, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Z)Z

    .line 578
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    const/16 v6, 0x4e2e

    invoke-virtual {v5, v6, v10, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 575
    :cond_8
    const-string v5, "MediaHandlerAlbums"

    const-string v6, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: Success Next... "

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 459
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 310
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
