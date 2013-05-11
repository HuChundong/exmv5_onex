.class public Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;
.super Lcom/htc/album/TabPluginDevice/ObserverAdapter;
.source "AdapterLocalFolder.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "AdapterLocalFolder"

.field public static final STATE_LOAD_CACHE:I = 0x0

.field public static final STATE_LOAD_DATABASE:I = 0x1

.field private static final STATE_LOAD_UNKNOWN:I = -0x1


# instance fields
.field protected mCollectionMgr:Lcom/htc/album/helper/FolderManager;

.field protected mExtras:Landroid/os/Bundle;

.field protected mFolderReorderTask:Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;

.field private mIsEnableUpdateCache:Z

.field protected mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoadState:I

.field private mNewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mOldList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mPhysicalFolderCount:I

.field protected mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .locals 3
    .parameter "activity"
    .parameter "handler"
    .parameter "mediaTypes"
    .parameter "extras"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;I)V

    .line 35
    new-instance v0, Lcom/htc/album/helper/FolderManager;

    invoke-direct {v0}, Lcom/htc/album/helper/FolderManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mCollectionMgr:Lcom/htc/album/helper/FolderManager;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mOldList:Ljava/util/ArrayList;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    .line 40
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mIsEnableUpdateCache:Z

    .line 41
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mExtras:Landroid/os/Bundle;

    .line 42
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mFolderReorderTask:Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;

    .line 44
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 306
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mPhysicalFolderCount:I

    .line 49
    iput-object p4, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mExtras:Landroid/os/Bundle;

    .line 50
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mCollectionMgr:Lcom/htc/album/helper/FolderManager;

    invoke-virtual {v0, v2}, Lcom/htc/album/helper/FolderManager;->enableFilter4FolderBucketIds(Z)V

    .line 51
    return-void
.end method

