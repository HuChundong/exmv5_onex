.class public Lcom/htc/album/helper/RemoveFileCacheTask;
.super Lcom/htc/sunny2/common/SimpleThreadTask;
.source "RemoveFileCacheTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/common/SimpleThreadTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "RemoveFileCacheTask"

.field protected static final mExternalStorageThumbnailFolder:Ljava/lang/String;

.field protected static final mPhoneStorageThumbnailFolder:Ljava/lang/String;


# instance fields
.field protected mCacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/RemoveFileCacheTask;->mExternalStorageThumbnailFolder:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/RemoveFileCacheTask;->mPhoneStorageThumbnailFolder:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;>;"
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/htc/sunny2/common/SimpleThreadTask;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/htc/album/helper/RemoveFileCacheTask;->mContext:Landroid/content/Context;

    .line 22
    iput-object v0, p0, Lcom/htc/album/helper/RemoveFileCacheTask;->mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    .line 23
    iput-object v0, p0, Lcom/htc/album/helper/RemoveFileCacheTask;->mCacheList:Ljava/util/ArrayList;

    .line 44
    iput-object p1, p0, Lcom/htc/album/helper/RemoveFileCacheTask;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/htc/album/helper/RemoveFileCacheTask;->mCacheList:Ljava/util/ArrayList;

    .line 46
    return-void
.end method

.method private chooseRootFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 110
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileOnPhoneStorage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/album/helper/RemoveFileCacheTask;->mPhoneStorageThumbnailFolder:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/album/helper/RemoveFileCacheTask;->mExternalStorageThumbnailFolder:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/RemoveFileCacheTask;->doInBackground(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    .line 57
    const-string v2, "RemoveFileCacheTask"

    const-string v3, "[HTCAlbum][RemoveFileCacheTask][doInBackground] +++"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/htc/album/helper/RemoveFileCacheTask;->mCacheList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/helper/RemoveFileCacheTask;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/htc/album/helper/RemoveFileCacheTask;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;

    .line 61
    .local v1, item:Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;
    invoke-virtual {p0, v1}, Lcom/htc/album/helper/RemoveFileCacheTask;->removeFileCache(Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;)V

    goto :goto_0

    .line 63
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;
    :cond_0
    const-string v2, "RemoveFileCacheTask"

    const-string v3, "[HTCAlbum][RemoveFileCacheTask][doInBackground] ---"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/RemoveFileCacheTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 117
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/RemoveFileCacheTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 70
    const-string v0, "RemoveFileCacheTask"

    const-string v1, "[HTCAlbum][RemoveFileCacheTask][onPostExecute]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/RemoveFileCacheTask;->onPreExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 51
    const-string v0, "RemoveFileCacheTask"

    const-string v1, "[HTCAlbum][RemoveFileCacheTask][onPreExecute]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method protected removeFileCache(Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;)V
    .locals 18
    .parameter "item"

    .prologue
    .line 75
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;->filePath:Ljava/lang/String;

    .line 76
    .local v2, filePath:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;->dateModified:J

    .line 77
    .local v3, dateModified:J
    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;->dateTaken:J

    .line 78
    .local v5, dateTaken:J
    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;->imageSize:J

    .line 79
    .local v7, imageSize:J
    const/16 v14, 0x500

    .line 83
    .local v14, factor:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/RemoveFileCacheTask;->mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/album/helper/RemoveFileCacheTask;->mContext:Landroid/content/Context;

    invoke-direct {v1, v9}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/album/helper/RemoveFileCacheTask;->mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    .line 86
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/RemoveFileCacheTask;->mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->getFactor()I

    move-result v14

    .line 87
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/RemoveFileCacheTask;->mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    invoke-virtual/range {v1 .. v8}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->removeAll(Ljava/lang/String;JJJ)V

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/album/helper/RemoveFileCacheTask;->chooseRootFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v9, v2

    move-wide v10, v3

    invoke-static/range {v9 .. v14}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->makeCacheFilename(Ljava/lang/String;JIII)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 94
    .local v15, cachePath:Ljava/lang/String;
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 95
    const-string v1, "RemoveFileCacheTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[removeFileCache] Cache path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_1
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v17, file:Ljava/io/File;
    const-string v1, "RemoveFileCacheTask"

    move-object/from16 v0, v17

    invoke-static {v0, v1}, Lcom/htc/sunny2/common/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    const-string v1, "RemoveFileCacheTask"

    move-object/from16 v0, v17

    invoke-static {v0, v1}, Lcom/htc/sunny2/common/FilePerformanceUtil;->delete(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v15           #cachePath:Ljava/lang/String;
    .end local v17           #file:Ljava/io/File;
    :cond_2
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v16

    .line 105
    .local v16, e:Ljava/lang/Exception;
    const-string v1, "RemoveFileCacheTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][RemoveFileCacheTask][removeFileCache] Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
