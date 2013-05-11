.class Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;
.super Landroid/os/AsyncTask;
.source "MediaHandlerComments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;
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
        "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;


# direct methods
.method private constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 345
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->doInBackground([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/util/List;
    .locals 20
    .parameter "urls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v9, mTempMediaWrappers:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    iget-object v15, v15, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v15}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v14

    .line 355
    .local v14, uid:Ljava/lang/String;
    :try_start_0
    const-string v15, "MediaHandlerComments"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[MediaHandlerComments][asyncReqMediaList]: force update: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mIsForceLiveUpdate:Z
    invoke-static/range {v19 .. v19}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " : getAttachments.."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    const/4 v3, 0x0

    .line 358
    .local v3, bIsFileCacheExist:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mIsForceLiveUpdate:Z
    invoke-static {v15}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 360
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->isFileCacheExist(Ljava/lang/String;)Z
    invoke-static {v15, v14}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;Ljava/lang/String;)Z

    move-result v3

    .line 363
    :cond_0
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mIsForceLiveUpdate:Z
    invoke-static/range {v16 .. v16}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)Z

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    if-nez v3, :cond_7

    .line 365
    :cond_1
    const-string v15, "MediaHandlerComments"

    const-string v16, "[MediaHandlerComments][asyncReqMediaList]: sync live..."

    invoke-static/range {v15 .. v16}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/4 v15, 0x1

    new-array v10, v15, [Lcom/htc/opensense/social/data/Medium;

    .line 368
    .local v10, medium:[Lcom/htc/opensense/social/data/Medium;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v16

    aput-object v16, v10, v15

    .line 370
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;
    invoke-static {v15}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    move-result-object v15

    iget-object v15, v15, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-nez v15, :cond_4

    .line 372
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {v15, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 374
    .local v11, mediumOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    const/4 v15, 0x0

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/opensense/social/MediumOp;

    const-string v16, "getComments"

    const-class v17, Lcom/htc/opensense/social/data/Comment;

    invoke-virtual/range {v15 .. v17}, Lcom/htc/opensense/social/MediumOp;->getAttachments(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 375
    .local v2, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Attachment;>;"
    if-eqz v2, :cond_6

    .line 377
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 378
    .local v13, profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/social/data/Attachment;

    .line 380
    .local v1, att:Lcom/htc/opensense/social/data/Attachment;
    move-object v0, v1

    check-cast v0, Lcom/htc/opensense/social/data/Comment;

    move-object v5, v0

    .line 381
    .local v5, comment:Lcom/htc/opensense/social/data/Comment;
    invoke-virtual {v5}, Lcom/htc/opensense/social/data/Comment;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v12

    .line 382
    .local v12, p:Lcom/htc/opensense/social/data/Profile;
    iget-object v15, v12, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {v13, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    .end local v1           #att:Lcom/htc/opensense/social/data/Attachment;
    .end local v2           #attachments:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Attachment;>;"
    .end local v3           #bIsFileCacheExist:Z
    .end local v5           #comment:Lcom/htc/opensense/social/data/Comment;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #medium:[Lcom/htc/opensense/social/data/Medium;
    .end local v11           #mediumOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    .end local v12           #p:Lcom/htc/opensense/social/data/Profile;
    .end local v13           #profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    :catch_0
    move-exception v7

    .line 426
    .local v7, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    const-string v15, "MediaHandlerComments"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[MediaHandlerComments][asyncReqMediaList] SocialNetworkException: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .end local v7           #e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    :cond_2
    :goto_1
    return-object v9

    .line 384
    .restart local v2       #attachments:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Attachment;>;"
    .restart local v3       #bIsFileCacheExist:Z
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v10       #medium:[Lcom/htc/opensense/social/data/Medium;
    .restart local v11       #mediumOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    .restart local v13       #profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    :cond_3
    const/4 v15, 0x0

    :try_start_1
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v15, v13}, Lcom/htc/opensense/social/MediumOp;->updateProfiles(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v13

    .line 386
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/social/data/Attachment;

    .line 388
    .restart local v1       #att:Lcom/htc/opensense/social/data/Attachment;
    move-object v0, v1

    check-cast v0, Lcom/htc/opensense/social/data/Comment;

    move-object v5, v0

    .line 389
    .restart local v5       #comment:Lcom/htc/opensense/social/data/Comment;
    invoke-virtual {v5}, Lcom/htc/opensense/social/data/Comment;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v15

    iget-object v15, v15, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/opensense/social/data/Profile;

    invoke-virtual {v5, v15}, Lcom/htc/opensense/social/data/Comment;->setProfile(Lcom/htc/opensense/social/data/Profile;)V

    .line 391
    new-instance v15, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    invoke-direct {v15, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;-><init>(Lcom/htc/opensense/social/data/Comment;)V

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 397
    .end local v1           #att:Lcom/htc/opensense/social/data/Attachment;
    .end local v2           #attachments:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Attachment;>;"
    .end local v5           #comment:Lcom/htc/opensense/social/data/Comment;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #mediumOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    .end local v13           #profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;
    invoke-static {v15}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    move-result-object v15

    iget-object v15, v15, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    instance-of v15, v15, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    if-eqz v15, :cond_6

    .line 399
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;
    invoke-static {v15}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    move-result-object v15

    iget-object v15, v15, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v15, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    const/16 v16, 0x0

    aget-object v16, v10, v16

    invoke-virtual/range {v16 .. v16}, Lcom/htc/opensense/social/data/Medium;->getId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;->getPhotoComments(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 400
    .local v6, commentList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Comment;>;"
    if-eqz v6, :cond_6

    .line 402
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/social/data/Comment;

    .line 404
    .restart local v5       #comment:Lcom/htc/opensense/social/data/Comment;
    if-eqz v5, :cond_5

    new-instance v15, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    invoke-direct {v15, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;-><init>(Lcom/htc/opensense/social/data/Comment;)V

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 410
    .end local v5           #comment:Lcom/htc/opensense/social/data/Comment;
    .end local v6           #commentList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Comment;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    const/16 v16, 0x1

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mIsForceLiveUpdate:Z
    invoke-static/range {v15 .. v16}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;Z)Z

    goto/16 :goto_1

    .line 414
    .end local v10           #medium:[Lcom/htc/opensense/social/data/Medium;
    :cond_7
    const-string v15, "MediaHandlerComments"

    const-string v16, "[MediaHandlerComments][asyncReqMediaList]: use cache..."

    invoke-static/range {v15 .. v16}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v15, v14}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;
    :try_end_1
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_1 .. :try_end_1} :catch_0

    .line 417
    .local v4, cacheList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;>;"
    if-eqz v4, :cond_2

    .line 419
    move-object v9, v4

    goto/16 :goto_1
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 432
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 345
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, commentList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 439
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 440
    if-eqz p1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    iput-object p1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaWrappers:Ljava/util/List;

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 446
    .local v0, iCommentSize:I
    if-nez v0, :cond_3

    .line 448
    const-string v1, "MediaHandlerComments"

    const-string v4, "[MediaHandlerComments][asyncReqMediaList]: no comments..."

    invoke-static {v1, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    const/16 v5, 0x2761

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mIsForceLiveUpdate:Z
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 457
    :goto_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mIsForceLiveUpdate:Z
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)Z

    move-result v1

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mEnableCacheList:Z
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)Z

    move-result v1

    if-ne v2, v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaWrappers:Ljava/util/List;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->putListToFileCache(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v1, v2, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->access$900(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;Ljava/lang/String;Ljava/lang/Object;)V

    .line 462
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mIsForceLiveUpdate:Z
    invoke-static {v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;Z)Z

    .line 463
    return-void

    :cond_2
    move v1, v3

    .line 449
    goto :goto_0

    .line 453
    :cond_3
    const-string v1, "MediaHandlerComments"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MediaHandlerComments][asyncReqMediaList]: comment size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    const/16 v5, 0x4e92

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mIsForceLiveUpdate:Z
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method protected varargs onProgressUpdate([Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, progress:[Ljava/util/List;,"[Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;>;"
    return-void
.end method
