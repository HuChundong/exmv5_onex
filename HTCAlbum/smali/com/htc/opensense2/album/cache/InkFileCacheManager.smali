.class public Lcom/htc/opensense2/album/cache/InkFileCacheManager;
.super Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;
.source "InkFileCacheManager.java"


# static fields
.field private static final EXTENSION_STROKE_DATA:Ljava/lang/String; = ".htcink"

.field private static final EXTENSION_STROKE_IMAGE:Ljava/lang/String; = ".png"

.field private static final FOLDER_PATH_PNG:Ljava/lang/String; = null

.field private static final FOLDER_PATH_STROKE:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "InkFileCacheManager"

.field private static final TAG_PERF_PULL:Ljava/lang/String; = "InkFileCacheManager[pull]"

.field private static final TAG_PERF_PUSH:Ljava/lang/String; = "InkFileCacheManager[push]"

.field private static final TAG_PERF_SKIA_ENCODE:Ljava/lang/String; = "InkFileCacheManager[doSkiaEncode]"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.gallery_paint/stroke/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/cache/InkFileCacheManager;->FOLDER_PATH_STROKE:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.gallery_paint/paint/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/cache/InkFileCacheManager;->FOLDER_PATH_PNG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "fileCacheSize"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;-><init>(Landroid/content/Context;I)V

    .line 48
    return-void
.end method

