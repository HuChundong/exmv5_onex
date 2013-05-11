.class public Lcom/htc/album/TabPluginDevice/AlbumCollection;
.super Lcom/htc/album/modules/collection/Collection;
.source "AlbumCollection.java"

# interfaces
.implements Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;


# static fields
.field public static final FILE_CACHE_VERSION:I = 0x1

.field public static final FOLDER_DATE_TIME:Ljava/lang/String; = "FOLDER_DATE_TIME"

.field public static final FOLDER_NAME:Ljava/lang/String; = "FOLDER_NAME"

.field private static final LOG_TAG:Ljava/lang/String; = "AlbumCollection"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mIsCorrupted:Z

.field private mSelected:Z

.field protected mSubList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/FolderImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/htc/album/modules/collection/Collection;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSubList:Ljava/util/ArrayList;

    .line 40
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSelected:Z

    .line 41
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mIsCorrupted:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "type"
    .parameter "bucketId"
    .parameter "displayName"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/album/modules/collection/Collection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSubList:Ljava/util/ArrayList;

    .line 40
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSelected:Z

    .line 41
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mIsCorrupted:Z

    .line 50
    return-void
.end method


# virtual methods
.method public fileCorrupted()V
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mIsCorrupted:Z

    .line 317
    return-void
.end method

.method public getDateModified()J
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-nez v0, :cond_0

    .line 196
    const-wide/16 v0, 0x0

    .line 198
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-wide v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    goto :goto_0
.end method

.method public getDateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 205
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    goto :goto_0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mIdentifier:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    check-cast v0, Lcom/htc/album/TabPluginDevice/FolderImage;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/FolderImage;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageResId()I
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, nSourceId:I
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/album/Customizable/CustAlbumCollection;->isCustomerSmartFolder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/album/Customizable/CustAlbumCollection;->getCustomerFolderResourceId(Ljava/lang/String;)I

    move-result v0

    .line 80
    :cond_0
    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 3

    .prologue
    .line 104
    const/4 v0, 0x6

    .line 105
    .local v0, nSourceType:I
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    instance-of v1, v1, Lcom/htc/album/TabPluginDevice/FolderImage;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    check-cast v1, Lcom/htc/album/TabPluginDevice/FolderImage;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/FolderImage;->getDisplayImageSourceType()I

    move-result v0

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/album/Customizable/CustAlbumCollection;->isCustomerSmartFolder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/Customizable/CustAlbumCollection;->getCustomerSourceType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 111
    :cond_1
    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    check-cast v0, Lcom/htc/album/TabPluginDevice/FolderImage;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/FolderImage;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaDataList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/FolderImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSubList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 221
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSubList:Ljava/util/ArrayList;

    .line 223
    :cond_0
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    if-nez v2, :cond_1

    .line 225
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSubList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 226
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSubList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    check-cast v2, Lcom/htc/album/TabPluginDevice/FolderImage;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSubList:Ljava/util/ArrayList;

    .line 254
    :goto_0
    return-object v2

    .line 230
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSubList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 232
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_2

    .line 233
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 235
    :cond_2
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 236
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/album/modules/collection/SimpleImage;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 238
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/FolderImage;

    .line 239
    .local v0, image:Lcom/htc/album/TabPluginDevice/FolderImage;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSubList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 242
    .end local v0           #image:Lcom/htc/album/TabPluginDevice/FolderImage;
    :cond_3
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSubList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 254
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/album/modules/collection/SimpleImage;>;"
    :cond_4
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSubList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-nez v0, :cond_0

    .line 187
    const-wide/16 v0, 0x0

    .line 189
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-wide v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    goto :goto_0
.end method

.method public hasSubList()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public isCorrupted()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mIsCorrupted:Z

    return v0
.end method

.method public isDrm()Z
    .locals 2

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, isDrm:Z
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    instance-of v1, v1, Lcom/htc/album/TabPluginDevice/FolderImage;

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    check-cast v1, Lcom/htc/album/TabPluginDevice/FolderImage;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/FolderImage;->isDrm()Z

    move-result v0

    .line 329
    :cond_0
    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSelected:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x0

    .line 179
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-boolean v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    goto :goto_0
.end method

.method protected onNewSimpleImage(Ljava/lang/String;Ljava/lang/String;JIIJJ)Lcom/htc/album/modules/collection/SimpleImage;
    .locals 11
    .parameter "filePath"
    .parameter "mimeType"
    .parameter "dateModified"
    .parameter "degree"
    .parameter "mediaType"
    .parameter "fileSize"
    .parameter "rowId"

    .prologue
    .line 65
    new-instance v0, Lcom/htc/album/TabPluginDevice/FolderImage;

    iget-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDevice/FolderImage;-><init>(Lcom/htc/album/modules/collection/Collection;Z)V

    .local v0, image:Lcom/htc/album/TabPluginDevice/FolderImage;
    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    .line 66
    invoke-virtual/range {v0 .. v10}, Lcom/htc/album/TabPluginDevice/FolderImage;->update(Ljava/lang/String;Ljava/lang/String;JIIJJ)V

    .line 68
    return-object v0
.end method

.method public readFrom(ZIILjava/lang/String;)V
    .locals 8
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
    .line 282
    const/4 v2, 0x0

    .line 283
    .local v2, i:I
    invoke-virtual {p0, p4}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->removeAllHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 284
    .local v1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 285
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-super {p0, p1, p2, p3, v7}, Lcom/htc/album/modules/collection/Collection;->readFrom(ZIILjava/lang/String;)V

    .line 286
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->removeListObjHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 287
    .local v5, mSubListStr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_1

    .line 288
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSubList:Ljava/util/ArrayList;

    if-nez v7, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSubList:Ljava/util/ArrayList;

    .line 289
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 290
    .local v6, str:Ljava/lang/String;
    new-instance v0, Lcom/htc/album/TabPluginDevice/FolderImage;

    const/4 v7, 0x1

    invoke-direct {v0, p0, v7}, Lcom/htc/album/TabPluginDevice/FolderImage;-><init>(Lcom/htc/album/modules/collection/Collection;Z)V

    .line 291
    .local v0, FI:Lcom/htc/album/TabPluginDevice/FolderImage;
    invoke-virtual {v0, p1, p2, p3, v6}, Lcom/htc/album/TabPluginDevice/FolderImage;->readFrom(ZIILjava/lang/String;)V

    .line 292
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSubList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 299
    .end local v0           #FI:Lcom/htc/album/TabPluginDevice/FolderImage;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #mSubListStr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #str:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setBucketId(Ljava/lang/String;)V
    .locals 0
    .parameter "bucketId"

    .prologue
    .line 334
    iput-object p1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .parameter "displayName"

    .prologue
    .line 339
    iput-object p1, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "bSelected"

    .prologue
    .line 305
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSelected:Z

    .line 306
    return-void
.end method

.method public toFormatedString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v3, mSubListStr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-super {p0}, Lcom/htc/album/modules/collection/Collection;->toFormatedString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSubList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 271
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSubList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/FolderImage;

    .line 272
    .local v0, FI:Lcom/htc/album/TabPluginDevice/FolderImage;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/FolderImage;->toFormatedString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    .end local v0           #FI:Lcom/htc/album/TabPluginDevice/FolderImage;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->capListObjHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->capAllHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
