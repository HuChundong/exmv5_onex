.class Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqSetToMediaList;
.super Landroid/os/AsyncTask;
.source "MediaHandlerComments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncReqSetToMediaList"
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
.field mMediumOp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;


# direct methods
.method private constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)V
    .locals 1
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqSetToMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqSetToMediaList;->mMediumOp:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqSetToMediaList;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 7
    .parameter "urls"

    .prologue
    const/4 v6, 0x1

    .line 246
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 247
    .local v2, params:Landroid/os/Bundle;
    const-string v3, "text"

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqSetToMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaContent:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v3, 0x1

    :try_start_0
    new-array v1, v3, [Lcom/htc/opensense/social/data/Medium;

    .line 251
    .local v1, medium:[Lcom/htc/opensense/social/data/Medium;
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqSetToMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v4

    aput-object v4, v1, v3

    .line 252
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqSetToMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {v3, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqSetToMediaList;->mMediumOp:Ljava/util/List;

    .line 254
    const-string v3, "MediaHandlerComments"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MediaHandlerComments][asyncReqSetToMediaList]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v5}, Lcom/htc/opensense/social/data/Medium;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v3, "MediaHandlerComments"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MediaHandlerComments][asyncReqSetToMediaList]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqSetToMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    iget-object v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaContent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->sd(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqSetToMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;
    invoke-static {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-nez v3, :cond_1

    .line 259
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqSetToMediaList;->mMediumOp:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/social/MediumOp;

    const-string v4, "addPhotoComment"

    const-class v5, Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v3, v4, v5, v2}, Lcom/htc/opensense/social/MediumOp;->addAttachment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v1           #medium:[Lcom/htc/opensense/social/data/Medium;
    :cond_0
    :goto_0
    const-string v3, "MediaHandlerComments"

    const-string v4, "[MediaHandlerComments][asyncReqSetToMediaList]: End "

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v6}, Ljava/lang/Integer;-><init>(I)V

    return-object v3

    .line 263
    .restart local v1       #medium:[Lcom/htc/opensense/social/data/Medium;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqSetToMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;
    invoke-static {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    instance-of v3, v3, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    if-eqz v3, :cond_0

    .line 265
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqSetToMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;
    invoke-static {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v3, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Lcom/htc/opensense/social/data/Medium;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqSetToMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    iget-object v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaContent:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;->addPhotoComment(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 269
    .end local v1           #medium:[Lcom/htc/opensense/social/data/Medium;
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MediaHandlerComments"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MediaHandlerComments][asyncReqSetToMediaList]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 241
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqSetToMediaList;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqSetToMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    const/16 v1, 0x4e4e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 287
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 241
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqSetToMediaList;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 282
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 241
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqSetToMediaList;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