.method private doSkiaDecode(Lcom/htc/sunny2/frameworks/cache/CacheTask;)I
    .locals 9
    .parameter "task"

    .prologue
    const/4 v8, 0x0

    .line 279
    const-string v5, "InkFileCacheManager"

    const-string v6, "[doSkiaDecode]: "

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/4 v3, 0x3

    .local v3, nRet:I
    move-object v2, p1

    .line 281
    check-cast v2, Lcom/htc/opensense2/album/cache/InkCacheTask;

    .line 286
    .local v2, inkTask:Lcom/htc/opensense2/album/cache/InkCacheTask;
    :try_start_0
    const-string v5, "InkFileCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[doSkiaDecode]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v5, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/BitmapUtil2;->DecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 288
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 290
    iput-object v0, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 291
    const/4 v3, 0x4

    .line 307
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return v3

    .line 294
    :catch_0
    move-exception v1

    .line 296
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "InkFileCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[doSkiaDecode]: Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const/4 v3, 0x3

    .line 298
    iput-object v8, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 300
    .end local v1           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 302
    .local v4, oom:Ljava/lang/OutOfMemoryError;
    const-string v5, "InkFileCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[doSkiaDecode]: Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const/4 v3, 0x3

    .line 304
    iput-object v8, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private doSkiaEncode(Lcom/htc/sunny2/frameworks/cache/CacheTask;)I
    .locals 11
    .parameter "task"

    .prologue
    .line 138
    const/4 v4, 0x3

    .line 140
    .local v4, nRet:I
    const/4 v0, 0x0

    .line 141
    .local v0, cache:Ljava/io/File;
    const/4 v5, 0x0

    .line 142
    .local v5, output:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 145
    .local v3, fileSaved:Z
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v7, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    .end local v0           #cache:Ljava/io/File;
    .local v1, cache:Ljava/io/File;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 147
    .end local v5           #output:Ljava/io/FileOutputStream;
    .local v6, output:Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v7, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v7, v8, v9, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    const/4 v3, 0x1

    .line 159
    :goto_0
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v5, v6

    .end local v6           #output:Ljava/io/FileOutputStream;
    .restart local v5       #output:Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 169
    .end local v1           #cache:Ljava/io/File;
    .restart local v0       #cache:Ljava/io/File;
    :goto_1
    if-eqz v3, :cond_1

    .line 171
    const/4 v4, 0x4

    .line 180
    :goto_2
    return v4

    .line 147
    .end local v0           #cache:Ljava/io/File;
    .end local v5           #output:Ljava/io/FileOutputStream;
    .restart local v1       #cache:Ljava/io/File;
    .restart local v6       #output:Ljava/io/FileOutputStream;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v2

    .line 164
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "InkFileCacheManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[doSkiaEncode] Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v4, 0x3

    move-object v5, v6

    .end local v6           #output:Ljava/io/FileOutputStream;
    .restart local v5       #output:Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 167
    .end local v1           #cache:Ljava/io/File;
    .restart local v0       #cache:Ljava/io/File;
    goto :goto_1

    .line 149
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 152
    .restart local v2       #e:Ljava/lang/Exception;
    :goto_3
    :try_start_4
    const-string v7, "InkFileCacheManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[doSkiaEncode] Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 153
    const/4 v4, 0x3

    .line 159
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 161
    :catch_2
    move-exception v2

    .line 164
    const-string v7, "InkFileCacheManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[doSkiaEncode] Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v4, 0x3

    .line 167
    goto :goto_1

    .line 157
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 159
    :goto_4
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 166
    :goto_5
    throw v7

    .line 161
    :catch_3
    move-exception v2

    .line 164
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v8, "InkFileCacheManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[doSkiaEncode] Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v4, 0x3

    goto :goto_5

    .line 175
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    if-eqz v0, :cond_2

    const-string v7, "InkFileCacheManager[doSkiaEncode]"

    invoke-static {v0, v7}, Lcom/htc/sunny2/common/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 176
    const-string v7, "InkFileCacheManager[doSkiaEncode]"

    invoke-static {v0, v7}, Lcom/htc/sunny2/common/FilePerformanceUtil;->delete(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    :cond_2
    const/4 v4, 0x3

    goto/16 :goto_2

    .line 157
    .end local v0           #cache:Ljava/io/File;
    .restart local v1       #cache:Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1           #cache:Ljava/io/File;
    .restart local v0       #cache:Ljava/io/File;
    goto :goto_4

    .end local v0           #cache:Ljava/io/File;
    .end local v5           #output:Ljava/io/FileOutputStream;
    .restart local v1       #cache:Ljava/io/File;
    .restart local v6       #output:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6           #output:Ljava/io/FileOutputStream;
    .restart local v5       #output:Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1           #cache:Ljava/io/File;
    .restart local v0       #cache:Ljava/io/File;
    goto :goto_4

    .line 149
    .end local v0           #cache:Ljava/io/File;
    .restart local v1       #cache:Ljava/io/File;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #cache:Ljava/io/File;
    .restart local v0       #cache:Ljava/io/File;
    goto :goto_3

    .end local v0           #cache:Ljava/io/File;
    .end local v5           #output:Ljava/io/FileOutputStream;
    .restart local v1       #cache:Ljava/io/File;
    .restart local v6       #output:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v2

    move-object v5, v6

    .end local v6           #output:Ljava/io/FileOutputStream;
    .restart local v5       #output:Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1           #cache:Ljava/io/File;
    .restart local v0       #cache:Ljava/io/File;
    goto :goto_3
.end method

.method private doStrokeDecode(Lcom/htc/sunny2/frameworks/cache/CacheTask;)I
    .locals 11
    .parameter "task"

    .prologue
    const/4 v10, 0x0

    .line 312
    const-string v6, "InkFileCacheManager"

    const-string v7, "[doStrokeDecode]: "

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const/4 v1, 0x0

    .line 315
    .local v1, fis:Ljava/io/FileInputStream;
    const/4 v4, 0x3

    .local v4, nRet:I
    move-object v3, p1

    .line 316
    check-cast v3, Lcom/htc/opensense2/album/cache/InkCacheTask;

    .line 319
    .local v3, inkTask:Lcom/htc/opensense2/album/cache/InkCacheTask;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v6, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 320
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    if-eqz v2, :cond_0

    .line 321
    const/4 v5, 0x0

    .line 322
    .local v5, returnByteArray:[B
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v5, v6, [B

    .line 323
    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    .line 324
    iput-object v5, v3, Lcom/htc/opensense2/album/cache/InkCacheTask;->mStrokeData:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 325
    const/4 v4, 0x4

    .line 336
    .end local v5           #returnByteArray:[B
    :cond_0
    if-eqz v2, :cond_3

    .line 338
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 346
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    return v4

    .line 339
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 340
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "InkFileCacheManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[doStrokeDecode]: Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v4, 0x3

    .line 342
    iput-object v10, v3, Lcom/htc/opensense2/album/cache/InkCacheTask;->mStrokeData:[B

    move-object v1, v2

    .line 343
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 328
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 330
    .restart local v0       #e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v6, "InkFileCacheManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[doStrokeDecode]: Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/4 v4, 0x3

    .line 332
    const/4 v6, 0x0

    iput-object v6, v3, Lcom/htc/opensense2/album/cache/InkCacheTask;->mStrokeData:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 336
    if-eqz v1, :cond_1

    .line 338
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 339
    :catch_2
    move-exception v0

    .line 340
    const-string v6, "InkFileCacheManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[doStrokeDecode]: Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v4, 0x3

    .line 342
    iput-object v10, v3, Lcom/htc/opensense2/album/cache/InkCacheTask;->mStrokeData:[B

    goto :goto_0

    .line 336
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v1, :cond_2

    .line 338
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 343
    :cond_2
    :goto_3
    throw v6

    .line 339
    :catch_3
    move-exception v0

    .line 340
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v7, "InkFileCacheManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[doStrokeDecode]: Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v4, 0x3

    .line 342
    iput-object v10, v3, Lcom/htc/opensense2/album/cache/InkCacheTask;->mStrokeData:[B

    goto :goto_3

    .line 336
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v5       #returnByteArray:[B
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 328
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v5           #returnByteArray:[B
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :cond_3
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method private doStrokeEncode(Lcom/htc/sunny2/frameworks/cache/CacheTask;)I
    .locals 10
    .parameter "task"

    .prologue
    .line 186
    const-string v7, "InkFileCacheManager"

    const-string v8, "[doSaveStroke]: ++"

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/4 v6, 0x3

    .line 190
    .local v6, nRet:I
    const/4 v3, 0x0

    .line 194
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v7, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, cache:Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    if-eqz v4, :cond_0

    .line 197
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-object v5, v0

    .line 198
    .local v5, inkTask:Lcom/htc/opensense2/album/cache/InkCacheTask;
    iget-object v7, v5, Lcom/htc/opensense2/album/cache/InkCacheTask;->mStrokeData:[B

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 201
    .end local v5           #inkTask:Lcom/htc/opensense2/album/cache/InkCacheTask;
    :cond_0
    const/4 v6, 0x4

    .line 209
    if-eqz v4, :cond_3

    .line 211
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 212
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 219
    .end local v1           #cache:Ljava/io/File;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return v6

    .line 213
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #cache:Ljava/io/File;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 214
    .local v2, e:Ljava/io/IOException;
    const/4 v6, 0x3

    move-object v3, v4

    .line 215
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 203
    .end local v1           #cache:Ljava/io/File;
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 205
    .local v2, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v7, "InkFileCacheManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[doSaveStroke]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    const/4 v6, 0x3

    .line 209
    if-eqz v3, :cond_1

    .line 211
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 212
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 213
    :catch_2
    move-exception v2

    .line 214
    .local v2, e:Ljava/io/IOException;
    const/4 v6, 0x3

    .line 215
    goto :goto_0

    .line 209
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v3, :cond_2

    .line 211
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 212
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 215
    :cond_2
    :goto_3
    throw v7

    .line 213
    :catch_3
    move-exception v2

    .line 214
    .restart local v2       #e:Ljava/io/IOException;
    const/4 v6, 0x3

    goto :goto_3

    .line 209
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #cache:Ljava/io/File;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 203
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :cond_3
    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method protected doDecode(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I
    .locals 2
    .parameter "task"
    .parameter "timeToStop"

    .prologue
    .line 254
    const/4 v0, 0x3

    .line 255
    .local v0, nRet:I
    iget v1, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    packed-switch v1, :pswitch_data_0

    .line 269
    const/4 v0, 0x3

    .line 274
    :goto_0
    return v0

    .line 259
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/InkFileCacheManager;->doSkiaDecode(Lcom/htc/sunny2/frameworks/cache/CacheTask;)I

    move-result v0

    .line 260
    goto :goto_0

    .line 264
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/InkFileCacheManager;->doStrokeDecode(Lcom/htc/sunny2/frameworks/cache/CacheTask;)I

    move-result v0

    .line 265
    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected doEncode(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I
    .locals 2
    .parameter "task"
    .parameter "timeToStop"

    .prologue
    .line 113
    const/4 v0, 0x3

    .line 114
    .local v0, nRet:I
    iget v1, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    packed-switch v1, :pswitch_data_0

    .line 128
    const/4 v0, 0x3

    .line 133
    :goto_0
    return v0

    .line 118
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/InkFileCacheManager;->doSkiaEncode(Lcom/htc/sunny2/frameworks/cache/CacheTask;)I

    move-result v0

    .line 119
    goto :goto_0

    .line 123
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/InkFileCacheManager;->doStrokeEncode(Lcom/htc/sunny2/frameworks/cache/CacheTask;)I

    move-result v0

    .line 124
    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected makeCacheTaskPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;
    .locals 3
    .parameter "task"

    .prologue
    .line 61
    const-string v0, ""

    .line 62
    .local v0, path:Ljava/lang/String;
    iget v1, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    packed-switch v1, :pswitch_data_0

    .line 76
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->makeCacheTaskPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 66
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/opensense2/album/cache/InkFileCacheManager;->FOLDER_PATH_PNG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    goto :goto_0

    .line 71
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".htcink"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pull(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I
    .locals 3
    .parameter "task"
    .parameter "timeToStop"

    .prologue
    .line 230
    const/4 v1, 0x3

    .line 232
    .local v1, nRet:I
    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    iput v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    .line 233
    sget v2, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->FILE_CACHE_DECODE:I

    iput v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    .line 234
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/cache/InkFileCacheManager;->makeCacheTaskPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    .line 236
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, f:Ljava/io/File;
    const-string v2, "InkFileCacheManager[pull]"

    invoke-static {v0, v2}, Lcom/htc/sunny2/common/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    .end local v1           #nRet:I
    :goto_0
    return v1

    .restart local v1       #nRet:I
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/opensense2/album/cache/InkFileCacheManager;->doDecode(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I

    move-result v1

    goto :goto_0
.end method

.method public push(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I
    .locals 3
    .parameter "task"
    .parameter "timeToStop"

    .prologue
    .line 90
    const/4 v1, 0x3

    .line 92
    .local v1, nRet:I
    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    iput v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    .line 93
    sget v2, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->FILE_CACHE_ENCODE:I

    iput v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    .line 94
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/cache/InkFileCacheManager;->makeCacheTaskPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, file:Ljava/io/File;
    const-string v2, "InkFileCacheManager[push]"

    invoke-static {v0, v2}, Lcom/htc/sunny2/common/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    const-string v2, "InkFileCacheManager[push]"

    invoke-static {v0, v2}, Lcom/htc/sunny2/common/FilePerformanceUtil;->delete(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/opensense2/album/cache/InkFileCacheManager;->doEncode(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I

    move-result v2

    return v2
.end method
