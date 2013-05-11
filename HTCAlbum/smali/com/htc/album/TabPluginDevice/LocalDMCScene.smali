.class public abstract Lcom/htc/album/TabPluginDevice/LocalDMCScene;
.super Lcom/htc/album/TabPluginDLNA/DMCBaseScene;
.source "LocalDMCScene.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ADAPTER:",
        "Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;",
        ">",
        "Lcom/htc/album/TabPluginDLNA/DMCBaseScene",
        "<TADAPTER;>;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "LocalDMCScene"


# instance fields
.field private RES_720P:J

.field private mCacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

.field private mCurPlayingIndex:I

.field private mForceHDOutuput:Z

.field private mIsScreenCacheHD:Z

.field private mOutputTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingContentID:Ljava/lang/String;

.field protected mStartUpIndex:I

.field private mTotalImages:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 46
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 38
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mOutputTable:Landroid/util/SparseArray;

    .line 39
    iput v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mTotalImages:I

    .line 40
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mPlayingContentID:Ljava/lang/String;

    .line 41
    iput v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCurPlayingIndex:I

    .line 42
    iput v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mStartUpIndex:I

    .line 242
    const-wide/32 v0, 0xe1000

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->RES_720P:J

    .line 243
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mForceHDOutuput:Z

    .line 244
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mIsScreenCacheHD:Z

    .line 48
    new-instance v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    .line 49
    return-void
.end method

