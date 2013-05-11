.class Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;
.super Ljava/lang/Thread;
.source "ActivityAlbumFolderSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread$DecodeItem;
    }
.end annotation


# instance fields
.field private final CACHE_LOCKER:Ljava/lang/Object;

.field private mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

.field private mDecodeNotifier:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$BitmapDecodeNotifier;

.field private mPause:Z

.field private final mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread$DecodeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$BitmapDecodeNotifier;)V
    .locals 2
    .parameter
    .parameter "n"

    .prologue
    const/4 v1, 0x0

    .line 1071
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    .line 1072
    const-string v0, "AlbumSelectorDecodeThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1064
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mQueue:Ljava/util/List;

    .line 1068
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->CACHE_LOCKER:Ljava/lang/Object;

    .line 1073
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mStop:Z

    .line 1074
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mPause:Z

    .line 1075
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mDecodeNotifier:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$BitmapDecodeNotifier;

    .line 1076
    return-void
.end method

.method private addDecodeItem(ILcom/htc/album/TabPluginDevice/AlbumCollection;)V
    .locals 3
    .parameter "position"
    .parameter "collection"

    .prologue
    .line 1242
    const-string v0, "ActivityAlbumFolderSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][addDecodeItem]: position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mQueue:Ljava/util/List;

    monitor-enter v1

    .line 1245
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mQueue:Ljava/util/List;

    new-instance v2, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread$DecodeItem;

    invoke-direct {v2, p0, p1, p2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread$DecodeItem;-><init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;ILcom/htc/album/TabPluginDevice/AlbumCollection;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1246
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mQueue:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1247
    monitor-exit v1

    .line 1248
    return-void

    .line 1247
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getRoundCornerBitmap4ListView(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "context"
    .parameter "bitmapSrc"
    .parameter "nDefaultRes"
    .parameter "bRecycleSrc"

    .prologue
    .line 1324
    return-object p2
.end method


# virtual methods
.method public doClear()V
    .locals 2

    .prologue
    .line 1280
    const-string v0, "ActivityAlbumFolderSelector"

    const-string v1, "[HTCAlbum][LocalFolderAdapterBase][DecodeThread]: doClear..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mQueue:Ljava/util/List;

    monitor-enter v1

    .line 1283
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1284
    monitor-exit v1

    .line 1285
    return-void

    .line 1284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1298
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mQueue:Ljava/util/List;

    monitor-enter v1

    .line 1299
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mPause:Z

    if-ne v2, v0, :cond_0

    monitor-exit v1

    .line 1304
    :goto_0
    return-void

    .line 1301
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mPause:Z

    .line 1302
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mQueue:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1303
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doResume()V
    .locals 2

    .prologue
    .line 1288
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mQueue:Ljava/util/List;

    monitor-enter v1

    .line 1289
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mPause:Z

    if-nez v0, :cond_0

    monitor-exit v1

    .line 1294
    :goto_0
    return-void

    .line 1291
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mPause:Z

    .line 1292
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mQueue:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1293
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doStop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1308
    const-string v0, "ActivityAlbumFolderSelector"

    const-string v1, "[HTCAlbum][LocalFolderAdapterBase][DecodeThread]: stop..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mQueue:Ljava/util/List;

    monitor-enter v1

    .line 1310
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mStop:Z

    if-ne v2, v0, :cond_0

    monitor-exit v1

    .line 1315
    :goto_0
    return-void

    .line 1312
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mStop:Z

    .line 1313
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mQueue:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1314
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 1319
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mPause:Z

    return v0
.end method

.method public pull(ILcom/htc/album/TabPluginDevice/AlbumCollection;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "position"
    .parameter "collection"

    .prologue
    .line 1251
    const/4 v8, 0x0

    .line 1252
    .local v8, bitmap:Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->CACHE_LOCKER:Ljava/lang/Object;

    monitor-enter v10

    .line 1253
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    if-eqz v0, :cond_0

    .line 1254
    invoke-virtual {p2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getCoverImage()Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v9

    .line 1255
    .local v9, coverImage:Lcom/htc/album/modules/collection/SimpleImage;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    iget-object v1, v9, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    iget-wide v3, v9, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    iget v5, v9, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    move v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense2/album/cache/CacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1262
    .end local v9           #coverImage:Lcom/htc/album/modules/collection/SimpleImage;
    :cond_0
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1263
    if-nez v8, :cond_1

    .line 1264
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->addDecodeItem(ILcom/htc/album/TabPluginDevice/AlbumCollection;)V

    .line 1267
    :cond_1
    return-object v8

    .line 1262
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 15

    .prologue
    .line 1079
    new-instance v1, Lcom/htc/opensense2/album/cache/CacheManager;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    sget v5, Lcom/htc/opensense2/album/cache/CacheManager;->MAX_LISTVIEW_MEM_BUFFER:I

    const/16 v6, 0x3e8

    invoke-direct {v1, v4, v5, v6}, Lcom/htc/opensense2/album/cache/CacheManager;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    .line 1083
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mStop:Z

    if-nez v1, :cond_1

    .line 1085
    const/4 v13, 0x0

    .line 1086
    .local v13, decodeItem:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread$DecodeItem;
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mQueue:Ljava/util/List;

    monitor-enter v4

    .line 1087
    const/4 v1, 0x1

    :try_start_0
    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mStop:Z

    if-ne v1, v5, :cond_2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1232
    .end local v13           #decodeItem:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread$DecodeItem;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->CACHE_LOCKER:Ljava/lang/Object;

    monitor-enter v4

    .line 1233
    :try_start_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/cache/CacheManager;->release()V

    .line 1234
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    .line 1235
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1237
    const-string v1, "ActivityAlbumFolderSelector"

    const-string v4, "[HTCAlbum][LocalFolderAdapterBase][DecodeThread]: Finish..."

    invoke-static {v1, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    return-void

    .line 1089
    .restart local v13       #decodeItem:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread$DecodeItem;
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mPause:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v1, v5, :cond_4

    .line 1091
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mQueue:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1098
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mQueue:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread$DecodeItem;

    move-object v13, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1103
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1105
    iget-object v10, v13, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread$DecodeItem;->collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 1106
    .local v10, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    iget v3, v13, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread$DecodeItem;->position:I

    .line 1108
    .local v3, nIndex:I
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.htc.HTCAlbum.DUMMY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1111
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getCoverImage()Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v12

    .line 1112
    .local v12, coverImage:Lcom/htc/album/modules/collection/SimpleImage;
    const/4 v2, 0x0

    .line 1116
    .local v2, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    iget-object v2, v12, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    iget-wide v4, v12, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    iget v6, v12, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/htc/opensense2/album/cache/CacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1122
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_7

    .line 1123
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mQueue:Ljava/util/List;

    monitor-enter v4

    .line 1124
    const/4 v1, 0x1

    :try_start_6
    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mStop:Z

    if-ne v1, v5, :cond_5

    monitor-exit v4

    goto :goto_1

    .line 1129
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    .line 1092
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #nIndex:I
    .end local v10           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v12           #coverImage:Lcom/htc/album/modules/collection/SimpleImage;
    :catch_0
    move-exception v14

    .line 1093
    .local v14, e:Ljava/lang/InterruptedException;
    :try_start_7
    monitor-exit v4

    goto :goto_0

    .line 1103
    .end local v14           #e:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v1

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1

    .line 1100
    :catch_1
    move-exception v14

    .line 1101
    .local v14, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    .line 1126
    .end local v14           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #nIndex:I
    .restart local v10       #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .restart local v12       #coverImage:Lcom/htc/album/modules/collection/SimpleImage;
    :cond_5
    :try_start_9
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mDecodeNotifier:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$BitmapDecodeNotifier;

    if-eqz v1, :cond_6

    .line 1127
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mDecodeNotifier:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$BitmapDecodeNotifier;

    invoke-interface {v1, v3, v2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$BitmapDecodeNotifier;->onReady(ILandroid/graphics/Bitmap;)V

    .line 1129
    :cond_6
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 1134
    :cond_7
    const-string v1, "video/x-wmv-drm"

    iget-object v4, v12, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1137
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    iget-object v2, v12, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    iget-wide v4, v12, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    iget v6, v12, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    const/4 v7, 0x1

    const/4 v8, 0x2

    invoke-virtual/range {v1 .. v8}, Lcom/htc/opensense2/album/cache/CacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1146
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    :cond_8
    const/4 v1, 0x1

    iget-boolean v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mStop:Z

    if-eq v1, v4, :cond_1

    .line 1148
    if-eqz v2, :cond_c

    .line 1150
    invoke-static {}, Lcom/htc/album/Customizable/CustHtcListViewStyle;->isListItemPhotoFramed()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1154
    :try_start_a
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-static {v4}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getIconDefaultAlbum(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->getRoundCornerBitmap4ListView(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    move-result-object v2

    .line 1165
    :goto_2
    const/4 v1, 0x1

    iget-boolean v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mStop:Z

    if-eq v1, v4, :cond_1

    .line 1167
    if-eqz v2, :cond_0

    .line 1169
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    const/4 v4, 0x1

    iget-object v5, v12, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    iget-wide v6, v12, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    iget v8, v12, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    const/4 v9, 0x1

    invoke-virtual/range {v1 .. v9}, Lcom/htc/opensense2/album/cache/CacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .line 1179
    :cond_9
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mQueue:Ljava/util/List;

    monitor-enter v4

    .line 1180
    const/4 v1, 0x1

    :try_start_b
    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mStop:Z

    if-ne v1, v5, :cond_a

    monitor-exit v4

    goto/16 :goto_1

    .line 1185
    :catchall_2
    move-exception v1

    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v1

    .line 1159
    :catch_2
    move-exception v14

    .line 1161
    .local v14, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 1162
    const-string v1, "ActivityAlbumFolderSelector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][LocalFolderAdapterBase][DecodeThread]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1182
    .end local v14           #e:Ljava/lang/Exception;
    :cond_a
    :try_start_c
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mDecodeNotifier:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$BitmapDecodeNotifier;

    if-eqz v1, :cond_b

    .line 1183
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mDecodeNotifier:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$BitmapDecodeNotifier;

    invoke-interface {v1, v3, v2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$BitmapDecodeNotifier;->onReady(ILandroid/graphics/Bitmap;)V

    .line 1185
    :cond_b
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_0

    .line 1190
    :cond_c
    const/4 v1, 0x1

    iget-boolean v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mStop:Z

    if-eq v1, v4, :cond_1

    .line 1192
    const/4 v1, 0x1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDegreesRotated()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v10, v1, v4}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBitmap(ZF)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1194
    const/4 v1, 0x1

    iget-boolean v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mStop:Z

    if-eq v1, v4, :cond_1

    .line 1196
    const/4 v11, 0x1

    .line 1197
    .local v11, bSaveCache:Z
    const-string v1, "video/x-wmv-drm"

    iget-object v4, v12, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1200
    const/4 v11, 0x0

    .line 1203
    :cond_d
    if-eqz v11, :cond_f

    if-eqz v2, :cond_f

    .line 1205
    invoke-static {}, Lcom/htc/album/Customizable/CustHtcListViewStyle;->isListItemPhotoFramed()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1207
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-static {v4}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getIconDefaultAlbum(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->getRoundCornerBitmap4ListView(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1213
    :cond_e
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    const/4 v4, 0x1

    iget-object v5, v12, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    iget-wide v6, v12, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    iget v8, v12, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    const/4 v9, 0x3

    invoke-virtual/range {v1 .. v9}, Lcom/htc/opensense2/album/cache/CacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .line 1223
    :cond_f
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mQueue:Ljava/util/List;

    monitor-enter v4

    .line 1224
    const/4 v1, 0x1

    :try_start_d
    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mStop:Z

    if-ne v1, v5, :cond_10

    monitor-exit v4

    goto/16 :goto_1

    .line 1229
    :catchall_3
    move-exception v1

    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v1

    .line 1226
    :cond_10
    :try_start_e
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mDecodeNotifier:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$BitmapDecodeNotifier;

    if-eqz v1, :cond_11

    .line 1227
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mDecodeNotifier:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$BitmapDecodeNotifier;

    invoke-interface {v1, v3, v2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$BitmapDecodeNotifier;->onReady(ILandroid/graphics/Bitmap;)V

    .line 1229
    :cond_11
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto/16 :goto_0

    .line 1235
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #nIndex:I
    .end local v10           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v11           #bSaveCache:Z
    .end local v12           #coverImage:Lcom/htc/album/modules/collection/SimpleImage;
    .end local v13           #decodeItem:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread$DecodeItem;
    :catchall_4
    move-exception v1

    :try_start_f
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw v1
.end method

.method public setVisibleRange(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1271
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->CACHE_LOCKER:Ljava/lang/Object;

    monitor-enter v1

    .line 1272
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;->mCacheMgr:Lcom/htc/opensense2/album/cache/CacheManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/cache/CacheManager;->setVisibleRange(II)V

    .line 1275
    :cond_0
    monitor-exit v1

    .line 1276
    return-void

    .line 1275
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
