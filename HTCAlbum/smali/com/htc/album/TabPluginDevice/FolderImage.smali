.class public Lcom/htc/album/TabPluginDevice/FolderImage;
.super Lcom/htc/album/modules/collection/SimpleImage;
.source "FolderImage.java"

# interfaces
.implements Lcom/htc/opensense2/album/sunny/IMediaDataGallery;


# static fields
.field public static final DRM_VIDEO_PROJECTION:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mSelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "content_offset"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "content_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "content_boundary_offset"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/TabPluginDevice/FolderImage;->DRM_VIDEO_PROJECTION:[Ljava/lang/String;

    .line 37
    const-class v0, Lcom/htc/album/TabPluginDevice/FolderImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginDevice/FolderImage;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/album/modules/collection/Collection;Z)V
    .locals 1
    .parameter "container"
    .parameter "DES"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/collection/SimpleImage;-><init>(Lcom/htc/album/modules/collection/Collection;Z)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/FolderImage;->mSelected:Z

    .line 47
    return-void
.end method


# virtual methods
.method public alreadyHasDisplayImageDimension()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 335
    iget-wide v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    return v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 120
    iget-object v6, p0, Lcom/htc/album/modules/collection/SimpleImage;->mContainer:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v6}, Lcom/htc/album/modules/collection/Collection;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 122
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_1

    .line 123
    sget-object v6, Lcom/htc/album/TabPluginDevice/FolderImage;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[getDisplayImageInputStream] Null context when get input stream"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    :goto_0
    return-object v5

    .line 127
    :cond_1
    iget-boolean v6, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    if-ne v7, v6, :cond_2

    .line 128
    sget-object v6, Lcom/htc/album/TabPluginDevice/FolderImage;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[getDisplayImageInputStream] Drm video should use getDisplayImageUri to decode"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 132
    :cond_2
    const/4 v5, 0x0

    .line 133
    .local v5, is:Ljava/io/InputStream;
    iget-boolean v6, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    if-ne v7, v6, :cond_0

    .line 135
    :try_start_0
    sget-object v0, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    .line 136
    .local v0, baseUri:Landroid/net/Uri;
    iget-wide v6, p0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 138
    .local v3, drmFileUri:Landroid/net/Uri;
    const/4 v6, 0x0

    invoke-static {v1, v3, v6}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmState(Landroid/content/Context;Landroid/net/Uri;Z)I

    move-result v2

    .line 139
    .local v2, drmFileState:I
    if-nez v2, :cond_0

    .line 140
    invoke-static {v1, v3}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 142
    .end local v0           #baseUri:Landroid/net/Uri;
    .end local v2           #drmFileState:I
    .end local v3           #drmFileUri:Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 143
    .local v4, ex:Ljava/lang/Exception;
    sget-object v6, Lcom/htc/album/TabPluginDevice/FolderImage;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[getDisplayImageInputStream] error when decoed drm file"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageResId()I
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    if-ne v0, v1, :cond_1

    .line 87
    iget-boolean v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 90
    :goto_0
    return v0

    .line 87
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 15

    .prologue
    .line 156
    iget-object v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mContainer:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 158
    .local v10, context:Landroid/content/Context;
    if-nez v10, :cond_1

    .line 159
    sget-object v2, Lcom/htc/album/TabPluginDevice/FolderImage;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[getDisplayImageUri] Null context when get input stream"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v2, 0x0

    .line 208
    :cond_0
    :goto_0
    return-object v2

    .line 163
    :cond_1
    iget-boolean v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    if-nez v2, :cond_2

    .line 164
    sget-object v2, Lcom/htc/album/TabPluginDevice/FolderImage;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[getDisplayImageUri] Drm image should use getDisplayImageInputStream to decode"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v2, 0x0

    goto :goto_0

    .line 168
    :cond_2
    const/4 v14, 0x0

    .line 169
    .local v14, uri:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 170
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    if-ne v2, v3, :cond_6

    .line 172
    :try_start_0
    sget-object v6, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    .line 173
    .local v6, baseUri:Landroid/net/Uri;
    iget-wide v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 175
    .local v1, drmFileUri:Landroid/net/Uri;
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 176
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/htc/album/TabPluginDevice/FolderImage;->DRM_VIDEO_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 178
    if-nez v11, :cond_3

    .line 179
    sget-object v2, Lcom/htc/album/TabPluginDevice/FolderImage;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[getDisplayImageUri] Null Cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    const/4 v2, 0x0

    .line 199
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 183
    :cond_3
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 184
    sget-object v2, Lcom/htc/album/TabPluginDevice/FolderImage;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[getDisplayImageUri] The input Uri can\'t query anything"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    const/4 v2, 0x0

    .line 199
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 188
    :cond_4
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 189
    .local v9, contentOffSet:I
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 190
    .local v8, contentId:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 192
    .local v7, contentBoundaryOffSet:I
    const/4 v2, 0x0

    invoke-static {v10, v1, v2}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmState(Landroid/content/Context;Landroid/net/Uri;Z)I

    move-result v12

    .line 193
    .local v12, drmFileState:I
    if-nez v12, :cond_5

    .line 194
    iget-object v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    invoke-static {v2, v9, v8, v7}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmVideoPlayUri(Ljava/lang/String;ILjava/lang/String;I)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v14

    .line 199
    :cond_5
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 200
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #drmFileUri:Landroid/net/Uri;
    .end local v6           #baseUri:Landroid/net/Uri;
    .end local v7           #contentBoundaryOffSet:I
    .end local v8           #contentId:Ljava/lang/String;
    .end local v9           #contentOffSet:I
    .end local v12           #drmFileState:I
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_6
    if-eqz v14, :cond_8

    .line 206
    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 196
    :catch_0
    move-exception v13

    .line 197
    .local v13, ex:Ljava/lang/Exception;
    :try_start_3
    sget-object v2, Lcom/htc/album/TabPluginDevice/FolderImage;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[getDisplayImageUri] error when decoed drm file"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    .end local v13           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    .line 200
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 199
    :cond_7
    throw v2

    .line 208
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/htc/sunnyCore/IMediaData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 325
    iget-wide v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    return-wide v0
.end method

.method public hasSubList()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public isCorrupted()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/FolderImage;->mSelected:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    return v0
.end method

.method public readFrom(ZIILjava/lang/String;)V
    .locals 4
    .parameter "isVersionChange"
    .parameter "newVer"
    .parameter "oldVer"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 356
    const/4 v1, 0x0

    .line 357
    .local v1, i:I
    invoke-virtual {p0, p4}, Lcom/htc/album/TabPluginDevice/FolderImage;->removeAllHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 358
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 359
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-super {p0, p1, p2, p3, v3}, Lcom/htc/album/modules/collection/SimpleImage;->readFrom(ZIILjava/lang/String;)V

    move v1, v2

    .line 365
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_0
    return-void
.end method

.method public setDisplayImageDimension(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 226
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "bSelected"

    .prologue
    .line 370
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/FolderImage;->mSelected:Z

    .line 371
    return-void
.end method

.method public toFormatedString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-super {p0}, Lcom/htc/album/modules/collection/SimpleImage;->toFormatedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/FolderImage;->capAllHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