.method private enableHDScreenQuality()Z
    .locals 8

    .prologue
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;>;"
    const-wide/16 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 251
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->loadData()V

    .line 252
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 253
    .local v0, activity:Landroid/app/Activity;
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererID:Ljava/lang/String;

    if-nez v3, :cond_0

    move-wide v1, v6

    .line 260
    .local v1, requestRes:J
    :goto_0
    cmp-long v3, v1, v6

    if-nez v3, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mForceHDOutuput:Z

    .line 263
    iput-boolean v5, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mIsScreenCacheHD:Z

    .line 265
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mForceHDOutuput:Z

    if-eqz v3, :cond_2

    .line 267
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    invoke-static {v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCacheTaskFactorParam(Landroid/content/Context;)I

    move-result v6

    iput v6, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    .line 268
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mIsScreenCacheHD:Z

    if-nez v3, :cond_2

    .line 270
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mIsScreenCacheHD:Z

    .line 271
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iput v4, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 272
    const-string v3, "LocalDMCScene"

    const-string v5, "[enableHDScreenQuality] Enabled"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_2
    return v4

    .line 253
    .end local v1           #requestRes:J
    :cond_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererID:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->getRunningDMRRes(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    .restart local v1       #requestRes:J
    :cond_1
    move v3, v5

    .line 260
    goto :goto_1

    :cond_2
    move v4, v5

    .line 277
    goto :goto_2
.end method

.method private setOutputPath(I)V
    .locals 17
    .parameter "index"

    .prologue
    .line 131
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;>;"
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mIsScreenCacheHD:Z

    if-nez v1, :cond_1

    .line 169
    :cond_0
    return-void

    .line 134
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 135
    .local v9, adapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    if-eqz v9, :cond_0

    .line 138
    const/4 v14, 0x2

    .line 139
    .local v14, num:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mTotalImages:I

    move/from16 v16, v0

    .line 140
    .local v16, total:I
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_2

    .line 141
    const/4 v14, 0x1

    .line 143
    :cond_2
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v14, :cond_0

    .line 145
    add-int p1, p1, v11

    rem-int v13, p1, v16

    .line 146
    .local v13, imageIdx:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mForceHDOutuput:Z

    if-eqz v1, :cond_6

    .line 148
    const/4 v15, 0x0

    .line 149
    .local v15, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mOutputTable:Landroid/util/SparseArray;

    if-eqz v1, :cond_3

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mOutputTable:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #path:Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 152
    .restart local v15       #path:Ljava/lang/String;
    :cond_3
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_5

    .line 154
    :cond_4
    invoke-virtual {v9, v13}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v12

    check-cast v12, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 155
    .local v12, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 156
    .local v10, flag:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    const/16 v2, 0xc

    invoke-interface {v12}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v4

    invoke-interface {v12}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v6

    move/from16 v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJI)V

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iput v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetDMCCachePath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v15

    .line 159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mOutputTable:Landroid/util/SparseArray;

    invoke-virtual {v1, v13, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    .end local v10           #flag:I
    .end local v12           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1, v13, v15}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setOutputPath(ILjava/lang/String;)V

    .line 143
    .end local v15           #path:Ljava/lang/String;
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 166
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v13, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setOutputPath(ILjava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;
    .locals 4
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TADAPTER;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;>;"
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 80
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0, p1}, Lcom/htc/album/helper/CollectionMaker;->createCollection(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    .line 82
    .local v2, newCollection:Lcom/htc/album/modules/collection/Collection;
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mFromGallery:Z

    if-eqz v3, :cond_0

    .line 83
    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->saveToPerference()V

    .line 85
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/album/modules/collection/Collection;->setSupportedMediaTypes(I)V

    .line 87
    invoke-virtual {p0, v2, p1}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->createAdapter(Lcom/htc/album/modules/collection/Collection;Landroid/os/Bundle;)Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;

    move-result-object v1

    .line 88
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;,"TADAPTER;"
    iget v3, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mStartUpIndex:I

    invoke-virtual {v1, v3}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->setStartupPhotoID(I)V

    .line 89
    return-object v1
.end method

.method protected abstract createAdapter(Lcom/htc/album/modules/collection/Collection;Landroid/os/Bundle;)Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/collection/Collection;",
            "Landroid/os/Bundle;",
            ")TADAPTER;"
        }
    .end annotation
.end method

.method protected bridge synthetic createAdapter(Landroid/os/Bundle;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;>;"
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->createAdapter(Landroid/os/Bundle;)Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getFullFilmViewExtras()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 226
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 227
    .local v0, inValue:Landroid/os/Bundle;
    const-string v1, "TEXTURE_MAX_COUNT"

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    const-string v1, "CACHE_SET"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 229
    const-string v1, "FULL_MEM_CAHCE_SIZE"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 230
    const-string v1, "FULL_FILE_CAHCE_SIZE"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->enableHDScreenQuality()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    const-string v1, "SPECIFIC_HQ_CACHE_FLAG"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 235
    const-string v1, "SPECIFIC_HQ_SIZE_LONG_SIDE"

    const/16 v2, 0x500

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    const-string v1, "SPECIFIC_HQ_SIZE_SHORT_SIDE"

    const/16 v2, 0x2d0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 239
    :cond_0
    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 194
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;>;"
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 199
    :goto_0
    return-object v1

    .line 197
    :catch_0
    move-exception v0

    .line 199
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method protected declared-synchronized getStartupIndex()I
    .locals 6

    .prologue
    .line 57
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->getStartupPhotoID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mPlayingContentID:Ljava/lang/String;

    .line 58
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->getStartupIndex()I

    move-result v1

    .line 59
    .local v1, pos:I
    iput v1, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCurPlayingIndex:I

    .line 61
    if-gez v1, :cond_0

    .line 63
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "itemIndex"

    iget-wide v4, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mPlayingIndex:J

    long-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "itemIndex"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v1           #pos:I
    :goto_0
    monitor-exit p0

    return v1

    .line 69
    :catch_0
    move-exception v0

    .line 71
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, -0x1

    goto :goto_0

    .line 57
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onBindAdapter()V
    .locals 2

    .prologue
    .line 98
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mTotalImages:I

    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mOutputTable:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mOutputTable:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 101
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    iget v1, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mTotalImages:I

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mOutputTable:Landroid/util/SparseArray;

    .line 102
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onBindAdapter()V

    .line 103
    return-void
.end method

.method protected onItemInfoChanged(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V
    .locals 9
    .parameter "ctlInfo"

    .prologue
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 312
    iget-wide v0, p1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 313
    .local v0, nTitleIndex:J
    const-wide/16 v7, 0x1

    sub-long v7, v0, v7

    long-to-int v2, v7

    .line 314
    .local v2, playingIndex:I
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mPlayingContentID:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mPlayingContentID:Ljava/lang/String;

    iget-object v8, p1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->curContentID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    move v3, v6

    .line 315
    .local v3, validContentID:Z
    :goto_0
    const/4 v7, -0x1

    iget v8, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCurPlayingIndex:I

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCurPlayingIndex:I

    if-ne v2, v7, :cond_4

    :cond_1
    move v4, v6

    .line 317
    .local v4, validPlayingIndex:Z
    :goto_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v5}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 319
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onItemInfoChanged(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V

    .line 325
    :cond_2
    :goto_2
    return-void

    .end local v3           #validContentID:Z
    .end local v4           #validPlayingIndex:Z
    :cond_3
    move v3, v5

    .line 314
    goto :goto_0

    .restart local v3       #validContentID:Z
    :cond_4
    move v4, v5

    .line 315
    goto :goto_1

    .line 321
    .restart local v4       #validPlayingIndex:Z
    :cond_5
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 323
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onItemInfoChanged(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V

    goto :goto_2
.end method

.method protected onLoadData(Landroid/content/Intent;Landroid/content/SharedPreferences;Z)V
    .locals 2
    .parameter "caller"
    .parameter "pref"
    .parameter "fromGallery"

    .prologue
    .line 208
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;>;"
    if-eqz p3, :cond_0

    .line 210
    const-string v0, "photoId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mStartUpIndex:I

    .line 213
    :cond_0
    return-void
.end method

.method protected onPlayNext()V
    .locals 4

    .prologue
    .line 348
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mPlayingContentID:Ljava/lang/String;

    .line 349
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCurPlayingIndex:I

    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->setOutputPath(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onPlayNext()V

    .line 359
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 356
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "LocalDMCScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onPlayNext] Exception while setOutputPath, e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPlayPrevious()V
    .locals 4

    .prologue
    .line 331
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mPlayingContentID:Ljava/lang/String;

    .line 332
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCurPlayingIndex:I

    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->setOutputPath(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onPlayPrevious()V

    .line 342
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 339
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "LocalDMCScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onPlayPrevious] Exception while setOutputPath, e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRendererConnected(Ljava/lang/String;)V
    .locals 6
    .parameter "renderer"

    .prologue
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;>;"
    const/4 v5, 0x0

    .line 286
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->getRunningDMRRes(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    .line 287
    .local v1, res:J
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mIsScreenCacheHD:Z

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 289
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mForceHDOutuput:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .end local v1           #res:J
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onRendererConnected(Ljava/lang/String;)V

    .line 302
    return-void

    .line 293
    .restart local v1       #res:J
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mForceHDOutuput:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 296
    .end local v1           #res:J
    :catch_0
    move-exception v0

    .line 298
    .local v0, ex:Ljava/lang/Exception;
    iput-boolean v5, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mForceHDOutuput:Z

    goto :goto_0
.end method

.method protected onSaveData(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .parameter "editor"

    .prologue
    .line 219
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;>;"
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v0

    .line 220
    .local v0, collection:Lcom/htc/album/modules/collection/Collection;
    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->saveToPerference()V

    .line 221
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 1

    .prologue
    .line 123
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mOutputTable:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mOutputTable:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 125
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mOutputTable:Landroid/util/SparseArray;

    .line 126
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onUnbindAdapter()V

    .line 127
    return-void
.end method

.method protected playItemAt(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 175
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->setOutputPath(I)V

    .line 176
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;

    invoke-virtual {v2, p1}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 177
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mPlayingContentID:Ljava/lang/String;

    .line 178
    iput p1, p0, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->mCurPlayingIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v1           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->startPlay(J)V

    .line 185
    const-string v2, "LocalDMCScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[playItemAt] index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 182
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "LocalDMCScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[playItemAt] Exception while setOutputPath, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setDataSource(I)V
    .locals 4
    .parameter "selectedIndex"

    .prologue
    .line 108
    .local p0, this:Lcom/htc/album/TabPluginDevice/LocalDMCScene;,"Lcom/htc/album/TabPluginDevice/LocalDMCScene<TADAPTER;>;"
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->getPhotoIDs()[I

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setDataSource([II)V

    .line 111
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->setOutputPath(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 115
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "LocalDMCScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDataSource] Exception while setOutputPath, e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
