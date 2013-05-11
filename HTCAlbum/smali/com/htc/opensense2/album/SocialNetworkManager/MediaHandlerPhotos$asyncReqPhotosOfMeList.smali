.class Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;
.super Landroid/os/AsyncTask;
.source "MediaHandlerPhotos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncReqPhotosOfMeList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
        ">;>;"
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

    .line 271
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 273
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->mIsExceptioned:Z

    .line 274
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->mIsCacheExits:Z

    .line 275
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->mIsTaskCancel:Z

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->mIsListChanged:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 271
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->doInBackground([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/util/List;
    .locals 14
    .parameter "urls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v8, tmpMediaList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    :try_start_0
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "MediaHandlerPhotos"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MediaHandlerPhotos][asyncReqPhotosOfMeList]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z
    invoke-static {v11}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Z

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

    .line 284
    :cond_0
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUser:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    if-eqz v9, :cond_7

    .line 286
    const/4 v2, 0x0

    .line 287
    .local v2, listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    const/4 v3, 0x0

    .line 288
    .local v3, listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    const/4 v5, 0x0

    .line 290
    .local v5, listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v10, v10, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUser:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->isPhotosOfMeFileCacheExist(Ljava/lang/String;)Z
    invoke-static {v9, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->mIsCacheExits:Z

    .line 293
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "MediaHandlerPhotos"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MediaHandlerPhotos][asyncReqPhotosOfMeList]: type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mRecentListType:I
    invoke-static {v11}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_1
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z
    invoke-static {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Z

    move-result v10

    if-eq v9, v10, :cond_2

    iget-boolean v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->mIsCacheExits:Z

    if-nez v9, :cond_8

    .line 296
    :cond_2
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string v9, "MediaHandlerPhotos"

    const-string v10, "[HTCAlbum][MediaHandlerPhotos][asyncReqPhotosOfMeList]: sync live..."

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_3
    const/4 v9, 0x1

    new-array v4, v9, [Lcom/htc/opensense/social/data/Person;

    .line 298
    .local v4, listPerson:[Lcom/htc/opensense/social/data/Person;
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v10, v10, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUser:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getProfile()Lcom/htc/opensense/social/data/Person;

    move-result-object v10

    aput-object v10, v4, v9

    .line 299
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    invoke-virtual {v9, v4}, Lcom/htc/opensense/social/SocialServiceManager;->getPersonOps([Lcom/htc/opensense/social/data/Person;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 301
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->getScreenDisplayDimension(Landroid/content/Context;)[I

    move-result-object v7

    .line 302
    .local v7, nScreenDisplay:[I
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense/social/PersonOp;

    const/16 v10, 0x63

    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mRecentListType:I
    invoke-static {v11}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)I

    move-result v11

    const/4 v12, 0x0

    aget v12, v7, v12

    const/4 v13, 0x1

    aget v13, v7, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/htc/opensense/social/PersonOp;->getMediaTagOf(IIII)Ljava/util/List;

    move-result-object v3

    .line 308
    .end local v7           #nScreenDisplay:[I
    :cond_4
    if-eqz v3, :cond_5

    .line 310
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 311
    .local v1, iListSize:I
    const/4 v6, 0x0

    .local v6, nIndex:I
    :goto_0
    if-le v1, v6, :cond_5

    .line 313
    new-instance v10, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense/social/MediumOp;

    invoke-direct {v10, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/MediumOp;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 316
    .end local v1           #iListSize:I
    .end local v6           #nIndex:I
    :cond_5
    iget-boolean v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->mIsTaskCancel:Z

    if-nez v9, :cond_6

    .line 318
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v10, v10, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    invoke-virtual {v9, v10, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->isPhotoListChanged(Ljava/util/List;Ljava/util/List;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->mIsListChanged:Z

    .line 320
    :cond_6
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    const/4 v10, 0x1

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z
    invoke-static {v9, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Z)Z

    .line 343
    .end local v2           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    .end local v3           #listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    .end local v4           #listPerson:[Lcom/htc/opensense/social/data/Person;
    .end local v5           #listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :cond_7
    :goto_1
    return-object v8

    .line 324
    .restart local v2       #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    .restart local v3       #listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    .restart local v5       #listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :cond_8
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_9

    const-string v9, "MediaHandlerPhotos"

    const-string v10, "[HTCAlbum][MediaHandlerPhotos][asyncReqPhotosOfMeList]: use cache..."

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_9
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v10, v10, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUser:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->getPhotosOfMeListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v9, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$900(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .restart local v2       #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    if-eqz v2, :cond_7

    .line 330
    move-object v8, v2

    goto :goto_1

    .line 335
    .end local v2           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    .end local v3           #listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    .end local v5           #listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :catch_0
    move-exception v0

    .line 338
    .local v0, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    const-string v9, "MediaHandlerPhotos"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MediaHandlerPhotos][asyncReqPhotosOfMeList] SocialNetworkException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->mIsExceptioned:Z

    goto :goto_1
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->mIsTaskCancel:Z

    .line 348
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 271
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, newMediaList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    const/16 v6, 0x2761

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 355
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->mIsExceptioned:Z

    if-ne v5, v0, :cond_2

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 359
    const-string v0, "MediaHandlerPhotos"

    const-string v1, "[HTCAlbum][MediaHandlerPhotos][asyncReqPhotosOfMeList]: Error run! "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, v6, v4, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 386
    :goto_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->mIsExceptioned:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Z

    move-result v0

    if-ne v5, v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUser:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->putPhotosOfMeListToFileCache(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$1000(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)V

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z
    invoke-static {v0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Z)Z

    .line 391
    return-void

    .line 364
    :cond_2
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "MediaHandlerPhotos"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MediaHandlerPhotos][asyncReqPhotosOfMeList]: Total Photos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_3
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->mIsListChanged:Z

    if-nez v0, :cond_5

    .line 368
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "MediaHandlerPhotos"

    const-string v1, "[HTCAlbum][MediaHandlerPhotos][asyncReqPhotosOfMeList]: List no change"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_4
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    const/16 v1, 0x2728

    invoke-virtual {v0, v1, v4, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 373
    :cond_5
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 374
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 376
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, v6, v4, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 380
    :cond_6
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 381
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    const/16 v1, 0x4e88

    invoke-virtual {v0, v1, v4, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 351
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 271
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
