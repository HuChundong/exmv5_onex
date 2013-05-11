.class public Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;
.super Lcom/htc/opensense2/album/util/ImageManager$ImageList;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BurstPhotoImageList"
.end annotation


# static fields
.field public static final KEY_BURST_IMAGE_URI:Ljava/lang/String; = "burst_image_uri"

.field public static final KEY_BURST_THUMB_URI:Ljava/lang/String; = "burst_thumb_uri"


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "ctx"
    .parameter "cr"
    .parameter "imageUri"
    .parameter "thumbUri"
    .parameter "sort"
    .parameter "bucketId"
    .parameter "filterAlbumArt"
    .parameter "where"
    .parameter "isFavorite"
    .parameter "typeFilter"

    .prologue
    .line 4923
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    .line 4925
    invoke-direct/range {p0 .. p11}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 4926
    return-void
.end method

.method private addBestFileIndicator(Ljava/lang/String;)[Ljava/lang/String;
    .locals 16
    .parameter "filePath"

    .prologue
    .line 5391
    const/4 v7, 0x0

    .line 5392
    .local v7, newFilePath:Ljava/lang/String;
    const/4 v5, 0x0

    .line 5393
    .local v5, newDisplayName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 5396
    .local v8, newTitle:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 5398
    :try_start_0
    const-string v13, "ImageManager"

    const-string v14, "[addBestFileIndicator] filePath is null"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5399
    const/4 v10, 0x0

    .line 5468
    :goto_0
    return-object v10

    .line 5401
    :cond_0
    sget-boolean v13, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v13, :cond_1

    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[addBestFileIndicator] filePath = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5402
    :cond_1
    const-string v13, "_COVER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_2

    .line 5404
    const-string v13, "ImageManager"

    const-string v14, "[addBestFileIndicator] filePath already has string \'_COVER\'"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5405
    const/4 v10, 0x0

    goto :goto_0

    .line 5408
    :cond_2
    const/4 v4, 0x0

    .line 5409
    .local v4, extName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 5410
    .local v12, tmpFilePath:Ljava/lang/String;
    const-string v13, "."

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 5411
    .local v3, extIndex:I
    const/4 v13, -0x1

    if-eq v3, v13, :cond_3

    .line 5412
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 5413
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 5421
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_COVER"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5423
    const-string v13, "/"

    invoke-virtual {v7, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 5424
    .local v11, slashIndex:I
    const/4 v13, -0x1

    if-eq v11, v13, :cond_4

    .line 5425
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v7, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 5433
    const-string v13, "."

    invoke-virtual {v5, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 5434
    const/4 v13, -0x1

    if-eq v3, v13, :cond_5

    .line 5435
    const/4 v13, 0x0

    invoke-virtual {v5, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 5443
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5444
    .local v9, oldFile:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5445
    .local v6, newFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_6

    .line 5446
    invoke-virtual {v9, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 5447
    .local v1, bRename:Z
    if-nez v1, :cond_6

    .line 5449
    const-string v13, "ImageManager"

    const-string v14, "[addBestFileIndicator] renameTo() is fail"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5450
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 5417
    .end local v1           #bRename:Z
    .end local v6           #newFile:Ljava/io/File;
    .end local v9           #oldFile:Ljava/io/File;
    .end local v11           #slashIndex:I
    :cond_3
    const-string v13, "ImageManager"

    const-string v14, "[addBestFileIndicator] filePath can\'t find \'.\'"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5418
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 5429
    .restart local v11       #slashIndex:I
    :cond_4
    const-string v13, "ImageManager"

    const-string v14, "[addBestFileIndicator] newFilePath can\'t find \'/\'"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5430
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 5439
    :cond_5
    const-string v13, "ImageManager"

    const-string v14, "[addBestFileIndicator] newDisplayName can\'t find \'.\'"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5440
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 5454
    .end local v3           #extIndex:I
    .end local v4           #extName:Ljava/lang/String;
    .end local v11           #slashIndex:I
    .end local v12           #tmpFilePath:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 5455
    .local v2, e:Ljava/lang/Exception;
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[addBestFileIndicator]Can\'t re-name file="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5458
    .end local v2           #e:Ljava/lang/Exception;
    :cond_6
    const/4 v10, 0x0

    .line 5459
    .local v10, ret:[Ljava/lang/String;
    if-eqz v7, :cond_8

    if-eqz v5, :cond_8

    if-eqz v8, :cond_8

    .line 5460
    sget-boolean v13, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v13, :cond_7

    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[addBestFileIndicator] newFilePath = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5461
    :cond_7
    const/4 v13, 0x3

    new-array v10, v13, [Ljava/lang/String;

    .end local v10           #ret:[Ljava/lang/String;
    const/4 v13, 0x0

    aput-object v7, v10, v13

    const/4 v13, 0x1

    aput-object v5, v10, v13

    const/4 v13, 0x2

    aput-object v8, v10, v13

    .restart local v10       #ret:[Ljava/lang/String;
    goto/16 :goto_0

    .line 5465
    :cond_8
    const-string v13, "ImageManager"

    const-string v14, "[addBestFileIndicator] renamed file is error!"

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private checkBestShotCanRemoveIndicator()Z
    .locals 6

    .prologue
    .line 5094
    const/4 v0, 0x1

    .line 5096
    .local v0, bCanRemove:Z
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getBestShotIndex()I

    move-result v3

    .line 5097
    .local v3, indexBestShot:I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 5099
    const-string v4, "ImageManager"

    const-string v5, "[BurstPhotoImageList][checkIfBestShotCanExpand] Can\'t find best shot."

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 5117
    .end local v0           #bCanRemove:Z
    .local v1, bCanRemove:I
    :goto_0
    return v1

    .line 5104
    .end local v1           #bCanRemove:I
    .restart local v0       #bCanRemove:Z
    :cond_0
    invoke-virtual {p0, v3}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    .line 5105
    .local v2, imageBestShot:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v2, :cond_1

    .line 5107
    const-string v4, "ImageManager"

    const-string v5, "[BurstPhotoImageList][checkIfBestShotCanExpand] best shot image is null."

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 5109
    .restart local v1       #bCanRemove:I
    goto :goto_0

    .line 5112
    .end local v1           #bCanRemove:I
    :cond_1
    invoke-direct {p0, v2}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->checkFilenameRemovedIndicatorIsExist(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5114
    const/4 v0, 0x0

    :cond_2
    move v1, v0

    .line 5117
    .restart local v1       #bCanRemove:I
    goto :goto_0
.end method

.method private checkFilenameAddedIndicatorIsExist(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z
    .locals 8
    .parameter "image"

    .prologue
    .line 5060
    const/4 v1, 0x0

    .line 5061
    .local v1, isExist:Z
    if-nez p1, :cond_0

    .line 5063
    const-string v6, "ImageManager"

    const-string v7, "[BurstPhotoImageList][checkFilenameAddedIndicatorIsExist] image is null. "

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 5086
    .end local v1           #isExist:Z
    .local v2, isExist:I
    :goto_0
    return v2

    .line 5066
    .end local v2           #isExist:I
    .restart local v1       #isExist:Z
    :cond_0
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    .line 5067
    .local v0, filePath:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 5069
    const-string v6, "ImageManager"

    const-string v7, "[BurstPhotoImageList][checkFilenameAddedIndicatorIsExist] filePath is null. "

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 5070
    .restart local v2       #isExist:I
    goto :goto_0

    .line 5073
    .end local v2           #isExist:I
    :cond_1
    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 5074
    .local v5, pos:I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 5076
    const-string v6, "ImageManager"

    const-string v7, "[BurstPhotoImageList][checkFilenameAddedIndicatorIsExist] filename is not a normal filename. "

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 5077
    .restart local v2       #isExist:I
    goto :goto_0

    .line 5079
    .end local v2           #isExist:I
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_COVER"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5081
    .local v4, newFilePath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5082
    .local v3, newFile:Ljava/io/File;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5083
    const/4 v1, 0x1

    :cond_3
    move v2, v1

    .line 5086
    .restart local v2       #isExist:I
    goto :goto_0
.end method

.method private checkFilenameRemovedIndicatorIsExist(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z
    .locals 7
    .parameter "image"

    .prologue
    .line 5032
    const/4 v1, 0x0

    .line 5033
    .local v1, isExist:Z
    if-nez p1, :cond_0

    .line 5035
    const-string v5, "ImageManager"

    const-string v6, "[BurstPhotoImageList][checkRemovedBestShotIsExist] image is null. "

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 5052
    .end local v1           #isExist:Z
    .local v2, isExist:I
    :goto_0
    return v2

    .line 5038
    .end local v2           #isExist:I
    .restart local v1       #isExist:Z
    :cond_0
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    .line 5039
    .local v0, filePath:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 5041
    const-string v5, "ImageManager"

    const-string v6, "[BurstPhotoImageList][checkRemovedBestShotIsExist] filePath is null. "

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 5042
    .restart local v2       #isExist:I
    goto :goto_0

    .line 5045
    .end local v2           #isExist:I
    :cond_1
    const-string v5, "_COVER."

    const-string v6, "."

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 5047
    .local v4, newFilePath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5048
    .local v3, newFile:Ljava/io/File;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5049
    const/4 v1, 0x1

    :cond_2
    move v2, v1

    .line 5052
    .restart local v2       #isExist:I
    goto :goto_0
.end method

.method private getFieldFavorite(Landroid/net/Uri;)I
    .locals 9
    .parameter "imageUri"

    .prologue
    .line 4953
    const/4 v8, 0x0

    .line 4954
    .local v8, favorite:I
    const/4 v6, 0x0

    .line 4956
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "favorite"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4959
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4960
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 4972
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4975
    :cond_1
    :goto_0
    return v8

    .line 4967
    :catch_0
    move-exception v7

    .line 4968
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isFavorite] Got exception during query favorite, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4972
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private removeBestFileIndicator(Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .parameter "filePath"

    .prologue
    .line 5473
    const/4 v5, 0x0

    .line 5474
    .local v5, newFilePath:Ljava/lang/String;
    const/4 v3, 0x0

    .line 5475
    .local v3, newDisplayName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 5478
    .local v6, newTitle:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 5480
    :try_start_0
    const-string v10, "ImageManager"

    const-string v11, "[removeBestFileIndicator] filePath is null"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5481
    const/4 v8, 0x0

    .line 5540
    :goto_0
    return-object v8

    .line 5483
    :cond_0
    sget-boolean v10, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string v10, "ImageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[removeBestFileIndicator] filePath = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5484
    :cond_1
    const-string v10, "_COVER."

    invoke-virtual {p1, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 5486
    const-string v10, "ImageManager"

    const-string v11, "[removeBestFileIndicator] can\'t find string \'_COVER.\'"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5487
    const/4 v8, 0x0

    goto :goto_0

    .line 5490
    :cond_2
    const-string v10, "_COVER."

    const-string v11, "."

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 5492
    const-string v10, "/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 5493
    .local v9, slashIndex:I
    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    .line 5494
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 5502
    const-string v10, "."

    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 5503
    .local v2, extIndex:I
    const/4 v10, -0x1

    if-eq v2, v10, :cond_4

    .line 5504
    const/4 v10, 0x0

    invoke-virtual {v3, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 5512
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5513
    .local v7, oldFile:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5514
    .local v4, newFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_5

    .line 5515
    invoke-virtual {v7, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 5516
    .local v0, bRename:Z
    if-nez v0, :cond_5

    .line 5518
    const-string v10, "ImageManager"

    const-string v11, "[removeBestFileIndicator] renameTo() is fail"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5519
    const/4 v8, 0x0

    goto :goto_0

    .line 5498
    .end local v0           #bRename:Z
    .end local v2           #extIndex:I
    .end local v4           #newFile:Ljava/io/File;
    .end local v7           #oldFile:Ljava/io/File;
    :cond_3
    const-string v10, "ImageManager"

    const-string v11, "[removeBestFileIndicator] filePath can\'t find \'/\'"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5499
    const/4 v8, 0x0

    goto :goto_0

    .line 5508
    .restart local v2       #extIndex:I
    :cond_4
    const-string v10, "ImageManager"

    const-string v11, "[removeBestFileIndicator] newDisplayName can\'t find \'.\'"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5509
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 5523
    .end local v2           #extIndex:I
    .end local v9           #slashIndex:I
    :catch_0
    move-exception v1

    .line 5524
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "ImageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[removeBestFileIndicator]Can\'t re-name file="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5525
    const/4 v5, 0x0

    .line 5526
    const/4 v3, 0x0

    .line 5527
    const/4 v6, 0x0

    .line 5530
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    const/4 v8, 0x0

    .line 5531
    .local v8, ret:[Ljava/lang/String;
    if-eqz v5, :cond_7

    if-eqz v3, :cond_7

    if-eqz v6, :cond_7

    .line 5532
    sget-boolean v10, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v10, :cond_6

    const-string v10, "ImageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[removeBestFileIndicator] newFilePath = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5533
    :cond_6
    const/4 v10, 0x3

    new-array v8, v10, [Ljava/lang/String;

    .end local v8           #ret:[Ljava/lang/String;
    const/4 v10, 0x0

    aput-object v5, v8, v10

    const/4 v10, 0x1

    aput-object v3, v8, v10

    const/4 v10, 0x2

    aput-object v6, v8, v10

    .restart local v8       #ret:[Ljava/lang/String;
    goto/16 :goto_0

    .line 5537
    :cond_7
    const-string v10, "ImageManager"

    const-string v11, "[removeBestFileIndicator] renamed file is error!"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private searchUpdateImageId(Ljava/lang/String;)I
    .locals 9
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 5239
    const/4 v7, -0x1

    .line 5240
    .local v7, lastImageId:I
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 5241
    .local v1, tableUri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    .line 5243
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5245
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 5247
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5249
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 5250
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[searchUpdateImageId] image table uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " image path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " image id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5252
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5255
    :cond_1
    return v7
.end method

.method private updateSelectedImage(I)V
    .locals 6
    .parameter "itemId"

    .prologue
    .line 5219
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 5235
    :goto_0
    return-void

    .line 5224
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 5225
    .local v1, tableUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 5226
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5229
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5231
    :catch_0
    move-exception v0

    .line 5233
    .local v0, e:Landroid/database/SQLException;
    const-string v3, "ImageManager"

    const-string v4, "[updateSelectedImage] mContentResolver.update() fail."

    invoke-static {v3, v4, v0}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public checkExpand()Z
    .locals 3

    .prologue
    .line 5124
    const-string v1, "ImageManager"

    const-string v2, "[BurstPhotoImageList][checkExpand] +"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5126
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->checkBestShotCanRemoveIndicator()Z

    move-result v0

    .line 5127
    .local v0, bCanExpand:Z
    return v0
.end method

.method public checkSetBestShot(Lcom/htc/opensense2/album/util/ImageManager$IImage;Z)Z
    .locals 6
    .parameter "newBest"
    .parameter "isDeleteOther"

    .prologue
    const/4 v5, 0x1

    .line 5198
    const-string v3, "ImageManager"

    const-string v4, "[BurstPhotoImageList][checkSetBestShot] +"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5199
    const/4 v0, 0x1

    .line 5200
    .local v0, bCanSetBestShot:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 5214
    .end local v0           #bCanSetBestShot:Z
    .local v1, bCanSetBestShot:I
    :goto_0
    return v1

    .line 5202
    .end local v1           #bCanSetBestShot:I
    .restart local v0       #bCanSetBestShot:Z
    :cond_0
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v2

    .line 5203
    .local v2, isBestPhotoNotChanged:Z
    if-ne v5, v2, :cond_1

    if-nez p2, :cond_1

    move v1, v0

    .restart local v1       #bCanSetBestShot:I
    goto :goto_0

    .line 5205
    .end local v1           #bCanSetBestShot:I
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->checkFilenameAddedIndicatorIsExist(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    move-result v3

    if-ne v3, v5, :cond_3

    .line 5207
    const/4 v0, 0x0

    :cond_2
    :goto_1
    move v1, v0

    .line 5214
    .restart local v1       #bCanSetBestShot:I
    goto :goto_0

    .line 5209
    .end local v1           #bCanSetBestShot:I
    :cond_3
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->checkBestShotCanRemoveIndicator()Z

    move-result v3

    if-nez v3, :cond_2

    .line 5211
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic checkThumbnail(Lcom/htc/opensense2/album/util/ImageManager$BaseImage;Landroid/database/Cursor;I)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 4910
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->checkThumbnail(Lcom/htc/opensense2/album/util/ImageManager$BaseImage;Landroid/database/Cursor;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic closeCursor()V
    .locals 0

    .prologue
    .line 4910
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->closeCursor()V

    return-void
.end method

.method public bridge synthetic commitChanges()V
    .locals 0

    .prologue
    .line 4910
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->commitChanges()V

    return-void
.end method

.method public bridge synthetic deactivate()V
    .locals 0

    .prologue
    .line 4910
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->deactivate()V

    return-void
.end method

.method public expand()V
    .locals 24

    .prologue
    .line 5136
    const-string v21, "ImageManager"

    const-string v22, "[ImageManager][expand] +"

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5138
    const/4 v15, -0x1

    .line 5139
    .local v15, itemId:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getBestShotIndex()I

    move-result v6

    .line 5140
    .local v6, coverIndex:I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v0, v6, :cond_1

    .line 5195
    :cond_0
    :goto_0
    return-void

    .line 5143
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v5

    .line 5144
    .local v5, coverImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v5, :cond_0

    .line 5148
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->isContinuousShotFavorite()Z

    move-result v14

    .line 5149
    .local v14, isFavorite:Z
    if-eqz v14, :cond_6

    const/4 v9, 0x1

    .line 5151
    .local v9, favorite:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v21, v0

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->queryEventId(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 5153
    .local v8, eventID:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getCount()I

    move-result v4

    .line 5154
    .local v4, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    if-ge v10, v4, :cond_7

    .line 5156
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v11

    .line 5157
    .local v11, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v12

    .line 5159
    .local v12, imageUri:Landroid/net/Uri;
    const/16 v17, 0x0

    .line 5160
    .local v17, newFilePath:Ljava/lang/String;
    const/16 v16, 0x0

    .line 5161
    .local v16, newDisplayName:Ljava/lang/String;
    const/16 v18, 0x0

    .line 5163
    .local v18, newTitle:Ljava/lang/String;
    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->removeBestFileIndicator(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 5164
    .local v13, info:[Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 5165
    const/16 v21, 0x0

    aget-object v17, v13, v21

    .line 5166
    const/16 v21, 0x1

    aget-object v16, v13, v21

    .line 5167
    const/16 v21, 0x2

    aget-object v18, v13, v21

    .line 5170
    :cond_2
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 5171
    .local v20, values:Landroid/content/ContentValues;
    if-eqz v17, :cond_4

    if-eqz v16, :cond_4

    if-eqz v18, :cond_4

    .line 5172
    sget-boolean v21, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v21, :cond_3

    const-string v21, "ImageManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[expand] update db DATA="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", DISPLAY_NAME="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", TITLE="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5175
    :cond_3
    const-string v21, "_data"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5176
    const-string v21, "_display_name"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5177
    const-string v21, "title"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5179
    :cond_4
    const-string v21, "favorite"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5180
    const-string v21, "v_folder"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5182
    add-int/lit8 v21, v10, 0x1

    move/from16 v0, v21

    if-ne v0, v4, :cond_5

    .line 5184
    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v19

    .line 5185
    .local v19, path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->searchUpdateImageId(Ljava/lang/String;)I

    move-result v15

    .line 5189
    .end local v19           #path:Ljava/lang/String;
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5154
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 5149
    .end local v4           #count:I
    .end local v8           #eventID:Ljava/lang/String;
    .end local v9           #favorite:I
    .end local v10           #i:I
    .end local v11           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v12           #imageUri:Landroid/net/Uri;
    .end local v13           #info:[Ljava/lang/String;
    .end local v16           #newDisplayName:Ljava/lang/String;
    .end local v17           #newFilePath:Ljava/lang/String;
    .end local v18           #newTitle:Ljava/lang/String;
    .end local v20           #values:Landroid/content/ContentValues;
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 5190
    .restart local v4       #count:I
    .restart local v8       #eventID:Ljava/lang/String;
    .restart local v9       #favorite:I
    .restart local v10       #i:I
    .restart local v11       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v12       #imageUri:Landroid/net/Uri;
    .restart local v13       #info:[Ljava/lang/String;
    .restart local v16       #newDisplayName:Ljava/lang/String;
    .restart local v17       #newFilePath:Ljava/lang/String;
    .restart local v18       #newTitle:Ljava/lang/String;
    .restart local v20       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 5191
    .local v7, e:Landroid/database/SQLException;
    const-string v21, "ImageManager"

    const-string v22, "[expand] mContentResolver.update() fail."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 5194
    .end local v7           #e:Landroid/database/SQLException;
    .end local v11           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v12           #imageUri:Landroid/net/Uri;
    .end local v13           #info:[Ljava/lang/String;
    .end local v16           #newDisplayName:Ljava/lang/String;
    .end local v17           #newFilePath:Ljava/lang/String;
    .end local v18           #newTitle:Ljava/lang/String;
    .end local v20           #values:Landroid/content/ContentValues;
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->updateSelectedImage(I)V

    goto/16 :goto_0
.end method

.method public getBestShotIndex()I
    .locals 5

    .prologue
    .line 5014
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getCount()I

    move-result v0

    .line 5015
    .local v0, count:I
    const/4 v3, -0x1

    .line 5016
    .local v3, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5017
    invoke-virtual {p0, v1}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    .line 5018
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5020
    move v3, v1

    .line 5024
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_0
    return v3

    .line 5016
    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getCount()I
    .locals 1

    .prologue
    .line 4910
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->getCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4910
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4910
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4910
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImages(Ljava/util/List;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4910
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->getImages(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic getItem(I)Lcom/htc/sunnyCore/IMediaData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4910
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    return-object v0
.end method

.method public isContinuousShotFavorite()Z
    .locals 8

    .prologue
    .line 4983
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getCount()I

    move-result v1

    .line 4984
    .local v1, count:I
    const/4 v0, 0x0

    .line 4985
    .local v0, bIsFavorite:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 4987
    invoke-virtual {p0, v3}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v4

    .line 4988
    .local v4, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v4, :cond_1

    .line 4985
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4992
    :cond_1
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4997
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    .line 4998
    .local v5, imageUri:Landroid/net/Uri;
    invoke-direct {p0, v5}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getFieldFavorite(Landroid/net/Uri;)I

    move-result v2

    .line 5000
    .local v2, favorite:I
    and-int/lit8 v6, v2, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 5002
    const/4 v0, 0x1

    .line 5006
    .end local v2           #favorite:I
    .end local v4           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v5           #imageUri:Landroid/net/Uri;
    :cond_2
    return v0
.end method

.method public bridge synthetic isFavoriteList()Z
    .locals 1

    .prologue
    .line 4910
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->isFavoriteList()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isReleased()Z
    .locals 1

    .prologue
    .line 4910
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->isReleased()Z

    move-result v0

    return v0
.end method

.method public setBestShot(Lcom/htc/opensense2/album/util/ImageManager$IImage;Z)V
    .locals 25
    .parameter "newBest"
    .parameter "isDeleteOther"

    .prologue
    .line 5259
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getCount()I

    move-result v5

    .line 5260
    .local v5, count:I
    if-nez p1, :cond_1

    .line 5387
    :cond_0
    :goto_0
    return-void

    .line 5263
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getBestShotIndex()I

    move-result v7

    .line 5264
    .local v7, coverIndex:I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v0, v7, :cond_0

    .line 5267
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v6

    .line 5268
    .local v6, coverImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v6, :cond_0

    .line 5271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->queryEventId(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 5274
    .local v9, eventID:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->isContinuousShotFavorite()Z

    move-result v4

    .line 5276
    .local v4, bIsFavorite:Z
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v15

    .line 5277
    .local v15, isBestPhotoNotChanged:Z
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v0, v15, :cond_2

    if-eqz p2, :cond_0

    .line 5279
    :cond_2
    const/16 v16, -0x1

    .line 5280
    .local v16, itemId:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v5, :cond_f

    .line 5281
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v12

    .line 5282
    .local v12, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v12}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v13

    .line 5284
    .local v13, imageUri:Landroid/net/Uri;
    const/16 v22, 0x1

    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 5286
    invoke-interface {v12}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v20

    .line 5287
    .local v20, path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->searchUpdateImageId(Ljava/lang/String;)I

    move-result v16

    .line 5289
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getFieldFavorite(Landroid/net/Uri;)I

    move-result v10

    .line 5291
    .local v10, favorite:I
    if-nez p2, :cond_8

    .line 5292
    or-int/lit8 v10, v10, 0x20

    .line 5298
    :goto_2
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v4, v0, :cond_3

    .line 5300
    or-int/lit8 v10, v10, 0x1

    .line 5303
    :cond_3
    const/16 v18, 0x0

    .line 5304
    .local v18, newFilePath:Ljava/lang/String;
    const/16 v17, 0x0

    .line 5305
    .local v17, newDisplayName:Ljava/lang/String;
    const/16 v19, 0x0

    .line 5307
    .local v19, newTitle:Ljava/lang/String;
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v15, v0, :cond_9

    const/16 v22, 0x1

    move/from16 v0, p2

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 5310
    invoke-interface {v12}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->removeBestFileIndicator(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 5311
    .local v14, info:[Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 5312
    const/16 v22, 0x0

    aget-object v18, v14, v22

    .line 5313
    const/16 v22, 0x1

    aget-object v17, v14, v22

    .line 5314
    const/16 v22, 0x2

    aget-object v19, v14, v22

    .line 5328
    .end local v14           #info:[Ljava/lang/String;
    :cond_4
    :goto_3
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 5329
    .local v21, values:Landroid/content/ContentValues;
    if-eqz v18, :cond_6

    if-eqz v17, :cond_6

    if-eqz v19, :cond_6

    .line 5330
    sget-boolean v22, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v22, :cond_5

    const-string v22, "ImageManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[setBestShot] update db DATA="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", DISPLAY_NAME="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", TITLE="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5333
    :cond_5
    const-string v22, "_data"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5334
    const-string v22, "_display_name"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5335
    const-string v22, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5337
    :cond_6
    const-string v22, "favorite"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5338
    const-string v22, "v_folder"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5340
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5345
    :goto_4
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v12, v10, v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->setAsBurstPhoto(IZ)V

    .line 5280
    .end local v10           #favorite:I
    .end local v17           #newDisplayName:Ljava/lang/String;
    .end local v18           #newFilePath:Ljava/lang/String;
    .end local v19           #newTitle:Ljava/lang/String;
    .end local v20           #path:Ljava/lang/String;
    .end local v21           #values:Landroid/content/ContentValues;
    :cond_7
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 5295
    .restart local v10       #favorite:I
    .restart local v20       #path:Ljava/lang/String;
    :cond_8
    and-int/lit8 v10, v10, -0x21

    .line 5296
    and-int/lit8 v10, v10, -0x11

    goto/16 :goto_2

    .line 5317
    .restart local v17       #newDisplayName:Ljava/lang/String;
    .restart local v18       #newFilePath:Ljava/lang/String;
    .restart local v19       #newTitle:Ljava/lang/String;
    :cond_9
    if-nez v15, :cond_4

    if-nez p2, :cond_4

    .line 5320
    invoke-interface {v12}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->addBestFileIndicator(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 5321
    .restart local v14       #info:[Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 5322
    const/16 v22, 0x0

    aget-object v18, v14, v22

    .line 5323
    const/16 v22, 0x1

    aget-object v17, v14, v22

    .line 5324
    const/16 v22, 0x2

    aget-object v19, v14, v22

    goto/16 :goto_3

    .line 5341
    .end local v14           #info:[Ljava/lang/String;
    .restart local v21       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 5342
    .local v8, e:Landroid/database/SQLException;
    const-string v22, "ImageManager"

    const-string v23, "[setBestShot] mContentResolver.update() fail."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 5347
    .end local v8           #e:Landroid/database/SQLException;
    .end local v10           #favorite:I
    .end local v17           #newDisplayName:Ljava/lang/String;
    .end local v18           #newFilePath:Ljava/lang/String;
    .end local v19           #newTitle:Ljava/lang/String;
    .end local v20           #path:Ljava/lang/String;
    .end local v21           #values:Landroid/content/ContentValues;
    :cond_a
    const/16 v22, 0x1

    move/from16 v0, p2

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 5348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_5

    .line 5350
    :cond_b
    const/16 v22, 0x1

    invoke-interface {v12}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 5352
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getFieldFavorite(Landroid/net/Uri;)I

    move-result v10

    .line 5353
    .restart local v10       #favorite:I
    and-int/lit8 v10, v10, -0x21

    .line 5355
    const/16 v18, 0x0

    .line 5356
    .restart local v18       #newFilePath:Ljava/lang/String;
    const/16 v17, 0x0

    .line 5357
    .restart local v17       #newDisplayName:Ljava/lang/String;
    const/16 v19, 0x0

    .line 5359
    .restart local v19       #newTitle:Ljava/lang/String;
    invoke-interface {v12}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->removeBestFileIndicator(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 5360
    .restart local v14       #info:[Ljava/lang/String;
    if-eqz v14, :cond_c

    .line 5361
    const/16 v22, 0x0

    aget-object v18, v14, v22

    .line 5362
    const/16 v22, 0x1

    aget-object v17, v14, v22

    .line 5363
    const/16 v22, 0x2

    aget-object v19, v14, v22

    .line 5366
    :cond_c
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 5367
    .restart local v21       #values:Landroid/content/ContentValues;
    if-eqz v18, :cond_e

    if-eqz v17, :cond_e

    if-eqz v19, :cond_e

    .line 5368
    sget-boolean v22, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v22, :cond_d

    const-string v22, "ImageManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[setBestShot][removeBest] update db DATA="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", DISPLAY_NAME="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", TITLE="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5371
    :cond_d
    const-string v22, "_data"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5372
    const-string v22, "_display_name"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5373
    const-string v22, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5375
    :cond_e
    const-string v22, "favorite"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5376
    const-string v22, "v_folder"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 5378
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5383
    :goto_6
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v12, v10, v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->setAsBurstPhoto(IZ)V

    goto/16 :goto_5

    .line 5379
    :catch_1
    move-exception v8

    .line 5380
    .restart local v8       #e:Landroid/database/SQLException;
    const-string v22, "ImageManager"

    const-string v23, "[setBestShot] mContentResolver.update() fail."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 5386
    .end local v8           #e:Landroid/database/SQLException;
    .end local v10           #favorite:I
    .end local v12           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v13           #imageUri:Landroid/net/Uri;
    .end local v14           #info:[Ljava/lang/String;
    .end local v17           #newDisplayName:Ljava/lang/String;
    .end local v18           #newFilePath:Ljava/lang/String;
    .end local v19           #newTitle:Ljava/lang/String;
    .end local v21           #values:Landroid/content/ContentValues;
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->updateSelectedImage(I)V

    goto/16 :goto_0
.end method

.method public bridge synthetic startRequery()Z
    .locals 1

    .prologue
    .line 4910
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;->startRequery()Z

    move-result v0

    return v0
.end method

.method protected whereClause()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4929
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getBurstPhotoWhereClause(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4931
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mWhereStatement:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4937
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mWhereStatement:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4940
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4946
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(bucket_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4947
    .local v0, szBucketID:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4949
    .end local v0           #szBucketID:Ljava/lang/String;
    :cond_1
    return-object v1
.end method