.method private doCustomize(Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, originalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->isHiddenCacheExist()Z

    move-result v1

    .line 400
    .local v1, hidden:Z
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getHiddenCacheList()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 405
    .local v3, hiddenList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    const/4 v0, 0x0

    .line 406
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    const/4 v2, 0x0

    .line 407
    .local v2, hiddenItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v7, remove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    if-eqz v1, :cond_0

    if-nez v3, :cond_3

    .line 410
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 411
    .local v4, nCount:I
    const/4 v6, 0x0

    .local v6, nIndex:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v6, :cond_7

    .line 413
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 414
    .restart local v0       #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    const-string v8, "com.htc.HTCAlbum.ALL_PHOTOS"

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 415
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 416
    :cond_2
    const-string v8, "com.htc.HTCAlbum.ALL_VIDEOS"

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 417
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 422
    .end local v4           #nCount:I
    .end local v6           #nIndex:I
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 424
    .restart local v4       #nCount:I
    const/4 v5, 0x0

    .local v5, nHiddenIndex:I
    :goto_2
    if-le v4, v5, :cond_7

    .line 426
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #hiddenItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    check-cast v2, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .restart local v2       #hiddenItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-nez v2, :cond_5

    .line 424
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 429
    :cond_5
    const-string v8, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getFolderType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 432
    const/4 v6, 0x0

    .restart local v6       #nIndex:I
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v6, :cond_4

    .line 434
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 435
    .restart local v0       #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 436
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 440
    .end local v5           #nHiddenIndex:I
    .end local v6           #nIndex:I
    :cond_7
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 441
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 442
    return-void
.end method


# virtual methods
.method public addItem(ILcom/htc/album/TabPluginDevice/AlbumCollection;)V
    .locals 2
    .parameter "index"
    .parameter "collection"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mFolderReorderTask:Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mFolderReorderTask:Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;->cancel(Z)Z

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mFolderReorderTask:Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;

    .line 128
    :cond_0
    new-instance v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;-><init>(Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mFolderReorderTask:Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;

    .line 129
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mFolderReorderTask:Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 130
    return-void
.end method

.method protected caculatePhysicalFolderSize(Ljava/util/ArrayList;)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    const/4 v2, 0x0

    .line 313
    .local v2, virtualFolderCount:I
    if-eqz p1, :cond_0

    .line 315
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 317
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 318
    .local v0, c:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-eqz v0, :cond_2

    .line 320
    const-string v3, "com.htc.HTCAlbum.LOCAL_FOLDER"

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getFolderType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    .end local v0           #c:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v1           #i:I
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    return v3

    .line 323
    .restart local v0       #c:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 315
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public enableBroadcastNotify()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public enableCacheUpdate(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mIsEnableUpdateCache:Z

    .line 143
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 65
    .local v0, nCount:I
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 68
    :cond_0
    return v0
.end method

.method protected getHiddenCacheList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const-string v1, "local"

    const-string v2, "local"

    const/16 v3, 0x9

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/album/ObjectWriter/AlbumCacher;->readCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "AdapterLocalFolder"

    return-object v0
.end method

.method public getItem(I)Lcom/htc/sunnyCore/IMediaData;
    .locals 6
    .parameter "itemIndex"

    .prologue
    .line 78
    const/4 v2, 0x0

    .line 79
    .local v2, mediaData:Lcom/htc/sunnyCore/IMediaData;
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 83
    :try_start_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunnyCore/IMediaData;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-object v2

    .line 85
    :catch_0
    move-exception v1

    .line 87
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "AdapterLocalFolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SmartFolderAdapter][getItem]: IndexOutOfBoundsException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLastLoadState()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    return v0
.end method

.method public getPhysicalFolderCount()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mPhysicalFolderCount:I

    return v0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 556
    const/4 v0, 0x0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 561
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 566
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    return-object v0
.end method

.method public isCacheExist()Z
    .locals 5

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const-string v2, "local"

    const-string v3, "local"

    const/16 v4, 0x8

    invoke-static {v1, v2, v3, v4}, Lcom/htc/album/ObjectWriter/AlbumCacher;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 110
    return v0
.end method

.method public final isCollectionChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 345
    .local p1, currentCollection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    .local p2, newCollection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    const/4 v1, 0x1

    .line 347
    .local v1, bResult:Z
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v2, v1

    .line 393
    .end local v1           #bResult:Z
    .local v2, bResult:I
    :goto_0
    return v2

    .line 350
    .end local v2           #bResult:I
    .restart local v1       #bResult:Z
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 351
    .local v7, nQueriedCount:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 352
    .local v5, nCachedCount:I
    if-eq v7, v5, :cond_2

    .line 354
    const-string v11, "AdapterLocalFolder"

    const-string v12, "[HTCAlbum][AdapterLocalFolder][isCollectionChanged]: size differs"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 355
    .restart local v2       #bResult:I
    goto :goto_0

    .line 358
    .end local v2           #bResult:I
    :cond_2
    move v10, v7

    .line 359
    .local v10, totalCount:I
    const/4 v6, 0x0

    .local v6, nIndex:I
    :goto_1
    if-le v10, v6, :cond_8

    .line 361
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 362
    .local v8, queriedAC:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 363
    .local v3, cachedAC:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getCoverImage()Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v9

    .line 364
    .local v9, queriedImage:Lcom/htc/album/modules/collection/SimpleImage;
    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getCoverImage()Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v4

    .line 365
    .local v4, cachedImage:Lcom/htc/album/modules/collection/SimpleImage;
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 367
    const-string v11, "AdapterLocalFolder"

    const-string v12, "[HTCAlbum][AdapterLocalFolder][isCollectionChanged]: name differs"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 368
    .restart local v2       #bResult:I
    goto :goto_0

    .line 370
    .end local v2           #bResult:I
    :cond_3
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getPhotoCount()I

    move-result v11

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getPhotoCount()I

    move-result v12

    if-eq v11, v12, :cond_4

    .line 372
    const-string v11, "AdapterLocalFolder"

    const-string v12, "[HTCAlbum][AdapterLocalFolder][isCollectionChanged]: count differs"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 373
    .restart local v2       #bResult:I
    goto :goto_0

    .line 375
    .end local v2           #bResult:I
    :cond_4
    iget-wide v11, v9, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    iget-wide v13, v4, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    cmp-long v11, v11, v13

    if-eqz v11, :cond_5

    .line 377
    const-string v11, "AdapterLocalFolder"

    const-string v12, "[HTCAlbum][AdapterLocalFolder][isCollectionChanged]: item time differs"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 378
    .restart local v2       #bResult:I
    goto :goto_0

    .line 380
    .end local v2           #bResult:I
    :cond_5
    iget v11, v9, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    iget v12, v4, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    if-eq v11, v12, :cond_6

    .line 382
    const-string v11, "AdapterLocalFolder"

    const-string v12, "[HTCAlbum][AdapterLocalFolder][isSameCollection]: item degree of rotation differs"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 383
    .restart local v2       #bResult:I
    goto :goto_0

    .line 385
    .end local v2           #bResult:I
    :cond_6
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getSupportedMediaTypes()I

    move-result v11

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getSupportedMediaTypes()I

    move-result v12

    if-eq v11, v12, :cond_7

    .line 387
    const-string v11, "AdapterLocalFolder"

    const-string v12, "[HTCAlbum][AdapterLocalFolder][isCollectionChanged]: Media Type changed!!"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 388
    .restart local v2       #bResult:I
    goto/16 :goto_0

    .line 359
    .end local v2           #bResult:I
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 392
    .end local v3           #cachedAC:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v4           #cachedImage:Lcom/htc/album/modules/collection/SimpleImage;
    .end local v8           #queriedAC:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v9           #queriedImage:Lcom/htc/album/modules/collection/SimpleImage;
    :cond_8
    const/4 v1, 0x0

    move v2, v1

    .line 393
    .restart local v2       #bResult:I
    goto/16 :goto_0
.end method

.method protected isHiddenCacheExist()Z
    .locals 5

    .prologue
    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const-string v2, "local"

    const-string v3, "local"

    const/16 v4, 0x9

    invoke-static {v1, v2, v3, v4}, Lcom/htc/album/ObjectWriter/AlbumCacher;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 451
    return v0
.end method

.method protected onLoadDataBegin()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->onLoadDataBegin()V

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    .line 150
    return-void
.end method

.method protected onLoadDataCancelled()V
    .locals 1

    .prologue
    .line 283
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->onLoadDataCancelled()V

    .line 284
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mCollectionMgr:Lcom/htc/album/helper/FolderManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/FolderManager;->stopLoadData()V

    .line 285
    return-void
.end method

.method protected onLoadDataEnd(Ljava/lang/Integer;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mOldList:Ljava/util/ArrayList;

    .line 295
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    .line 297
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mOldList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mOldList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 299
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mOldList:Ljava/util/ArrayList;

    .line 301
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->onLoadDataEnd(Ljava/lang/Integer;)V

    .line 303
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 305
    :cond_1
    return-void
.end method

.method protected onLoadDataInBackground(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 17
    .parameter "params"

    .prologue
    .line 158
    const-string v13, "AdapterLocalFolder"

    const-string v14, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground]: begin"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v8, 0x0

    .line 163
    .local v8, hasFileCache:Z
    const/4 v13, 0x2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    and-int/lit8 v14, v14, 0x2

    if-ne v13, v14, :cond_5

    const/4 v12, 0x1

    .line 164
    .local v12, requestReload:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mExtras:Landroid/os/Bundle;

    const-string v14, "media_connected"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 166
    .local v2, bIsMediaConnected:Z
    const/4 v13, 0x1

    if-ne v13, v2, :cond_6

    .line 168
    const-string v13, "AdapterLocalFolder"

    const-string v14, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground] Load by MediaConnnected"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v12, 0x1

    .line 170
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mExtras:Landroid/os/Bundle;

    const-string v14, "media_connected"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 171
    const/16 v13, 0x4e46

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->onPostMessage(ILjava/lang/Object;I)V

    .line 194
    :cond_0
    :goto_1
    if-nez v12, :cond_1

    if-nez v8, :cond_8

    .line 196
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mExtras:Landroid/os/Bundle;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mExtras:Landroid/os/Bundle;

    const-string v14, "MimeTypeFilter"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 198
    .local v7, filter:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mCollectionMgr:Lcom/htc/album/helper/FolderManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v14}, Lcom/htc/album/helper/FolderManager;->prepareFilter4FolderBucketIds(Landroid/content/Context;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mCollectionMgr:Lcom/htc/album/helper/FolderManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v15, v7, v0}, Lcom/htc/album/helper/FolderManager;->getCollectionList(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    .line 201
    const/4 v1, 0x0

    .line 202
    .local v1, bIsCollectionChanged:Z
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->isCollectionChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-ne v13, v1, :cond_2

    .line 204
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mIsEnableUpdateCache:Z

    if-ne v13, v14, :cond_2

    .line 206
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->onWriteCache(Ljava/util/ArrayList;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    invoke-static {v13}, Lcom/htc/album/helper/UserProfilingLog;->logStorageContent(Ljava/util/ArrayList;)V

    .line 211
    :cond_2
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    .line 213
    const-string v13, "AdapterLocalFolder"

    const-string v14, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground]: database: "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v13, "AdapterLocalFolder"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground]: isChanged: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : enabled update: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mIsEnableUpdateCache:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v1           #bIsCollectionChanged:Z
    .end local v7           #filter:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->doCustomize(Ljava/util/ArrayList;)V

    .line 258
    const/4 v10, 0x0

    .line 259
    .local v10, nCount:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    if-eqz v13, :cond_3

    .line 261
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 262
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->caculatePhysicalFolderSize(Ljava/util/ArrayList;)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->setPhysicalFolderCount(I)V

    .line 265
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    and-int/lit8 v13, v13, 0x2

    const/4 v14, 0x2

    if-eq v13, v14, :cond_4

    .line 267
    const-string v13, "AdapterLocalFolder"

    const-string v14, "[HTCAlbum][AdapterLocalFolder][onLoadDataEnd]: remove loading"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/16 v13, 0x4e46

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->onRemoveMessage(I)V

    .line 271
    :cond_4
    const-string v13, "AdapterLocalFolder"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground]: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v13, "AdapterLocalFolder"

    const-string v14, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground]: end"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-object p1

    .line 163
    .end local v2           #bIsMediaConnected:Z
    .end local v10           #nCount:I
    .end local v12           #requestReload:Z
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 175
    .restart local v2       #bIsMediaConnected:Z
    .restart local v12       #requestReload:Z
    :cond_6
    const-string v13, "AdapterLocalFolder"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground] reload: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    if-nez v12, :cond_0

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->isCacheExist()Z

    move-result v8

    .line 179
    if-nez v8, :cond_0

    .line 181
    const-string v13, "AdapterLocalFolder"

    const-string v14, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground] new load "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/16 v13, 0x4e46

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->onPostMessage(ILjava/lang/Object;I)V

    goto/16 :goto_1

    .line 196
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 218
    :cond_8
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isAllStorageReady()Z

    move-result v3

    .line 219
    .local v3, bIsStorageReady:Z
    const-string v13, "AdapterLocalFolder"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground]: media connected: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v4, 0x0

    .line 221
    .local v4, cacheList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    if-eqz v3, :cond_9

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->onReadCache()Ljava/util/ArrayList;

    move-result-object v4

    .line 225
    :cond_9
    if-nez v4, :cond_a

    .line 226
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #cacheList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .restart local v4       #cacheList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mIsEnableUpdateCache:Z

    if-nez v13, :cond_c

    .line 233
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v11, removedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_b
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 237
    .local v5, collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getContainedMediaTypes()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    and-int/2addr v13, v14

    if-nez v13, :cond_b

    .line 239
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 245
    .end local v5           #collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #removedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    :catch_0
    move-exception v6

    .line 247
    .local v6, ex:Ljava/lang/Exception;
    const-string v13, "AdapterLocalFolder"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground] Exception: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .end local v6           #ex:Ljava/lang/Exception;
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    .line 253
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    .line 254
    const-string v13, "AdapterLocalFolder"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground]: count: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 242
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v11       #removedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    :cond_d
    :try_start_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_c

    .line 243
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method protected onReadCache()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 475
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const-string v1, "local"

    const-string v2, "local"

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/album/ObjectWriter/AlbumCacher;->readCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public onUnloadData()V
    .locals 2

    .prologue
    .line 465
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->onUnloadData()V

    .line 466
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mFolderReorderTask:Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mFolderReorderTask:Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;->cancel(Z)Z

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mFolderReorderTask:Lcom/htc/album/TabPluginDevice/AdapterLocalFolder$ReorderListTask;

    .line 471
    :cond_0
    return-void
.end method

.method protected onWriteCache(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 484
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const-string v1, "local"

    const-string v2, "local"

    const/16 v4, 0x8

    const/4 v5, 0x1

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/album/ObjectWriter/AlbumCacher;->writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    .line 490
    return-void
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method public setPhysicalFolderCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 334
    iput p1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mPhysicalFolderCount:I

    .line 335
    const-string v0, "AdapterLocalFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[caculatePhysicalFolderSize] mPhysicalFolderCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mPhysicalFolderCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-void
.end method

.method public setSceneDisplayControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V
    .locals 0
    .parameter "control"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 55
    return-void
.end method
